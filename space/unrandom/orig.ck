/*
 * space.ck
 * Nick Spinale
 * MUSC 208
 * Carleton College
 *
 * Samples come from [redacted], and some ideas (the random harmonics and the
 * coefficients of the blit filter) come from examples in the ChucK source tree.
 */

/* Gain sdac => dac; */
Gain sdac;

// Units
1::minute/110.0 => dur beat;
4::beat => dur measure;

// Initialization
(me.args() ? Std.atoi(me.arg(0)) : 0)::measure => dur start;

// For conversion
time zero;

// An abstraction for time. Start from anywhere in the composition by specifying
// a measure to start on on the command line.
class Universe {

    start => dur here;

    fun dur ask() {
        return (now % 1::day) + (start - (0::samp < this.here ? this.here : 0::samp));
    }

    fun void adv(dur d) {
        if (0::samp < this.here) {
            if (this.here < d) {
                d - this.here => now;
            }
            d -=> this.here;
        } else {
            d => now;
        }
    }

    fun void goto(dur t) {
        if (0::samp < start) {
            if (t - start + zero > now) {
                (t - start + zero) - now => now;
            }
            start - t => this.here;
        } else {
            (t + zero) - now => now;
        }
    }

    fun void nearest(dur unit) {
        this.adv(unit - ((now + (0::samp < this.here ? this.here : 0::samp)) % unit));
    }

}

class XNote {
    int octave;
    int note;
    int harmonics;

    fun void show() {
        <<< "    " + octave + "," + note + "," + harmonics >>>;
    }
}

fun XNote mk_xnote(int octave, int note, int harmonics) {
    XNote xnote;
    octave => xnote.octave;
    note => xnote.note;
    harmonics => xnote.harmonics;
    return xnote;
}

368 => int nmelody;
32 => int noutro;
XNote @ melody[nmelody];
XNote @ outro[noutro];

class XScore {

    0 => int ix;

    fun XNote next() {
        <<< "ix: " + ix >>>;
        XNote xnote;
        if (ix < 368) {
            melody[ix] @=> xnote;
        } else {
            outro[ix - nmelody] @=> xnote;
        }
        1 +=> ix;
        return xnote;
    }

    fun void reset() {
        0 => ix;
    }
}

XScore xscore;

// Util

fun SndBuf load(string name) {
    SndBuf b;
    me.dir() + "../samples/" + name => b.read;
    b.samples() => b.pos;
    return b;
}

fun void play(Universe u, SndBuf b, float points[]) {
    u.ask() => dur here;
    for (0 => int i; i < points.cap(); i++) {
        u.goto(here + points[i]::beat);
        0 => b.pos;
    }
}

fun void play(Universe u, TriOsc s, float points[], int notes[], float last) {
    1 => s.gain;
    u.ask() => dur here;
    for (0 => int i; i < points.cap(); i++) {
        u.goto(here + points[i]::beat);
        Std.mtof(notes[i] + 12) => s.freq;
    }
    u.adv(last::beat);
    0 => s.gain;
}

// Section lengths
2::measure => dur intro;
4::measure => dur drums;

24 => int cutlen;
cutlen::measure => dur cut;

load("redacted1.aif") @=> SndBuf dsp => sdac;
load("redacted2.wav") @=> SndBuf dk => sdac;

class X {

    // Score

    fun void drum1() {
        Universe u;
        u.adv(intro + drums);
        for (0 => int i; i < cutlen; i++) {
            play(u, dsp, [0.0, .5, 1.25, 2,  2.5]);
            u.nearest(1::measure);
        }
    };

    fun void drum2() {
        Universe u;
        u.adv(intro + drums);
        for (0 => int i; i < cutlen; i++) {
            play(u, dk, [1.0, 3]);
            u.nearest(1::measure);
        }
    };

    // BLIT

    Blit bl => JCRev r => Pan2 blPan => Gain blGain => Gain blMute => sdac;
    .0 => bl.gain;
    .05 => r.mix;

    fun void blit() {

        Universe u;
        u.adv(intro);

        .2 => bl.gain;

        [ 0, 0, 2, 2, 0, 0, 0, 9
        , 0, 0, 0, 0, 7, 7, 0, 9
        , 0, 0, 2, 2, 9, 9, 0, 9
        , 9, 0, 0, 0, 4, 4, 2, 9
        , 9, 0, 0, 0, 2, 2, 4, 9
        , 9, 0, 0, 0, 4, 4, 2, 9
        , 0, 0, 0, 0, 9, 11, 9, 21
        ] @=> int first[];

        [1, 2, 3, 4, 5, 6, 7] @=> int harms[];

        for (0 => int i; i < first.cap(); i++) {
            harms[i / 8] => bl.harmonics;
            Std.mtof(33 + first[i]) => bl.freq;
            u.adv(.25::beat);
        }

        0 => bl.gain;
        u.adv(2::beat);
        .2 => bl.gain;

        [ 0, 2, 4, 7, 9, 11 ] @=> int notes[];

        for (0 => int i; i < (cutlen + 1) * 4 * 4; i++) {
            xscore.next() @=> XNote xnote;
            Std.mtof(33 + xnote.octave * 12 + notes[xnote.note]) => bl.freq;
            xnote.harmonics => bl.harmonics;
            u.adv(.25::beat);
        }

        for (0 => int i; i < 2 * 4 * 4; i++) {
            Std.mtof(33 + Math.random2(0, 3) * 12 + notes[Math.random2(0, notes.size() - 1)]) => bl.freq;
            Math.random2(4, 9) => bl.harmonics;
            u.adv(.25::beat);
        }

        Std.mtof(33 + 12 + 4) => bl.freq;
        10 => bl.harmonics;
        u.adv(1::measure);

    }

    fun void blitAmp() {
        Universe u;
        u.adv(intro + drums);

        SinOsc amp => blackhole;
        SinOsc pan => blackhole;
        3 * pi/2 => pan.phase;
        1::second/8::measure => amp.freq;
        1::second/8::measure => pan.freq;

        while (true) {
            blPan.pan(.5 * pan.last());
            bl.gain(.1 + .2 * Math.fabs(amp.last()));
            u.adv(1::samp);
        }
    }

    fun void blitEnd() {
        Universe u;
        u.adv(intro + drums + cut + 5::measure);
        for (0 => int i; i < 64; i++) {
            (64 - i) / 64.0 => blMute.gain;
            u.adv(.125::beat);
        }
    }

    SndBuf pop;
    "special:glot_pop" => pop.read;
    pop.samples() => pop.pos;

    fun void weird() {

        Universe u;
        for (0 => int i; i < 39 * 4; i++) {
            0 => pop.pos;
            u.adv(1::beat);
        }
        for (0 => int i; i < 4 * 16 * 4; i++) {
            0 => pop.pos;
            u.adv(.25::beat);
        }

    }

    fun void weirdctrl() {

        Universe u;

        pop => BiQuad f => Gain g => JCRev popr => sdac;
        pop => BiQuad f2 => g;
        pop => BiQuad f3 => g;

        0.800 => f.prad; .995 => f2.prad; .995 => f3.prad;
        1 => f.eqzs; 1 => f2.eqzs; 1 => f3.eqzs;
        0.0 => float v => float v2;
        .1 => f.gain; .1 => f2.gain; .01 => f3.gain;
        0.3 => popr.mix;

        while (true) {
            250.0 + Math.sin(v*100.0)*20.0 => v2 => f.pfreq;
            2290.0 + Math.sin(v*200.0)*50.0 => f2.pfreq;
            3010.0 + Math.sin(v*300.0)*80.0 => f3.pfreq;
            v + .05 => v;
            0.2 + Math.sin(v)*.1 => g.gain;
            0.2 + Math.sin(v)*.1 => g.gain;
            u.adv(1::beat);
        }

    }

    fun void weirdctrl2() {
        Universe u;
        .5 => pop.rate;
        for (0 => int i; i < 8; i++) {
            .1 + pop.rate() => pop.rate;
            u.adv(1::beat);
        }
        for (0 => int i; i < 16; i++) {
            -.05 + pop.rate() => pop.rate;
            u.adv(1::beat);
        }
        1.3 => pop.rate;
        u.adv(cut);
        for (0 => int i; i < 16; i++) {
            -.05 + pop.rate() => pop.rate;
            u.adv(1::beat);
        }

    }

    // SPORKFEST

    spork ~ drum1();
    spork ~ drum2();
    spork ~ blit();
    spork ~ blitAmp();
    spork ~ blitEnd();
    spork ~ weird();
    spork ~ weirdctrl();
    spork ~ weirdctrl2();

    .6 => sdac.gain;
    Universe u;
    u.adv(intro + drums + cut + 8::measure);

}

fun void do_x() {
    X x;
}

fun void do_x_e(Event e) {
    spork ~ do_x();
    e => now;
}

fun void do_x_shred(dur d) {
    spork ~ do_x();
    d => now;
}

fun void do_x_for(dur d) {
    spork ~ do_x_shred(d);
    d => now;
    return;
}

fun int eq(float a, float b) {
    if (Math.fabs(a - b) > 0.0001) {
        return 0;
    } else {
        return 1;
    }
}

sdac => blackhole;

for (0 => int i; i < nmelody; i++) {
    mk_xnote(0, 0, 1) @=> melody[i];
}

for (0 => int i; i < noutro; i++) {
    mk_xnote(0, 0, 4) @=> outro[i];
}

0 => int i_samps;

SndBuf orig => blackhole;
me.dir() + "orig.wav" => orig.read;

for (0 => int i_melody; i_melody < nmelody; i_melody++) {
    <<< "i_samps = " + i_samps >>>;
    <<< "i_melody = " + i_melody >>>;
    melody[i_melody] @=> XNote best;
    -1 => int best_samps;
    for (0 => int octave; octave <= 3; octave++) {
        <<< "octave = " + octave >>>;
        for (0 => int note; note <= 5; note++) {
            <<< "note = " + note >>>;
            for (1 => int harmonics; harmonics <= 5; harmonics++) {
                <<< "harmonics = " + harmonics >>>;
                mk_xnote(octave, note, harmonics) @=> melody[i_melody];
                i_samps => int i_samps_local;
                xscore.reset();

                0 => orig.pos;
                dsp.samples() => dsp.pos;
                dk.samples() => dk.pos;
                now => zero;
                Event e;
                spork ~ do_x_e(e);

                /* <<< "x i_samps_local = " + i_samps_local >>>; */
                i_samps_local::samp => now;
                /* 0::samp => now; */
                while (true) {
                    1::samp => now;
                    orig.last() => float a;
                    sdac.last() => float b;
                    eq(a, b) => int sme;
                    /* <<< "xx orig.last() = " + a + "sdac.last() = " + b >>>; */
                    if (sme != 1) {
                        break;
                    }
                    1 +=> i_samps_local;
                    /* 1::second => now; */
                    /* if (nframes > 20000) { */
                    /*     break; */
                    /* } */
                }
                /* <<< "break" >>>; */
                /* <<< "i_samps_local = " + i_samps_local >>>; */

                if (i_samps_local > best_samps) {
                    i_samps_local => best_samps;
                    melody[i_melody] @=> best;
                    <<< "new best: best_samps = " + best_samps >>>;
                    best.show();
                }
                e.signal();

            }
        }
    }
    best @=> melody[i_melody];
    best_samps => i_samps;
    <<< "melody[" + i_melody + "] =" >>>;
    best.show();
}

for (0 => int i_outro; i_outro < noutro; i_outro++) {
    for (0 => int octave; octave <= 3; octave++) {
        for (0 => int note; note <= 5; note++) {
            for (4 => int harmonics; harmonics <= 9; harmonics++) {
            }
        }
    }
}


/* /1* do_x_for(10); *1/ */
/* 10::second => do_x_for; */
/* now => zero; */
/* 10::second => do_x_for; */

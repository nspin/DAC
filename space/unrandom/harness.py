from collections import namedtuple

XNote = namedtuple('XNote', 'octave note harmonics')

N_MELODY = 368
N_OUTRO = 32

melody = [ XNote(0, 0, 1) ] * N_MELODY
outro = [ XNote(0, 0, 4) ] * N_OUTRO

def score_as_string():
    s = '';
    for i, x in enumerate(melody):
        s += f'XNote.mk_xnote({x.octave}, {x.note}, {x.harmonics}) @=> melody[{i}];\n'
    for i, x in enumerate(outro):
        s += f'XNote.mk_xnote({x.octave}, {x.note}, {x.harmonics}) @=> outro[{i}];\n'
    return s

def write_main():
    with open('orig.ck') as f:
        orig = f.read()
    new = orig.replace('@XXX@', score_as_string())
    with open('main.ck', 'w') as f:
        f.write(new)

write_main()

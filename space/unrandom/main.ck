/*
 * space.ck
 * Nick Spinale
 * MUSC 208
 * Carleton College
 *
 * Samples come from [redacted], and some ideas (the random harmonics and the
 * coefficients of the blit filter) come from examples in the ChucK source tree.
 */

public class XNote {
    int octave;
    int note;
    int harmonics;

    fun static XNote @ mk_xnote(int octave, int note, int harmonics) {
        XNote @ xnote;
        new XNote @=> xnote;
        octave => xnote.octave;
        note => xnote.note;
        harmonics => xnote.harmonics;
        return xnote;
    }
}

368 => int n_melody;
32 => int n_outro;
XNote @ melody[n_melody];
XNote @ outro[n_outro];

XNote.mk_xnote(0, 0, 1) @=> melody[0];
XNote.mk_xnote(0, 0, 1) @=> melody[1];
XNote.mk_xnote(0, 0, 1) @=> melody[2];
XNote.mk_xnote(0, 0, 1) @=> melody[3];
XNote.mk_xnote(0, 0, 1) @=> melody[4];
XNote.mk_xnote(0, 0, 1) @=> melody[5];
XNote.mk_xnote(0, 0, 1) @=> melody[6];
XNote.mk_xnote(0, 0, 1) @=> melody[7];
XNote.mk_xnote(0, 0, 1) @=> melody[8];
XNote.mk_xnote(0, 0, 1) @=> melody[9];
XNote.mk_xnote(0, 0, 1) @=> melody[10];
XNote.mk_xnote(0, 0, 1) @=> melody[11];
XNote.mk_xnote(0, 0, 1) @=> melody[12];
XNote.mk_xnote(0, 0, 1) @=> melody[13];
XNote.mk_xnote(0, 0, 1) @=> melody[14];
XNote.mk_xnote(0, 0, 1) @=> melody[15];
XNote.mk_xnote(0, 0, 1) @=> melody[16];
XNote.mk_xnote(0, 0, 1) @=> melody[17];
XNote.mk_xnote(0, 0, 1) @=> melody[18];
XNote.mk_xnote(0, 0, 1) @=> melody[19];
XNote.mk_xnote(0, 0, 1) @=> melody[20];
XNote.mk_xnote(0, 0, 1) @=> melody[21];
XNote.mk_xnote(0, 0, 1) @=> melody[22];
XNote.mk_xnote(0, 0, 1) @=> melody[23];
XNote.mk_xnote(0, 0, 1) @=> melody[24];
XNote.mk_xnote(0, 0, 1) @=> melody[25];
XNote.mk_xnote(0, 0, 1) @=> melody[26];
XNote.mk_xnote(0, 0, 1) @=> melody[27];
XNote.mk_xnote(0, 0, 1) @=> melody[28];
XNote.mk_xnote(0, 0, 1) @=> melody[29];
XNote.mk_xnote(0, 0, 1) @=> melody[30];
XNote.mk_xnote(0, 0, 1) @=> melody[31];
XNote.mk_xnote(0, 0, 1) @=> melody[32];
XNote.mk_xnote(0, 0, 1) @=> melody[33];
XNote.mk_xnote(0, 0, 1) @=> melody[34];
XNote.mk_xnote(0, 0, 1) @=> melody[35];
XNote.mk_xnote(0, 0, 1) @=> melody[36];
XNote.mk_xnote(0, 0, 1) @=> melody[37];
XNote.mk_xnote(0, 0, 1) @=> melody[38];
XNote.mk_xnote(0, 0, 1) @=> melody[39];
XNote.mk_xnote(0, 0, 1) @=> melody[40];
XNote.mk_xnote(0, 0, 1) @=> melody[41];
XNote.mk_xnote(0, 0, 1) @=> melody[42];
XNote.mk_xnote(0, 0, 1) @=> melody[43];
XNote.mk_xnote(0, 0, 1) @=> melody[44];
XNote.mk_xnote(0, 0, 1) @=> melody[45];
XNote.mk_xnote(0, 0, 1) @=> melody[46];
XNote.mk_xnote(0, 0, 1) @=> melody[47];
XNote.mk_xnote(0, 0, 1) @=> melody[48];
XNote.mk_xnote(0, 0, 1) @=> melody[49];
XNote.mk_xnote(0, 0, 1) @=> melody[50];
XNote.mk_xnote(0, 0, 1) @=> melody[51];
XNote.mk_xnote(0, 0, 1) @=> melody[52];
XNote.mk_xnote(0, 0, 1) @=> melody[53];
XNote.mk_xnote(0, 0, 1) @=> melody[54];
XNote.mk_xnote(0, 0, 1) @=> melody[55];
XNote.mk_xnote(0, 0, 1) @=> melody[56];
XNote.mk_xnote(0, 0, 1) @=> melody[57];
XNote.mk_xnote(0, 0, 1) @=> melody[58];
XNote.mk_xnote(0, 0, 1) @=> melody[59];
XNote.mk_xnote(0, 0, 1) @=> melody[60];
XNote.mk_xnote(0, 0, 1) @=> melody[61];
XNote.mk_xnote(0, 0, 1) @=> melody[62];
XNote.mk_xnote(0, 0, 1) @=> melody[63];
XNote.mk_xnote(0, 0, 1) @=> melody[64];
XNote.mk_xnote(0, 0, 1) @=> melody[65];
XNote.mk_xnote(0, 0, 1) @=> melody[66];
XNote.mk_xnote(0, 0, 1) @=> melody[67];
XNote.mk_xnote(0, 0, 1) @=> melody[68];
XNote.mk_xnote(0, 0, 1) @=> melody[69];
XNote.mk_xnote(0, 0, 1) @=> melody[70];
XNote.mk_xnote(0, 0, 1) @=> melody[71];
XNote.mk_xnote(0, 0, 1) @=> melody[72];
XNote.mk_xnote(0, 0, 1) @=> melody[73];
XNote.mk_xnote(0, 0, 1) @=> melody[74];
XNote.mk_xnote(0, 0, 1) @=> melody[75];
XNote.mk_xnote(0, 0, 1) @=> melody[76];
XNote.mk_xnote(0, 0, 1) @=> melody[77];
XNote.mk_xnote(0, 0, 1) @=> melody[78];
XNote.mk_xnote(0, 0, 1) @=> melody[79];
XNote.mk_xnote(0, 0, 1) @=> melody[80];
XNote.mk_xnote(0, 0, 1) @=> melody[81];
XNote.mk_xnote(0, 0, 1) @=> melody[82];
XNote.mk_xnote(0, 0, 1) @=> melody[83];
XNote.mk_xnote(0, 0, 1) @=> melody[84];
XNote.mk_xnote(0, 0, 1) @=> melody[85];
XNote.mk_xnote(0, 0, 1) @=> melody[86];
XNote.mk_xnote(0, 0, 1) @=> melody[87];
XNote.mk_xnote(0, 0, 1) @=> melody[88];
XNote.mk_xnote(0, 0, 1) @=> melody[89];
XNote.mk_xnote(0, 0, 1) @=> melody[90];
XNote.mk_xnote(0, 0, 1) @=> melody[91];
XNote.mk_xnote(0, 0, 1) @=> melody[92];
XNote.mk_xnote(0, 0, 1) @=> melody[93];
XNote.mk_xnote(0, 0, 1) @=> melody[94];
XNote.mk_xnote(0, 0, 1) @=> melody[95];
XNote.mk_xnote(0, 0, 1) @=> melody[96];
XNote.mk_xnote(0, 0, 1) @=> melody[97];
XNote.mk_xnote(0, 0, 1) @=> melody[98];
XNote.mk_xnote(0, 0, 1) @=> melody[99];
XNote.mk_xnote(0, 0, 1) @=> melody[100];
XNote.mk_xnote(0, 0, 1) @=> melody[101];
XNote.mk_xnote(0, 0, 1) @=> melody[102];
XNote.mk_xnote(0, 0, 1) @=> melody[103];
XNote.mk_xnote(0, 0, 1) @=> melody[104];
XNote.mk_xnote(0, 0, 1) @=> melody[105];
XNote.mk_xnote(0, 0, 1) @=> melody[106];
XNote.mk_xnote(0, 0, 1) @=> melody[107];
XNote.mk_xnote(0, 0, 1) @=> melody[108];
XNote.mk_xnote(0, 0, 1) @=> melody[109];
XNote.mk_xnote(0, 0, 1) @=> melody[110];
XNote.mk_xnote(0, 0, 1) @=> melody[111];
XNote.mk_xnote(0, 0, 1) @=> melody[112];
XNote.mk_xnote(0, 0, 1) @=> melody[113];
XNote.mk_xnote(0, 0, 1) @=> melody[114];
XNote.mk_xnote(0, 0, 1) @=> melody[115];
XNote.mk_xnote(0, 0, 1) @=> melody[116];
XNote.mk_xnote(0, 0, 1) @=> melody[117];
XNote.mk_xnote(0, 0, 1) @=> melody[118];
XNote.mk_xnote(0, 0, 1) @=> melody[119];
XNote.mk_xnote(0, 0, 1) @=> melody[120];
XNote.mk_xnote(0, 0, 1) @=> melody[121];
XNote.mk_xnote(0, 0, 1) @=> melody[122];
XNote.mk_xnote(0, 0, 1) @=> melody[123];
XNote.mk_xnote(0, 0, 1) @=> melody[124];
XNote.mk_xnote(0, 0, 1) @=> melody[125];
XNote.mk_xnote(0, 0, 1) @=> melody[126];
XNote.mk_xnote(0, 0, 1) @=> melody[127];
XNote.mk_xnote(0, 0, 1) @=> melody[128];
XNote.mk_xnote(0, 0, 1) @=> melody[129];
XNote.mk_xnote(0, 0, 1) @=> melody[130];
XNote.mk_xnote(0, 0, 1) @=> melody[131];
XNote.mk_xnote(0, 0, 1) @=> melody[132];
XNote.mk_xnote(0, 0, 1) @=> melody[133];
XNote.mk_xnote(0, 0, 1) @=> melody[134];
XNote.mk_xnote(0, 0, 1) @=> melody[135];
XNote.mk_xnote(0, 0, 1) @=> melody[136];
XNote.mk_xnote(0, 0, 1) @=> melody[137];
XNote.mk_xnote(0, 0, 1) @=> melody[138];
XNote.mk_xnote(0, 0, 1) @=> melody[139];
XNote.mk_xnote(0, 0, 1) @=> melody[140];
XNote.mk_xnote(0, 0, 1) @=> melody[141];
XNote.mk_xnote(0, 0, 1) @=> melody[142];
XNote.mk_xnote(0, 0, 1) @=> melody[143];
XNote.mk_xnote(0, 0, 1) @=> melody[144];
XNote.mk_xnote(0, 0, 1) @=> melody[145];
XNote.mk_xnote(0, 0, 1) @=> melody[146];
XNote.mk_xnote(0, 0, 1) @=> melody[147];
XNote.mk_xnote(0, 0, 1) @=> melody[148];
XNote.mk_xnote(0, 0, 1) @=> melody[149];
XNote.mk_xnote(0, 0, 1) @=> melody[150];
XNote.mk_xnote(0, 0, 1) @=> melody[151];
XNote.mk_xnote(0, 0, 1) @=> melody[152];
XNote.mk_xnote(0, 0, 1) @=> melody[153];
XNote.mk_xnote(0, 0, 1) @=> melody[154];
XNote.mk_xnote(0, 0, 1) @=> melody[155];
XNote.mk_xnote(0, 0, 1) @=> melody[156];
XNote.mk_xnote(0, 0, 1) @=> melody[157];
XNote.mk_xnote(0, 0, 1) @=> melody[158];
XNote.mk_xnote(0, 0, 1) @=> melody[159];
XNote.mk_xnote(0, 0, 1) @=> melody[160];
XNote.mk_xnote(0, 0, 1) @=> melody[161];
XNote.mk_xnote(0, 0, 1) @=> melody[162];
XNote.mk_xnote(0, 0, 1) @=> melody[163];
XNote.mk_xnote(0, 0, 1) @=> melody[164];
XNote.mk_xnote(0, 0, 1) @=> melody[165];
XNote.mk_xnote(0, 0, 1) @=> melody[166];
XNote.mk_xnote(0, 0, 1) @=> melody[167];
XNote.mk_xnote(0, 0, 1) @=> melody[168];
XNote.mk_xnote(0, 0, 1) @=> melody[169];
XNote.mk_xnote(0, 0, 1) @=> melody[170];
XNote.mk_xnote(0, 0, 1) @=> melody[171];
XNote.mk_xnote(0, 0, 1) @=> melody[172];
XNote.mk_xnote(0, 0, 1) @=> melody[173];
XNote.mk_xnote(0, 0, 1) @=> melody[174];
XNote.mk_xnote(0, 0, 1) @=> melody[175];
XNote.mk_xnote(0, 0, 1) @=> melody[176];
XNote.mk_xnote(0, 0, 1) @=> melody[177];
XNote.mk_xnote(0, 0, 1) @=> melody[178];
XNote.mk_xnote(0, 0, 1) @=> melody[179];
XNote.mk_xnote(0, 0, 1) @=> melody[180];
XNote.mk_xnote(0, 0, 1) @=> melody[181];
XNote.mk_xnote(0, 0, 1) @=> melody[182];
XNote.mk_xnote(0, 0, 1) @=> melody[183];
XNote.mk_xnote(0, 0, 1) @=> melody[184];
XNote.mk_xnote(0, 0, 1) @=> melody[185];
XNote.mk_xnote(0, 0, 1) @=> melody[186];
XNote.mk_xnote(0, 0, 1) @=> melody[187];
XNote.mk_xnote(0, 0, 1) @=> melody[188];
XNote.mk_xnote(0, 0, 1) @=> melody[189];
XNote.mk_xnote(0, 0, 1) @=> melody[190];
XNote.mk_xnote(0, 0, 1) @=> melody[191];
XNote.mk_xnote(0, 0, 1) @=> melody[192];
XNote.mk_xnote(0, 0, 1) @=> melody[193];
XNote.mk_xnote(0, 0, 1) @=> melody[194];
XNote.mk_xnote(0, 0, 1) @=> melody[195];
XNote.mk_xnote(0, 0, 1) @=> melody[196];
XNote.mk_xnote(0, 0, 1) @=> melody[197];
XNote.mk_xnote(0, 0, 1) @=> melody[198];
XNote.mk_xnote(0, 0, 1) @=> melody[199];
XNote.mk_xnote(0, 0, 1) @=> melody[200];
XNote.mk_xnote(0, 0, 1) @=> melody[201];
XNote.mk_xnote(0, 0, 1) @=> melody[202];
XNote.mk_xnote(0, 0, 1) @=> melody[203];
XNote.mk_xnote(0, 0, 1) @=> melody[204];
XNote.mk_xnote(0, 0, 1) @=> melody[205];
XNote.mk_xnote(0, 0, 1) @=> melody[206];
XNote.mk_xnote(0, 0, 1) @=> melody[207];
XNote.mk_xnote(0, 0, 1) @=> melody[208];
XNote.mk_xnote(0, 0, 1) @=> melody[209];
XNote.mk_xnote(0, 0, 1) @=> melody[210];
XNote.mk_xnote(0, 0, 1) @=> melody[211];
XNote.mk_xnote(0, 0, 1) @=> melody[212];
XNote.mk_xnote(0, 0, 1) @=> melody[213];
XNote.mk_xnote(0, 0, 1) @=> melody[214];
XNote.mk_xnote(0, 0, 1) @=> melody[215];
XNote.mk_xnote(0, 0, 1) @=> melody[216];
XNote.mk_xnote(0, 0, 1) @=> melody[217];
XNote.mk_xnote(0, 0, 1) @=> melody[218];
XNote.mk_xnote(0, 0, 1) @=> melody[219];
XNote.mk_xnote(0, 0, 1) @=> melody[220];
XNote.mk_xnote(0, 0, 1) @=> melody[221];
XNote.mk_xnote(0, 0, 1) @=> melody[222];
XNote.mk_xnote(0, 0, 1) @=> melody[223];
XNote.mk_xnote(0, 0, 1) @=> melody[224];
XNote.mk_xnote(0, 0, 1) @=> melody[225];
XNote.mk_xnote(0, 0, 1) @=> melody[226];
XNote.mk_xnote(0, 0, 1) @=> melody[227];
XNote.mk_xnote(0, 0, 1) @=> melody[228];
XNote.mk_xnote(0, 0, 1) @=> melody[229];
XNote.mk_xnote(0, 0, 1) @=> melody[230];
XNote.mk_xnote(0, 0, 1) @=> melody[231];
XNote.mk_xnote(0, 0, 1) @=> melody[232];
XNote.mk_xnote(0, 0, 1) @=> melody[233];
XNote.mk_xnote(0, 0, 1) @=> melody[234];
XNote.mk_xnote(0, 0, 1) @=> melody[235];
XNote.mk_xnote(0, 0, 1) @=> melody[236];
XNote.mk_xnote(0, 0, 1) @=> melody[237];
XNote.mk_xnote(0, 0, 1) @=> melody[238];
XNote.mk_xnote(0, 0, 1) @=> melody[239];
XNote.mk_xnote(0, 0, 1) @=> melody[240];
XNote.mk_xnote(0, 0, 1) @=> melody[241];
XNote.mk_xnote(0, 0, 1) @=> melody[242];
XNote.mk_xnote(0, 0, 1) @=> melody[243];
XNote.mk_xnote(0, 0, 1) @=> melody[244];
XNote.mk_xnote(0, 0, 1) @=> melody[245];
XNote.mk_xnote(0, 0, 1) @=> melody[246];
XNote.mk_xnote(0, 0, 1) @=> melody[247];
XNote.mk_xnote(0, 0, 1) @=> melody[248];
XNote.mk_xnote(0, 0, 1) @=> melody[249];
XNote.mk_xnote(0, 0, 1) @=> melody[250];
XNote.mk_xnote(0, 0, 1) @=> melody[251];
XNote.mk_xnote(0, 0, 1) @=> melody[252];
XNote.mk_xnote(0, 0, 1) @=> melody[253];
XNote.mk_xnote(0, 0, 1) @=> melody[254];
XNote.mk_xnote(0, 0, 1) @=> melody[255];
XNote.mk_xnote(0, 0, 1) @=> melody[256];
XNote.mk_xnote(0, 0, 1) @=> melody[257];
XNote.mk_xnote(0, 0, 1) @=> melody[258];
XNote.mk_xnote(0, 0, 1) @=> melody[259];
XNote.mk_xnote(0, 0, 1) @=> melody[260];
XNote.mk_xnote(0, 0, 1) @=> melody[261];
XNote.mk_xnote(0, 0, 1) @=> melody[262];
XNote.mk_xnote(0, 0, 1) @=> melody[263];
XNote.mk_xnote(0, 0, 1) @=> melody[264];
XNote.mk_xnote(0, 0, 1) @=> melody[265];
XNote.mk_xnote(0, 0, 1) @=> melody[266];
XNote.mk_xnote(0, 0, 1) @=> melody[267];
XNote.mk_xnote(0, 0, 1) @=> melody[268];
XNote.mk_xnote(0, 0, 1) @=> melody[269];
XNote.mk_xnote(0, 0, 1) @=> melody[270];
XNote.mk_xnote(0, 0, 1) @=> melody[271];
XNote.mk_xnote(0, 0, 1) @=> melody[272];
XNote.mk_xnote(0, 0, 1) @=> melody[273];
XNote.mk_xnote(0, 0, 1) @=> melody[274];
XNote.mk_xnote(0, 0, 1) @=> melody[275];
XNote.mk_xnote(0, 0, 1) @=> melody[276];
XNote.mk_xnote(0, 0, 1) @=> melody[277];
XNote.mk_xnote(0, 0, 1) @=> melody[278];
XNote.mk_xnote(0, 0, 1) @=> melody[279];
XNote.mk_xnote(0, 0, 1) @=> melody[280];
XNote.mk_xnote(0, 0, 1) @=> melody[281];
XNote.mk_xnote(0, 0, 1) @=> melody[282];
XNote.mk_xnote(0, 0, 1) @=> melody[283];
XNote.mk_xnote(0, 0, 1) @=> melody[284];
XNote.mk_xnote(0, 0, 1) @=> melody[285];
XNote.mk_xnote(0, 0, 1) @=> melody[286];
XNote.mk_xnote(0, 0, 1) @=> melody[287];
XNote.mk_xnote(0, 0, 1) @=> melody[288];
XNote.mk_xnote(0, 0, 1) @=> melody[289];
XNote.mk_xnote(0, 0, 1) @=> melody[290];
XNote.mk_xnote(0, 0, 1) @=> melody[291];
XNote.mk_xnote(0, 0, 1) @=> melody[292];
XNote.mk_xnote(0, 0, 1) @=> melody[293];
XNote.mk_xnote(0, 0, 1) @=> melody[294];
XNote.mk_xnote(0, 0, 1) @=> melody[295];
XNote.mk_xnote(0, 0, 1) @=> melody[296];
XNote.mk_xnote(0, 0, 1) @=> melody[297];
XNote.mk_xnote(0, 0, 1) @=> melody[298];
XNote.mk_xnote(0, 0, 1) @=> melody[299];
XNote.mk_xnote(0, 0, 1) @=> melody[300];
XNote.mk_xnote(0, 0, 1) @=> melody[301];
XNote.mk_xnote(0, 0, 1) @=> melody[302];
XNote.mk_xnote(0, 0, 1) @=> melody[303];
XNote.mk_xnote(0, 0, 1) @=> melody[304];
XNote.mk_xnote(0, 0, 1) @=> melody[305];
XNote.mk_xnote(0, 0, 1) @=> melody[306];
XNote.mk_xnote(0, 0, 1) @=> melody[307];
XNote.mk_xnote(0, 0, 1) @=> melody[308];
XNote.mk_xnote(0, 0, 1) @=> melody[309];
XNote.mk_xnote(0, 0, 1) @=> melody[310];
XNote.mk_xnote(0, 0, 1) @=> melody[311];
XNote.mk_xnote(0, 0, 1) @=> melody[312];
XNote.mk_xnote(0, 0, 1) @=> melody[313];
XNote.mk_xnote(0, 0, 1) @=> melody[314];
XNote.mk_xnote(0, 0, 1) @=> melody[315];
XNote.mk_xnote(0, 0, 1) @=> melody[316];
XNote.mk_xnote(0, 0, 1) @=> melody[317];
XNote.mk_xnote(0, 0, 1) @=> melody[318];
XNote.mk_xnote(0, 0, 1) @=> melody[319];
XNote.mk_xnote(0, 0, 1) @=> melody[320];
XNote.mk_xnote(0, 0, 1) @=> melody[321];
XNote.mk_xnote(0, 0, 1) @=> melody[322];
XNote.mk_xnote(0, 0, 1) @=> melody[323];
XNote.mk_xnote(0, 0, 1) @=> melody[324];
XNote.mk_xnote(0, 0, 1) @=> melody[325];
XNote.mk_xnote(0, 0, 1) @=> melody[326];
XNote.mk_xnote(0, 0, 1) @=> melody[327];
XNote.mk_xnote(0, 0, 1) @=> melody[328];
XNote.mk_xnote(0, 0, 1) @=> melody[329];
XNote.mk_xnote(0, 0, 1) @=> melody[330];
XNote.mk_xnote(0, 0, 1) @=> melody[331];
XNote.mk_xnote(0, 0, 1) @=> melody[332];
XNote.mk_xnote(0, 0, 1) @=> melody[333];
XNote.mk_xnote(0, 0, 1) @=> melody[334];
XNote.mk_xnote(0, 0, 1) @=> melody[335];
XNote.mk_xnote(0, 0, 1) @=> melody[336];
XNote.mk_xnote(0, 0, 1) @=> melody[337];
XNote.mk_xnote(0, 0, 1) @=> melody[338];
XNote.mk_xnote(0, 0, 1) @=> melody[339];
XNote.mk_xnote(0, 0, 1) @=> melody[340];
XNote.mk_xnote(0, 0, 1) @=> melody[341];
XNote.mk_xnote(0, 0, 1) @=> melody[342];
XNote.mk_xnote(0, 0, 1) @=> melody[343];
XNote.mk_xnote(0, 0, 1) @=> melody[344];
XNote.mk_xnote(0, 0, 1) @=> melody[345];
XNote.mk_xnote(0, 0, 1) @=> melody[346];
XNote.mk_xnote(0, 0, 1) @=> melody[347];
XNote.mk_xnote(0, 0, 1) @=> melody[348];
XNote.mk_xnote(0, 0, 1) @=> melody[349];
XNote.mk_xnote(0, 0, 1) @=> melody[350];
XNote.mk_xnote(0, 0, 1) @=> melody[351];
XNote.mk_xnote(0, 0, 1) @=> melody[352];
XNote.mk_xnote(0, 0, 1) @=> melody[353];
XNote.mk_xnote(0, 0, 1) @=> melody[354];
XNote.mk_xnote(0, 0, 1) @=> melody[355];
XNote.mk_xnote(0, 0, 1) @=> melody[356];
XNote.mk_xnote(0, 0, 1) @=> melody[357];
XNote.mk_xnote(0, 0, 1) @=> melody[358];
XNote.mk_xnote(0, 0, 1) @=> melody[359];
XNote.mk_xnote(0, 0, 1) @=> melody[360];
XNote.mk_xnote(0, 0, 1) @=> melody[361];
XNote.mk_xnote(0, 0, 1) @=> melody[362];
XNote.mk_xnote(0, 0, 1) @=> melody[363];
XNote.mk_xnote(0, 0, 1) @=> melody[364];
XNote.mk_xnote(0, 0, 1) @=> melody[365];
XNote.mk_xnote(0, 0, 1) @=> melody[366];
XNote.mk_xnote(0, 0, 1) @=> melody[367];
XNote.mk_xnote(0, 0, 4) @=> outro[0];
XNote.mk_xnote(0, 0, 4) @=> outro[1];
XNote.mk_xnote(0, 0, 4) @=> outro[2];
XNote.mk_xnote(0, 0, 4) @=> outro[3];
XNote.mk_xnote(0, 0, 4) @=> outro[4];
XNote.mk_xnote(0, 0, 4) @=> outro[5];
XNote.mk_xnote(0, 0, 4) @=> outro[6];
XNote.mk_xnote(0, 0, 4) @=> outro[7];
XNote.mk_xnote(0, 0, 4) @=> outro[8];
XNote.mk_xnote(0, 0, 4) @=> outro[9];
XNote.mk_xnote(0, 0, 4) @=> outro[10];
XNote.mk_xnote(0, 0, 4) @=> outro[11];
XNote.mk_xnote(0, 0, 4) @=> outro[12];
XNote.mk_xnote(0, 0, 4) @=> outro[13];
XNote.mk_xnote(0, 0, 4) @=> outro[14];
XNote.mk_xnote(0, 0, 4) @=> outro[15];
XNote.mk_xnote(0, 0, 4) @=> outro[16];
XNote.mk_xnote(0, 0, 4) @=> outro[17];
XNote.mk_xnote(0, 0, 4) @=> outro[18];
XNote.mk_xnote(0, 0, 4) @=> outro[19];
XNote.mk_xnote(0, 0, 4) @=> outro[20];
XNote.mk_xnote(0, 0, 4) @=> outro[21];
XNote.mk_xnote(0, 0, 4) @=> outro[22];
XNote.mk_xnote(0, 0, 4) @=> outro[23];
XNote.mk_xnote(0, 0, 4) @=> outro[24];
XNote.mk_xnote(0, 0, 4) @=> outro[25];
XNote.mk_xnote(0, 0, 4) @=> outro[26];
XNote.mk_xnote(0, 0, 4) @=> outro[27];
XNote.mk_xnote(0, 0, 4) @=> outro[28];
XNote.mk_xnote(0, 0, 4) @=> outro[29];
XNote.mk_xnote(0, 0, 4) @=> outro[30];
XNote.mk_xnote(0, 0, 4) @=> outro[31];


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

class XScore {

    0 => int ix;

    fun XNote next() {
        <<< "ix: " + ix >>>;
        XNote xnote;
        if (ix < 368) {
            melody[ix] @=> xnote;
            <<< "xnote: " + xnote >>>;
        } else {
            outro[ix - n_melody] @=> xnote;
        }
        1 +=> ix;
        return xnote;
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

class X {

    // Score

    load("redacted1.aif") @=> SndBuf dsp => sdac;
    fun void drum1() {
        Universe u;
        u.adv(intro + drums);
        for (0 => int i; i < cutlen; i++) {
            play(u, dsp, [0.0, .5, 1.25, 2,  2.5]);
            u.nearest(1::measure);
        }
    };

    load("redacted2.wav") @=> SndBuf dk => sdac;
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

now => zero;

sdac => blackhole;

spork ~ do_x();
SndBuf orig => dac;
me.dir() + "orig.wav" => orig.read;
0 => orig.pos;

0 => int nframes;
while (true) {
    orig.last() => float a;
    sdac.last() => float b;
    eq(a, b) => int sme;
    /* <<< "nframes = " + nframes + ", a = " + a + ", b = " + b + ", same = " + sme >>>; */
    if (sme != 1) {
        break;
    }
    1::samp => now;
    /* 1::second => now; */
    1 +=> nframes;
    /* if (nframes > 20000) { */
    /*     break; */
    /* } */
}
<<< "nframes = " + nframes >>>;

/* /1* do_x_for(10); *1/ */
/* 10::second => do_x_for; */
/* now => zero; */
/* 10::second => do_x_for; */

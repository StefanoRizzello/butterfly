clc;
clear all;
% WRval = [524287,484352,370688,200448,0,-200448,-370688,-484352]; 
% WIval = [0,-200448,-370688,-484352,-524287,-484352,-370688,-200448];
WRval = [1,0.92387953251129,0.70710678118655,0.38268343236509,0,-0.38268343236509,-0.70710678118655,-0.92387953251129]; 
WIval = [0,-0.38268343236509,-0.70710678118655,-0.92387953251129,-1,-0.92387953251129,-0.70710678118655,-0.38268343236509];


AR = 0.5;
AI = 0;
BR = -0.5;
BI = 0;
WR = WRval(1);
WI = WIval(1);
ingressi = 'm';

if ingressi == 'm'
    M1 = BR*WR;
    M2 = BI*WI;
    M3 = BR*WI;
    M4 = BI*WR;
    M5 = 2*AR;
    M6 = 2*AI;
    S1 = AR+M1;
    S2 = S1-M2;
    S3 = AI+M3;
    S4 = S3+M4;
    S5 = M5-S2;
    S6 = M6-S4;
elseif ingressi == 'a'
    M1 = AR*WR;
    M2 = AI*WI;
    M3 = AR*WI;
    M4 = AI*WR;
    M5 = 2*AR;
    M6 = 2*AI;
    S1 = AR+M1;
    S2 = S1-M2;
    S3 = AI+M3;
    S4 = S3+M4;
    S5 = M5-S2;
    S6 = M6-S4;
elseif ingressi == 'b'
    M1 = BR*WR;
    M2 = BI*WI;
    M3 = BR*WI;
    M4 = BI*WR;
    M5 = 2*BR;
    M6 = 2*BI;
    S1 = BR+M1;
    S2 = S1-M2;
    S3 = BI+M3;
    S4 = S3+M4;
    S5 = M5-S2;
    S6 = M6-S4;
end

A1R = S2 
A1I = S4 
B1R = S5
B1I = S6
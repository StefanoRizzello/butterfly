clc;
clear all;

campione = 1;

if campione == 1
AR = [-1,-1,-1,-1,-1,-1,-1,-1];
    elseif campione == 2
AR = [-1,0,1,0,-1,0,1,0];
    elseif campione == 3
AR = [1,0,0,0,0,0,0,0];
    elseif campione == 4
AR = [-1,-1,1,1,-1,-1,1,1];
    elseif campione == 5
AR = [0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5];
    elseif campione == 6
AR = [0,0,0,0,0,0,0,0];
end
AI = [0,0,0,0,0,0,0,0];

if campione == 1
BR = [-1,-1,-1,-1,-1,-1,-1,-1];
    elseif campione == 2
BR = [-1,0,1,0,-1,0,1,0];
    elseif campione == 3
BR = [0,0,0,0,0,0,0,0];
    elseif campione == 4
BR = [-1,-1,1,1,-1,-1,1,1];
    elseif campione == 5
BR = [0.5,-0.5,-0.5,-0.5,-0.5,-0.5,-0.5,-0.5];
    elseif campione == 6
BR = [0.75,0,0,0,0,0,0,0];
end
BI = [0,0,0,0,0,0,0,0];

A1R= [0,0,0,0,0,0,0,0];         A1I= [0,0,0,0,0,0,0,0];
B1R= [0,0,0,0,0,0,0,0];         B1I= [0,0,0,0,0,0,0,0];
A1R_temp= [0,0,0,0,0,0,0,0];    A1I_temp= [0,0,0,0,0,0,0,0];
B1R_temp= [0,0,0,0,0,0,0,0];    B1I_temp= [0,0,0,0,0,0,0,0];

WR = [1,0.92387953251129,0.70710678118655,0.38268343236509,0,-0.38268343236509,-0.70710678118655,-0.92387953251129]; 
WI = [0,-0.38268343236509,-0.70710678118655,-0.92387953251129,-1,-0.92387953251129,-0.70710678118655,-0.38268343236509];

%% bf0
for i=1:8
M1 = BR(i)*WR(1);   M2 = BI(i)*WI(1);   M3 = BR(i)*WI(1);   M4 = BI(i)*WR(1);   M5 = 2*AR(i);
M6 = 2*AI(i);       S1 = AR(i)+M1;      S2 = S1-M2;         S3 = AI(i)+M3;      S4 = S3+M4;
S5 = M5-S2;         S6 = M6-S4;

A1R_temp(i) = S2;   A1I_temp(i) = S4;   B1R_temp(i) = S5;   B1I_temp(i) = S6;
end
A1R = A1R_temp;     A1I = A1I_temp;     B1R = B1R_temp;     B1I = B1I_temp;

%% bf1
for i=1:8
if i > 4
    M1 = B1R(i)*WR(5);  M2 = B1I(i)*WI(5);  M3 = B1R(i)*WI(5);  M4 = B1I(i)*WR(5);  M5 = 2*B1R(i-4);
    M6 = 2*B1I(i-4);    S1 = B1R(i-4)+M1;   S2 = S1-M2;         S3 = B1I(i-4)+M3;   S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4;
else
    M1 = A1R(i+4)*WR(1);M2 = A1I(i+4)*WI(1);M3 = A1R(i+4)*WI(1);M4 = A1I(i+4)*WR(1);M5 = 2*A1R(i);
    M6 = 2*A1I(i);      S1 = A1R(i)+M1;     S2 = S1-M2;         S3 = A1I(i)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4;
end

A1R_temp(i) = S2;   A1I_temp(i) = S4;   B1R_temp(i) = S5;   B1I_temp(i) = S6;
end
A1R = A1R_temp;     A1I = A1I_temp;     B1R = B1R_temp;     B1I = B1I_temp;

%% bf2
for i=1:8
if i > 6
    M1 = B1R(i)*WR(7);  M2 = B1I(i)*WI(7);  M3 = B1R(i)*WI(7);  M4 = B1I(i)*WR(7);  M5 = 2*B1R(i-2);
    M6 = 2*B1I(i-2);    S1 = B1R(i-2)+M1;   S2 = S1-M2;         S3 = B1I(i-2)+M3;   S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4; 
elseif i > 4
    M1 = A1R(i+2)*WR(3);M2 = A1I(i+2)*WI(3);M3 = A1R(i+2)*WI(3);M4 = A1I(i+2)*WR(3);M5 = 2*A1R(i);
    M6 = 2*A1I(i);      S1 = A1R(i)+M1;     S2 = S1-M2;         S3 = A1I(i)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4;
elseif i > 2
    M1 = B1R(i)*WR(5);  M2 = B1I(i)*WI(5);  M3 = B1R(i)*WI(5);  M4 = B1I(i)*WR(5)   ;M5 = 2*B1R(i-2);
    M6 = 2*B1I(i-2);    S1 = B1R(i-2)+M1;   S2 = S1-M2;         S3 = B1I(i-2)+M3;   S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4;
else
    M1 = A1R(i+2)*WR(1);M2 = A1I(i+2)*WI(1);M3 = A1R(i+2)*WI(1);M4 = A1I(i+2)*WR(1);M5 = 2*A1R(i);
    M6 = 2*A1I(i);      S1 = A1R(i)+M1;     S2 = S1-M2;         S3 = A1I(i)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4;         
end

A1R_temp(i) = S2;   A1I_temp(i) = S4;   B1R_temp(i) = S5;   B1I_temp(i) = S6;
end
A1R = A1R_temp;     A1I = A1I_temp;     B1R = B1R_temp;     B1I = B1I_temp;

%% bf3
for i=1:8
if i > 7
    M1 = B1R(i)*WR(8);  M2 = B1I(i)*WI(8);  M3 = B1R(i)*WI(8);  M4 = B1I(i)*WR(8);  M5 = 2*B1R(i-1);
    M6 = 2*B1I(i-1);    S1 = B1R(i-1)+M1;   S2 = S1-M2;         S3 = B1I(i-1)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4; 
elseif i > 6
    M1 = A1R(i+1)*WR(4);M2 = A1I(i+1)*WI(4);M3 = A1R(i+1)*WI(4);M4 = A1I(i+1)*WR(4);M5 = 2*A1R(i);
    M6 = 2*A1I(i);      S1 = A1R(i)+M1;     S2 = S1-M2;         S3 = A1I(i)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4; 
elseif i > 5
    M1 = B1R(i)*WR(6);  M2 = B1I(i)*WI(6);  M3 = B1R(i)*WI(6);  M4 = B1I(i)*WR(6);  M5 = 2*B1R(i-1);
    M6 = 2*B1I(i-1);    S1 = B1R(i-1)+M1;   S2 = S1-M2;         S3 = B1I(i-1)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4;  
elseif i > 4
    M1 = A1R(i+1)*WR(2);M2 = A1I(i+1)*WI(2);M3 = A1R(i+1)*WI(2);M4 = A1I(i+1)*WR(2);M5 = 2*A1R(i);
    M6 = 2*A1I(i);      S1 = A1R(i)+M1;     S2 = S1-M2;         S3 = A1I(i)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4; 
elseif i > 3
    M1 = B1R(i)*WR(7);  M2 = B1I(i)*WI(7);  M3 = B1R(i)*WI(7);  M4 = B1I(i)*WR(7);  M5 = 2*B1R(i-1);
    M6 = 2*B1I(i-1);    S1 = B1R(i-1)+M1;   S2 = S1-M2;         S3 = B1I(i-1)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4;  
elseif i > 2
    M1 = A1R(i+1)*WR(3);M2 = A1I(i+1)*WI(3);M3 = A1R(i+1)*WI(3);M4 = A1I(i+1)*WR(3);M5 = 2*A1R(i);
    M6 = 2*A1I(i);      S1 = A1R(i)+M1;     S2 = S1-M2;         S3 = A1I(i)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4; 
elseif i > 1
    M1 = B1R(i)*WR(5);  M2 = B1I(i)*WI(5);  M3 = B1R(i)*WI(5);  M4 = B1I(i)*WR(5);  M5 = 2*B1R(i-1);
    M6 = 2*B1I(i-1);    S1 = B1R(i-1)+M1;   S2 = S1-M2;         S3 = B1I(i)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4; 
else
    M1 = A1R(i+1)*WR(1);M2 = A1I(i+1)*WI(1);M3 = A1R(i+1)*WI(1);M4 = A1I(i+1)*WR(1);M5 = 2*A1R(i);
    M6 = 2*A1I(i);      S1 = A1R(i)+M1;     S2 = S1-M2;         S3 = A1I(i)+M3;     S4 = S3+M4;
    S5 = M5-S2;         S6 = M6-S4;         
end

A1R_temp(i) = S2;   A1I_temp(i) = S4;   B1R_temp(i) = S5;   B1I_temp(i) = S6;
end
A1R = A1R_temp;     A1I = A1I_temp;     B1R = B1R_temp;     B1I = B1I_temp;

A1R
A1I
B1R
B1I
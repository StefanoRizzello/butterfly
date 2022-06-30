clc;
clear all;

format long e;
%% Q1.19
q20 = quantizer([20 19]);
val_bin20 = "00000011111111111111";
val_dec20_r = bin2num(q20,val_bin20)

res = val_dec20_r * 32

% val_min_bin = "11111111111111111111";
val_min_bin = "00000000000000000001";
val_min_dec = bin2num(q20,val_min_bin)

% val_dec20 = 1/32;
% val_bin20_r = num2bin(q20,val_dec20)

%% Q1.39

% q40 = quantizer([40 39]);
% val_dec40 = -3.814693627646193e-06;
% val_bin40_r = num2bin(q40,val_dec40)
% 
% val_bin40_1 = "1100000000000000000010000000000000000000";
% val_bin40_2 = "0011111111111111111010000000000000000001";
% val_dec40_r1 = bin2num(q40,val_bin40_1)
% val_dec40_r2 = bin2num(q40,val_bin40_2)
% 
% val_dec40_r1 + val_dec40_r2
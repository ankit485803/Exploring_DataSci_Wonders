clc;
clear all;
close all;

%% simpson 1/3  rule
a = 1;
b = 2;
h = (b - a) / 2;
% f = @(x)2 -x + log(x);

trueVal = (b - b^2 / 2+b*log(b)) - (a - a^2 / 2+a*log(a));
int_simp = h/3 * (FunInt(a) + 4*FunInt(a + h) + FunInt(a + 2*h));
err_simp = abs(trueVal - int_simp);
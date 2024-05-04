clc;
clear all;
close all;

%% Trapezoidal rule
a = 1;
b = 2;
n = 10;
h = (b - a) / n;
f = @(x)sin(x);

i = 1 : 1 : n-1
S = f(a + i .*h);

int_trap = (h./2)*(f(a) + 2.*sum(S) + f(b))

trueVal = cos(a) - cos(b);
err_trap = abs(trueVal - int_trap)




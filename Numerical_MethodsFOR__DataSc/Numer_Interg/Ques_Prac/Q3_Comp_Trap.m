%% CLEANING our code
clc;
clear all;
close all;

%% approx INTEGRAL VALUE  of funct using comp trapazoidal rule
% enterning data
a = 0;
b = pi;
n = input("Enter the value of n: ");
h = (b - a)/n;   %interval
f = @(x)sin(x);
i = 1: 1: n-1;
sss = f(a+i .* h);

% using comp trap method
trap_comp_Val = (h/2) .* (f(a) + 2.*(sum(sss)) + f(b))
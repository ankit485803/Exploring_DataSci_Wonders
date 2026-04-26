%% CLEANING our code
clc;
clear all;
close all;

%% approx INTEGRAL VALUE  of funct simpson 1/3  rule
% enterning data
a = 0;
b = pi;
h = (b - a)/2;   %interval
f = @(x)sin(x);

%applying method
interg_val_using_SimpOneThird = (h/3) .* (f(a) + 4.* (f(a+h)) + (f(b)))
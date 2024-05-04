%% CLEANING our code
clc;
clear all;
close all;

%% approx INTEGRAL VALUE  of funct using trapazoidal rule

% entering  data
a = 0;
b = 1;
h = b - a;
f = @(x)exp(-x^2);

% applying trap  formula
trap = (h/2) * (f(a) + f(b))


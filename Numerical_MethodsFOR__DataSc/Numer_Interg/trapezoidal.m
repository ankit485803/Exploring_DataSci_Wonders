clc;
clear all;
close all;

%% Trapezoidal rule
a = 1;
h = 0.001;
b = a + h;
f = @(x) sin(x);

trueVal = integral(f, a, b)

int_trap = h / 2 * (f(a) + f(b))
err_trap = abs(trueVal - int_trap)


%% DIRECT INBUILD MATLAB TRAP CODE
%zitnaPOINT = linspace(1, 2, 4);

%% Using MATLAB's built-in trapz function
x = linspace(1, 2, 2);
f_values = f(x);

int_trap_matlab = trapz(x, f_values)
err_trap_matlab = abs(trueVal - int_trap_matlab)



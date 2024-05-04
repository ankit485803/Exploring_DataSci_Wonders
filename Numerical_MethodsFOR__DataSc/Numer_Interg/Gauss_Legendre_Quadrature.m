clc;
clear all;
close all;

%% Gauss Quadrature FAMILY : LEGENDRE
a = 2;
b = 3;

f = @(x) 2 - x + log(x);
trueVal = integral(f, a, b);
x = @(t) ((b - 1) / 2)*t + (b + a) / 2;   % Linear Transformation
J = (b - a) / 2;
F = @(t) f(x(t)) * J;  % New Integrand

% 1 point Gauss Legemder
I_1pt = F(0)
err_1pt = abs(trueVal - I_1pt)

% Gauss - Legendre two point formula
I_2pt = F(-1 / sqrt(3)) + F(1 / sqrt(3));
err_2pt = abs(trueVal - I_2pt);


% Gauss - Legendre 3pt point formula
I_3pt = 5/9 *F(-sqrt(3/5)) + 8/9 * F(0) + 5/9 *F(sqrt(3/5));
err_3pt = abs(trueVal - I_3pt);






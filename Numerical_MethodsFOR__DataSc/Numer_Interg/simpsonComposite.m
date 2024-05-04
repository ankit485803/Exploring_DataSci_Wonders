clc;
clear all;
close all;

%% simpson Composite  rule
a = 1;
b = 2;

% f = @(x)sin(x);
f = @(x) 1/(1 + x);
%trueVal = integral(f, a, b);

n = input(" Enter number of sub interval n: ");
h = (b - a) / n;
if rem(n, 2) == 1
    fprintf("\n  Enter valid n!!! please");
    n = input(" Enter n as an even number");
end

s_odd = 0;
s_even = 0;
for k = 1 : 1 : n-1
    x(k) = a + k*h
    y(k) = f(x(k));
    if rem(k, 2) == 1   %here this is checking remainder equal to 1, which give idea of ODD number
        s_odd = s_odd + y(k);
    else
        s_even = s_even + y(k);
    end
end

finalAns = (h/3) * (f(a) + f(b) + 4*s_odd + 2*s_even)















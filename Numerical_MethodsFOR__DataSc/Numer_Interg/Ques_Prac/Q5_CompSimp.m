clc;
clear all;
close all;

%% approx INTEGRAL VALUE  of funct simpson composite  rule

a = 0;
b = 1;
f = @(x) exp(-x.^2);
trueVal = integral(f, a, b);
n = input("Enter the value of subinterval : ");
h = (b-a)/n;

if rem(n, 2) == 1
    fprintf("please enter valid n value !!! ");
    n = input("Enter n as the even numb: ");
end

s_odd = 0;
s_even = 0;

for k = 1: 1: n-1       %start loop
    x(k) = a + k*h
    y(k) = f(x(k));
    if rem(k, 2) == 1       %giving condition of odd and even
        s_odd = s_odd + y(k);
    else
        s_even = s_even + y(k);
    end
end



%printing
interVal_usingCompSimp = (h/3) .* (  f(a) + 4.*(s_odd) + 2.*(s_even) + f(a)  )









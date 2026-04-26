clc;
clear all;
close all;

%% Numerical Integration using integral command also num2str command uses


% Define the function to be integrated
f = @(x) x.^2;

% Define the limits of integration
a = 0;
b = 1;

% Perform the numerical integration
result = integral(f, a, b);

% Display the result
disp(['The result of the numerical integration is: ', num2str(result)]);


% Example usage of num2str
x = 10;
str = num2str(x); % Convert the numeric value of x to a string
disp(['The value of x is: ' str]); % Display the value of x along with some text





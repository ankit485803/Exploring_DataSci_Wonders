%% CLEANING
clc;
clear all;
close all;
%% REF of matrix finding using matlab GAUSS ELIMINATION

%% Coefficient matrix and vector
A = [2 4 -2; 1 -1 1; 4 2 3]   
b = [6; 1; 11]

% Augmented matrix
X = [A, b];

% Forward Elimination
for i = 1: size(X, 1)  % size(X, 1) =  no of row of x, size(X, 2) = no of column of X
    for j = i + 1: size(X, 1)
        key1 = X(j, i) ./ X(i, i);
        X(j, :) = X(j, :) - key1 .*X(i, :);
    end
end

% Back Substitution
n = size(A, 1);
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (X(i, end) - X(i, i+1:end-1) * x(i+1:end)) / X(i, i);
end

disp('Solution or Value of X are:');
disp(x);













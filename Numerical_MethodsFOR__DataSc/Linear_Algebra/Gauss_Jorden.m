%% CLEANING
clc;
clear all;
close all;
%% REF of matrix finding using matlab GAUSS - Jorden


%% Coefficient matrix and vector
% A = [2 -2 3; 1 2 -1; 3 -1 2];
% b = [2; 3; 1];

A = [1 1 1; 2 -3 4; 3 4 5];
b = [9; 13; 40];
X = [A, b];

% Gauss-Jordan elimination
for i = 1:size(X, 1)
    if X(i, i) == 0
        error('Division by zero encountered. Algorithm cannot continue.');
    end
    
    % Make diagonal entry 1
    X(i, :) = X(i, :) ./ X(i, i);
    
    % Apply elementary row operations
    for j = 1:size(X, 1)
        if j ~= i
            key1 = X(j, i);
            X(j, :) = X(j, :) - key1 * X(i, :);
        end
    end
end

disp("Solution of X are as follow : ");
disp(X(:, end));






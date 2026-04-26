%% CLEANING
clc;
clear all;
close all;
%% REF of matrix finding using matlab GAUSS - Jorden


%% Coefficient matrix and vector
A = [2 1 -1; 1 -1 1; 3 2 2]
b = [2; -1; 3]
X = [A, b]



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






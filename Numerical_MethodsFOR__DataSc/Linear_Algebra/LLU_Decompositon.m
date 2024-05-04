% Clearing workspace and closing figures
clc;
clear all;
close all;

% LU Decomposition: A = LU where L is lower triangular and U is upper triangular
A = [1 2; 4 5; 7 9];
[m, n] = size(A);
L = eye(m);
U = zeros(m, n);

for k = 1:min(m, n)
    % For each column in A, perform elimination below diagonal
    for i = k + 1:m
        % Calculate the multiplier for the elementary operations
        L(i, k) = A(i, k) / A(k, k);
        
        % Perform row operation on the rest of the row
        for j = k:n
            A(i, j) = A(i, j) - L(i, k) * A(k, j);
        end
    end
    % Copy the modified column into U
    U(k:k, k:n) = A(k:k, k:n);
end

% For non-square matrices, the remaining rows of A are placed in U
if m > n
    U(n+1:m, :) = A(n+1:m, :);
end



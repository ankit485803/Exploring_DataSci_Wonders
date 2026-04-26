clc;
clear all;
close all;

%% Doolittle method to decompose a matrix into LU

% Input the coefficient matrix
% A = input("Enter your coefficient matrix: ");

A = [4 -2 1; -2 4 -2; 1 -2 3]
% Input the source vectors
% B = input("Enter the source vectors (B): ");

N = length(A);
L = zeros(N, N);
U = zeros(N, N);

% Step 1: LU Decomposition
for s = 1:N
    L(s, s) = 1;  % Set diagonal elements of L to 1
end
U(1, :) = A(1, :);

for i = 1:N
    % Calculate the first column of L and the rest of the row for U
    L(i+1:end, i) = A(i+1:end, i) / U(i, i);
    for j = i:N
        U(i, j) = A(i, j) - L(i, 1:i-1) * U(1:i-1, j);
    end
    % Calculate the remaining columns of L for the current row of U
    for k = i+1:N
        L(k, i) = (A(k, i) - L(k, 1:i-1) * U(1:i-1, i)) / U(i, i);
    end
end

% Display L and U matrices
disp('Matrix L:');
disp(L);
disp('Matrix U:');
disp(U);

% Step 2: Forward Substitution (LY = B)
% Y = zeros(N, 1);
% Y(1) = B(1) / L(1, 1);
% for k = 2 : N
%     Y(k) = (B(k) - L(k, 1:k-1) * Y(1 : k-1)) / L(k, k);
% end

% Step 3: Backward Substitution (UX = Y)
% X = zeros(N, 1);
% X(N) = Y(N) / U(N, N);
% for k = N-1 : -1 : 1
%     X(k) = (Y(k) - U(k, k+1:N) * X(k+1:N)) / U(k, k);
% end

% Display the final solution X
% disp('Solution (X):');
% disp(X);

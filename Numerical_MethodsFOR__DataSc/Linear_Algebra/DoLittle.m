%% CLEANING our code
clc;
clear all;
close all;
%% DoLittle method to decompose a matrix into LU eska computational cost O(n*n)  so we USE MORE  this

% A = [2 4 -6; 1 5 3; 1 3 2]
A = input("Enter your coefficient matrix ka bhaiii : ")
B = input("Enter source vectors jise kahte hai B ki value : ")
N = length(A);
L = zeros(N, N);
U = zeros(N, N);

% Step1 : LU Decomposition
for s = 1:N
    L(s, s) = 1;  % L ke digonal element ko 1 one bana diya
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

% dekhate hai L, U matrix kooo
disp('Matrix L:')
disp(L);
disp('Matrix U:')
disp(U);


% step2 : ab hme solve karna h  LY = B system ko yaha hm maltlab ke lang
% mai bolete h FORWARD SUBSTITUTION apply
Y = zeros(N, 1);
Y(1) = B(1) / L(1, 1);
for k = 2 : N
    Y(k) = (B(k) - L(k, 1:k-1) * Y(1 : k-1)) / L(k, k);
end

% step3 : solve UX = Y ko help of BACKWARD SUBSTITUTION se
X = zeros(N,1);
X(N) = Y(N) / U(N,N);
for k = N-1 : -1 : 1
    X(k) = (Y(k) - U(k, k+1:N) * X(k+1:N)) / U(k, k);
end

% final solution of X ko ab dekhooo 
disp('Solution (X):');
disp(X);








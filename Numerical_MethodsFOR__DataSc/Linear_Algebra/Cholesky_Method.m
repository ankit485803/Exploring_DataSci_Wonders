% Cleaning the environment
clc;
clear all;
close all;

%% Cholesky Method
%A = [4, 10, 8; 10, 26, 26; 8, 26, 61]
% A = [4 1 2; 1 3 1; 2 1 5]
A = [4 12 -16; 12 37 -43; -16 -43 98]
b = [-20; -43; 192]

% Cholesky decomposition
for i = 1 : size(A, 1)
    for j = i+1 : size(A, 1)
        coeff = A(j, i) / A(i, i);
        A(j, :) = A(j, :) - coeff * A(i, :);
    end
end

D = diag(diag(A));
U = zeros(size(A));
for i = 1:size(A, 1)
    for j = i:size(A, 2)
        U(i, j) = A(i, j) / D(i, i);
    end
end

sqrtD = sqrt(diag(D));
sqrtD = diag(sqrtD);
Unew = sqrtD * U
Lnew = Unew';

%calculating x and y value, we use backward \ slash
y = Lnew \ b;
x = Lnew \ y




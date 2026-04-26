%% CLEANING our code
clc;
clear all;
close all;
%% QR Decompostion and working of Gram Schimeidt works

% A = [1, 1, 0; 1, 0, 1; 0, 1, 1];
% A = [1 -1 4; 1 4 -2; 1 4 2; 1 -1 0];
% A = [12 -51 4; 6 167 -68; -4 24 -41];
% A = [1 2 3; 4 5 6; 7 8 9; 10 11 12];
A = [1 1 0; 1 0 1; 0 1 1]

[m, n] = size(A);
Q = zeros(m, n);

Q( :, 1) = A( :, 1) / norm(A( :, 1));

for i = 2 : n
    Q( :, i) = A( :, i)
    for j = 1 : i-1
        Q( :, i) = Q( :, i) - (Q( :, j)'* Q( :, i)) * Q(:, j);
    end
        Q(:, i) = Q(:, i) / norm(Q(:, i));
end


disp(Q)
Q'*Q
%R = Q'*A


% Build in Command for QR decom
%[Q1, R1] = qr(A)

%for calculating R matrix
R = zeros(n);
for i = 1 : n
    for j = 1:n
        R(i, j) = A(:, j)'*Q(:, i);
    end
end











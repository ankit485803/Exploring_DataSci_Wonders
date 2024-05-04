
clc; clear ; close all;
% forward, backward, central cocncept = compute Numerical differentiate formula
% calculate f'(x) at x=1

a = 1;
trueVal = 2*a;
h = 1.0e-4;    % h = 0.0001  hm  small h ki value lete h
% h = 10.^[-1:-1:-5];

% Forward Difference Formula
fwdDiff = ((a+h)^2  - a^2)  / h;
errFwd = abs(trueVal  - fwdDiff);
disp(["Error in Fwd Diff is : ",  num2str(errFwd)]);

% Central Difference formula
ctrDiff = ((a+h)^2  -  (a-h)^2) / (2*h);
errCtr = abs(trueVal - ctrDiff);
disp(["Error in Central Diff is : ", num2str(errCtr)]);

% Backward Differnce Formula
bkdDiff = (a^2  - (a-h)^2) / h;
errDiff = abs(trueVal  - bkdDiff);
disp(["Error in Backward diff is : ", num2str(errDiff)]);








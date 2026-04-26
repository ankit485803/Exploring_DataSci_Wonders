
% INTERPOLATION

x = 0 : 5;
y = [0 20 60 68 77 110];

% interpolate to get temperature at T = 3.6s
temp = interp1(x, y, 3.6);
temp1 = interp1(x, y, 1.2);

plot(x, y);

% plot(y, temp);   NOTE  yaha interpolate versus y  ki graph likanae se koi
% benefit h because only one point detha h



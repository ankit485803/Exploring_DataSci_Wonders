

clc; clear all; close all;
% calculating 1st, 2nd, 3rd.. etc DERIVATIVE in matlab like maths

a = 1 : 6
b = [1 3 5 7 8 6]

% first diff
diff_a1 = diff(a);
diff_b1 = diff(b);

% second diff
diff_a2 = diff(a, 2);
diff_b2 = diff(b, 2);

% NOTE :- we can find simplerly third, ...etc

% c = 2:1:10
% diff_c = diff(c)
% diff_c_2 = diff(c, 2)
% diff_c_3 = diff(c, 3)


% eg from help diff
% h = 0.001;
% x = 0 : h : pi;
% diff(sin(x.^2)) / h
% diff((1:10).^2)



%%% num diff
%%  Ques.  use diff command to find a derivative to define a function f(x) = x^3
x = 0 : 1 : 10;
y = x.^3;

% plot the function
figure(1)
plot(x,y, 'o')
xlabel("X - axis")
ylabel("Y - axis")

% find derivative dy/dx
y_diff = diff(y) ./ diff(x);

%plot
figure(2)
plot(x(2:end), y_diff)
xlabel("dx - axis")
ylabel("dy - axis")

% calculate  ANALYTICAL derivative
y_anal = 3 .*x .^2;
hold on
plot(x, y_anal, 'ro')
legend("Numerical", "Analytical")




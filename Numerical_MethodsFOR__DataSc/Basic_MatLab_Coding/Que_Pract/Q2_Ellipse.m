clc;
clear all;
close all;

% Ellipse draw
a = 2; % Semi-major axis length
b = 1; % Semi-minor axis length
t = linspace(0, 2*pi, 100); 

x = a * sin(t);
y = b * cos(t);

plot(x, y);

axis equal; % Ensures aspect ratio is equal, making the ellipse appear elliptical

title('Ellipse');
xlabel('x');
ylabel('y');

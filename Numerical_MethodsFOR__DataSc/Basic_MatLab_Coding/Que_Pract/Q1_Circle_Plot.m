%% CLEANING
clc;
clear all;
close all;
%% Circle draw   from Assig 03 ques

t = linspace(0, 2*pi, 100);

x = sin(t);
y = cos(t);

plot(x, y);

axis equal; % Ensures aspect ratio is equal, making the circle appear

title('Circle');
xlabel('x');
ylabel('y');





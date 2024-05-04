clc;
clear all;
close all;
%% why interpolation = data point ko nikalne ke liye, interp1 , 2 , 3

% Known or given in ques data points
time = [0, 1, 2, 3, 4]; % Time (in seconds)
distance = [0, 20, 40, 60, 80]; % Distance (in meters)

% Time at which we want to interpolate
t_interp = 2.5; % Interpolate at t = 2.5 seconds

% Perform linear interpolation
distance_interp = interp1(time, distance, t_interp);

% Display the interpolated distance
disp(['Interpolated distance at t = ', num2str(t_interp), ' seconds: ', num2str(distance_interp), ' meters']);




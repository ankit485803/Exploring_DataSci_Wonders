clc;
clear all;
close all;

%% Reverse  Vector from Assig 03 ques

Row_Vector1 = [2 4 6 8]

matrix1 = [1 2 3; 4 5 6; 7 8 9];

Column_Vector2 = [2; 4; 6; 8];

%reverse raw vector
Reversed_Vector2 = flip(Row_Vector1); 
Reversed_Vector1 = Row_Vector1(end : -1: 1)
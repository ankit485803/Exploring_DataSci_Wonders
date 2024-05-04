clc; close all; 
% LOOP concept in matlab

% for index = vector
%     commands
% end


% for i = 1 : 5
%     i
% end


% x = -2 : 2
% for i = 1 : length(x)
%     x(i) ; A
% end


% x = -2 : 2;
% y = 1 : 4;
% for i = 1 : length(x)
%     for j = 1 : length(y)
%         % if x(i) > 0
%        A(i, j) = x(i) + y(j);
%     end
% end


%% comparable statement if, else , while 

limit = 0.75;
A = rand(10,1)

if any(A > limit)
    disp('There is at least one value above the limit.')
else
    disp('All values are below the limit.')
end


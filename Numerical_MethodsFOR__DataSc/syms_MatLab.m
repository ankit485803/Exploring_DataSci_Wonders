


%% syms in  matlab used for symbolic variables. These variables can represent mathematical symbols or expressions. In your example, you've 
% declared x as a symbolic variable. Then you defined two symbolic expressions f and y using x.



syms x
f = sin(x);
y = x^2;
solve(x^2 - 4*x + 4 == 0)




% 
% %% Note: The error message indicates that the Symbolic Math Toolbox is not available in your MATLAB environment. The Symbolic Math Toolbox is required to work with symbolic variables and expressions in MATLAB using the syms function.
% 
% To resolve this issue, you need to make sure that the Symbolic Math Toolbox is installed and properly licensed in your MATLAB installation. If it's already installed but not licensed, you may need to activate the license or obtain a license if you haven't already.
% 
% If you don't have access to the Symbolic Math Toolbox, you can still perform numerical calculations without symbolic variables and expressions using regular MATLAB functions and operations.














%% Backward Differnce

x = [2 3 4 5 6];
y = [4 7 8 11 15];
X = input('Input the value of X = ');   %X = any number
n = length(x);   %n=4
D = zeros(n,n);
D(:,1) = y';  %1st column of D
for j = 2:n
    for i = j:n
        D(i,j) = D(i,j-1) - D(i-1,j-1)   %D(2,2)=D(2,1)-D(1,1)   D(3,2)=D(3,1)-D(2,1)    
    end
end
h = x(2)-x(1);
u = (X - x(end))/h;
A= y(end);
G = u;
for k = 1:n-1
    A = A +G*D(5,k+1)
    G = (u+k)/(k+1)*G
end
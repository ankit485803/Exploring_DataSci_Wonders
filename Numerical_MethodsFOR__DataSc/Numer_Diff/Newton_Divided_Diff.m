

%% Newton Divided Diffrence formula
clc; clear all; close all;


x=[0 1 2 4 5 6];
y=[1 14 15 5 6 19];
X=input('Input the vlaue of x =');    %x=any number
n=size(x,2);
D=zeros(n,n);
D(:,1)=y';   %1st column of D

for j= 2:n
    for i=1:n-j+1
        num = D(i+1,j-1) - D(i,j-1);
        den=x(i+j-1)- x(i);
        D(i,j)= num./den;
    end
end
for i=i:size(x,2)-1
    P(i)=prod(X-x(:,1:i))*D(1,i+1);
end

Y=y(1)+sum(P);
array2table(D)






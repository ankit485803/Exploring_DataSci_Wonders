% BACK SUSTITUTION REF
A=[2 -2 3; 1 2 -1; 3 -1 2];
b=[2;3;1];
X=[A b];
for i=1: size(X,1)
    for j=i+1:size(X,1)
        key1=X(j,i)./X(i,j);
        X(j,:)=X(j,:)-key1.*X(i,:)
    end
end
x=zeros(1,size(A,2));
for i=size(X,1):-1:1
    gg=sum(X(i,i+1:end-1).*x(i+1:end));
    x(i)=(X(i,end)-gg)./X(i,i)
end
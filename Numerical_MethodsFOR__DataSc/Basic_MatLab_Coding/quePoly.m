
% plot poly y = 4*x^3 + 2*x^2 + 12*x + 10 with x axis
x = 0: 25;
y = 4*x.^3 + 2*x.^2 + 12*x + 10;
plot(y, x, 'o');
xlabel("x axis");
ylabel("y axis");
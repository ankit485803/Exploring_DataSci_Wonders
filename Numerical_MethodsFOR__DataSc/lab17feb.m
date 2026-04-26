

% plotting & subplotting
t = 0: 0.1: 2*pi;
z = sin(t);
y = cos(t);
u = t;
% hold on

subplot(3, 1, 1)
plot(t, z, 'go--', 'MarkerSize',10);
xlabel("Time", "FontSize",12);
ylabel("Waves","FontSize",12);
title("kittuRani sin Views")
legend("sin function", 'Location','best')
grid on


% subplot(3, 1, 2)
% plot(t, y, 'bx--', 'MarkerSize',10);xlabel("Time", "FontSize",12);
% ylabel("Waves","FontSize",12);
% title("kittu cos Views")
% legend("cos function", 'Location','best')
% grid on


subplot(3, 1, 3)
plot(t, u, 'rx--', 'MarkerSize',10);
xlabel("Time", "FontSize",12);
ylabel("Waves","FontSize",12);
title("Meher straight line Views")
legend("straight line", 'Location','best')
grid on





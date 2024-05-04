
% 17th feb class : plotting
x= -pi : pi/10 : pi;
y = tan(sin(x)) - sin(tan(x));
% plot(x, y);
plot(x, y, '--rs', 'LineWidth',5, 'MarkerEdgeColor','k', 'Color','r', 'LineStyle','--', 'Marker','+');
xlabel('x axis', FontSize=15);
ylabel("y axis", FontSize=15); 



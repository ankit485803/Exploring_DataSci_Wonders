% Function definition
f = @(x) x.^2; % Change this function as needed

% Point of interest
a = 1;

% True derivative at the point
trueVal = 2 * a;

% Step size
h = 1.0e-4;

% Calculate forward difference
fwdDiff = (f(a + h) - f(a)) / h;

% Calculate backward difference
bkdDiff = (f(a) - f(a - h)) / h;

% Calculate central difference
ctrDiff = (f(a + h) - f(a - h)) / (2 * h);

% Display results
disp(['True Derivative at x = ', num2str(a), ': ', num2str(trueVal)]);
disp(['Forward Difference at x = ', num2str(a), ': ', num2str(fwdDiff)]);
disp(['Backward Difference at x = ', num2str(a), ': ', num2str(bkdDiff)]);
disp(['Central Difference at x = ', num2str(a), ': ', num2str(ctrDiff)]);

% Plot the function and tangent lines
x = linspace(a - 2, a + 2, 100);
y = f(x);

figure;
plot(x, y, 'LineWidth', 2);
hold on;

% Tangent line for forward difference
tangent_fwd = fwdDiff * (x - a) + f(a);
plot(x, tangent_fwd, '--', 'LineWidth', 1.5);

% Tangent line for backward difference
tangent_bkd = bkdDiff * (x - a) + f(a);
plot(x, tangent_bkd, '--', 'LineWidth', 1.5);

% Tangent line for central difference
tangent_ctr = ctrDiff * (x - a) + f(a);
plot(x, tangent_ctr, '--', 'LineWidth', 1.5);

scatter(a, f(a), 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'r');

title('Function and Tangent Lines');
legend('Function', 'Tangent (Forward Diff)', 'Tangent (Backward Diff)', 'Tangent (Central Diff)', 'Point of Interest');
xlabel('x');
ylabel('f(x)');
grid on;
hold off;
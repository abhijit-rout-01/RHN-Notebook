clc; clear; close all;

% Define the equation
f1 = @(x) 10000 ./ (4190 * (x - 35));
f2 = @(x) 20000 ./ (4190 * (x - 35));
f1_ = @(x) 0.4;
f2_ = @(x) 0.5;
% Plot the function
hold on;
fplot(f1, [36, 100], 'green', 'LineWidth', 2); % Avoid x = 35 to prevent division by zero
fplot(f2, [36, 100], 'blue', 'LineWidth', 2);
fplot(f1_, [36, 100], 'green--', 'LineWidth', 2);
fplot(f2_, [36, 100], 'blue--', 'LineWidth', 2);
% Formatting the plot
grid on
xlabel('temp (C)')
ylabel('massFlow_rate')
legend({'  Q=10kW -- mdot/s=0.4', '  Q=20KW -- mdot/s=0.5', ' 0.4', ' 0.5'}, 'Location', 'best')
title('massFlow_rate VS temp(C)')
ylim([-1, 1]) % Adjust if needed
hold off;
clc; clear; close all;

% Define the equation
f1 = @(x) (0.9*(60+273)*4190) ./ (4190*(x+273))
f2 = @(x) (1.1*(55+273)*4190) ./ (4190*(x+273))
f1_ = @(x) 0.9;
f2_ = @(x) 1.1;
% Plot the function
hold on;
fplot(f1, [0, 200], 'red', 'LineWidth', 2); % Avoid x = 35 to prevent division by zero
fplot(f2, [0, 200], 'green', 'LineWidth', 2);
fplot(f1_, [0, 200], 'red--', 'LineWidth', 2);
fplot(f2_, [0, 200], 'green--', 'LineWidth', 2);
% Formatting the plot
grid on
xlabel('temp (C)')
ylabel('massFlow_rate')
% Add a legend
legend({'  T=60 C -- mdot/s=0.9', '  T=55 C -- mdot/s=1.1', ' 0.9', ' 1.1'}, 'Location', 'best')
title('massFlow_rate VS temp(C)')
ylim([0, 2]) % Adjust if needed
hold off;
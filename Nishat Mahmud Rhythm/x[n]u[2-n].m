x = -4:9;
y = [0 0 0 1 1 1 1 1 0.5 0 0 0 0 0];

figure;

subplot(2,1,1);
stem(x, y, 'b', 'LineWidth', 1.5);
title('Original Signal x[n]');
xlabel('n');
ylabel('x[n]');
grid on;

% Generate y[n] = x[n]u[2-n]
y_modified = zeros(size(y));
y_modified(x < 2) = y(x < 2);

subplot(2,1,2);
stem(x, y_modified, 'r', 'LineWidth', 1.5);
title('Modified Signal y[n] = x[n]u[2-n]');
xlabel('n');
ylabel('y[n]');
grid on;
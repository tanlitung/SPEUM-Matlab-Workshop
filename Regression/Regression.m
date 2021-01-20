% Define a polynomial
% p = 3x^4 + 2x^3 - 2x^2 + 10x - 6
p = [3 2 -2 10 -6];
polyval(p, 10)
polyval(p, 1 : 1 : 5)

% Declare some data points
x = [0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180];
y = [4.019 9.352 12.101 14.854 18.366 19.673 19.561 20.223 20.739 21.706 21.706 22.706 26.183 43.704 61.1380 77.24 88.109 115.209 139.654];

% Plot the data
plot(x, y, ':s', 'MarkerSize', 6, 'MarkerFaceColor', 'b');
legend('Actual');

% Fitting the data with different degree
linear = polyfit(x, y, 1);
quadratic = polyfit(x, y, 2);
cubic = polyfit(x, y, 3);

% To see the coefficients, run the next line
% linear
% quadratic
% cubic

% List the values
p1 = polyval(linear, x);
p2 = polyval(quadratic, x);
p3 = polyval(cubic, x);

% Plot again
plot(x, y, ':s', 'MarkerSize', 6, 'MarkerFaceColor', 'b');
hold on;
plot(x, p1, '-y');
hold on;
plot(x, p2, '-g');
hold on;
plot(x, p3, '-r');
legend('Actual', 'Linear', 'Quadratic', 'Cubic');
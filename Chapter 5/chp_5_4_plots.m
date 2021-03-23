% 5.4 problem 1a
x = 0:0.1:8; y = 0.5.*x;

figure
hold on
patch([x 0], [y 4],'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-1 9 -0.5 5]); grid on

% 5.4 problem 1b
x_left = -4:0.02:0; x_right = 0:0.02:4;
y_left = sqrt(16-x_left.^2); y_right = sqrt(16-x_right.^2);
x = [x_left x_right]; y = [y_left y_right];

figure
hold on
patch(x, y,'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-5 5 -1 5]); grid on

% 5.4 Problem 2
x = [0, 1, 1]; y = [0, 0, 1];

figure
hold on
patch(x, y, 'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y'); 
axis([-1 2 -1 2]); grid on

% 5.4 problem 16
x = 0:0.02:1; y = x.^2;

figure
hold on
patch(x, y,'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-0.5 1.5 -0.5 1.5]); grid on
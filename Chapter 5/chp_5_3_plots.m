% 5.3 problem 2a
y = -2:0.1:2; x = 4 - y.^2;

figure
hold on
patch(x, y,'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-5 5 -4 4]); grid on

% 5.3 problem 2b
y = -3:0.1:3; x = abs(y);

figure
hold on
patch(x, y,'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-5 5 -4 4]); grid on

% 5.3 Problem 4(a)
y = -3:0.01:2; x1 = y.^2; x2 = zeros(size(y)); 

figure
hold on
xline(0); yline(0); plot(x1, y); plot(x2, y);
patch([x1 fliplr(x2)], [y, fliplr(y)], 'y')
hold off
xlabel('x'); ylabel('y')
axis([-1 10 -4 4]); grid on

% 5.3 Problem 4(b)
x1 = [-1 -1 0]; y1 = [-2 1 0];
x2 = [1 1 0]; y2 = [-2 1 0];

figure
patch(x1, y1, 'y'); 
hold on
patch(x2, y2, 'y'); xline(0); yline(0);
hold off
xlabel('x'); ylabel('y')
axis([-3 3 -3 3]); grid on

% 5.3 problem 4c
spacing = 0.02; x = 0:spacing:1; y = real(sqrt(1 - x.^2));

figure
hold on
patch([0 x], [0 y],'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-1.5 1.5 -0.5 1.5]); pbaspect([1 0.7 1]); grid on

% 5.3 problem 8
y = 0:0.1:10/4; x = -4/3*y+10/3;

figure
hold on
patch([0 x], [0 y],'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-2 5 -2 4]); grid on

% 5.3 problem 10
x = 0:0.05:1; y = x.^2;

figure
hold on
patch([x 1], [y 0],'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-0.5 1.5 -0.5 1.5]); grid on

% 5.3 problem 11
spacing = 0.02;
x_top = -sqrt(2):spacing:sqrt(2); x_right = sqrt(2):-spacing:1; 
x_bottom = 1:-spacing:-1; x_left = -1:-spacing:-sqrt(2);
y_top = sqrt(2 - x_top.^2); y_right = zeros(size(x_right));
y_bottom = sqrt(1 - x_bottom.^2); y_left = zeros(size(x_left));

x = [x_top x_right x_bottom x_left]; y = real([y_top y_right y_bottom y_left]);

figure
hold on
patch(x, y,'y'); xline(0); yline(0)
hold off
xlabel('x'); ylabel('y')
axis([-2 2 -0.5 2.5]); grid on

% 5.3 Problem 12
x = [pi pi 2*pi 2*pi]; y = [pi 2*pi 4*pi 2*pi];

figure
hold on
patch(x, y,'y')
hold off
xlabel('x'); ylabel('y'); 
axis([0 8 2 15]); grid on

clc; clear;

myColor = [0.3010 0.7450 0.9330];


% % % CHAPTER 5.2 -- The Double Integral Over a Rectangle

% % 5.2.6
% f(x,y) = 9 + x^2 + y^2
x = 0:0.2:2;
y = 0:0.2:3;
[X, Y] = meshgrid(x,y);
Z = 9 + X.^2 + Y.^2;

myFigure = figure;
surf(X,Y,Z,'FaceColor',myColor);
hold on
% y-z face
x_1 = [zeros(size(y)) 0 0]; y_1 = [y 3 0]; z_1 = [Z(:,1)' 0 0];
patch(x_1, y_1, z_1,myColor)
% x-z face
x_2 = [x 2 0]; y_2 = [zeros(size(x)) 0 0]; z_2 = [Z(1,:) 0 0];
patch(x_2, y_2, z_2,myColor)
hold off

xlabel('x'); ylabel('y'); zlabel('z'); axis([0 3 0 4 0 25]); 
pbaspect([1 1.1 2]); view([-1,-1.4,0.5]); title('5.2.6');
saveas(myFigure, 'ex-5-2-6.png');


% % % CHAPTER 5.3 -- The Double Integral Over More General Regions

% % 5.3.2a
% region bounded by y-axis and x = 4 - y^2
y = linspace(-2,2,100); x = 4 - y.^2;

myFigure = figure; title('5.3.2a');
patch(x,y,myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-5 5 -4 4]);
saveas(myFigure, 'ex-5-3-2a.png');

% % 5.3.2b
% region bounded by y-axis, y=x, y = -x, y=3
y = linspace(-3,3,100); x = abs(y);

myFigure = figure; title('5.3.2b');
patch(x,y,myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-5 5 -4 4]);
saveas(myFigure, 'ex-5-3-2b.png');

% % 5.3.4a
% region bounded by y=2, y=-3, x=y^2, x=0
y = linspace(-3,2,100); x1 = y.^2; x2 = zeros(size(y)); 

myFigure = figure; title('5.3.4a');
patch([x1 fliplr(x2)], [y, fliplr(y)],myColor);
hold on
xline(0); yline(0);
hold off
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-4 10 -4 4]);
xticks(-4:10); yticks(-4:4);
saveas(myFigure, 'ex-5-3-4a.png');

% % 5.3.4b
% region bounded by |x|, |2x|, x = -1, x = 1
x1 = [-1 -1 0]; y1 = [-2 1 0];
x2 = [1 1 0]; y2 = [-2 1 0];

myFigure = figure; title('5.3.4b');
patch(x1, y1,myColor); 
hold on
patch(x2, y2,myColor); xline(0); yline(0);
hold off
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-3 3 -3 3]);
saveas(myFigure, 'ex-5-3-4b.png');

% % 5.3.4c
% 1st quadrant of circle radius 1
x = linspace(0,1,50); y = real(sqrt(1 - x.^2));

myFigure = figure; title('5.3.4c');
patch([0 x],[0 y],myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y');
axis([-1.5 1.5 -0.5 1.5]); xticks(-1:1); yticks(-1:1);
saveas(myFigure, 'ex-5-3-4c.png');

% % 5.3.8
% region bounded by the positive x and y axes and 3x + 4y = 10
y = linspace(0,10/4,50); x = -4/3*y+10/3;

myFigure = figure; title('5.3.8');
patch([0 x],[0 y],myColor); xline(0); yline(0); 
text(10/3,0,'10/3','VerticalAlignment','top','HorizontalAlignment','center')
text(0,10/4,'10/4','HorizontalAlignment','right')
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-2 5 -1 4]);
xticks(-2:5); yticks(-1:4);
saveas(myFigure, 'ex-5-3-8.png');

% % 5.3.10
% region bounded by x-axis, x= 1, and y=x^2
x = linspace(0,1,20); y = x.^2;

myFigure = figure; title('5.3.10');
patch([x 1], [y 0],myColor); xline(0); yline(0)
grid on; axis equal; xlabel('x'); ylabel('y'); 
axis([-0.5 1.5 -0.5 1.5]); xticks([-0.5 0 1 1.5]); yticks([-0.5 0 1 1.5]);
saveas(myFigure, 'ex-5-3-10.png');

% % 5.3.11
% region such that 1 ≤ x^2 + y^2 ≤ 2 and y≥0
x_top = linspace(-sqrt(2),sqrt(2),200); x_right = linspace(sqrt(2),1,100); 
x_bottom = linspace(1,-1,100); x_left = linspace(-1,-sqrt(2),100);

y_top = sqrt(2 - x_top.^2); y_right = zeros(size(x_right));
y_bottom = sqrt(1 - x_bottom.^2); y_left = zeros(size(x_left));

x = [x_top x_right x_bottom x_left]; 
y = real([y_top y_right y_bottom y_left]);

myFigure = figure; title('5.3.11');
patch(x,y,myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); 
axis([-2 2 -0.5 2]); xticks(-2:2); yticks(-2:2);
saveas(myFigure,'ex-5-3-11.png');

% % 5.3.12
% region bounded by y= 2x, y=x, x=π, and x= 2π
x = [pi pi 2*pi 2*pi]; y = [pi 2*pi 4*pi 2*pi];

myFigure = figure; title('5.3.12');
patch(x,y,myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-2 8 -2 16]);
saveas(myFigure,'ex-5-3-12.png');

% % % CHAPTER 5.4 -- Changing the Order of Integration

% % 5.4.1a
% region bounded by y-axis, y = 2x
x = linspace(0,4,100); y = 2.*x;

myFigure = figure; title('5.4.1a');
patch([x 0], [y 8], myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-2 6 -2 10]);
saveas(myFigure, 'ex-5-4-1a.png');

% % 5.4.1c
% top semicircle of radius 4
x_left = linspace(-4,0,100); x_right = linspace(0,4,100);
y_left = sqrt(16-x_left.^2); y_right = sqrt(16-x_right.^2);
x = [x_left x_right]; y = [y_left y_right];

myFigure = figure; title('5.4.1c');
patch(x, y, myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-5 5 -3 5]);
saveas(myFigure, 'ex-5-4-1c.png');

% % 5.4.2
% region bounded by y=x, x-axis, x=1
x = [0, 1, 1]; y = [0, 0, 1];

myFigure = figure; title('5.4.2');
patch(x, y, myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-0.5 1.5 -0.5 1.5]);
xticks([-0.5 0 1 1.5]); yticks([-0.5 0 1 1.5]);
saveas(myFigure, 'ex-5-4-2.png');

% % 5.4.16
% region bounded by y=x, y=x^2 in the positive quadrant
x = linspace(0,1,100); y = x.^2;

myFigure = figure; title('5.4.16');
patch(x, y, myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-0.5 1.5 -0.5 1.5]);
xticks([-0.5 0 1 1.5]); yticks([-0.5 0 1 1.5]);
saveas(myFigure, 'ex-5-4-16.png');


% % % CHAPTER 5.5  -- The Triple Integral

% % 5.5.7
% region between the cone z=sqrt(x^2+y^2)and the paraboloid z=x^2+y^2
x = -2:0.1:2; y = x; [X,Y] = meshgrid(x,y);
Z = X.^2 + Y.^2;
Z_2 = sqrt(Z);

myFigure = figure;
surf(X,Y,Z,'FaceColor','b','FaceAlpha',0.2,'EdgeColor','none');
hold on
surf(X,Y,Z_2,'FaceColor','r', 'FaceAlpha',0.2,'EdgeColor','none')
hold off
xlabel('x'); ylabel('y'); zlabel('z'); title('5.5.7');
view([1,1,0.5]); axis([-2 2 -2 2 0 2]); pbaspect([1 1 0.8]);
saveas(myFigure, 'ex-5-5-7.png')

% % 5.5.11
% region bounded by z=x^2+y^2 and z= 10−x^2−2y^2
x = -3.5:0.1:3.5; y = x; 
[X,Y] = meshgrid(x,y);
Z = X.^2 + Y.^2; Z_2 = 10 - X.^2 - 2.*(Y.^2);

myFigure = figure;
surf(X,Y,Z,'FaceColor','b','FaceAlpha',0.2,'EdgeColor','none');
hold on
surf(X,Y,Z_2,'FaceColor','r', 'FaceAlpha',0.2,'EdgeColor','none')
hold off
xlabel('x'); ylabel('y'); zlabel('z'); title('5.5.11');
view([1,1,0.5]); axis([-5 5 -5 5 0 10]); pbaspect([1 1 0.6]);
saveas(myFigure, 'ex-5-5-11.png')

% % 5.5.14
% intersecting cylinders x^2+y^2 ≤ 1 and x^2+z^2 ≤ 1
[X,Y,Z] = cylinder(1,50); Z = 4*(Z - 0.5);

myFigure = figure;
surf(X,Y,Z,'FaceColor','b','FaceAlpha',0.2,'EdgeColor','none');
hold on
surf(X,Z,Y,'FaceColor','r', 'FaceAlpha',0.2,'EdgeColor','none')
hold off
xlabel('x'); ylabel('y'); zlabel('z'); title('5.5.14 Cylinders');
view(135,25); axis([-2 2 -2 2 -2 2]); pbaspect([1 1 1]);
saveas(myFigure, 'ex-5-5-14-1.png')

% second plot showing intersection of cylinders
X = X(:,1:26);
Z = Y(:,1:26);
Y = [Y(1,1:26);fliplr(Y(2,26:51))];

myFigure = figure;
surf(X,Y,Z,'FaceColor','r', 'FaceAlpha',0.7,'EdgeColor','none');
hold on
surf(X,Y,-Z,'FaceColor','r', 'FaceAlpha',0.7,'EdgeColor','none')
surf(X,Z,Y,'FaceColor','b', 'FaceAlpha',0.7,'EdgeColor','none')
surf(X,-Z,Y,'FaceColor','b', 'FaceAlpha',0.7,'EdgeColor','none')
hold off
xlabel('x'); ylabel('y'); zlabel('z'); title('5.5.14 Intersecting region');
view(135,25); axis([-2 2 -2 2 -2 2]); pbaspect([1 1 1]);
saveas(myFigure, 'ex-5-5-14-2.png')

% % 5.5.22
% slanted pyramid with lengths 1
X = [0 0 1 0 1]; Y = [0 0 0 1 1]; Z = [1 0 0 0 0];
X = X(:); Y = Y(:); Z = Z(:);
shp = alphaShape(X, Y, Z);

myFigure = figure;
plot(shp, 'FaceColor', myColor);
xlabel('x'); ylabel('y'); zlabel('z'); title('5.5.22');
view([1 0.6 0.7]); axis([0 1.5 0 1.5 0 1.5]); grid on
saveas(myFigure, 'ex-5-5-22.png')

% % 5.5.30
% region bounded by the planes x= 0, y= 0, z= 0, x+y=1, and z=x+y
X = [0 1 0 1 0]; Y = [0 0 1 0 1]; Z = [0 0 0 1 1];
X = X(:); Y = Y(:); Z = Z(:);
shp = alphaShape(X, Y, Z);

myFigure = figure;
plot(shp, 'FaceColor', myColor);
xlabel('x'); ylabel('y'); zlabel('z'); title('5.5.30');
view([-1 -1.3 0.7]); axis([0 1.5 0 1.5 0 1.5]); grid on
saveas(myFigure, 'ex-5-5-30.png')
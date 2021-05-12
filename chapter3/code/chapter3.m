clc; clear;

myColor = [0 0.4470 0.7410];

% % % CHAPTER 3.3 -- Extrema of Real-Valued Functions

% % 3.3.41
% f(x,y)  =  sinx + cosy
x = linspace(0,2*pi,20); y = x;
[X,Y] = meshgrid(x,y);
Z = sin(X) + cos(Y);

myFigure = figure;
surf(X,Y,Z,'FaceAlpha',0.5);
xlabel('x'); ylabel('y'); zlabel('z'); title('3.3.41');
view([-1 -1.5 1.5]); axis([0 2*pi 0 2*pi -2 2]);
saveas(myFigure, 'ex-3-3-41.png');


% % % CHAPTER 3.4 -- Constrained Extrema and Lagrange Multipliers

% % 3.4.4
% f(x,y) = x - y
x = linspace(-4,4,30); y = x;
[X,Y] = meshgrid(x,y);
Z = X-Y;

% g(x,y) = x^2 - y^2 = 2, on surface of f and on xy plane
xPosC = sqrt(y.^2 + 2); zPosC = xPosC - y;
xNegC = -sqrt(y.^2 + 2); zNegC = xNegC - y;

myFigure = figure;
surf(X,Y,Z,'FaceColor',myColor,'FaceAlpha',0.5,'EdgeColor', 'none');
hold on
pPosPlane = plot3(xPosC,y,zPosC,'red'); pPosPlane.LineWidth = 2;
pNegPlane = plot3(xNegC,y,zNegC,'red'); pNegPlane.LineWidth = 2;
pPosFlat = plot(xPosC,y,'black','LineStyle','--'); pPosFlat.LineWidth = 1;
pNegFlat = plot(xNegC,y,'black','LineStyle','--'); pNegFlat.LineWidth = 1;
hold off
xlabel('x'); ylabel('y'); zlabel('z'); title('3.4.4');
saveas(myFigure, 'ex-3-4-4.png');

% % 3.4.25
% plane c(x,y) = 2px + 2qy, constraint A = xy. Showing existence of minimum
p = 1; q = 1; A = 1;
x = linspace(0.01,10,100); [X,Y] = meshgrid(x,x); C = 2*p*X + 2*q*Y; 
yConstraint = A./x; cConstraint = 2*p.*x + 2*q.*yConstraint;

myFigure = figure;
surf(X,Y,C,'FaceColor',myColor,'FaceAlpha',0.5,'EdgeColor', 'none');
hold on
p1 = plot(x,yConstraint,'black','LineStyle','--'); p1.LineWidth = 2;
p2 = plot3(x,yConstraint,cConstraint,'red'); p2.LineWidth = 2;
hold off
axis([0 10 0 10 0 40]);
xlabel('x'); ylabel('y'); zlabel('cost, c(x,y)'); title('3.4.25');
saveas(myFigure, 'ex-3-4-25.png');

% % 3.4.37
% c(t) = (cos(t), sin(t), sin(t/2);
t = linspace(0,4*pi,100);
x = cos(t);
y = sin(t);
z = sin(t./2);

myFigure = figure;
p = plot3(x,y,z,'-<','MarkerIndices',[25,75],'MarkerSize',10,'MarkerFaceColor','black','MarkerEdgeColor', 'black'); 
p.LineWidth = 2;
grid on; xlabel('x'); ylabel('y'); zlabel('z'); view([1,-0.8,0.5]); title('3.4.37');
text(1,0,0.1,'t = 2k\pi','VerticalAlignment','bottom','HorizontalAlignment','right','FontSize',14);
text(0,1,sqrt(2)/2,'t = 4k\pi+\pi/2','VerticalAlignment','bottom','HorizontalAlignment','left','FontSize',14);
text(-1,0,1,'t = 4k\pi+\pi','VerticalAlignment','top','HorizontalAlignment','left','FontSize',14);
text(-1,0,-1,'t = 4k\pi+3\pi','VerticalAlignment','bottom','HorizontalAlignment','right','FontSize',14);
text(0,-1,-sqrt(2)/2,'t = 4k\pi+7\pi/2','VerticalAlignment','top','HorizontalAlignment','center','FontSize',14);
saveas(p, 'ex-3-4-37.png');
clc; clear;

% % % CHAPTER 4.2 -- Arc length

% % 4.2.7
% c(t) = (t, |t|)
x = [-1 0 1]; y = [1 0 1];

myFigure = figure; 
p = plot(x,y); p.LineWidth = 1; 
grid on; axis equal; xline(0); yline(0); axis([-2 2 -1 2]); pbaspect([1 1 1]);
xlabel('x'); ylabel('y'); xticks(-2:2); yticks(-1:2); title('4.2.7');
text(-1,1,'t=-1','VerticalAlignment','bottom','HorizontalAlignment','center','FontSize',14);
text(0,0,'t=0','VerticalAlignment','top','HorizontalAlignment','center','FontSize',14);
text(1,1,'t=1','VerticalAlignment','bottom','HorizontalAlignment','center','FontSize',14);
saveas(myFigure,'ex-4-2-7.png');


% % % CHAPTER 4.3 -- Vector Fields

% % 4.3.4
% vector field of F(x,y) = (-x, y)
[X, Y] = meshgrid(linspace(-4,4,9), linspace(-3,3,9));
U = -X; V = Y;

myFigure = figure; 
quiver(X, Y, U, V); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y');title('4.3.4');
saveas(myFigure, 'ex-4-3-4.png');

% % 4.3.7
% vector field of F(x,y) = (x/sqrt(x^2 + y^2), y/sqrt(x^2 + y^2))
[X, Y] = meshgrid(linspace(-3,3,9));
U = X./sqrt(X.^2+Y.^2); V = Y./sqrt(X.^2+Y.^2);

myFigure = figure;
quiver(X, Y, U, V); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); title('4.3.7');
saveas(myFigure, 'ex-4-3-7.png');

% % 4.3.8
% vector field of F(x,y) = (y/sqrt(x^2 + y^2), x/sqrt(x^2 + y^2))
[X, Y] = meshgrid(linspace(-3,3,9));
U = Y./sqrt(X.^2+Y.^2); V = X./sqrt(X.^2+Y.^2);

myFigure = figure;
quiver(X, Y, U, V); xline(0); yline(0); 
grid on; axis equal; xlabel('x'); ylabel('y'); title('4.3.8');
saveas(myFigure, 'ex-4-3-8.png');

% % 4.3.12
% vector field of F(x,y) = (x, −y)
[X, Y] = meshgrid(linspace(-1,1,11));
U = X; V = -Y;
% flow lines 
startx = [linspace(-0.7,0.7,7) linspace(-0.7,0.7,7) -0.01 0.01]; 
starty = [ones(1,7) -ones(1,7) 0 0];

myFigure = figure;
quiver(X, Y, U, V);
s = streamline(X, Y, U, V, startx, starty); set(s,'LineWidth',1);
axis equal; xline(0); yline(0); xlabel('x'); ylabel('y'); title('4.3.12');
saveas(myFigure, 'ex-4-3-12.png');

% % 4.3.13
% vector field of F(x,y) = (x, x^2)
[X, Y] = meshgrid(linspace(-3,3,15));
U = X; V = X.^2;
% flow lines
startx = [repmat(-0.1,1,7) repmat(0.1,1,7)]; starty = [-3:3 -3:3];

myFigure = figure;
quiver(X, Y, U, V); 
s = streamline(X, Y, U, V, startx, starty); set(s,'LineWidth',1);
axis equal; xline(0); yline(0); xlabel('x'); ylabel('y'); title('4.3.13');
saveas(myFigure, 'ex-4-3-13.png');


% % % CHAPTER 4.4 -- Divergence and Curl

% % 4.4.8
% vector field of F(x,y) = (−3x, −y)
[X, Y] = meshgrid(linspace(-3,3,10));
U = -3*X; V = -Y;
% flow lines 
startx = [repmat(-3,1,7) repmat(3,1,7) 0 0]; starty = [-3:3 -3:3 -3 3];

myFigure = figure;
quiver(X, Y, U, V);
s = streamline(X, Y, U, V, startx, starty, [0.01, 500]); set(s,'LineWidth',1);
axis equal; xlabel('x'); ylabel('y'); xline(0); yline(0); title('4.4.8');
saveas(myFigure, 'ex-4-4-8.png');
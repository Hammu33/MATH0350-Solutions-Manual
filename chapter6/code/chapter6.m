clc; clear;

myColor = [0.3010 0.7450 0.9330];


% % % CHAPTER 6.1 -- The Geometry of Maps from R2 to R2

% % 6.1.1a
% transformation T(x,y) = (2x,y) on the square centered at (0,0)
myFigure = figure; sgtitle('6.1.1a');

subplot(1,2,1)
patch([-1 1 1 -1], [-1 -1 1 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-3 3 -3 3]); xlabel('x'); ylabel('y');

subplot(1,2,2)
patch([-2 2 2 -2], [-1 -1 1 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-3 3 -3 3]); xlabel('x'); ylabel('y');

saveas(myFigure, 'ex-6-1-1a.png');

% % 6.1.1b
% transformation T(x,y) = (x^2,y) on the square centered at (0,0)
myFigure = figure; sgtitle('6.1.1b');

subplot(1,2,1)
p = patch([-1 1 1 -1], [-1 -1 1 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-3 3 -3 3]); xlabel('x'); ylabel('y');

subplot(1,2,2)
patch([0 1 1 0], [-1 -1 1 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-3 3 -3 3]); xlabel('x'); ylabel('y');

saveas(myFigure, 'ex-6-1-1b.png');

% % 6.1.4
% linear map T that takes unit square to a parallelogram with vertices at 
% (0,0),(−1,3),(−2,0),(−1,−3)
myFigure = figure; sgtitle('6.1.4');

subplot(1,2,1)
patch([0 1 1 0], [0 0 1 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-3 3 -3 3]); xlabel('x'); ylabel('y');

subplot(1,2,2)
patch([0 -1 -2 -1], [0 3 0 -3], myColor); xline(0); yline(0);
grid on; axis equal; axis([-3 3 -3 3]); xlabel('x'); ylabel('y');

saveas(myFigure, 'ex-6-1-4.png');

% % 6.1.5
% mapping T: S -> S∗= (0,1]×[0,2π) by T(r,θ) = (rcosθ,rsinθ)
theta = linspace(0,2*pi,100); x = cos(theta); y = sin(theta);

myFigure = figure; sgtitle('6.1.5');

subplot(1,2,1)
patch([0 1 1 0], [0 0 2*pi 2*pi], myColor, 'EdgeColor', 'none');
line([1 0 0],[2*pi 2*pi 0],'LineStyle','--','LineWidth',1.5); 
line([0 1 1],[0 0 2*pi],'LineWidth',1.5); xline(0); yline(0); 
grid on; axis equal; axis([-2 2 -2 8]); xlabel('r'); ylabel('\theta');

subplot(1,2,2)
patch(x,y,myColor); 
patch(0.05*x, 0.05*y, 'w'); 
xline(0); yline(0); xticks(-2:2); yticks(-2:2); 
grid on; axis equal; axis([-2 2 -2 2]); xlabel('x'); ylabel('y');

saveas(myFigure, 'ex-6-1-5.png');

% % 6.1.7
% T: D* -> D, where D* = [0,1]x[0,1] and T(u,v) = (−u^2+4u, v)
myFigure = figure; sgtitle('6.1.7');

subplot(1,2,1)
patch([0 1 1 0], [0 0 1 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-2 4 -2 4]); xlabel('u'); ylabel('v');
xticks(-2:4); yticks(-2:4);

subplot(1,2,2)
patch([0 3 3 0], [0 0 1 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-2 4 -2 4]); xlabel('u'); ylabel('v');
xticks(-2:4); yticks(-2:4);
 
saveas(myFigure, 'ex-6-1-7.png');

% % 6.1.10
% T: D* -> D, where D∗ is the parallelogram (−1,3),(0,0),(2,−1),(1,2) and
% D = [0,1]x[0,1]
myFigure = figure; sgtitle('6.1.10');

subplot(1,2,2)
patch([0 1 1 0], [0 0 1 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-3 3 -3 3]); xlabel('x'); ylabel('y');

subplot(1,2,1)
patch([-1 0 2 1], [3 0 -1 2], myColor); xline(0); yline(0);
grid on; axis equal; axis([-3 3 -3 3]); xlabel('x'); ylabel('y');

saveas(myFigure, 'ex-6-1-10.png');


% % % CHAPTER 6.2 -- The Change of Variables Theorem

% % 6.2.4
% D is the region 0≤y≤x and 0≤x≤1. By change of variables x=u+v, y=u−v,
% the new region is described by 0≤u≤1, u≤v≤1−u.
myFigure = figure; sgtitle('6.2.4');

subplot(1,2,1)
patch([0 0.5 1], [0 0.5 0], myColor); xline(0); yline(0);
grid on; axis equal; axis([-1 2 -1 2]); xlabel('u'); ylabel('v');
xticks(-1:2); yticks(-1:2);

subplot(1,2,2)
patch([0 1 1], [0 0 1], myColor); xline(0); yline(0);
grid on; axis equal; axis([-1 2 -1 2]); xlabel('x'); ylabel('y');
xticks(-1:2); yticks(-1:2);

saveas(myFigure, 'ex-6-2-4.png');

% % 6.2.6
% T: D* -> D defined by T(u,v) = (u,v(1 +u)), where D∗ is [0,1]×[1,2].
myFigure = figure; sgtitle('6.2.6');

subplot(1,2,1)
patch([0 1 1 0], [1 1 2 2], myColor); xline(0); yline(0);
grid on; axis equal; axis([-1 3 -1 5]); xlabel('x'); ylabel('y');

subplot(1,2,2)
patch([0 1 1 0], [1 2 4 2], myColor); xline(0); yline(0);
grid on; axis equal; axis([-1 3 -1 5]); xlabel('x'); ylabel('y');

saveas(myFigure, 'ex-6-2-6.png');


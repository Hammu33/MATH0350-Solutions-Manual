clc; clear;

myColor = [0.3010 0.7450 0.9330];


% % % CHAPTER 8.1 -- Green's Theorem

% % 8.1.2 
% y = x^2 + 4
x1 = 2:-0.01:-2; y1 = x1.^2 + 4;

% y = 2x^2
x2 = -2:0.01:2; y2 = 2*x2.^2;

myFigure = figure;
patch([x1 x2],[y1 y2],myColor); xline(0); yline(0);
grid on; axis equal; xlabel('x'); ylabel('y'); axis([-4 4 -2 10]);
xticks(-4:4); yticks(-2:10); title('8.1.2');
saveas(myFigure,'ex-8-1-2.png');

% % 8.1.27 
% one loop of four-leafed rose
% 1st quadrant of leaf
theta = 0:0.05:pi/2; r = 3*sin(2*theta);
x = r.*cos(theta); y = r.*sin(theta);

% 2nd to 4th quadrant of leaf
theta = pi/2:0.05:2*pi; r = 3*sin(2*theta);
xRest = r.*cos(theta); yRest = r.*sin(theta); 

myFigure = figure;
patch([x 0], [y 0],myColor); patch([xRest 0], [yRest 0],'w');
xline(0); yline(0); xlabel('x'); ylabel('y'); grid on;
xticks([-2.5 -2:2 2.5]); yticks([-2.5 -2:2 2.5]); title('8.1.27');
saveas(myFigure,'ex-8-1-27.png');

% % % CHAPTER 8.2 -- Stokes' Theorem

% % 8.2.1 
% region enclosed by (−1,1,4), (2,1,−2), (2,3,−8), (−1,3,−2)
x = [-1,2,2,-1]; y = [1,1,3,3]; z = [4,-2,-8,-2];

myFigure = figure;
fill3(x,y,z,myColor); 
grid on; xlabel('x'); ylabel('y'); zlabel('z'); view([1 1 1]); 
axis([ -2 3 -2 4 -10 10]); title('8.2.1');
text(-1,1,4,'(-1,1,4)','VerticalAlignment','bottom','HorizontalAlignment','center','FontSize',14);
text(2,1,-2,'(2,1,-2)','VerticalAlignment','middle','HorizontalAlignment','right','FontSize',14);
text(2,3,-8,'(2,3,-8)','VerticalAlignment','top','HorizontalAlignment','center','FontSize',14);
text(-1,3,-2,'(-1,3,-2)','VerticalAlignment','middle','HorizontalAlignment','left','FontSize',14);
saveas(myFigure,'ex-8-2-1.png');
clc; clear;

myColor = [0.3010 0.7450 0.9330];


% % % CHAPTER 2.1 --   The Geometry of Real-Valued Functions

% % 2.1.6 
% f(x,y) = 9x^2 + y^2
% part(a): level curves for c = 0,1,9
cs = [0 1 9]; theta = linspace(0,2*pi,100);

myFigure = figure;
hold on
for c = cs
    if c == 0
        r = 0.03;
        patch(r*cos(theta),r*sin(theta),'black','EdgeColor','none');
        text(0,r,append('c=',string(c)),'VerticalAlignment','bottom');
    else
        x = sqrt(c/9)*cos(theta); y = sqrt(c)*sin(theta);
        p = plot(x,y); p.LineWidth = 2;
        text(x(10),y(10),append('c=',string(c)));
    end
end
hold off
grid on; axis equal; axis([-3 3 -3 3]); 
xlabel('x'); ylabel('y'); xline(0); yline(0); title('2.1.6a'); 
saveas(myFigure, 'ex-2-1-6a.png');

% part(b): sections for x = -1,0,1
xs = [-1 0 1];

myFigure = figure;
hold on
for x = xs
    x = repmat(x,1,100); y = linspace(-3,3,100); z = 9*x.^2 + y.^2;
    p = plot3(x,y,z); p.LineWidth = 2;
    textPos = 90;
    text(x(textPos),y(textPos),z(textPos),append('x=',string(x(textPos))),'VerticalAlignment','top','HorizontalAlignment','left','FontSize',14); 
end
x = linspace(-1.3,1.3,100); y = zeros(1,100); z = 9*x.^2 + y.^2;
p = plot3(x,y,z,'--','Color','black'); p.LineWidth = 2;
hold off
grid on; pbaspect([2 3 3]); axis([-2 2 -3 3 0 18]); view([1 2 0.3]); 
xlabel('x'); ylabel('y'); zlabel('z'); xticks(-2:2); title('2.1.6b');
saveas(myFigure, 'ex-2-1-6b.png');

% part(c): sections for y = -1,0,1
ys = [-1 0 1];

myFigure = figure;
hold on
for y = ys
    x = linspace(-2,2,100); y = repmat(y,1,100); z = 9*x.^2 + y.^2;
    p = plot3(x,y,z); p.LineWidth = 2;
    textPos = 20;
    text(x(textPos),y(textPos),z(textPos),append('y=',string(y(textPos))),'VerticalAlignment','top','HorizontalAlignment','left','FontSize',14); 
end
x = zeros(1,100); y = linspace(-1.3,1.3,100); z = 9*x.^2 + y.^2;
p = plot3(x,y,z,'--','Color','black'); p.LineWidth = 2;
hold off
grid on; pbaspect([2 3 3]); axis([-2 2 -3 3 0 18]); view([1 1 0.3]); 
xlabel('x'); ylabel('y'); zlabel('z'); xticks(-2:2); title('2.1.6c');
saveas(myFigure, 'ex-2-1-6c.png');

% part(d): graph of f(x,y)
x = linspace(-2,2,20); y = linspace(-5,5,20); [X,Y] = meshgrid(x,y);
Z = 9*X.^2 + Y.^2;

myFigure = figure;
surf(X,Y,Z,'FaceColor', myColor, 'FaceAlpha',0.5,'EdgeColor','none');
grid on; pbaspect([1 2 3]); axis([-3 3 -6 6 0 18]); view([1 1 0.5]); 
xlabel('x'); ylabel('y'); zlabel('z'); xticks(-3:3); yticks(2.*[-3:3]); title('2.1.6d');
saveas(myFigure, 'ex-2-1-6d.png');

% % 2.1.13 
% f(x,y) = sqrt(100−x^2−y^2)
% level curves for c = 0,2,4,6,8,10
cs = 0:2:10; theta = linspace(0,2*pi,100);

myFigure = figure;
hold on
for c = cs
    if c == 10
        r = 0.07;
        patch(r*cos(theta),r*sin(theta),'black','EdgeColor','none');
        text(0,r,append('c=',string(c)),'VerticalAlignment','bottom');
    else
        x = sqrt(100-c^2)*cos(theta); y = sqrt(100-c^2)*sin(theta);
        plot(x,y); 
        text(x(12),y(12-c/2),append('c=',string(c)),'VerticalAlignment','bottom','HorizontalAlignment','left');
    end
end
hold off
grid on; axis equal; axis([-11 11 -11 11]); xline(0); yline(0);
xlabel('x'); ylabel('y'); xticks(-10:2:10); yticks(-10:2:10); title('2.1.13.1');
saveas(myFigure, 'ex-2-1-13-1.png');

% sketch of graph f
[X,Y,Z] = sphere(30); range = 16:31;
X = 10*X(range,:); Y = 10*Y(range,:); Z = 10*Z(range,:);

myFigure = figure;
surf(X,Y,Z,'FaceColor', myColor, 'FaceAlpha',0.5,'EdgeColor','none');
grid on; view([1 1 1]); xlabel('x'); ylabel('y'); zlabel('z'); title('2.1.13.2');
saveas(myFigure, 'ex-2-1-13-2.png');

% % 2.1.26
% f(x,y) = max(abs(x), abs(y))
% level sets
cs = 0:3;

myFigure = figure;
hold on
for c = cs
if c == 0
    r = 0.03; theta = linspace(0,2*pi,10);
    patch(r*cos(theta),r*sin(theta),'black','EdgeColor','none');
    text(0,r,append('c=',string(c)),'VerticalAlignment','bottom');
else
    p = plot([c c -c -c c],[-c c c -c -c]); p.LineWidth = 2;
    text(c,0,append('c=',string(c)),'VerticalAlignment','bottom','HorizontalAlignment','left');
end
end
hold off
grid on; axis equal; axis([-4 4 -4 4]); xline(0); yline(0);
xlabel('x'); ylabel('y'); title('2.1.26.1');
saveas(myFigure, 'ex-2-1-26-1.png');

% sections
cs = -2:2;
% fix x
myFigure = figure;
hold on
for c = cs 
    y = -3:3; x = repmat(c,size(y)); z = max([abs(x); abs(y)],[],1);
    p = plot3(x,y,z); p.LineWidth = 2;
    text(x(1),y(1),z(1),append('x=',string(c)),'VerticalAlignment','bottom','HorizontalAlignment','right');
end
hold off
grid on; axis equal;  axis([-4 4 -4 4 0 4]); view([1 1 0.5]);
xlabel('x'); ylabel('y'); zlabel('z'); title('2.1.26.2');
saveas(myFigure, 'ex-2-1-26-2.png');

% fix y
myFigure = figure;
hold on
for c = cs 
    x = -3:3; y = repmat(c,size(x)); z = max([abs(x); abs(y)],[],1);
    p = plot3(x,y,z); p.LineWidth = 2;
    text(x(1),y(1),z(1),append('y=',string(c)),'VerticalAlignment','bottom','HorizontalAlignment','right');
end
hold off
grid on; axis equal;  axis([-4 4 -4 4 0 4]); view([1 1 0.5]);
xlabel('x'); ylabel('y'); zlabel('z'); title('2.1.26.3');
saveas(myFigure, 'ex-2-1-26-3.png');

% graph of f
x = linspace(-3,3,50); [X,Y] = meshgrid(x,x); Z = max(cat(3,abs(X),abs(Y)),[],3);
myFigure = figure;
surf(X,Y,Z,'FaceColor', myColor, 'FaceAlpha',0.5,'EdgeColor','none');
grid on; view([1 1 0.5]); xlabel('x'); ylabel('y'); zlabel('z'); 
axis([-4 4 -4 4 0 3]); title('2.1.26.4');
saveas(myFigure, 'ex-2-1-26-4.png');

% % 2.1.32 
x = linspace(-15,15,50); r = sqrt(1 + x.^2/16); theta = linspace(0,2*pi,50);
[R, Theta] = meshgrid(r,theta); 
X = repmat(x,length(theta),1); Y = 3*R.*cos(Theta); Z = 2*R.*sin(Theta);

myFigure = figure;
surf(X,Y,Z,'FaceColor', myColor, 'FaceAlpha',0.5,'EdgeColor','none');
grid on; view([1 2 1.4]); xlabel('x'); ylabel('y'); zlabel('z'); 
axis([-15 15 -15 15 -10 10]); title('2.1.32');
saveas(myFigure, 'ex-2-1-32.png');


% % % CHAPTER 2.4 --  Introduction to Paths and Curves

% % 2.4.2
% c(t) = (sin(t), 4cos(t))
t = 0:0.01:2*pi;
x = sin(t);
y = 4*cos(t);

myFigure = figure;
p = plot(x,y); p.LineWidth = 1.5;
grid on; axis equal; xlabel('x'); ylabel('y'); xline(0); yline(0); 
axis([-4 4 -5 5]); xticks(-4:4); yticks(-5:5); title('2.4.2');
text(0,4,'t = 0, 2\pi','VerticalAlignment','bottom','HorizontalAlignment','center')
text(0,-4,'t = \pi','VerticalAlignment','top','HorizontalAlignment','center')
text(-1,0,'t = \pi/2','VerticalAlignment','top','HorizontalAlignment','right')
text(1,0,'t = 3\pi/2','VerticalAlignment','top','HorizontalAlignment','left')
saveas(myFigure, 'ex-2-4-2.png');

% % 2.4.4
% c(t) = (2sin(t), 4cos(t))
t = 0:0.01:2*pi;
x = 2*sin(t);
y = 4*cos(t);

myFigure = figure;
p = plot(x,y); p.LineWidth = 1.5;
grid on; axis equal; xlabel('x'); ylabel('y'); xline(0); yline(0); 
axis([-4 4 -5 5]); xticks(-4:4); yticks(-5:5); title('2.4.4');
text(0,4,'t = 0, 2\pi','VerticalAlignment','bottom','HorizontalAlignment','center')
text(0,-4,'t = \pi','VerticalAlignment','top','HorizontalAlignment','center')
text(-2,0,'t = \pi/2','VerticalAlignment','top','HorizontalAlignment','right')
text(2,0,'t = 3\pi/2','VerticalAlignment','top','HorizontalAlignment','left')
saveas(myFigure, 'ex-2-4-4.png');
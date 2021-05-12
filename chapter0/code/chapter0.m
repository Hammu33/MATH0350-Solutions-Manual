% Code for Code block demostrations  

clc; clear;


% % Curves
% curve y = x^2
% create x values from -2 to 2, spaced 0.1 apart
x = -2:0.1:2; 

% compute y = x^2. 
% .^, rather than ^, is used when operating on lists/arrays
y = x.^2;

% plot curve
figure
plot(x,y);      % for curves in 3D, use plot3(x,y,z) instead of plot(x,y)



% % Shaded Region
% region bounded by y= 2x, y=x, x=π, and x= 2π
x = [pi pi 2*pi 2*pi]; y = [pi 2*pi 4*pi 2*pi];

figure
patch(x,y,'b');             % last argument 'b' is the color blue
xline(0); yline(0);         % axes lines 
xlabel('x'); ylabel('y');   % axes labels
grid on; axis equal;        % grid lines and equal scaling on axes
axis([-2 8 -2 16]);         % customize the x and y limits of generated figure



% % Vector field F(x,y) = (-x,y)
% create x-y grid from -3 to 3 on each axis, spaced 0.5 apart
[X,Y] = meshgrid(-3:0.5:3,-3:0.5:3); 

% compute vector field F(x,y) = (-x,y) = (u,v)
U = -X; V = Y;

% plot vector field
figure
quiver(X,Y,U,V);



% % Surface f(x,y) = sinx + cosy
% create a 20x20 grid of evenly spaced points from 0 to 2pi
% linspace is advised when spacing is hard to compute for limits like 2pi
[X,Y] = meshgrid(linspace(0,2*pi,20),linspace(0,2*pi,20));

% compute f(x,y), storing as Z
Z = sin(X) + cos(Y);

% plot surface
figure
surf(X,Y,Z);
xlabel('x'); ylabel('y'); zlabel('z');              % axes labels
title('myTitle');                                   % title
view([-1 -1.5 1.5]); axis([0 2*pi 0 2*pi -2 2]);    % customized view perspective
% 5.5 problem 7
x = -2:0.1:2; y = x; [X,Y] = meshgrid(x,y);
Z_1 = X.^2 + Y.^2;
Z_2 = sqrt(Z_1);

figure
surf(X,Y,Z_1,'FaceColor','b','FaceAlpha',0.3,'EdgeColor','none')
hold on
surf(X,Y,Z_2,'FaceColor','r', 'FaceAlpha',0.3,'EdgeColor','none')
hold off
xlabel('x'); ylabel('y'); zlabel('z')
view(45,15); axis([-2 2 -2 2 0 2]); pbaspect([1 1 0.8])

% 5.5 problem 11
x = -3.5:0.1:3.5; y = x; 
[X,Y] = meshgrid(x,y);
Z_1 = X.^2 + Y.^2; Z_2 = 10 - X.^2 - 2.*(Y.^2);

figure
surf(X,Y,Z_1,'FaceColor','b','FaceAlpha',0.2,'EdgeColor','none')
hold on
surf(X,Y,Z_2,'FaceColor','r', 'FaceAlpha',0.2,'EdgeColor','none')
hold off
xlabel('x'); ylabel('y'); zlabel('z')
view(50,15); axis([-5 5 -5 5 0 10]); pbaspect([1 1 0.6])
% h = legend('$z = x^2+y^2$', '$z = \sqrt{x^2+y^2}$');
% set(h,'Interpreter','latex')

% 5.5 problem 14
[X_1,Y_1,Z_1] = cylinder(1,50); Z_1 = 4*(Z_1 - 0.5);
[X_2,Z_2,Y_2] = cylinder(1,50); Y_2 = 4*(Y_2 - 0.5);

figure
surf(X_1,Y_1,Z_1,'FaceColor','b','FaceAlpha',0.15,'EdgeColor','none')
hold on
surf(X_2,Y_2,Z_2,'FaceColor','r', 'FaceAlpha',0.15,'EdgeColor','none')
hold off
xlabel('x'); ylabel('y'); zlabel('z')
view(135,25); axis([-2 2 -2 2 -2 2]); pbaspect([1 1 1])

% 5.5 Problem 22
X = [0 0 1 0 1]; Y = [0 0 0 1 1]; Z = [1 0 0 0 0];
X = X(:); Y = Y(:); Z = Z(:);
shp = alphaShape(X, Y, Z);

figure
p = plot(shp); p.FaceColor = 'y';
xlabel('x'); ylabel('y'); zlabel('z')
view(120, 30); axis([0 1.5 0 1.5 0 1.5]); grid on

% 5.5 Problem 30
X = [0 1 0 1 0]; Y = [0 0 1 0 1]; Z = [0 0 0 1 1];
X = X(:); Y = Y(:); Z = Z(:);
shp = alphaShape(X, Y, Z);

figure
p = plot(shp, 'FaceColor', 'y');
xlabel('x'); ylabel('y'); zlabel('z')
view(-60, 30); axis([0 1.5 0 1.5 0 1.5]); grid on
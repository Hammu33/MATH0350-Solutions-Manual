clc; clear;

myColor = [0.3010 0.7450 0.9330];


% % % CHAPTER 1.4 -- Cylindrical and Spherical Coordinates

% % 1.4.6b
% solid r∈[0,1], θ∈[0,π], z∈[−1,1]
[X,Y,Z] = cylinder(1,50); Z = 2*Z - 1; range = 1:13;
X = [X(:,range) zeros(2) [1;1]]; 
Y = [Y(:,range) [1;1] zeros(2)]; Z = Z(:,1:16);

myFigure = figure;
surf(X,Y,Z,'FaceColor',myColor,'FaceAlpha',0.5,'EdgeColor','none'); 
patch(X(1,:),Y(1,:),Z(1,:),myColor,'FaceAlpha',0.5,'EdgeColor',myColor);
patch(X(1,:),Y(1,:),Z(2,:),myColor,'FaceAlpha',0.5,'EdgeColor',myColor);
axis([-2 2 -2 2 -1 1]); pbaspect([1 1 0.5]); view([1.5 1 1]);
xlabel('x'); ylabel('y'); zlabel('z'); title('1.4.6b');
saveas(myFigure, 'ex-1-4-6b.png')

% % 1.4.6d
% solid ρ∈[1,2], θ∈[0,2π], φ∈[0,π/2]
[X,Y,Z] = sphere; range = 11:21;
X = X(range,:); Y = Y(range,:); Z = Z(range,:);

myFigure = figure;
surf(X,Y,Z,'FaceColor',myColor,'FaceAlpha',0.3,'EdgeColor','none'); 
hold on
surf(2*X, 2*Y, 2*Z,'FaceColor',myColor,'FaceAlpha',0.3,'EdgeColor','none'); 
patch(X(1,:),Y(1,:),zeros(1,size(Z,2)),myColor,'FaceAlpha',0.3,'EdgeColor',myColor);
hold off
axis([-3 3 -3 3 0 2]); pbaspect([1 1 0.5]); title('1.4.6d');
xlabel('x'); ylabel('y'); zlabel('z');
saveas(myFigure, 'ex-1-4-6d.png')
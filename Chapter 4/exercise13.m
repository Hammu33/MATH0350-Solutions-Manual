[x, y] = meshgrid(-3:0.3:3);
u = x;
v = x.^2;
quiver(x, y, u, v);
startx = -1:0.3:1;
starty = zeros(size(startx));
streamline(x, y, u, v, startx, starty);
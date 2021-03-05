[x, y] = meshgrid(-1:0.2:1);
u = x;
v = -y;
quiver(x, y, u, v);
startx = -1:0.1:1;
starty = ones(size(startx));
streamline(x, y, u, v, startx, starty);
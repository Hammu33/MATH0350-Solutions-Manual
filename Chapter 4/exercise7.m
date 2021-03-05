[x, y] = meshgrid(-3:0.5:3, -3:0.5:3);
u = x./sqrt(x.^2+y.^2);
v = y./sqrt(x.^2+y.^2);
quiver(x, y, u, v);
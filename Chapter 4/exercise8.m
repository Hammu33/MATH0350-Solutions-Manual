[x, y] = meshgrid(-3:0.5:3, -3:0.5:3);
u = y./sqrt(x.^2+y.^2);
v = x./sqrt(x.^2+y.^2);
quiver(x, y, u, v);
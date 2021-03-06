[x, y] = meshgrid(-3:0.3:3);
u = x;
v = x.^2;
quiver(x, y, u, v);
xlabel('x')
ylabel('y')

startx = [repmat(-0.05,1,7) repmat(0.05,1,7)];
starty = [-3:3 -3:3];
streamline(x, y, u, v, startx, starty);

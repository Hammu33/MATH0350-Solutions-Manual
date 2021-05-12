% % %  CHAPTER 7.3 -- Parametrized Surfaces

% % 7.3.17
% surface Φ(r,θ) = (rcosθ,rsinθ,θ), 0≤r≤1 and 0≤θ≤4π.
r = 0:0.01:1; theta = linspace(0,4*pi,100);

X = r'*cos(theta); Y = r'*sin(theta);
Z = repmat(theta,length(r),1);

myFigure = figure;
s = surf(X,Y,Z); s.EdgeColor = 'none'; view([1,-1,0.8]);
xlabel('x'); ylabel('y'); zlabel('z'); title('7.3.17');
saveas(myFigure, 'ex-7-3-17.png');

[x,y] = meshgrid(0:0.1:2,0:0.1:2);
A = 1.5
z = (x.^2 - A.*x - y).*exp(-y)
 meshc(x,y,z)
 surface (x,y,z)
 xlabel('x')
ylabel('y')
zlabel('z')
title ('surface plot')
 figure
contour(x,y,z,30)
xlabel('x')
ylabel('y')
zlabel('z')
title('level curves plot')
colorbar
grid on

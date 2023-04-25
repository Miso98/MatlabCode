 [x,y]=meshgrid(0:0.05:2);
 T = (sin(pi.*x).*sinh(pi.*y)+sin(pi.*(x-2)).*sinh(pi.*(y-2)))/sin(2.*pi)
 meshc(x,y,T)
grid on
xlabel('x')
ylabel('y')
zlabel('T')
colorbar
title('temperature of interior plate')

figure
contour(x,y,T,30)
grid on
xlabel('x')
ylabel('y')
title('contour of temperature of plate')

[x,y] = meshgrid(-pi:0.1:pi,-pi:0.1:pi);
z = ((sin(x.*pi)./(pi.*x+10^-16)).^2).*((sin(y.*pi)./(pi.*y+10^-16)).^2)
surface(x,y,z)
grid on
xlabel('x')
ylabel('y')
zlabel('z')
title('surface plot')
colorbar

%plot3(x,y,z) for 3D graph
[x,y] = meshgrid(-4:.5:4,-4:.5:4);
z = (x-3).^2 + (y+1).^2  ; 
surface (x,y,z) 
xlabel('x')
ylabel('y')
zlabel('z')
colorbar
grid on
title ('surface graph of f') 
%turn x into x(1) and y into x(2) 

fminsearch('(x(1)-3).^2 + (x(2)+1).^2',[3,-1,0])
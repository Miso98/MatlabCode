
clear
close
clc 
p= 2500;
g = 9.8;
b = .3;
a= .4;

c = linspace (0,a);
d = a-c;

forcecomp1 = (p*g*b/(a^2))* (-1/4*a^4 + 1/3*a^3 * (a+d) - a*d*.5*a^2);
forcecomp2 = (p*g*b/(a^2))* (-.25*d.^4 + 1/3*d.^3 .* (d+a) - .5*d.^2 .* (a*d)) ;

force = forcecomp1 - forcecomp2

plot(c,force)
title('minimum force vs concrete depth')
xlabel('depth [m]')
ylabel('force[N]')






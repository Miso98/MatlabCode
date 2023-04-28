clear
clc
R = .5;
ro = 4 * 10^-2;
g = 9.81;
to = 0;
h = 5 * 10^ -2;
tf = 30;
yo = R;

[t,y] = euler(@(t,y)myODE(ro, g, R, t, y), g, R, to,tf,yo,h);
plot(t,y);
grid on;
xlabel('time [s]');
ylabel('water level [m]');
title(' level of water in tank vs time');
timestep = find(y<0, 1, 'first')
t(timestep) 

function [t,y] = euler(f, g, R, to, tf, yo, h)
    t(1) = to;
    y(1) = yo;
    n = 1;
    while t(n) < tf 
            t(n+1) = t(n) + h;
            y(n+1) = y(n) + h.* f(t(n),y(n));
            n = n+1;
    end
end

function yprime = myODE(ro, g, R, t, y)
     if y > 0
        yprime = (-1.*ro.^2 .* sqrt(2.*g))./(2.*R.*y.^.5 - y.^1.5);
     else 
        yprime = 0;
     end
end 
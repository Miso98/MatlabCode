clear
clc
L = .5;
to = 0;
tf = 25;
h = .05;
w = 2;
Eo = 3;
R = 10;
Io = 6;
[t,I] = euler(Io, L, R, Eo, w, h, tf, to);
plot(t,I);
grid on;
xlabel('time');
ylabel('current');
title('curent vs time');

function [t,I] = euler(Io, L, R, Eo, w, h, tf, to)
I(1) = Io;
t(1) = to;
n = 1;
    while t(n) < tf
    t(n+1) = t(n) + h;
    I(n+1) = I(n) + h/L*(Eo*sin(w*t(n)) - R.*I(n));
    n = n+1;
    end
end
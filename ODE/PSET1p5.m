clear all
close all
clc 
t = linspace(-6, 6, 25);
y = linspace(-4, 4, 25);
[t,y] = meshgrid(t,y);
Vx = ones(size(t));
% y' = sin(t)
Vy = Vx.*(sin(t));

% normlazing the size 
length = sqrt(Vx.^2 + Vy.^2);
Vx = Vx./length;
Vy = Vy./length; 
quiver(t, y, Vx, Vy);
title('Quiver plot of dy/dx = sin t');
xlabel('t');
ylabel('y');
grid on;
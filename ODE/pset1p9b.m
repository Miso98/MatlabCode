clear all
close all
clc

g = 9.8;
x0 = 0;
y0 = 1000;
tRange = linspace(0,5);
v0 = 20;
theta0 = pi/6;

while theta0 <= pi/3
     [xval, yval] = trajectory(x0, y0, v0, theta0, g, tRange);
     plot(xval, yval);
     hold on;
     theta0 = theta0 + pi/12;
end

grid on;
legend('angle = pi/6','angle = pi/4','angle = pi/3'); 
title('trajectory of ideal projectile');
xlabel('horizontal distance');
ylabel('vertical distance');


function [x,y] = trajectory(x0,y0,v0,theta0,g,t)
x = x0 + v0*cos(theta0).*t;
y = y0 - .5* g * t.^2 + v0 * sin(theta0).* t;
end


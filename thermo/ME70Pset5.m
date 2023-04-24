clear 
close
clc

V = 20;
u_k = .1;
M = 30;
g = 9.8;
p = 1000;
A = .02;
theta = linspace(0,pi/2);

u = V - sqrt(u_k*M*g./(p*A*(1-cos(theta)-u_k.*sin(theta))));

plot(theta,u)
xlabel('angle [rad]');
ylabel('terminal velocity [m/s]');
title('terminal velocity vs angle');


clear
clc
close

h = .5 * 10^-3;
m = 1; 
M = 5; 
g = 9.8;
A = 25*10^-4;
u = 1.29;

t = linspace(0,10);

v = h*m*g / (u*A) * (1 - exp(-1* t.*u*A / h / (m+M)));


plot(v,t)
xlabel('time [s]')
ylabel('V(t) [m/s]')
title('velocity vs time') 


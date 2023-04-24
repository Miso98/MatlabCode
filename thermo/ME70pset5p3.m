clear 
close
clc

P_g = linspace(0,40);
p = 1000;

V = sqrt(2*P_g * 10^6 /p);

plot(P_g,V);
xlabel('gage pressure [MPa]');
ylabel('velocity of high-speed jet [m/s]');
title('velocity of jet vs gage pressure');

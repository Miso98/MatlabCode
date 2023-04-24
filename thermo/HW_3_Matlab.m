%% ME123 HW 3
%{
Lab Report 3
Mitchell So
%}
 
clear all;
close all
clc;
 
data = csvread('HW3Const.csv', 2, 0);
distance = data(:,1) + 0.005; 
temp = data(:,2); 
 
plot(distance,temp, 'o')
xlabel('distance from inner wall[m]')
ylabel('temperature [degrees C]')
title('Radial temperature of copper pipe vs distance')
 
T_0 = 30;
T_i = 80;
r_0 = 0.0065;
r_i = 0.005;
 
r = 0.005:0.0005:0.0065;
T = (T_0 - T_i)*(log(r) - log(r_i)) / (log(r_0/r_i)) +T_i;
 
hold on;
plot(r,T)
 
data2 = csvread('HW3Varied.csv', 2, 0);
distance2 = data2(:,1) + 0.005; 
temp2 = data2(:,2); 
 
hold on;
plot(distance2,temp2, '*')
 
legend('Constant Conductivity', 'Validation curve', 'Varied Conductivity')
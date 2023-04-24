%% ME123 HW 2
%{
Lab 2 Report
Mitchell So
%}
 
clear all;
close all
clc;
 
%% Mesh 1 plot
 
data = csvread('RadialVelocity1.csv', 2, 0);
radius = data(:,1); 
velocity = data(:,2); 
 
plot(radius,velocity)
xlabel('radius position [m]')
ylabel('radial velocity [m/s]')
title('Mesh 1 Radial Velocity vs Radius ')
 
 
%% Mesh 2 plot
 
data2 = csvread('RadialVelocity2.csv', 2, 0);
radius2 = data2(:,1); 
velocity2 = data2(:,2); 
 
figure(2)
plot(radius2,velocity2)
xlabel('radius position [m]')
ylabel('velocity [m/s]')
title('Mesh 2 Radial Velocity vs Radius ')
 
% Uncertainty: Vmax2-Vmax1 for difference in centerline velocities
Vmax1 = 0.006646; 
Vmax2 = 0.007323;
E12 = Vmax2 - Vmax1
 
%large uncertainty value expected because boundary conditions changed between Mesh 1 and 2 (first layer height set to 0.2mm in Mesh2)thus the error includes more than just  resolution normalization.
 
 
%% Mesh 3 plot
 
data3 = csvread('RadialVelocity3.csv', 2, 0);
radius3 = data3(:,1); 
velocity3 = data3(:,2); 
 
figure(3)
plot(radius3,velocity3)
xlabel('radius position [m]')
ylabel('velocity [m/s]')
title('Mesh 3 Radial Velocity vs Radius')
 
% Uncertainty margin between 2 and 3
Vmax3 = 0.007783;
E23 = Vmax3 - Vmax2
 
%This uncertainty between 2 and 3  is slightly less than between 1 and 2 because there is no boundary layer change in the Mesh 3 setup, only an increase in resolution.


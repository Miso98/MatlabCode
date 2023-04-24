% define time values
t = 0:1: 10; 
% define accerleration of gravity 
g = 3.72;
% compute displacement y 
y = g * t.^2;
% Plot
plot(t,y,'b--')

% Create labels
grid on
xlabel('Time [s]')
ylabel('Distance fallen [m]')
title('Distance fallen as a function of time on Mercury')
% compute displacement for Earth 
g = 9.80;
t = 0:1:10;
y= g*t.^2;
% plot displacement for earth
plot (t,y,'b--')
grid on
hold on
% both functions are plotted in the same figure
%compute displacement for Jupiter 
g = 24.79;
y = g*t.^2;

% plot displacement for jupiter 
plot (t,y,'r-')
%compute displacement for Mercury
g = 3.72;
y = g* t.^2;
% plot displacement for Mercury 
plot (t,y,'g-') 
% Create labels
title ('Distance fallen as a function of time')
xlabel('Time[s]')
ylabel('Distance Fallen [m]')
% Add a legend 
legend ('Earth','Jupiter','Mercury')
% End of the hold command
hold off
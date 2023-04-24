% Compute resultant voltages of circuit with R=2
i= [0 .5 1 1.5 2 2.5 2.7 2.8 2.9 3]  
R = 2;
V = i.*R
% plot resultant voltages for ciruit with R=2
plot (i, V, 'b--')
xlabel ('current [Amps]')
ylabel ('voltage [Volts]')
title ('Resulting Voltage as a function of Current')
grid on
hold on
% both functions are plotted in the same figure
% Compute resultant voltages of circuit with R=5
i= [0 .5 1 1.5 2 2.5 2.7 2.8 2.9 3] 
R = 5;
V = i.*R
% plot resultant voltages for circuit with R= 5 
plot (i, V, 'p--')
hold on
% Compute resultant voltages of circuit with R=10
i= [0 .5 1 1.5 2 2.5 2.7 2.8 2.9 3] 
R = 10;
V = i.*R
% plot resultant voltages for circuit with R= 10
plot (i, V, 'g--')
hold on
% Compute resultant voltages of circuit with R=15
i= [0 .5 1 1.5 2 2.5 2.7 2.8 2.9 3] 
R = 15;
V = i.*R
% plot resultant voltages for circuit with R= 15
plot (i, V, 'r--')
hold on
V= [12 11.5 11 10.5 10 9.5 8.5 7.0 4.0 0] ; 
i= [0 .5 1 1.5 2 2.5 2.7 2.8 2.9 3];

plot (i, V, 'o--') 
hold on
% Add a legend 
legend ('R=2','R=5','R=10','R=15','operating curve')

% End of the hold command
hold off






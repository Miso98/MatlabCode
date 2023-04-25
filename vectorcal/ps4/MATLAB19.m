V = [ 4 6 7 8 9]; 
X = V.^2;
F = [ .036 .09298 .10682 .1568 .193]; 
plot (X, F) 
xlabel('V^2')
ylabel('F')
title('force vs velocity squared')
grid on
Z = polyfit (X , F, 1); 
Vfit = linspace(16,100,25);
Xfit = Z(1).*Vfit + Z(2);
hold on 
plot (Vfit, Xfit, 'g--') 

legend('Force vs Velocity squared','line of best fit') 

W = gradient(Xfit,Vfit)
%the slope is .0024 = .5Cp*pi*r^2

sqrt(2*.0024/pi/0.4775)


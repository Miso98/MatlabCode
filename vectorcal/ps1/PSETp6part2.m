%imported data from files
%Tangential acceleration = T
T= gradient (speed, dt);
% Normal acceleration = N
N = sqrt(acceleration.^2 - T.^2);


subplot (2, 1, 1)
plot(t,T,'-')
grid on
xlabel('time [t]')
ylabel('aircraft tangential acceleration [m/s^2]')
title('aircraft tangential accerleration vs time')

subplot (2, 1, 2)
plot(t,N,'-')
grid on
xlabel('time [t]')
ylabel('aircraft normal acceleration [m/s^2]')
title('aircraft normal accerleration vs time')
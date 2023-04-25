% first imported the data from the files online and renamed the variables
dt = 1.0202;
Vx = gradient(x,dt);
Vy = gradient(y,dt);
Vz = gradient (z, dt);
speed = sqrt(Vx.^2+Vy.^2+Vz.^2);
Ax = gradient(Vx,dt);
Ay = gradient(Vy,dt);
Az = gradient(Vz,dt);
acceleration = sqrt(Ax.^2+Ay.^2+Az.^2);


subplot (2, 1, 1)
plot(t,speed,'-')
grid on
xlabel('time [t]')
ylabel('aircraft speed [m/s]')
title('aircraft speed vs time')

subplot (2, 1, 2)
plot(t,acceleration,'-')
grid on
xlabel('time [t]')
ylabel('aircraft acceleration [m/s^2]')
title('aircraft acceleration vs time')




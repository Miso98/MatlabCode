dt = 0.1;
t = 0:dt:2*pi;
x = cos(t);
y = 2*sin(t);
z = t;
plot3(x,y,z)
grid on
xlabel('x')
ylabel('y')
zlabel('z')
% Vx is dx/dt and Vy is dy/dt
Vx = gradient(x,dt);
Vy = gradient(y,dt);
Vz = gradient (z, dt); 
speed = sqrt(Vx.^2+Vy.^2+Vz.^2);
% accerleration is dV/dt
Ax = gradient(Vx,dt);
Ay = gradient(Vy,dt);
Az = gradient(Vz,dt);
acceleration = sqrt(Ax.^2+Ay.^2+Az.^2);
% Unit Tangent Vector is V/speed
Tx = Vx./speed;
Ty = Vy./speed;
Tz = Vz./speed;

TangentVmag= sqrt(Tx.^2 + Ty.^2 + Tz.^2)
% all the values of the Tangent Vector Magnitude is 1 even at t= 0
theta = acos((Vx.*Ax+Vy.*Ay+Vz.*Az)./speed./acceleration);


figure
plot(t,speed,'-')
xlabel('time [t]')
ylabel('velocity [m/s]')
title('velocity vs time')
grid on

figure
plot (t, acceleration, '-')
xlabel('time [t]')
ylabel('acceleration [m/s^2]')
title('acceleration vs time')
grid on

figure
plot (t, theta, '-')
xlabel('time [t]')
ylabel('angle [rad]')
title('angle vs time')

grid on









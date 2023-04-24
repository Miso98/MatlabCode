 % Force applied to the car in Newtons
F = 2000;
% Mass of the car in kg
m = 900;
% Time step in seconds
deltat = 0.1

% Initialization: at t=0, the car is at rest
t(1) = 0;
v(1) = 0;
x(1) = 0;

n = 1;
% Iterate until the velocity reaches 50 km/h = 13.89 m/s. For  that, we need a WHILE loop which tests the value of the velocity at each step.  If it's greater than 13.89 m/s, we exit the loop.

while  v ( n ) < 13.89
    
    % Advance time
    t(n+1) = t(n) + deltat;
    
    % Compute the new velocity
    v(n+1) = v(n) + F/m*deltat;
    
    % Compute the new position
    x(n+1) = x(n) + v(n)*deltat;
    
    % Increment n
    n = n+1;
    
end

% Plot the position as a function of time
plot(t,x)
grid on
title('position of the car as a function of time')
xlabel('time [s]')
ylabel('position [m]')

% Display the position reached by the car (last element of  the x vector) 
x(length(x))

% Time needed to go from 0 to 50 km/h (last element of the  t vector)
t(length(t))

v(1)=13.89
while v(n)>2.78
     t(n+1) = t(n) + deltat;
    v(n+1)=v(n)-deltat.*100/m.*t(n).*(v(n)).^2;
    x(n+1) = x(n) + deltat.*v(n);
end
t(end)
x(end)



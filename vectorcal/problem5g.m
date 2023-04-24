% Z= K/m
Z = 0; 
y(1)= 5000 ;
deltat= .1;
Vx(1) = 140;
Vy (1)= 0;
x(1) = 0 ;
n=1 ;
g=9.8;
t(1) = 0;
while y(n) >= 0 
        t(n+1) = t(n)+deltat;
        Vx(n+1) = Vx(n)+[-Z .* (sqrt(Vx(n).^2 + Vy(n).^2)).*Vx(n)].*deltat;
        Vy(n+1) = Vy(n)+[-Z .* (sqrt(Vx(n).^2 + Vy(n).^2)).*Vy(n)-g].*deltat;
        x(n+1)= x(n) + [Vx(n)].*deltat;
        y(n+1)= y(n) + [Vy(n)].*deltat;
        n= n+1; 
end 
t(end)
x(end)
subplot (3,1,1)
plot (t, Vx,'b--')
xlabel ('t') 
ylabel('Horizontal velocity [Vx]')
title('Vx vs time') 
grid on

subplot (3,1,2)
plot (t, Vy,'g--')
xlabel ('t') 
ylabel('vertical velocity [Vy]')
title('Vy vs time') 
grid on

subplot (3,1,3)
plot (x, y,'r--')
xlabel ('x') 
ylabel('height [y]')
title('y vs x') 
grid on
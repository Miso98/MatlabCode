% Z= K/m
Z = .001; 
y(1)= 5000 ;
deltat= .1;
Vx(1) = 140;
Vy (1)= 0;
x(1) = 0 ;
n=1 ;
t(1) = 0;
while y(n) >= 0 
        t(n+1) = t(n) + deltat;
        Vx(n+1) = Vx(n)+[-Z * sqrt(Vx(n).^2 + Vy(n).^2)*Vx(n)]*deltat;
    Vy(n+1) = Vy(n)+[-Z * sqrt(Vx(n).^2 + Vy(n).^2)*Vy(n)]*deltat;
    x(n+1)= x(n) + [Vx(n)]*deltat;
    y(n+1)= y(n) + [Vy(n)]*deltat;
n= n+1; 
end 
t(end)



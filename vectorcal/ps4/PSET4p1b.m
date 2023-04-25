[x,y] = meshgrid(0:0.1:2,0:0.1:2);
A = 1.5;
z = (x.^2 - A.*x - y).*exp(-y);

x(1)=0;
y(1)=0;
t=0.5;
n=1;
error = 2; 

while error > 0.0001
    x(n+1)= x(n) - (exp(-y(n)).*(2.*x(n)- A)).*t;
    y(n+1) = y(n) - (-exp(-y(n))-(x(n).^2 - A*x(n) - y(n)).*exp(-y(n)))*t
    z(n+1) = (x(n+1).^2 - A.*x(n+1)- y(n+1)).*exp(-y(n+1));
    error = abs(z(n+1) - z(n));
    n= n+1 ; 
end

x= x(n)
y =y(n)
z= z(n)



A = [1:.01:2]; 
t=0.5;
for i=1:length(A)
    clear x y z error n 
    x(1) = 0;
    y(1)= 0; 
    n=1; 
    %z = (x.^2 - A(i).*x - y).*exp(-y);
    error = 2; 
    %while error > .0001
    for n = 1:100;
        x(n+1)= x(n) - (exp(-y(n)).*(2.*x(n)- A(i))).*t;
        y(n+1) = y(n) - (-exp(-y(n))-(x(n).^2 - A(i)*x(n) - y(n)).*exp(-y(n)))*t;
        z(n+1) = (x(n+1).^2 - A(i).*x(n+1)- y(n+1)).*exp(-y(n+1));
        %error = abs(z(n+1) - z(n));
        %n=n+1;
    end
    xoptim(i) = x(n);
    yoptim(i) = y(n);
end

figure 
plot(A, xoptim)
hold all 
plot (A, yoptim)
legend('xoptim','yoptim')
title ('optimal values vs A')
grid on
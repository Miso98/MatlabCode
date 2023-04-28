

clear
clc
Is = 7*10^-14;      		
R = 200;           		
C = 0.026;          		
E0=3
Vdiode = 1;
error = 1; 
n=1
while error > 10^-6 
    fprime(n) = -1 - Is .* R ./ C .* exp( Vdiode(n)./C );
    f(n) = E0 - Vdiode(n) - Is .* R .* ( exp( Vdiode(n)./C ) - 1);
    Vdiode(n+1) = Vdiode(n) - f(n)/fprime(n)
    error = abs(Vdiode(n+1)-Vdiode(n))/Vdiode(n)
    n=n+1
end

Vdiode = Vdiode(n)
I = Is*(exp( Vdiode/C ) - 1)
n
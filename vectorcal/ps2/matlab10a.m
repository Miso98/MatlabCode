% Value of a
a = 11;
n=0;
% First guess for the square root of  a
x(1) = 1;
i = 1;
% If the error is greater than 10^-4, continue iterating
while  abs (x (i) - sqrt (11) )  >=  10^-4
   		 i = i + 1;
         n=n+1
   		 x ( i ) = 1/2 * (x (i-1) + a / x (i-1));
end
% Show the result
n
x ( end)
plot ( abs ( x-sqrt(11) ) )
grid on
title('Error between sqrt(11) and the numerical approximation x')
xlabel('Number of iterations')
ylabel('error')




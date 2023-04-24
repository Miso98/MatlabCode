t = linspace ( 0, 4 * pi, 100); 
x= (t - sin (t) );
y= (1 - cos (t)); 
plot (x,y)
%plot 
xlabel ( 'x')
ylabel ('y')
title ( 'motion of point on the circumference of a circle')
grid on
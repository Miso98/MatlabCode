%creating "niceplot" 
%clearing variables
clear
%close current window
close
%defining functions
x = linspace(0, 15, 1000);
y = x.*sin(x) 
plot (x,y,'b--')
grid on 
%keep both graphs on
hold on
y = x.*cos(x)
plot (x,y,'g--')
title ('nice plot') 
xlabel('x')
ylabel('y')
% Add a legend 
legend ('y=xsin(x)','y=xcos(x)')
% End of the hold command
hold off
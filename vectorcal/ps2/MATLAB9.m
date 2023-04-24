sum= 0;
V = [2 1.1 -3 5.2 4.7]
for i=1:length(V)
    sum = V(i) + sum; 
end 
sum

x = -1: .05: 1; 
for i=1:length(x)
    if x(i) < 0 
        y(i) = -x(i);
    else 
        y(i) = x(i);
    end
end
plot (x,y,'g--')
grid on 
xlabel('x')
ylabel('y')
title('absolute value graph')



F = [ 51 22 14 4];
%R = 1/D^2 
R= [.001 .0005 .00024 .000123];
plot (R,F)
xlabel('1/D^2')
ylabel('frequency')
title('F vs 1/D^2')
grid on 
hold on
x = linspace(0, .001, 100);
m = (sum(R).*sum(F) - 4.*sum(F.*R)) ./ (((sum(R)).^2-4.*sum(R.^2)));
b = 0.25 .* (sum(F) - m.*sum(R));
y = m*x + b;

plot(x,y)









subplot(2,2,1)
x = randn(5000,1) * 0.45 + 5.5;
hist(x,30)
title('nuts contained in a box')
xlabel('Diameter in mm')
ylabel('Number of nuts')

subplot(2,2,2)
x = randn(5000,1) * 0.5 + 5.5;
hist(x,30)
title('nuts contained in a box')
xlabel('Diameter in mm')
ylabel('Number of nuts')

subplot(2,2,3)
x = randn(5000,1) * 0.55 + 5.5;
hist(x,30)
title('nuts contained in a box')
xlabel('Diameter in mm')
ylabel('Number of nuts')

subplot(2,2,4)
x = randn(5000,1) * 0.6 + 5.5;
hist(x,30)
title('nuts contained in a box')
xlabel('Diameter in mm')
ylabel('Number of nuts')

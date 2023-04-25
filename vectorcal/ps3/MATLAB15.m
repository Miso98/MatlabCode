 x=0:.1:1; 
y= (x.^2).*exp(-2.*x);
 derY = gradient(y,0.1);
 derYex = (1-x).*(2.*x.*exp(-2.*x))
 plot(x,derY,'-')
hold on
plot(x,derYex,':')

grid on
title('derivative of the function y = x^2e^{-2x}')
legend('numerical derivative','exact derivative')
xlabel('x')
ylabel('y')


subplot(1,3,1)
velx1 = gradient(x1,g).*gradient(g,t1);
vely1 = gradient(y1,g).*gradient(g,t1);
speed1 = (velx1.^2 + vely1.^2).^5;
plot(t1, speed1,'g')
ylabel('speed1')
xlabel('time')
title('case 1 speed vs time')

subplot(1,3,2)
velx2 = gradient(x2,g).*gradient(g,t2);
vely2 = gradient(y2,g).*gradient(g,t2);
speed2 = (velx2.^2 + vely2.^2).^5;
plot(t2,speed2,'b')
ylabel('speed2')
xlabel('time')
title('case 2 speed vs time')

subplot(1,3,3)
velx3 = gradient(x3,g).*gradient(g,t3);
vely3 = gradient(y3,g).*gradient(g,t3);
speed3 = (velx3.^2 + vely3.^2).^5;
plot(t3,speed3,'r')
ylabel('speed3')
xlabel('time')
title('case 3 speed vs time')
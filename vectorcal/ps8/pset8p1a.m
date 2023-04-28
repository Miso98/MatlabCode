C1=3000;
C2=2775;
C3=2545;

n1=3.0;
n2=2.8;
n3=2.6;

cd=.2;
A=2;
g=0:.001:1;
figure 

t1=0.1*C1*((g.^(n1-1))/(n1-1) + (g.^(n1+1))/(n1+1));
x1=0.2*C1.^2*((g.^(2*n1-1))/(2*n1-1) + (g.^(2*n1+1))/(2*n1+1));
y1=0.1*C1.^2*((g.^(2*n1-2))/(2*n1-2) + (g.^(2*n1+2))/(2*n1+2));
plot(x1,y1,'r')
hold on

t2=0.1*C2*((g.^(n2-1))/(n2-1) + (g.^(n2+1))/(n2+1));
x2=0.2*C2.^2*((g.^(2*n2-1))/(2*n2-1) + (g.^(2*n2+1))/(2*n2+1));
y2=0.1*C2.^2*((g.^(2*n2-2))/(2*n2-2) + (g.^(2*n2+2))/(2*n2+2));
plot(x2,y2,'g')
hold on

t3=0.1*C3*((g.^(n3-1))/(n3-1) + (g.^(n3+1))/(n3+1));
x3=0.2*C3.^2*((g.^(2*n3-1))/(2*n3-1) + (g.^(2*n3+1))/(2*n3+1));
y3=0.1*C3.^2*((g.^(2*n3-2))/(2*n3-2) + (g.^(2*n3+2))/(2*n3+2));
plot(x3,y3,'b')
hold on

title('different trajectories of launch satellites')
xlabel('horizontal displacement')
ylabel('vertical displacement')
legend('case 1','case 2', 'case 3')

%part1b

figure
velx1 = gradient(x1,g).*gradient(g,t1);
vely1 = gradient(y1,g).*gradient(g,t1);
speed1 = (velx1.^2 + vely1.^2).^.5;
plot(t1,speed1,'g')
ylabel('speed1')
xlabel('time')
 
hold on
velx2 = gradient(x2,g).*gradient(g,t2);
vely2 = gradient(y2,g).*gradient(g,t2);
speed2 = (velx2.^2 + vely2.^2).^.5;
plot(t2,speed2,'b')
ylabel('speed2')
xlabel('time')

 
hold on
velx3 = gradient(x3,g).*gradient(g,t3);
vely3 = gradient(y3,g).*gradient(g,t3);
speed3 = (velx3.^2 + vely3.^2).^.5;
plot(t3,speed3,'r')
ylabel('speed')
xlabel('time')
legend('case 1','case 2', 'case 3')
title('speed vs time')

%part 1c
figure
p1=1.2.*exp(-y1./8000);
p2=1.2.*exp(-y2./8000);
p3=1.2.*exp(-y3./8000);
F1 = .5*p1.*speed1.^2*A*cd;
F2 = .5*p2.*speed2.^2*A*cd;
F3 = .5*p3.*speed3.^2*A*cd;

plot(t1,F1,'g')
hold on
plot(t2,F2,'r')
hold on
plot(t3,F3,'b')
xlabel('time')
ylabel('force')
title('drag force vs time')
legend('case 1','case 2','case 3')

%part 1d

work1 = -1*trapz(abs(F1).*speed1,t1)
work2 = -1*trapz(abs(F2).*speed2,t2)
work3 = -1*trapz(abs(F3).*speed3,t3)
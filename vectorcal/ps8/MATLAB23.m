G = 1350;
A = 8;
c = 3*10^8;

% definition of the orbit
t = 0:0.001:pi/2;

% parameters of the ellipse
a = 1.5*10^11;
b = 1.3*10^11;
d= 10^9;

% definition of the parametric curve
x = a*cos(t);
y = b*sin(t);
z= d*cos(t);

% velocity of the spacecraft
velx = gradient(x,0.001);
vely = gradient(y,0.001);
velz= gradient(z,0.001);

% magnitude of the velocity
velmag = sqrt(velx.^2+vely.^2+velz.^2);

% acceleration of the spacecraft
accx = gradient(velx,0.001);
accy = gradient(vely,0.001);
accz = gradient(velz,0.001);
% magnitude of the acceleration
accmag = sqrt(accx.^2+accy.^2+accz.^2);

% magnitude of the force due to solar radiations
f = -1/c*G*A;

% cosine of the angle between the force and the velocity  % vector
costheta = (velx.*accx+vely.*accy+velz.*accz)./velmag./accmag;


% computation of the work done for t between 0 and pi
W = trapz(f*velmag.*costheta,t)

x = 0:.01:2;
y = x.^2+(x+1).^-2;

I = trapz(x,y);
I

x = 0:.2:2;
y = x.^2+(x+1).^-2;
I = trapz(x,y);
I

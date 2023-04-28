
%import the data again and rename data to y 
n=0;
ycompressed=0;
k=[2,3,5,10];
for k=2
    n=2:k:length(y);
    ycompressed=y(n);
end 
fsnew=fs./2;
newplayer2=audioplayer(ycompressed,fsnew);
play(newplayer2)

pause (20) 

for k=3
    n=3:k:length(y);
    ycompressed2=y(n);
end 
fsnew2=fs./3;
newplayer3=audioplayer(ycompressed2,fsnew2);
play(newplayer3)

pause(20)

for k=5
    n=5:k:length(y);
    ycompressed3=y(n);
end 
fsnew3=fs./5;
newplayer4=audioplayer(ycompressed3,fsnew3);
play(newplayer4)

pause (20)

k=[2,3,5,10];
for k=10
    n=10:k:length(y);
    ycompressed4=y(n);
end 
fsnew4=fs./10;
newplayer5=audioplayer(ycompressed4,fsnew4);
play(newplayer5)

pause(20)

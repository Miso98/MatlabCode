%put wav file into matlab folder than double click to import the data
%should get a 166144x1 double named data, rename to y and fs which has a
%vlaue of 11025
player = audioplayer(y,fs);
play(player)



n=1;
ynew(n)=0;
for n = 4:(length(y)-3) 
    ynew(n)=(y(n-3)+3.*y(n-2)+6.*y(n-1)+7.*y(n)+6.*y(n+1)+3.*y(n+2)+y(n+3))/27;
    
    if n < 4 
        ynew(n)=y(n);
    end 
    
    if n > length(y)-3
        ynew(n)=y(n);
    end
    
end
ynew; 

plot(y(1:5000));
hold on
plot(ynew(1:5000),'r');
hold off
xlabel('samples of the original signal')
ylabel('amplitude')
legend('unfiltered','filtered')
title('amplitude vs sample of unfiltered and filtered music') 



newplayer=audioplayer(ynew,fs);
play(newplayer)

%this sounds like the instruments have mutes on as in the sound is less
%sharp and the music overall sounds a bit quieter

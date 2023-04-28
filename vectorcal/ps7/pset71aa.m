
player = audioplayer (y,fs);
n = 1;
ynew(n) = 0;
%for loop to create new vector
for n = 4:(length(y)-3)
    ynew(n) = (y(n-3) + 3.*y(n-2) + 6.*y(n-1) + 7.*y(n) + 6.*y(n+1) + 3.*y(n+2) + y(n+3))/27;
    
    if n < 4
        ynew(n) = y(n);
    end
    
    if n > length(y) - 3
        ynew(n) = y(n);
    end
end

disp(ynew)
clear all
close all


for i = 1:365
    
x = randn(8000,1)*10 + 55;
    
S(i) = 0;
    

    for k = 1:length(x)

        if x(k) > 65
            S(i) = S(i) + 1;
        end

    end
end


Savg = mean(S)


stem(S)
xlabel('days')
ylabel('amount of cars over the speed limit')
title('amount of cars vs days')

avgpercent= Savg./8000 * 100 

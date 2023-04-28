clear all 
close all 
clc 

sharesowned = 0;
cashavailable = 0;

x=randn(250,1)*5+100;

sharevector = zeros(1,250);
cashvector=zeros(1,250);
for  i = 1:100
    totalprofit=0;
   for k = 1:250 
       if x(k) < 100 
                sharesowned = sharesowned + 50 ;
                cashavailable = cashavailable - (.06.*50 + 40 + 50.*x(k));
        end
        if x(k) > 105
          cashavailable  = cashavailable + x(k).*sharesowned - (.06.*sharesowned + 40);
          sharesowned=0
        end
            cashvector(k) = cashavailable;
            sharevector(k) = sharesowned;
   end 
   profit = cashvector(k) + sharevector(k).*x(k);
   totalprofit=totalprofit+profit; 
end 
averageprofit=profit/100

subplot (3,1,1)
plot(1:250,x)
xlabel('days')
ylabel('price')
title('price vs days') 

subplot (3,1,2)
plot(1:250,cashvector)
xlabel('days')
ylabel('cash')
title('cash vs days') 

subplot (3,1,3)
plot(1:250,sharevector)
xlabel('days')
ylabel('shares')
title('shares vs days') 

            
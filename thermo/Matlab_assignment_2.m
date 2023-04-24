%% ME 1 Matlab Assignment 2




file = 'Assignment2_CityTemp_Data.xlsx';
sheet = 1;
data = xlsread(file, sheet);
%standard deviation by height 

%number samples (200)
n = length(data(1,:)) - 1;
%number of altitudes
h = length(data(:,1));
%standard dev
s = zeros(1,h);
%average temp
avg_temp = zeros(1,h);
%altittudes
alt = data(:,1);
for i = 1:h
    s(1,i) = std(data(i,2:n)); 
    avg_temp(1,i) = mean(data(i,2:n));
end    
    
uncertainty = 1.96 * s / (n^.5);
errorbar(alt,avg_temp,uncertainty,'--o','LineWidth',4,'MarkerSize',7);



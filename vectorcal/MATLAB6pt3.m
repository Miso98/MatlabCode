% Compute displacement for Earth
>> t = 0:1:10;
>> g = 9.80;
>> y = g*t.^2;

>> % Plot
>> subplot (3,1,1)
>> plot (t,y,'b--')
>> xlabel ('Time [s]')
>> ylabel ('Distance fallen [m]')
>> title ('Distance fallen as a function of time on Earth')
>> grid on
% Define displacement for Jupiter
>> g=24.79;
>> y = g*t.^2;

>> % Plot
>> subplot(3,1,2)
>> plot(t,y,'r-')
>> xlabel('Time [s]')
>> ylabel('Distance fallen [m]')
>> title('Distance fallen as a function of time on Jupiter')
>> grid on

% Define displacement for Mercury
>> g=3.72;
>> y = g*t.^2;

>> % Plot
>> subplot(3,1,3)
>> plot(t,y,'g--')
>> xlabel('Time [s]')
>> ylabel('Distance fallen [m]')
>> title('Distance fallen as a function of time on Mercury')
>> grid on



%This script is to display the results of throuwing two dices
clc
clear

Fir=rand(1,1);
Sec=rand(1,1);  %get the random number
ResultsFir=ceil(6*Fir);
ResultsSec=ceil(6*Sec); % get the results of dices to integers

if ResultsFir == ResultsSec %Use if to justify specifc condition(Same results of the dice)
    disp(2*ResultsFir);
    disp(2*ResultsSec); %display the results separately
    Total=ResultsFir+ResultsSec;
    disp(2*Total); %display the total results when dice1=dice2
else % use else to execute following steps in ordinary condition
    disp(ResultsFir);
    disp(ResultsSec); %display the results separately
    Total=ResultsFir+ResultsSec;
    disp(Total) %diplay the sum of the results
end

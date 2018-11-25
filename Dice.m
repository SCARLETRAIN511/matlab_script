%This script is to display the results of throuwing two dices
clc
clear
Fir=unifrnd(0,1);
Sec=unifrnd(0,1);  %get the random number
ResultsFir=ceil(6*Fir);
ResultsSec=ceil(6*Sec); % get the results of dices to integers
disp(ResultsFir);
disp(ResultsSec); %display the results separately
Total=ResultsFir+ResultsSec;
disp(Total) %diplay the sum of the results


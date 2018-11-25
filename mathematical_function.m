clc
clear
a=input('input the value of a');
b=input('input the value of b');
c=input('input the value of c');
min=input('input the minimum value:');
max=input('input the maximum value:');
x=[min:2:max];
for i = 1:length(x)
    y(i)=a*x(i)^2+b*x(i)+c;
    
   
end
plot(x,y)
    
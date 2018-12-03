clear
clc
xmin=input('input the start point');
xmax=input('input the end point');
n=input('input the number of intervals');
a=0;
for i=1:n
    a=a+((xmax-xmin)/(2*n))*(sin(5*xmin+5*(xmax-xmin)*i/n)+sin(5*xmin+5*(xmax-xmin)*(i-1)/n));
    disp(a);
end
disp(a)
    
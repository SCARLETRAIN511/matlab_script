clc
clear
a=0;
b=2.5;
c=(a+b)/2;
f1=0.5*c^2+0.2*sin(10*c)-1.1;
while abs(f1) > 0.000001
    f1=0.5*c^2+0.2*sin(10*c)-1.1;
    f2=0.5*a^2+0.2*sin(10*a)-1.1;
    if f1*f2<0
        b=c;
        c=(a+b)/2;
    else
        a=c;
        c=(a+b)/2;
    end
end
disp(c)


        
    
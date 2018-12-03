clear
clc
isvalid=0;
while isvalid==0
   
    a=input('input the first argument');
    b=input('input the second argument');
    c=input('input the third argument');
    d=b^2-4*a*c;
    if d<0
        isvalid=0;
    else
        isvalid=1;
    end
end

    
    
    
x=input('input the initial guess for xo:');
dydx=100;
while dydx>eps
    dydx=(-(a*x^2+b*x+c)/(2*a*x+b));
    x=x+dydx;
    
  
end
disp(x)
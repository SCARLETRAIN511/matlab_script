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
y=a*x^2+b*x+c;
while y>0.000001
    y=a*x^2+b*x+c;
    x=x-((a*x^2+b*x+c)/(2*a*x+b));
  
end
disp(x)
    
    
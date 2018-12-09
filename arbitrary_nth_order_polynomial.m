clear
clc
Nmax=1000;
eps=0.00001;
npoly=input('ordr of polynomial to find roots of');
const(1)=input('input the value of polynomial constant');
for i =1 :npoly
    const(i+1)=input(['the coef. of the term of order ',num2str(i),'is:']);
end
a=input('lower bound is:');
b=input('upper bound is:');
fa=const(1);
fb=const(2);
for i = 1:npoly
    fa=fa+const(i+1)*a^i;
    fb=fb+const(i+1)*b^i;
end
if (fa*fb>0)
    if (fa==0)
        disp(['the function is 0 at x=',num2str(a)]);
    elseif (fb==0)
        disp(['The function is 0 at x=',num2str(b)]);
    else
        disp('the bisection method can not be used')
    end
else
    count=0;
    while ((abs(a-b)>eps)&&(count<Nmax))
        c=(a+b)/2;
        fc=const(1);
        for i = 1:npoly
            fc=fc+const(i+1)*c^i;
        end
        if (fc==0)
            break
        elseif(fa*fc<0)
            b=c;
            fb=fc;
        else
            a=c;
            fa=fc;
        end
    end
    disp(['The equation has a root at:',num2str(c)])
end
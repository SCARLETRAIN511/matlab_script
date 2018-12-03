clear
clc
n=input('input the dimension of the array');
A=randi([1,10],1,n);
for i = 1:n-1
    min=A(i);
    minj=0;
    for j = i+1:n
        if (A(j)<min)
            min=A(j);
            minj=j;
        end
    end
    
    if minj>0
        temp=A(i);
        A(i)=A(minj);
        A(minj)=temp;
        
    end
end
disp(A)
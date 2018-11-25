n=input('input the number:');

for i=2:round(n/2)
    if mod(n,i)==0
        disp('it is a not a prime number')
        p=1;
        break
    else
        p=0;
    end
end
if p==0
    disp('it is a prime number')
end

    
    
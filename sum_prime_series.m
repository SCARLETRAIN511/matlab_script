clc
clear
n=2;
sum=0;
num=input('input the sum of prime number below: ');
while n < num
    is_prime = 1;
    for i = 2:round(n/2)
        
        if mod(n,i) == 0
            is_prime = 0;
            break
        end
        
    end
    if is_prime==1
        sum=sum+n;
        
    end
    n = n+1;
end
disp(sum)
%this prime number is used to generate prime number before interruption. 

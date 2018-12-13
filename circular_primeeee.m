clc
clear
n=2;
p=[];
while n >0
    is_cirprime=1;
    is_prime = 1;
    for i = 2:round(n/2)
        
        if mod(n,i) == 0
            is_prime = 0;
            break
        end
        
    end
    if is_prime==1
        temp=num2str(n);
        for j=1:(length(temp)-1)
            new_temp=str2num(circshift(temp,j));
            if isprime(new_temp)==0
                is_cirprime=0;
            end
        end
        if is_cirprime==1
            disp(n);
        end
        
    end
    n = n+1;
end
%this prime number is used to generate prime number before interruption. 

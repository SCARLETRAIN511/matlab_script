clear
clc
n=12;
p=[2;3;5;7;11];


while n>0
    is_prime = 1;
    is_palindromic=1;
    for i = 2:round(n/2)
        
        if mod(n,i) == 0
            is_prime = 0;
            break
        end
        
    end
    if is_prime==1
        temp=num2str(n);
        for i=1:length(temp)
            if(temp(i)~=temp(length(temp)+1-i))
                is_palindromic=0;
                break
            end
        end
    end
    if is_prime==1 && is_palindromic==1 
        
        p = [p;n];
        
        
    end
    n = n+1;
end
disp(p)















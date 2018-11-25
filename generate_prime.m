n=2;
p=[];
while n>0
    is_prime = 1;
    for i = 2:round(n/2)
        
        if mod(n,i) == 0
            is_prime = 0;
            break
        end
        
    end
    if is_prime==1
        
        p = [p;n];
        disp(p);
    end
    n = n+1;
end

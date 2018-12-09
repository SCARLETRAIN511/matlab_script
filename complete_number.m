for m = 1:1000
    s=0;
    for i=1:m/2
        if mod(m,i)==0
            s=s+i;
        end
    end
    if m==s
        disp(s)
    end
end

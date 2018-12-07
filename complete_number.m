for m = 1:500
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

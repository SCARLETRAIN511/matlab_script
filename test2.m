x=[96 92 75 71 63 82 98 89];
list=[];
for i = 1:length(x)
    min=x(i);
    minj=0;
    for j = i:length(x)
        if min>x(j)
            min=x(j);
            minj=j;
        end
    end
    if minj>0
        temp=x(i);
        x(i)=x(minj);
        x(minj)=temp; 
    end
end
disp(x)
        
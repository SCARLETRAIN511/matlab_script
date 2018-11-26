list=randi([1,100],100,5);
a=input('Choose the column');
for i = 1 : 100
    [minv,n]=min(list(i:100,a));
    if list(i,a)>minv
        temp=list(i,a);
        list(i,a)=minv;
        list(n+i-1,a)=temp;
    end
end
disp(list)

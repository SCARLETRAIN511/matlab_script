list=[1 7 3 5 3 8 10 6];
for i = 1 : length(list)
    [minv,n]=min(list(:,i:length(list)));
    if list(i)>minv
        temp=list(i);
        list(i)=minv;
        list(n+i-1)=temp;
    end
end
disp(list)
    
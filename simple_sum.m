clear
clc

n=input('input the limit of the number added');
sum=0;
for i=2:n
    if ((mod(i,3)~=0)&&(mod(i,5)~=0))
        sum=sum+i;
    end
end
disp(sum)
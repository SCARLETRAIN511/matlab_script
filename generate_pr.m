clear
clc

i=2;
sum=0;
limit=input('input the limit for the prime');
while i <limit
   t=isprime(i);
   if t==1
       sum=sum+i;
       
   end
   i=i+1;
end
disp(sum)
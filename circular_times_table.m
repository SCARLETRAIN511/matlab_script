clear
clc
N=input('Number of integer for which to generate the times table:');
mult=input('Which number should we generate the tiems table off:');
 r=10;
 for i = 0:N-1
     x(i+1)=r*sin(2*pi*i/N);
     y(i+1)=r*cos(2*pi*i/N);
 end
 hold off
 plot(x,y,'o')
 axis equal
 hold on
 
 for i=1:N
     if(i*mult==round(i*mult))
         i1=mod(i,N);
         i2=mod(i*mult,N);
         plot([x(i1+1),x(i2+1)],[y(i1+1),y(i2+1)],'k')
     end
 end
 
         
 
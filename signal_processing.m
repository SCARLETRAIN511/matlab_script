x=(0:300);
y=rand(1,301);
z=[];
for i = 1:301
    if i==1
       z(i)=0.5*y(i)+0.25*y(i+1);
    elseif i==301
         z(i)=0.25*y(i-1)+0.5*y(i);
    else
        z(i)=0.25*y(i-1)+0.5*y(i)+0.25*y(i+1);
    end
    
        
end
plot(x,y);
hold on;
plot(x,z)
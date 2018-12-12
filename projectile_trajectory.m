%this script is to find the time when the object touches the ground
clear 
clc
angle=input('input the angle of trajectory');
U=input('input the initial velocity:');%generate the initial velocity
t=0;
dt=0.01;
y=2;
%generate the equation
while (y~=eps)%once y reaches 0, loop ends
    t=t+dt;
    y=2+U*t*sin(2*pi*angle/360)-(9.81*t^2/2);
end
%time has done
disp(t);%check the time
x=U*t*cos(2*pi*angle/360);
disp(x);%find the distance it travels
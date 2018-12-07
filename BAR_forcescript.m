clc
clear 

l1=input('input the length of L12:');
l2=input('input the length of L23:');
l3=input('input the length of L13:');

a1=input('input the area of L12:');
a2=input('input the area of L23:');
a3=input('input the area of L13:');

E=input('input the young modulus:');

i1=input('input the i1 angle:');
i2=input('input the i2 angle:');
j1=input('input the j1 angle:');
j2=input('input the j2 angle:');

F=input('Type the condition of the force(8000or12000(N))');


syms t12 t23 t13;
[t12,t13,t23]=solve(t13 * sin(j2 *pi/180)==t23 * sin(j1 * pi/180),t13 * cos(j2*pi/180)+t23 * cos(j1*pi/180)==F,t12*cos(i1*pi/180)==-1*t23*cos(i2 * pi/180));

syms e12 e13 e23
e12=t12*l1/(a1*E);
e23=t23*l2/(a2*E);
e13=t13*l3/(a3*E);

syms strain1 strain2 strain3
strain1=t12/(a1*E);
strain2=t23/(a2*E);
strain3=t13/(a3*E);

syms stress1 stress2 stress3
stress1=t12/a1;
stress2=t13/a2;
stress3=t23/a3;

syms h2 h3 v3;
[h2,h3,v3]=solve(e13==cos(j2*pi/180)*v3+h3*cos((pi/2)-j2),e12==cos(i1*pi/180)*h2,e23==sin(j2*pi/180)*v3+cos(i2*pi/180)*h2-cos(pi/2-j1*pi/180)*h3);


disp(['The bar force in LAC is ',num2str(double(t13))]);
disp(['The bar force in LAB is ',num2str(double(t12))]);
disp(['The bar force in LBC is ',num2str(double(t23))]);

disp(['The extension of barAB is',num2str(double(e12))]);
disp(['The extension of barBC is',num2str(double(e23))]);
disp(['The extension of barAC is',num2str(double(e13))]);

disp(['The vertical movement is',num2str(double(v3))]);


disp(['The stress in barAB is:',num2str(double(stress1))]);
disp(['The stress in barAC is:',num2str(double(stress3))]);
disp(['The stress in barBC is:',num2str(double(stress2))]);

disp(['The strain in barAB is:',num2str(double(strain1))]);
disp(['The strain in barAC is:',num2str(double(strain3))]);
disp(['The strain in barBC is:',num2str(double(strain2))]);

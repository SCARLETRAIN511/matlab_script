clc
clear 

l1=0.8602;%mm
l2=0.4924;%mm
l3=0.7434;%mm

a1=91.5*2*10^-6;%mm^2
a2=50.9*10^-6;%mm^2
a3=50.9*2*10^-6;%mm^2

E=input('input the young modulus:');%69*10^9

i1=35.54;%degree
i2=23.96;
j1=66.04;
j2=26.56;

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


disp(['The bar force in LAC is ',num2str(double(t13)),'N']);
disp(['The bar force in LAB is ',num2str(double(t12)),'N']);
disp(['The bar force in LBC is ',num2str(double(t23)),'N']);

disp(['The extension of barAB is',num2str(double(e12)),'m']);
disp(['The extension of barBC is',num2str(double(e23)),'m']);
disp(['The extension of barAC is',num2str(double(e13)),'m']);

disp(['The vertical movement is',num2str(double(v3)),'m']);


disp(['The stress in barAB is:',num2str(double(stress1)),'N/m^2']);
disp(['The stress in barAC is:',num2str(double(stress3)),'N/m^2']);
disp(['The stress in barBC is:',num2str(double(stress2)),'N/m^2']);

disp(['The strain in barAB is:',num2str(double(strain1))]);
disp(['The strain in barAC is:',num2str(double(strain3))]);
disp(['The strain in barBC is:',num2str(double(strain2))]);

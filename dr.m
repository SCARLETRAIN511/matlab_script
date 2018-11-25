L=input("Input the length of the cuboid: ");
W=input("Input the width of the cuboid:");
H=input("Input the height of the cuboid");
Pc=input("Input the density of the cuboid:" );
Pf=input("Input the density of the fluid");
M=L*W*H*Pc;
Drau=(M/Pf)/(L*W);
disp(Drau)
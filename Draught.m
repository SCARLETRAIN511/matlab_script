%The script is to calculate the draught of the cuboid
clc
clear

L=input('Input the length of the cuboid: '); %Get the length of the cuboid(m)
W=input('Input the width of the cuboid:');%Get the width of the cuboid(m)
H=input('Input the height of the cuboid:');%get the height of the cuboid(m)
Pc=input('Input the density of the cuboid:' );%get the density of the cuboid(kg/m^3)
Pf=input('Input the density of the fluid:');%get the density of the fluid(kg/m^3)
M=L*W*H*Pc; %calculate the mass of the cuboid(kg)
Drau=(M/Pf)/(L*W); %calculate the distance(m)
if (L<H||W<H)
    
    disp('Warning')
    if L<=W
        H=L;
        disp(num2str(Drau))
    else
        H=W;
        disp(num2str(Drau))
    end
end
        
        
  
end
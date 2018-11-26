function CLp = myFunction(alfap,Rep)
%you may assume that the desired angle of attack is provided in the scalar real variable "alfap" in degrees
%and the desired Reynolds Number to interpolate for is given in the scalar rael variable "Rep".
%---------------------------------------------
%enter your solution here

if alfap < 0
    alfap = 360+alfap;
end

load('NACA0012.mat')
for i = 1:(length(alfa)-1)
    if (alfa(i) <= alfap) && (alfap<=alfa(i+1))
        N=i;
        break
    end
end
for j = 1:(length(Re)-1)
    if (Re(j) <= Rep) && (Rep<=Re(j+1))
        M=j;
        a=1;
        break
    else
        a=0;
    end
end
if a==0
    CLp=NaN;
elseif a==1
    Q1=CL(N,M)+((CL(N+1,M)-CL(N,M))/(alfa(N+1)-alfa(N))) * (alfap-alfa(N));
    Q2=CL(N,M+1)+((CL(N+1,M+1)-CL(N,M+1))/(alfa(N+1)-alfa(N))) * (alfap-alfa(N));
    CLp=Q1+((Q2-Q1)/(Re(M+1)-Re(M)))*(Rep-Re(M));
end

%-----------------------------------------------------
%output
if isnan(CLp)
    fprintf(1,'Error: Value for Re outside of dataset available \n');
else
    fprintf(1,'The Lift Coef is: %6.4f',CLp)
end
end

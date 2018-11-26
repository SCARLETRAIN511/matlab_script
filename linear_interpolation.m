function CLp = myFunction(alfap)
%you may assume that the desired angle of attack is provided 
%in the scalar real variable "alfap" in degrees
%-----------------------------------------------------
%Write your solution here
load('NACA0012_1D.mat')
if alfap < 0
    alfap = alfap + 360;
end

if alfap > 360
    alfap = alfap -360;
end

stored_i = 0;
gradient_list = [];
intercept_list = [];
for i = 1 : (length(CL) - 1)
    gradient = (CL(i + 1) - CL(i)) / (alfa(i + 1) - alfa(i));
    gradient_list = [gradient_list gradient];
    intercept = CL(i) - gradient * alfa(i);
    intercept_list = [intercept_list intercept];
end

for i = 1 : (length(alfa) - 1)
    if (alfa(i) <= alfap) && (alfap <= alfa(i + 1))
        stored_i = i;
        break
    end
end

CLp = gradient_list(stored_i) * alfap + intercept_list(stored_i);



%-----------------------------------------------------
%output
fprintf(1,'The Lift Coef is: %6.4f',CLp)

end

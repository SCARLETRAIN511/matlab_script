L=fopen('dataTextFile.txt','w');
V=[0:5:50];
KEteen=0.5*0.0585*V.^2;
KEcric=0.5*0.15*V.^2;
for i =1:length(V)
    fprintf(1,'%1$8.0f    %2.2f \n', V(i), KEteen*(i));
end

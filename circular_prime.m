clear
clc
disp(2);
allcprimes=[2];
n=3;
while 1
    iscircprime=1;
    firsttime=1;
    count=1;
    digits=floor(log10(n))+1;
    ntemp=n;
    while((count<=digits)&&(iscircprime==1))
        nperm=10^(digits-1)*mod(ntemp,10)+floor(ntemp/10);
        if any(ntemp==allcprimes)
            firsttime=0;
            break
        else
            for i=2:sqrt(nperm)
                if (mod(nperm,i)==0)
                    iscircprime=0;
                    break
                end
            end
        end
        ntemp=nperm;
        count=count+1;
    end
    if ((iscircprime==1)&(firsttime==1))
        disp(n)
        allcprimes=[allcprimes,n];
    end
    n=n+2;
end

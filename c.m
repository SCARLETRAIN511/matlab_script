x=[-20,-20,45];
if xor(sum(x)>100,any(x>20))
    disp('true')
elseif(all(x<-10))
    disp('true')
else
    disp('false')
end

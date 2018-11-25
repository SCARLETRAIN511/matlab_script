clear
clc
i=input('What day of the week?','s');
switch(i)
    case('Monday')
        disp('Sad')
    case('Tuesday')
        disp('Sad')
    case('Wednesday')
        disp('Sad')
    case('Thursday')
        disp('nice')
    case('Friday')
        disp('nice')
    case('Saturday')
        disp('Good')
    case('Sunday')
        i=unidrnd(4);
        if i==1
            disp('sad')
        elseif i ==2
            disp('Good')
        else
            disp('Bad')
        end
    otherwise
  
        disp('I do not understande')
       
        
        
        
        
end
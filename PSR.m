i=input('Input the gesture :','s');
num=randi([1 3]);
switch(num)
    case(1)
        disp('Rock')
        if i=='s'
            disp('The computer has chosen ROCK,you have chosen SCISSORS,you lose')
        elseif i=='r'
            disp('draw')
        else
            disp('The computer has chosen ROCK,you have chosen PAPER, you win')
        end

    case(2)
        disp('Paper')
        if i=='s'
            disp('The computer has chosen PAPER,you have chosen SCISSORS,you win')
        elseif i=='p'
            disp('draw')
        else
            disp('The computer has chosen PAPER,you have chosen ROCK, you lose')
        end
    case(3)
        disp('Scissors')
        if i=='r'
            disp('The computer has chosen SCISSORS,you have chosen ROCK,you win')
        elseif i=='s'
            disp('draw')
        else
            disp('The computer has chosen ROCK,you have chosen PAPER, you lose')
        end
end


        

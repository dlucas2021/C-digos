{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}

program multiplos;

const

    C1: char = '4';
    C2: char = '2';
    C3: char = '5';


function ahormar(x: char): integer; 

begin

    result := (integer(x));
    
end;

begin

writeln(ahormar(C3));

end.

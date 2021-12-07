{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program ejemplo ;


const

C1: char = 'a';
C2: char = '2';
C3: char = '0';


function hola(x:char): integer;

begin

    result:= integer(x);
    
end;

begin

    writeln(hola(C1));
    
end.

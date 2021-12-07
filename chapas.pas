{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}

program chapas;

uses ctr;

const

    CARAS_MONEDA: integer = 2
    
    
    
function tirar_monedas(cara/cruz:boolean):string;

begin

    result:= random( CARAS_MONEDA ) + 1
    
end;

var

    i: integer;
    
begin

    delay(1000);
    randomize;
    
    repeat
    
        i:= tirar_monedas(i)
        writeln(i);
    
    until i = 2;
    
end;

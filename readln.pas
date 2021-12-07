{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program ejemplo_readln_03;


procedure  suma (x: integer) ;

var

    i: integer;
    
begin

    i := x + 4;
    writeln('La suma de dos números reales es igual a ', i);
    
end;

var

    a: integer;
    
begin

    readln(a);
    suma(a);
    
end.

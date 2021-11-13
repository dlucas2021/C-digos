{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}

program variables;

function suma(a,b: integer):integer;

var

    c: integer; // Variable local de la funci ́on suma

begin

    c := a + b;
    result := c;

end;

const // Constantes locales al programa principal

    X: integer = 12;
    Y: integer = 3;

var // Variables locales al programa principal

    z : integer;

begin

    z := suma(X, Y);

    writeln(z); // 15

end.

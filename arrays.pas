{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program array_02;
var
    tabla : array[1..6000] of string;
    i : integer;
begin
    tabla[1] := 'Sotano';
    tabla[2] := 'Planta baja';
    tabla[3] := 'Primero';
    tabla[4] := 'klk';
    tabla[5998] := 'WENA PO';

    for i := 1 to 6000 do
        writeln(tabla[i])
end.

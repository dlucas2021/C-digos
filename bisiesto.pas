{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program bisiesto ;
const
  Anio : integer = 1941;
begin
  write(Anio, ' es bisiesto:');
  writeln(
    (Anio mod 4 = 0 )
    and
    ( (Anio mod 100 <> 0) or (Anio mod 400 = 0 ))
  );
end.

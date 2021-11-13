{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program if_then_else_v04;
const
    Limite_fiebre: real = 37.5;
    Temperatura: real = 37.8;
begin
    if Temperatura >= Limite_fiebre then begin
        writeln('Fiebre');
        write('La temperatura es ');
        write(Temperatura-Limite_fiebre:0:1);
        writeln('grados superior a lo normal');
   end
   else
        writeln('Temperatura normal');
end.

{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}

program suma;

const

    ClaveCorrecta: string = 'hola';


procedure A(x: string);


    
begin
    writeln(' Bienvenido a SuperAgenda ');
    writeln('=========================='); (* Para subrayar *)
    writeln; writeln; (* Dos lÃ­neas en blanco *)
    writeln('Introduzca su clave de acceso');
    readln( clave ); (* Lee un valor *)
    if clave <> ClaveCorrecta then (* Compara con el correcto *)
        begin (* Si no lo es *)
        writeln('La clave no es correcta!'); (* avisa y *)
        exit (* abandona el programa *)
        end
end;

var
    clave: string; (* Esta variable es local *)
    
begin 
    
    clave := 'hola';
    A(clave);

end.

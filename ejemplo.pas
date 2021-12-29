{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}

program fichero_aeropuerto;

uses crt;

const

    LIM = 10000;
    N = 5;
    
type 
    
    TipoAeropuerto = array[0..LIM] of string;
    

var
    contador:integer;
    fichero: text;
    aeropuerto:TipoAeropuerto;

procedure procesa_fichero( var fichero:text);

const

    Pc01 = 1; // principio del campo01 
    Pc02 = 6; // principio del campo02
    Pc03 = 20; // principio del campo03


var

    linea: string;
    i:integer;
    lc01, lc02, lc03: integer; // Longitud campos 01, 02, 03
    campo01, campo02, campo03: string;
    letras,coordenadas,nombre: string;

begin

    i:= 0;
    contador:= 1;

    while not eof(fichero) do 
    begin
        
        i:= i +1;
        contador:= contador + 1;
        readln(fichero, linea);
        lc01 := Pc02 - Pc01;
        lc02 := Pc03 - Pc02;
        lc03 := length(linea) - Pc03 + 1;
        campo01 := copy(linea, Pc01, lc01);
        campo02 := copy(linea, Pc02, lc02);
        campo03 := copy(linea, Pc03, lc03);
        letras:= campo01;
        coordenadas:= campo02;
        nombre:= campo03;


        linea:= (nombre +'. ' + 'Codigo: '+ letras + '.  Coordenadas: ' + coordenadas);

        
        aeropuerto[i]:= linea;
    end;
    contador:= (contador -1);
    
end;

procedure randomizar();

var 
    R:integer;
    i:integer;


begin
    randomize;
    delay(600);
    for i:=1 to N do begin
        R:= random (contador) +1;
        writeln(aeropuerto[R]);
        delay(600);
    end;
end;




const

    Nombre_fichero = 'aeropuertos.txt';
    
var

    i:integer;

begin

    randomize;
    assign(fichero, Nombre_fichero); // Ponemos nombre al fichero
    reset(fichero); // Lo abrimos en modo lectura
    procesa_fichero(fichero);
    randomizar;
    close(fichero); // Cerramos el fichero

end.






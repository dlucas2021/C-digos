{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program ejemplo_readln_03;

var

    i: integer;

begin

    writeln(' Escribe un numero entero: ');
    readln(i) ;
    write('La raiz cuadrada de ',i,' es ');
    writeln( sqrt(i):0:2 ); // Escribe la raiz cuadrada del numero
// Da error de ejecucion si no es un entero

end.

{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program registros_02;
type

    TipoNotas = record    
        entrega : real;
        teorico : real;
        practico : real;
end;

var

    nota_jperez : TipoNotas;
    nota_media : real;

begin

    nota_jperez.entrega := 7.5;
    nota_jperez.teorico := 4.3;
    nota_jperez.practico := 4.2;
    nota_media := ( nota_jperez.entrega + nota_jperez.teorico + nota_jperez.practico) / 3 ;
    
end.

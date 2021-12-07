{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
 program dado_01;
 
 uses crt;
 
 function dado(caras_dado:integer):integer;
 begin
     result := random(caras_dado) + 1 ;
 end;

 const
     Caras_dado : integer = 6;
 begin
     delay(100);
     randomize;
     writeln( dado(Caras_dado) ); 
 end.

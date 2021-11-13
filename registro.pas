{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}

program registro

type 

    TipoPunto record
    
        a : real;
        b : real;
    end;
    

var 
    punto1 : TipoPunto;
    punto2 : TipoPunto;
    
begin

{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}

program rangos ;

const
    precio : integer = 28;

begin

    case precio of
    
    0..10 : 
            writeln('barato');
    
    11..50 : 
            writeln('carillo');
    
    51..100 :
            writeln('MUY caro');
    
    otherwise
            writeln('ni caro ni barato');
    end;
    
end.

{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program diabetes;
const
    Diabetico : boolean = TRUE;
    Menor_edad : boolean = FALSE;
    Edad: integer = 20;
begin
    writeln(FALSE or not (TRUE and FALSE)); // Escribe TRUE
    writeln(Diabetico and not Menor_edad); // Escribe TRUE

    writeln(Diabetico and not (Edad < 18)); // Escribe TRUE
    writeln(Diabetico and (Edad >= 18)); // Escribe TRUE
end.

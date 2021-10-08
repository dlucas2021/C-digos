
{$mode objfpc}{$H-}{$R+}{$T+}{$Q+}{$V+}{$D+}{$X-}{$warnings on}
program DiaDeLaSemana;

const
  Anyo: integer = 2021; // el número del año
  Modulo: integer = 0; // modulo correspondiente del mes
  Dia: integer= 8; // número del dia 


function Operacion1(Anyo: integer): integer;
begin 
  result := (Anyo - 1) mod 7;
end;

function Operacion2(Anyo: integer): integer;
begin 
  result := (Trunc((Anyo - 1) / 4) - (Trunc(3 * ((Anyo - 1) / 100 + 1) / 4))) mod 7;
end;

function Operacion3(Dia: integer): integer;
begin
  result := Dia mod 7;
end;

function DiaSemana(Anyo,Dia,Modulo: integer): integer;
begin
  result := (Operacion1(Anyo) + Operacion2(Anyo) + Modulo + Operacion3(Dia)) mod 7;
end;

begin
  write('Día de la semana: ');
  if(DiaSemana(Anyo,Dia,Modulo)=0)
   then writeln('Domingo');
  if(DiaSemana(Anyo,Dia,Modulo)=1)
   then writeln('Lunes');
  if(DiaSemana(Anyo,Dia,Modulo)=2)
   then writeln('Martes');
  if(DiaSemana(Anyo,Dia,Modulo)=3)
   then writeln('Miercoles');
  if(DiaSemana(Anyo,Dia,Modulo)=4)
   then writeln('Jueves');
  if(DiaSemana(Anyo,Dia,Modulo)=5)
   then writeln('Viernes');
  if(DiaSemana(Anyo,Dia,Modulo)=6)
   then writeln('Sabado');
end.

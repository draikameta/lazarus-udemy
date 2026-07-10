program ProjetoOnze;
uses sysutils;

var
  notas: array[1..5] of Double;

begin
  notas[1]:=8.6;
  notas[2]:=7.2;
  notas[3]:=9.1;
  notas[4]:=5.5;
  notas[5]:=6.0;
  writeln('A nota na posicao 3 e: ' + FloatToStr(notas[3]));
  Readln();

end.


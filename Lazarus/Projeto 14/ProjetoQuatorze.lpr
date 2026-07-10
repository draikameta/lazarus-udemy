program ProjetoQuatorze;
uses sysutils;

var
  resultado: Integer;

begin
  resultado:= 2+3*5;
  writeln('O resultado e: ' + IntToStr(resultado));
  Readln;

  resultado:= (2+3)*5;
  writeln('O resultado (com parênteses na adição) e: ' + IntToStr(resultado));
  Readln;
end.


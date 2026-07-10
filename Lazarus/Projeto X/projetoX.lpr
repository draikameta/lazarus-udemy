program projetoX;

uses sysutils;

var
  i: integer;

begin
i := 0;

  for i := 1 to 10 do
  begin
    if (i mod 2 = 0) then
      begin
       writeln('Os valores desse laco for sao: ' + IntToStr(i) + '(Número PAR)');
       readln()
      end
    else
      begin
       writeln('Os valores desse laco sao: ' + IntToStr(i) + '(Numero IMPAR)');
       readln();
      end;
  end;
  writeln('Fim!');
  readln();
end.


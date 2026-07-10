program ProjetoDezoito;
uses sysutils;

var
  valor: integer;

begin
  valor := 10;
  while (valor>=0) do
  begin
    writeln('A variavel "valor" vale: ' + IntToStr(valor));
    Readln();
    valor := valor - 1;
  end;
  Writeln('Fim do While.');
  Readln();
end.


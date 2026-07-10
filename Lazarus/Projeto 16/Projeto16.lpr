program Projeto16;
var
  opcao: integer;

begin
  Writeln('1 - saldo');
  Writeln('2 - saque');
  Writeln('3 - transferencia');
  Writeln('4 - deposito');
  Write('Informe uma opcao: ');

  Readln(opcao);
  Writeln('-------');
  if (opcao = 1) then
     writeln('Selecionou saldo')
  else if (opcao = 2) then
     writeln('Selecionou saque')
  else if (opcao = 3) then
     writeln('Selecionou transferencia')
  else if (opcao = 4) then
     writeln('Selecionou deposito')
  else
     writeln('Selecione uma opcao valida');
  readln();

end.


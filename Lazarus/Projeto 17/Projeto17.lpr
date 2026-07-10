program Projeto17;
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

  case opcao of
  1: Begin
    Writeln('Foi selecionada a opcao de saldo')
  end;
  2: Begin
    Writeln('Foi selecionada a opcao de saque')
  end;
  3: Begin
    Writeln('Foi selecionada a opcao de transeferencia')
  end;
  4: Begin
    Writeln('Foi selecionada a opcao de deposito')
  end;
  else
    Writeln('Selecione uma opcao valida')
  end;
  Readln();

end.


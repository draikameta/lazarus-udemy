program ProjetoDezenove;
var
  resposta: String;
  nome: string;

begin

  repeat
    writeln('Informe o nome do aluno: ');
    readln(nome);
    writeln('---------');
    Writeln('Nome informado: ' + nome);
    writeln('Deseja informar mais um nome? ("N" para sair)');
    readln(resposta);

  until resposta = 'N';

end.


program ProjetoTreze;
uses sysutils;

var
  nome: String;
  idade: Integer;

begin
  nome:= 'Maria';
  idade:= 20;
  Writeln('Operador "AND" (Esperando nome Maria e idade 20) ' + BoolToStr((NOME='Maria') AND ((idade=20))) );
  Readln;

  nome:= 'Jose';
  idade:= 20;
  Writeln('Operador "AND" (Mesma coisa, mas inicializando com nome Jose) ' + BoolToStr((NOME='Maria') AND ((idade=20))) );
  Readln;

  nome:= 'Maria';
  idade:= 20;
  Writeln('Operador "OR" (Esperando Maria ou idade 20) ' + BoolToStr((NOME='Maria') OR ((idade=20))) );
  Readln;

  nome:= 'Maria';
  idade:= 18;
  Writeln('Operador "OR" (Mesma coisa, mas enviando idade 18) ' + BoolToStr((NOME='Maria') OR ((idade=20))) );
  Readln;

  nome:= 'Jose';
  idade:= 18;
  Writeln('Operador "OR" (Enviando idade 18 e Nome Jose) ' + BoolToStr((NOME='Maria') OR ((idade=20))) );
  Readln;
end.


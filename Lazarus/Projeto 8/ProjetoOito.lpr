program ProjetoOito;

var
  uniao, str1, str2: string;
  letra: char;

begin

  str1:='abc';
  writeln('O valor de "str1" e: ' + str1);
  writeln;

  str2:='123';
  writeln('O valor de "str2" e: ' + str2);
  writeln;

  uniao := str1 + str2;
  writeln('O valor de "uniao" e: ' + uniao);
  writeln;

  letra:= uniao[2];
  writeln('O valor de "uniao[2]" e: ' + letra);
  readln();

end.


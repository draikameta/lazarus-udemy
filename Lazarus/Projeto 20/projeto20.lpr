program projeto20;

uses sysutils;

var
  a, valor, matricula: Integer;

Function par(numero:integer): boolean;
begin
  if(numero mod 2) = 0 then
  par:= TRUE
  else par:= FALSE;
end;

Procedure imprime_dobro(B:integer);
begin
  writeln('O dobro de ' + IntToStr(b) + ' e: ' + IntToStr(b*2));
  b:=60 // variavel recebe valor local, mas não imprime depois
end;

procedure multiplica(var mat: integer; a,b:integer);
begin
  mat := 9999;
  writeln('O valor da multiplicacao e ' + IntToStr(a*b));

end;

begin
  Writeln('Informe um numero para ser verificado: ');
  readln(a); // AQUI PEGA O (a)
  if(par(a)) then
    writeln('O numero e par.')
    else
    writeln('O numero e impar.');

  writeln('==================');
  writeln('Informe um valor para descobrir o dobro: ');
  readln(valor); // AQUI PEGA O (valor)
  imprime_dobro(valor);
  writeln('==================');

  matricula := 50;
  writeln('Valor da matricula antes da funcao: ' + IntToStr(matricula));
  multiplica(matricula,valor,a);
  writeln('Valor da matricula depois da funcao: ' + IntToStr(matricula));

  readln();
end.


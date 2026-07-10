unit funcoes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Dialogs;

Function par(numero:integer):boolean;
Procedure imprime_dobro(b:integer);
Procedure multiplica(var mat:integer;a,b:integer);

implementation

Function par(numero: integer):boolean;
begin
  if (numero mod 2) = 0
  then par := true
  else par := false
end;

Procedure imprime_dobro(b: integer);
begin
  ShowMessage('O dobro de ' + IntToStr(b) + ' é: ' + IntToStr(2*b));
end;

Procedure multiplica(var mat:integer;a,b:integer);
begin
  mat := 9999;
  ShowMessage('O valor da multiplicação é: ' + IntToStr(a*b));
end;

end.


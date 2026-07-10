program comprasComDesconto;
uses SysUtils;

const
  DESCONTO = 0.90;
var
  compraUm,compraDois,soma:integer;
  valorComDesconto:Double;

begin
  compraUm:= 0;
  compraDois:= 0;
  valorComDesconto:= 0.0;

  Writeln('Informe o valor da primeira compra: ');
  Readln(compraUm);
  Writeln('Informe o valor da segunda compra: ');
  Readln(compraDois);

  soma:= compraUm + compraDois;
  Writeln('O valor total das compras e: ' + IntToStr(soma));
  valorComDesconto := (soma * DESCONTO);
  Writeln('O valor da compra com desconto e: ' + FloatToStr(valorComDesconto));
  Readln();

end.


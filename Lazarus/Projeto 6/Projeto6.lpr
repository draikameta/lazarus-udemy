program Projeto6;
// programa para testar a variável 'boolean'
uses
SysUtils;

var
  resposta: Boolean;
begin
  resposta:= (5>3);
  writeln('Resposta: ' + BoolToStr(resposta));
  resposta:= (9<2);
  writeln('Resposta: ' + BoolToStr(resposta));
  Readln();
end.


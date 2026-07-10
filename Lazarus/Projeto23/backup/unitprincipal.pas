unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, funcoes;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnFuncoes: TButton;
    procedure btnFuncoesClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnFuncoesClick(Sender: TObject);
var
  a,b,mat: integer;
begin
  a:= 10;
  b:= 3;
  mat:= 20;

  // função par
  if par(a)
  then ShowMessage('O número é par.')
  else ShowMessage('O número é impar.');

  // função dobro
  imprime_dobro(a);

  // função multiplica
  ShowMessage('Valor da matrícula antes da função: ' + IntToStr(mat));
  multiplica(mat,a,b);
  ShowMessage('Valor da matrícula depois da função: ' + IntToStr(mat));
end;

end.


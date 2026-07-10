unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFormulario }

  TFormulario = class(TForm)
    btnMultiplica: TButton;
    btnPar: TButton;
    btnDobro: TButton;
    edValor: TEdit;
    edValorA: TEdit;
    edValorB: TEdit;
    edMatricula: TEdit;
    lbB: TLabel;
    lbMatricula: TLabel;
  lbValor: TLabel;
  lbA: TLabel;
  procedure btnDobroClick(Sender: TObject);
  procedure btnMultiplicaClick(Sender: TObject);
  procedure btnParClick(Sender: TObject);
  Function par(numero:integer): boolean;
  Procedure imprime_dobro(B:integer);
  procedure multiplica(var mat: integer; a,b:integer);

  private

  public

  end;

var
  Formulario: TFormulario;

implementation

Function TFormulario.par(numero:integer): boolean;
begin
  if(numero mod 2) = 0 then
  par:= TRUE
  else par:= FALSE;
end;

Procedure TFormulario.imprime_dobro(B:integer);
begin
  ShowMessage('O dobro de ' + IntToStr(b) + ' é: ' + IntToStr(b*2));
  b:=60 // variavel recebe valor local, mas não imprime depois
end;

procedure TFormulario.multiplica(var mat: integer; a,b:integer);
begin
  mat := 9999;
  ShowMessage('O valor da multiplicação é ' + IntToStr(a*b));

end;

procedure TFormulario.btnParClick(Sender: TObject);
var
  numero: integer;
begin
  numero := StrToInt(edValor.Text);

    if (par(numero))
    then ShowMessage('Número é par')
    else ShowMessage('Número é impar')
end;

procedure TFormulario.btnDobroClick(Sender: TObject);
var
  b: Integer;
begin
  b := StrToInt(edValorB.text);
  imprime_dobro(b);
end;

procedure TFormulario.btnMultiplicaClick(Sender: TObject);
var
  aux: integer;
  a, b: Integer;
begin
  aux := StrToInt(edMatricula.text);
  a := StrToInt(edValorA.text);
  b := StrToInt(edValorB.text);

  ShowMessage('Matricula antes da função: ' + IntToStr(aux));
  multiplica(aux,a,b);

  ShowMessage('Matrícula depois da função: ' + IntToStr(aux));
end;

{$R *.lfm}

end.


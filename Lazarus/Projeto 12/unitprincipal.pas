unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnAlunos: TButton;
    mmAlunos: TMemo;
    procedure btnAlunosClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnAlunosClick(Sender: TObject);
var
    lista_alunos: array[1..4] of String;
    i: integer;

begin
  mmAlunos.Clear;

  lista_alunos[1]:='Claudio';
  lista_alunos[2]:='Pedro';
  lista_alunos[3]:='Larissa';
  lista_alunos[4]:='Nicole';

  for i := 1 to length(lista_alunos) do
  begin
    mmAlunos.Lines.add('Indice: ' + IntToStr(i) + ' - Valor: ' + lista_alunos[i]);
  end;

end;

end.


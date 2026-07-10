unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  nome: String = 'Rodolfo';

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('Variável nome: ' + nome);
end;

procedure TForm1.Edit1Exit(Sender: TObject);
var
  idade: Integer;
begin
  idade:= 20;
  ShowMessage('Variável idade: ' + IntToStr(idade));
end;

end.


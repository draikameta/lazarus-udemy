unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnTamanho: TButton;
    btnMaiusculo: TButton;
    btnParteStr: TButton;
    edTextoUm: TEdit;
    edTextoDois: TEdit;
    lbTextoUm: TLabel;
    lbTextoDois: TLabel;
    procedure btnMaiusculoClick(Sender: TObject);
    procedure btnParteStrClick(Sender: TObject);
    procedure btnTamanhoClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnTamanhoClick(Sender: TObject);
begin
  ShowMessage('Tamanho do texto 1: ' + IntToStr(length(edTextoUm.Text)) + ' caracteres!');
end;

procedure TForm1.btnMaiusculoClick(Sender: TObject);
begin
  ShowMessage('Texto 2 em maiúsculas: ' + Uppercase(edTextoDois.Text));
end;

procedure TForm1.btnParteStrClick(Sender: TObject);
begin
  ShowMessage('Posição de 2 ate 5: ' + copy(edTextoUm.text,2,5));
end;

end.


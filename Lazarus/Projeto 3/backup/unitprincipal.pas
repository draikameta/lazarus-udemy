unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnOk: TButton;
    edFrase: TEdit;
    lbFrase: TLabel;
    procedure btnOkClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnOkClick(Sender: TObject);
var
  frase: String;

begin
  frase:=edFrase.Text;
  ShowMessage('A frase informada foi: ' + frase);
end;

end.


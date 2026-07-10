unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSomar: TButton;
    edValorUm: TEdit;
    edValorDois: TEdit;
    lbValorUm: TLabel;
    lbValorDois: TLabel;
    procedure btnSomarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSomarClick(Sender: TObject);
begin
// primeira forma
  {
  try
  ShowMessage('A soma é: ' + IntToStr(StrToInt(edValorUm.text) +  StrToInt(edValorDois.text)));
  except
     on E: Exception do
  ShowMessage('Erro: ' + E.ClassName + ' ' + E.Message);
  end;
  }
// segunda forma
  try
    StrToInt(edValorUm.text);
  except
    ShowMessage('Informe um valor válido para o primeiro valor!');
    Exit;
  end;

  try
    StrToInt(edValorDois.text);
  except
    ShowMessage('Informe um valor válido para o segundo valor!');
    Exit;
  end;

  ShowMessage('A soma é: ' + IntToStr(StrToInt(edValorUm.text) +  StrToInt(edValorDois.text)));
end;

end.


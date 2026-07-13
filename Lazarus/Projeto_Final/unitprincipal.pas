unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons, unitClientes;

type

  { TFormPrincipal }

  TFormPrincipal = class(TForm)
    bitCliente: TBitBtn;
    pnlTopo: TPanel;
    procedure bitClienteClick(Sender: TObject);
  private

  public

  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.lfm}

{ TFormPrincipal }

procedure TFormPrincipal.bitClienteClick(Sender: TObject);
begin
  try
    Application.CreateForm(TFormClientes, FormClientes);
    FormClientes.ShowModal;
  finally
    FormClientes.Free;
  end;
end;

end.


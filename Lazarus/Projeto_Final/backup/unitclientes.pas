unit unitClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  Buttons, StdCtrls;

type

  { TFormClientes }

  TFormClientes = class(TForm)
    bitIncluir: TBitBtn;
    bitAlterar: TBitBtn;
    bitExcluir: TBitBtn;
    bitCancelar: TBitBtn;
    bitGravar: TBitBtn;
    bitSair: TBitBtn;
    ComboBox1: TComboBox;
    edCidade: TEdit;
    edID: TEdit;
    edNome: TEdit;
    edDocumento: TEdit;
    edEndereco: TEdit;
    lbDocumento: TLabel;
    lbID: TLabel;
    lbNome: TLabel;
    lbEndereco: TLabel;
    lbCidade: TLabel;
    lbEstado: TLabel;
    pgcPaginaUm: TPageControl;
    Panel1: TPanel;
    tbsDados: TTabSheet;
    tbsArquivo: TTabSheet;
    procedure bitCancelarClick(Sender: TObject);
    procedure bitSairClick(Sender: TObject);
  private

  public

  end;

var
  FormClientes: TFormClientes;

implementation

{$R *.lfm}

{ TFormClientes }

procedure TFormClientes.bitCancelarClick(Sender: TObject);
begin

end;

procedure TFormClientes.bitSairClick(Sender: TObject);
begin
  FormClientes.Close;
end;

end.


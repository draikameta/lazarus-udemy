unit unitPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnCalcularDesconto: TButton;
    edComprasDesconto: TEdit;
    edCompraUm: TEdit;
    edCompraDois: TEdit;
    lbComprasDesconto: TLabel;
    lbCompraUm: TLabel;
    lbCompraDois: TLabel;
    procedure btnCalcularDescontoClick(Sender: TObject);
  private

  public

  end;
const
  DESCONTO = 0.90;
var
  Form1: TForm1;
  CompraUm,CompraDois,Soma : Integer;
  ValorComDesconto : Double;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnCalcularDescontoClick(Sender: TObject);
begin
  CompraUm := StrToInt(edCompraUm.Text);
  CompraDois := StrToInt(edCompraDois.Text);
  Soma := CompraUm + CompraDois;

  ValorComDesconto:= soma * DESCONTO;
  edComprasDesconto.Text:=FloatToStr(ValorComDesconto);
end;

end.


unit unitClientes;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls;

type

  { TFormClientes }

  TFormClientes = class(TForm)
    pgcPaginaUm: TPageControl;
    Panel1: TPanel;
    tbsDados: TTabSheet;
    tbsArquivo: TTabSheet;
  private

  public

  end;

var
  FormClientes: TFormClientes;

implementation

{$R *.lfm}

end.


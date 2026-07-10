unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnPrincipal: TButton;
    edPrincipal: TEdit;
    procedure btnPrincipalClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnPrincipalClick(Sender: TObject);
begin
  ShowMessage('Relembrando Lazarus!');

  edPrincipal.Text:='Se der certo, vai ser bem legal!'
end;

end.


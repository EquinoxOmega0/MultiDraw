unit textliste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm33 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form33: TForm33;

implementation

uses fantscr;
{$R *.DFM}

procedure TForm33.Button1Click(Sender: TObject);
begin
form33.visible:=false;
end;

end.

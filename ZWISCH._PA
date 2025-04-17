unit zwisch;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ExtDlgs;

type
  TForm18 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    SavePictureDialog1: TSavePictureDialog;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form18: TForm18;

implementation

uses main;
{$R *.DFM}

procedure TForm18.Timer1Timer(Sender: TObject);
begin

if getasynckeystate(27)<>0
then
begin
form18.visible:=false;
timer1.enabled:=false;
end;
end;

end.
 
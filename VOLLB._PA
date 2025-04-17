unit vollb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TForm30 = class(TForm)
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form30: TForm30;

implementation

uses main;
{$R *.DFM}

procedure TForm30.Timer1Timer(Sender: TObject);
begin
if getasynckeystate(27)<>0
then
form30.visible:=false;
end;

end.

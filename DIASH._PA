unit diash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  TForm32 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form32: TForm32;

implementation

uses obsimg;
{$R *.DFM}

procedure TForm32.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
case key of
27:begin
form32.visible:=false;
timer1.enabled:=false;
end;
33:begin
           form31.diav;
end;
34:begin
  form31.diaz;
end;  
35:begin
  form31.diae;
end;
36:begin
 form31.dias;
end;
46:begin
form32.visible:=false;
end;

end;

end;

procedure TForm32.Timer1Timer(Sender: TObject);
begin
form31.diawechs;
end;

end.

unit gzoom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm21 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form21: TForm21;

implementation

uses main;
{$R *.DFM}

procedure TForm21.Button2Click(Sender: TObject);
begin
form21.visible:=false;
end;

procedure TForm21.Button1Click(Sender: TObject);
begin

if form21.caption='genaues Zoomen'
then
form1.gzaus
else
form1.rotier(strtofloat(edit1.text));

form21.visible:=false;
end;

end.

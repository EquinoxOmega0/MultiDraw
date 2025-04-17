unit lauf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl;

type
  TForm2 = class(TForm)
    DriveComboBox1: TDriveComboBox;
    Label1: TLabel;
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
  Form2: TForm2;

  
implementation


uses main;
{$R *.DFM}

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.visible:=false;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
Form1.balws;
end;

end.

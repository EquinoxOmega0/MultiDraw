unit farbaus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Shape1: TShape;
    Shape2: TShape;
    Button3: TButton;
    Button4: TButton;
    ColorDialog1: TColorDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form3: TForm3;

implementation


uses main;
{$R *.DFM}

procedure TForm3.Button1Click(Sender: TObject);
begin
Form1.faa1p;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form1.faa2p;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Form1.facc;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
Form1.faan;
end;

end.

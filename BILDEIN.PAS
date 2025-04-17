unit bildein;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtDlgs, ExtCtrls, StdCtrls;

type
  TForm29 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form29: TForm29;
  dn:string;
  pict:Tbitmap;

implementation

uses picwav;
{$R *.DFM}

procedure TForm29.Button4Click(Sender: TObject);
begin
form29.visible:=false;
end;

procedure TForm29.Button3Click(Sender: TObject);
begin
form24.bildein(dn);
form29.visible:=false;
end;

procedure TForm29.FormCreate(Sender: TObject);
begin
dn:='';
pict:=Tbitmap.create;
pict.width:=100;
pict.height:=100;
end;

procedure TForm29.Button1Click(Sender: TObject);
begin
if openpicturedialog1.Execute
then
dn:=openpicturedialog1.filename;
pict.LoadFromFile(dn);
pict.canvas.stretchdraw(rect(0,0,100,100),pict);
pict.width:=100;
pict.height:=100;
image1.canvas.draw(0,0,pict);
end;

procedure TForm29.Button2Click(Sender: TObject);
begin
dn:='hier';
end;

end.

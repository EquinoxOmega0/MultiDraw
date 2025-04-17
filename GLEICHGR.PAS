unit gleichgr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, ExtCtrls;

type
  TForm36 = class(TForm)
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  Form36: TForm36;
  i:integer;
  pic,pic2:Tbitmap;

implementation

uses picwav;
{$R *.DFM}

procedure TForm36.Button2Click(Sender: TObject);
begin
form36.visible:=false;
end;

procedure TForm36.Button1Click(Sender: TObject);
begin
form24.pwdsave;


for i:=0 to form24.ListBox1.Items.Count-1 do
begin
pic:=tbitmap.create;
pic2:=Tbitmap.create;
pic2.LoadFromFile(form24.ListBox1.Items.strings[i]);
pic.width:=spinedit1.Value;
pic.height:=spinedit2.value;
pic.Canvas.stretchdraw(rect(0,0,pic.width,pic.height),pic2);
pic.SaveToFile(form24.ListBox1.Items.strings[i]);
pic2.Destroy;
pic.destroy;
end;
 form36.visible:=false;
end;

end.

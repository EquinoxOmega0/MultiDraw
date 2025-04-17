unit zufli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Spin;

type
  TForm9 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioButton2: TRadioButton;
    Shape1: TShape;
    RadioButton3: TRadioButton;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    SpinEdit3: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit4: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    ColorDialog1: TColorDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form9: TForm9;
  farb,typ:integer;

implementation

uses main;      
{$R *.DFM}

procedure TForm9.Button2Click(Sender: TObject);
begin
Form9.visible:=false;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin

if Radiobutton1.checked=true
then
farb:=1;
if Radiobutton2.checked=true
then
farb:=2;
if Radiobutton3.checked=true
then
farb:=3;

if Radiobutton4.checked=true
then
typ:=1;
if Radiobutton5.checked=true
then
typ:=2;
if Radiobutton6.checked=true
then
typ:=3;
if Radiobutton7.checked=true
then
typ:=4;

form1.zlinein(spinedit3.value,spinedit4.value,farb,typ);

form9.visible:=false;

end;

procedure TForm9.FormCreate(Sender: TObject);
begin
typ:=1;
farb:=1;
end;

procedure TForm9.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.brush.color;
if colordialog1.execute
then
shape1.brush.color:=colordialog1.color;
end;

end.

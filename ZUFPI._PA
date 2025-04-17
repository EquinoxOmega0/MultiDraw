unit zufpi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Spin;

type
  TForm6 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    Button2: TButton;
    ColorDialog1: TColorDialog;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton2: TRadioButton;
    Shape1: TShape;
    RadioButton3: TRadioButton;
    ComboBox1: TComboBox;
    GroupBox2: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    SpinEdit3: TSpinEdit;
    Label6: TLabel;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Label12: TLabel;
    SpinEdit4: TSpinEdit;
    procedure Button2Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form6: TForm6;
  pfe,psm:integer;

implementation

uses main;
{$R *.DFM}

procedure TForm6.Button2Click(Sender: TObject);
begin
Form6.visible:=false;
end;

procedure TForm6.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.Brush.color;
if colordialog1.execute
then
shape1.Brush.color:=colordialog1.color;

end;

procedure TForm6.Button1Click(Sender: TObject);
begin

if Radiobutton1.checked=true
then
pfe:=1
else
if Radiobutton2.checked=true
then
pfe:=2
else
if Radiobutton3.checked=true
then
pfe:=3;

if Radiobutton4.checked=true
then
psm:=1
else
if Radiobutton5.checked=true
then
psm:=2
else
if Radiobutton6.checked=true
then
psm:=3
else
if Radiobutton7.checked=true
then
psm:=4
else
if Radiobutton8.checked=true
then
psm:=5;


form1.pixein(pfe,psm);
form6.visible:=false;
end;

end.

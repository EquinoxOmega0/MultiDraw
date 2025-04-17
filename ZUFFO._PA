unit zuffo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Spin;

type
  TForm10 = class(TForm)
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    RadioButton9: TRadioButton;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    RadioButton10: TRadioButton;
    Shape1: TShape;
    ColorDialog1: TColorDialog;
    RadioButton11: TRadioButton;
    ComboBox1: TComboBox;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form10: TForm10;
  farbe,typ:integer;

implementation

uses main;
{$R *.DFM}

procedure TForm10.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.Brush.color;
if colordialog1.execute
then
shape1.Brush.color:=colordialog1.color;

end;

procedure TForm10.Button2Click(Sender: TObject);
begin
form10.visible:=false;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
typ:=1;
farbe:=1;
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
if radiobutton1.checked=true
then
typ:=1;

if radiobutton2.checked=true
then
typ:=2;

if radiobutton3.checked=true
then
typ:=3;

if radiobutton4.checked=true
then
typ:=4;

if radiobutton5.checked=true
then
typ:=5;

if radiobutton6.checked=true
then
typ:=6;

if radiobutton7.checked=true
then
typ:=7;

if radiobutton8.checked=true
then
typ:=8;

if radiobutton9.checked=true
then
farbe:=1;

if radiobutton10.checked=true
then
farbe:=2;

if radiobutton11.checked=true
then
farbe:=3;

form1.zforein(typ,farbe);

form10.visible:=false;

end;

end.

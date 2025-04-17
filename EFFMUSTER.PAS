unit effmuster;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm15 = class(TForm)
    ColorDialog1: TColorDialog;
    ColorDialog2: TColorDialog;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Shape2: TShape;
    GroupBox2: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    ColorDialog3: TColorDialog;
    PaintBox1: TPaintBox;
    Shape3: TShape;
    RadioButton5: TRadioButton;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    ColorDialog4: TColorDialog;
    Shape4: TShape;
    Label3: TLabel;
    Label4: TLabel;
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Shape4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form15: TForm15;
  pic:Tbitmap;

implementation


uses main;
{$R *.DFM}

procedure TForm15.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.brush.color;
if colordialog1.execute
then
shape1.brush.color:=colordialog1.color;
end;

procedure TForm15.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog2.color:=shape2.brush.color;
if colordialog2.execute
then
shape2.brush.color:=colordialog2.color;
end;

procedure TForm15.Shape3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog3.color:=shape3.brush.color;
if colordialog3.execute
then
begin
shape3.brush.color:=colordialog3.color;
pic.canvas.pen.color:=colordialog3.color;
end;
end;

procedure TForm15.FormCreate(Sender: TObject);
begin
pic:=Tbitmap.create;
with pic do
begin
width:=100;
height:=100;
canvas.Brush.color:=clwhite;
canvas.Pen.color:=clwhite;
canvas.fillrect(rect(0,0,100,100));
canvas.pen.color:=clblack;
end;
end;

procedure TForm15.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
pic.canvas.pixels[x,y]:=shape3.brush.color;
pic.Canvas.moveto(x,y);
mal:=true;
paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm15.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
if mal=true
then
pic.canvas.lineto(x,y);
paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm15.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mal:=false;
pic.canvas.lineto(x,y);
paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
form15.visible:=false;
end;

procedure TForm15.Button1Click(Sender: TObject);
begin
form1.mustra(pic);
form15.visible:=false;
end;

procedure TForm15.Shape4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog4.color:=shape4.brush.color;
if colordialog4.execute
then
begin
shape4.brush.color:=colordialog4.color;
pic.canvas.pen.color:=colordialog4.color;
end;
end;

end.

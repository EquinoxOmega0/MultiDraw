unit feige;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Spin;

type
  TForm17 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button4: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Feigenbaum;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form17: TForm17;
   {z:array[0..1000] of extended;  }
    zz,r,rstart,rende,rschritt,zstart,zende,zschritt:extended;
    i,e,maxi,fm,x,my,mmy:integer;
  pic,pic2:Tbitmap;
  maus:boolean;

implementation

uses main;
{$R *.DFM}

procedure TForm17.Button1Click(Sender: TObject);
begin
maus:=false;
rstart:=0;
  rende:=4;
  rschritt:=(rende-rstart)/400;;
  zstart:=0;
  zende:=1;
  maxi:=100;
  f:=1000;
  zschritt:=(zende-zstart)/200;
  edit1.text:=floattostr(rstart);
edit2.text:=floattostr(rende);
edit3.text:=floattostr(zstart);
edit4.text:=floattostr(zende);
 feigenbaum;
end;

procedure Tform17.feigenbaum;
begin
maxi:=spinedit2.Value;

f:=spinedit1.value;



if rende>4
then
rende:=4;

pic.canvas.fillrect(rect(0,0,400,200));

zz:=0.9;

   r:=rstart;
repeat
zz := zz*r*(1-zz);
for i:=1 to maxi do
begin                    {
pic.canvas.moveto(round((r-0.01)*100),round(z[i]*200));   }
zz := zz*r*(1-zz);
pic.canvas.pixels[round((r-rstart)/rschritt),round((zz-zstart)/zschritt)]:=i*f;
 { z[i]:=zz;
pic.canvas.pen.color:=i*100;
pic.canvas.lineto(round(r*100),round(zz*200));   }
end;
r:=r+(rschritt/10);

zz:=0.9;

until (r>rende);


paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm17.FormCreate(Sender: TObject);
begin
pic:=Tbitmap.create;
pic.width:=400;
pic.height:=200;
pic.canvas.pen.color:=clwhite;
pic.canvas.brush.color:=clwhite;
pic.canvas.fillrect(rect(0,0,400,200));


pic2:=Tbitmap.create;
pic2.width:=400;
pic2.height:=200;
pic2.canvas.pen.color:=clwhite;
pic2.canvas.brush.color:=clwhite;
pic2.canvas.fillrect(rect(0,0,400,200));

   maus:=false;

  rstart:=0;
  rende:=4;
  rschritt:=(rende-rstart)/400;;
  zstart:=0;
  zende:=1;
  maxi:=100;
  f:=1000;
  zschritt:=(zende-zstart)/200;
end;

procedure TForm17.Button2Click(Sender: TObject);
begin

rstart:=strtofloat(edit1.text);
rende:=strtofloat(edit2.text);
zstart:=strtofloat(edit3.text);
zende:=strtofloat(edit4.text);

  rschritt:=(rende-rstart)/400;;
  zschritt:=(zende-zstart)/200;

feigenbaum;
end;

procedure TForm17.Button3Click(Sender: TObject);
begin
form17.visible:=false;
end;

procedure TForm17.Button4Click(Sender: TObject);
begin
if radiobutton1.checked=true
then
Form1.mbmu1(pic);

if radiobutton2.checked=true
then
Form1.feigb1(pic);

if radiobutton3.checked=true
then
Form1.feigb2(pic);

form17.visible:=false;

end;

procedure TForm17.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mx:=x;
my:=y;
maus:=true;
pic2.canvas.draw(0,0,pic);
paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm17.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
  var g,gg:extended;
begin
if maus=true
then

if checkbox1.checked=false
then
with pic.canvas do
begin
draw(0,0,pic2);
pen.color:=clblack;
pen.width:=1;
moveto(mx,my);
lineto(mx,y);
lineto(x,y);
lineto(x,my);
lineto(mx,my);
end
else
with pic.canvas do
begin
draw(0,0,pic2);
pen.color:=clblack;
pen.width:=1;
moveto(mx,my);

 g:=abs(x-mx);
  gg:=y-my;
    if gg<>0
  then
 y:=my+round(g*round((gg)/abs(gg) )*1/2);
 mmy:=y;
lineto(mx,y);
lineto(x,y);
lineto(x,my);
lineto(mx,my);
end;


Paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm17.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if maus=true
then
begin

rende:=rstart+(x*rschritt);
zende:=zstart+(y*zschritt);

rstart:=rstart+(mx*rschritt);
zstart:=zstart+(my*zschritt);






if Checkbox1.checked=true
then
zende:=zstart+(mmy*zschritt);

rschritt:=(rende-rstart)/400;;
zschritt:=(zende-zstart)/200;

edit1.text:=floattostr(rstart);
edit2.text:=floattostr(rende);
edit3.text:=floattostr(zstart);
edit4.text:=floattostr(zende);

feigenbaum;
maus:=false;
end;
end;

procedure TForm17.SpinEdit2Change(Sender: TObject);
begin
maxi:=spinedit2.Value;
end;

procedure TForm17.SpinEdit1Change(Sender: TObject);
begin
f:=spinedit1.value;
end;

end.

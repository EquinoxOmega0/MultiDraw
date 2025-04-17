unit julia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Spin;

type
  TForm7 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    Label1: TLabel;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    RadioButton3: TRadioButton;
    Label3: TLabel;
    Button2: TButton;
    Button3: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure jul;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form7: TForm7;
  pic,pic2,pic3:Tbitmap;
  i,e,z,mx,my:longint;
  f,rad,ill:integer;
  a,b,y,x,xx,r,d,dd,astart,bstart,dstartx,dstarty,csa,csb:extended;
  s,maus:boolean;

implementation

uses main;
{$R *.DFM}

procedure TForm7.FormCreate(Sender: TObject);
begin
pic:=Tbitmap.create;
pic.width:=Paintbox1.width;
pic.height:=Paintbox1.height;
pic.canvas.pen.color:=clwhite;
pic.canvas.brush.color:=clwhite;
pic.canvas.fillrect(Rect(0,0,pic.width,pic.height));

pic2:=Tbitmap.create;
pic2.width:=Paintbox1.width;
pic2.height:=Paintbox1.height;
pic2.canvas.pen.color:=clwhite;
pic2.canvas.brush.color:=clwhite;
pic2.canvas.fillrect(Rect(0,0,pic2.width,pic2.height));

pic3:=Tbitmap.create;
pic3.width:=Paintbox1.width*2;
pic3.height:=Paintbox1.height*2;
pic3.canvas.pen.color:=clwhite;
pic3.canvas.brush.color:=clwhite;
pic3.canvas.fillrect(Rect(0,0,pic3.width,pic3.height));

astart:=-3;
bstart:=-3;
csa:=-0.5;
csb:=0.6;
dstartx:=0.02;
dstarty:=0.02;
rad:=200;
f:=5000;
ill:=100;

end;



procedure TForm7.jul;
begin
dd:=dstartx/2;
d:=dstarty/2;
a:=astart;
b:=bstart;

    a:=astart;
    for i:=0 to 600 do begin
      b:=bstart;
      for e:=0 to 600 do begin
        x:=a;
        y:=b;
        z:=0;
        while (z<ill) and (sqrt(x*x+y*y)<(rad*rad/10000)) do begin
          inc(z);
          xx:=x*x-y*y+csa;
          y:=2*x*y+csb;
          x:=xx;
        end;

         pic3.canvas.Pixels[i,e]:=(ill-z)*f;


        b:=b+d;
      end;
      a:=a+dd;

    end;

    pic.canvas.stretchdraw(rect(0,0,300,300),pic3);
    Paintbox1.canvas.draw(0,0,pic);

end;
procedure TForm7.Button1Click(Sender: TObject);
begin
astart:=strtofloat(edit1.text);
bstart:=strtofloat(edit2.text);

dstartx:=strtofloat(edit3.text);
dstarty:=strtofloat(edit4.text);

csa:=strtofloat(edit5.text);
csb:=strtofloat(edit6.text);

f:=spinedit1.value;
rad:=spinedit2.value;
ill:=spinedit3.value;


jul;

end;

procedure TForm7.Button3Click(Sender: TObject);
begin
Form7.visible:=false;
end;

procedure TForm7.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mx:=x;
my:=y;
maus:=true;
pic2.canvas.draw(0,0,pic);
paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm7.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var g,gg:extended;
begin
if maus=true
then

if checkbox1.checked=false
then
with pic.canvas do
begin
draw(0,0,pic2);
pen.color:=clwhite;
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
pen.color:=clwhite;
pen.width:=1;
moveto(mx,my);

 g:=abs(x-mx);
  gg:=y-my;
    if gg<>0
  then
  y:=my+round(g*round((gg)/abs(gg) ));

lineto(mx,y);
lineto(x,y);
lineto(x,my);
lineto(mx,my);
end;


Paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm7.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if maus=true
then
begin
astart:=astart+(mx*dstartx);
bstart:=bstart+(my*dstarty);

dstartx:=(x-mx)/300*dstartx;
dstarty:=(y-my)/300*dstarty;

if Checkbox1.checked=true
then
dstarty:=dstartx;

edit1.text:=floattostr(astart);
edit2.text:=floattostr(bstart);
edit3.text:=floattostr(dstartx);
edit4.text:=floattostr(dstarty);

jul;
maus:=false;
end;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
if radiobutton1.checked=true
then
Form1.mbmu1(pic3);

if radiobutton2.checked=true
then
Form1.julu1(pic3);

if radiobutton3.checked=true
then
Form1.julu2(pic3);


Form7.visible:=false;
end;

end.

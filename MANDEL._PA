unit mandel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Spin;

type
  TForm5 = class(TForm)

    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    PaintBox1: TPaintBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button4: TButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    CheckBox1: TCheckBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure mbm;
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form5: TForm5;
  pic,pic2,pic3:Tbitmap;
  i,e,z,mx,my:longint;
  f,rad,ill:integer;
  a,b,y,x,xx,r,d,dd,astart,bstart,dstartx,dstarty,xs,ys:extended;
  s,maus:boolean;

implementation


uses main;
{$R *.DFM}

procedure TForm5.Button1Click(Sender: TObject);
begin
s:=true;
astart:=-2.2;
bstart:=-1.2;
dstartx:=0.01;
dstarty:=0.01;
xs:=0;
ys:=0;


edit5.text:=floattostr(xs);
edit6.text:=floattostr(ys);
edit1.text:=floattostr(astart);
edit2.text:=floattostr(bstart);
edit3.text:=floattostr(dstartx);
edit4.text:=floattostr(dstarty);


  mbm;

end;

procedure TForm5.mbm;
begin
dd:=dstartx/2;
d:=dstarty/2;
a:=astart;
b:=bstart;

    for i:=0 to 720 do begin
      b:=bstart;
      for e:=0 to 480 do begin
        x:=xs;
        y:=ys;
        z:=0;
        while (z<ill) and (sqrt(x*x+y*y)<(rad*rad/10000)) do begin
          inc(z);
          xx:=x*x-y*y+a;
          y:=2*x*y+b;
          x:=xx;
        end;

         pic3.canvas.Pixels[i,e]:=(ill-z)*f;


        b:=b+d;
      end;
      a:=a+dd;

    end;

    pic.canvas.stretchdraw(rect(0,0,360,240),pic3);
    Paintbox1.canvas.draw(0,0,pic);

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
Form5.visible:=false;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
rad:=200;
ill:=100;
f:=500;
s:=false;
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


maus:=false;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
s:=true;
astart:=strtofloat(edit1.text);
bstart:=strtofloat(edit2.text);
dstartx:=strtofloat(edit3.text);
dstarty:=strtofloat(edit4.text);
xs:=strtofloat(edit5.text);
ys:=strtofloat(edit6.text);
mbm;
end;

procedure TForm5.SpinEdit1Change(Sender: TObject);
begin
f:=spinedit1.value;
end;

procedure TForm5.SpinEdit2Change(Sender: TObject);
begin
rad:=spinedit2.value;
end;

procedure TForm5.SpinEdit3Change(Sender: TObject);
begin
ill:=spinedit3.value;
end;

procedure TForm5.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mx:=x;
my:=y;
maus:=true;
pic2.canvas.draw(0,0,pic);
paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm5.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if maus=true
then
begin
astart:=astart+(mx*dstartx);
bstart:=bstart+(my*dstarty);

dstartx:=(x-mx)/360*dstartx;
dstarty:=(y-my)/240*dstarty;

if Checkbox1.checked=true
then
dstarty:=dstartx;

edit1.text:=floattostr(astart);
edit2.text:=floattostr(bstart);
edit3.text:=floattostr(dstartx);
edit4.text:=floattostr(dstarty);

mbm;
maus:=false;
end;

end;

procedure TForm5.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
  var gg,g:integer;
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
  y:=my+round(g*round((gg)/abs(gg) )*2/3);

lineto(mx,y);
lineto(x,y);
lineto(x,my);
lineto(mx,my);
end;


Paintbox1.canvas.draw(0,0,pic);
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
if radiobutton1.checked=true
then
Form1.mbmu1(pic3);

if radiobutton2.checked=true
then
Form1.mbmu2(pic3);

if radiobutton3.checked=true
then
Form1.mbmu3(pic3);


Form5.visible:=false;
end;

end.

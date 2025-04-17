unit rekurs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, UTurtle, Spin;

type
  TForm20 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Turtle1: TTurtle;
    PaintBox1: TPaintBox;
    Button3: TButton;
    GroupBox2: TGroupBox;
    RadioButton4: TRadioButton;
    GroupBox3: TGroupBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Shape1: TShape;
    ColorDialog1: TColorDialog;
    GroupBox4: TGroupBox;
    RadioButton5: TRadioButton;
    Label7: TLabel;
    RadioButton6: TRadioButton;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit7: TSpinEdit;
    Label10: TLabel;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    SpinEdit8: TSpinEdit;
    SpinEdit9: TSpinEdit;
    SpinEdit10: TSpinEdit;
    RadioButton7: TRadioButton;
    GroupBox6: TGroupBox;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    SpinEdit11: TSpinEdit;
    Label14: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure r1(l,a:extended);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure zp1(x,y:integer);
      procedure zp2(x,y:integer);
      procedure zp3(x,y:integer);
      procedure zm(x,y:integer);
      procedure baum(l,w:extended);
      procedure Pythagoras(l,w:extended);
      Procedure koch(laenge:extended);
    Procedure flocke(l:extended;s:Integer);
    Procedure rosetten(laenge:extended);
    Procedure spiralen(l:extended);
    Procedure sechseck(lang:extended);
    procedure FormCreate(Sender: TObject);
    procedure wahl;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form20: TForm20;
  i,e:integer;
  maxi,mx,my:integer;
  l,a,ld,ml,sl,sa,aa:extended;
  maus:boolean;
  pic,pic2:Tbitmap;
  startx,starty,dx,dy:extended;


  
implementation

uses main;
{$R *.DFM}

procedure TForm20.Button2Click(Sender: TObject);
begin
form20.visible:=false;

end;

procedure TForm20.Button3Click(Sender: TObject);
begin


startx:=0;
starty:=0;
dx:=1;
dy:=1;
turtle1.xpos:=150;
turtle1.ypos:=150;
wahl;



end;



procedure TForm20.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.brush.color;
if colordialog1.execute
then
shape1.brush.color:=colordialog1.color;
end;

procedure TForm20.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbleft
then
begin
zp1(x,y);
end
else
begin
zm(x,y);
end;
end;

procedure TForm20.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

zp2(x,y);

end;

procedure TForm20.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
if button=mbleft
then
begin
zp3(x,y);
end;
end;



    procedure Tform20.zp1(x,y:integer);
    begin
mx:=x;
my:=y;
maus:=true;
pic.canvas.Draw(0,0,turtle1.picture.bitmap);
pic2.canvas.draw(0,0,pic);
Paintbox1.canvas.draw(0,0,pic2);
end;

      procedure Tform20.zp2(x,y:integer);
      var g,gg:integer;
          begin

if maus=true
then
begin
with pic2.canvas do
begin
draw(0,0,pic);
pen.color:=clblack;
pen.width:=1;


    g:=abs(x-mx);
  gg:=y-my;
    if gg<>0
  then
  y:=my+round(g*round((gg)/abs(gg) ));


moveto(mx,my);
lineto(mx,y);
lineto(x,y);
lineto(x,my);
lineto(mx,my);

end;

end;
Paintbox1.canvas.draw(0,0,pic2);
end;

      procedure Tform20.zp3(x,y:integer);
          begin
if maus=true
then
begin
pic2.canvas.draw(0,0,pic);



startx:=startx+(mx*dx);
starty:=starty+(my*dy);

dx:=(x-mx)/300*dx;
dy:=(y-my)/300*dy;


dy:=dx;



wahl;



Paintbox1.canvas.draw(0,0,pic2);
maus:=false;
end;
end;

      procedure Tform20.zm(x,y:integer);
      var px,py:extended;
          begin
px:=startx+(x*dx);
py:=starty+(y*dy);
dx:=dx*2;
dy:=dy*2;
startx:=px-(150*dx);
starty:=py-(150*dy);

wahl;
Paintbox1.canvas.draw(0,0,pic2);
end;



procedure TForm20.FormCreate(Sender: TObject);
begin
maus:=false;
pic:=Tbitmap.create;
pic.width:=300;
pic.height:=300;
pic2:=Tbitmap.create;
pic2.width:=300;
pic2.height:=300;
startx:=0;
starty:=0;
dx:=1;
dy:=1;

turtle1.xpos:=150;
turtle1.ypos:=150;
end;



procedure Tform20.wahl;
begin
with turtle1 do
begin
clear;
xpos:=(150-startx)/dx;
 ypos:=(150-starty)/dy;

 label7.caption:=floattostr(xpos)+'/'+floattostr(ypos);

turnto(0);
canvas.pen.color:=shape1.brush.color;
end;

if radiobutton4.checked=true
then
begin

sl:=spinedit1.value/dx;
sa:=spinedit2.value;
ml:=strtofloat(edit1.text)/dx;
ld:=strtofloat(edit2.text);
maxi:=spinedit3.value;
aa:=spinedit4.value;


i:=0;
l:=sl;
a:=sa;
r1(l,a);
end
else if radiobutton5.checked=true
then
begin
baum(spinedit5.Value/dx,spinedit6.value);

end
else
if radiobutton6.checked=true
then
begin
Pythagoras(spinedit8.value/dx,spinedit9.value);
end
else
if radiobutton7.checked=true
then
begin
if radiobutton8.checked=true
then
begin
koch(200/(dx*25));
end
else
if radiobutton9.checked=true
then
begin
   flocke(100/dx,spinedit11.value);

end
else
if radiobutton10.checked=true
then
begin
rosetten(200/(dx*5));
end
else
if radiobutton11.checked=true
then
begin
spiralen(75/dx);
end
else
if radiobutton12.checked=true
then
begin
sechseck(50/dx);
end;

end;


pic.canvas.Draw(0,0,turtle1.picture.bitmap);
pic2.canvas.draw(0,0,pic);
end;

procedure TForm20.Button1Click(Sender: TObject);
begin
pic.canvas.Draw(0,0,turtle1.picture.bitmap);

if radiobutton1.checked=true
then
Form1.mbmu1(pic);

if radiobutton2.checked=true
then
Form1.rektra1(pic);

if radiobutton3.checked=true
then
Form1.rektra2(pic);

form20.visible:=false;
end;


 procedure Tform20.baum(l,w:extended);
 begin
   if (l>spinedit7.value/dx) then
    begin
      turtle1.draw(l/2);
      turtle1.turn(w);
      baum(l/2,w);
      turtle1.draw(l/2);
      turtle1.move(-l/2);
      turtle1.Turn(-w);
      baum(l/2,w);
      turtle1.draw(l/2);
      turtle1.move(-l/2);
      turtle1.turn(-w);
      baum(l/2,w);
      turtle1.draw(l/2);
      turtle1.move(-l/2);
      turtle1.turn(w);
      turtle1.move(-l/2);
   end;

 end;

 procedure TForm20.r1(l,a:extended);
begin
if l>ml
then
begin
l:=(l/ld);
a:=a+aa;
turtle1.Turn(a);
turtle1.draw(l);

r1(l,a);
end
else
begin
l:=sl;
a:=sa;
inc(i);
if i<maxi
then
r1(l,a);
end;

end;


procedure TForm20.Pythagoras(l,w:extended);
var a,b : real;
begin
  if (l > spinedit10.value/dx) then
    begin
      a:=cos((w*pi/180))*l;
      b:=sin((w*pi/180))*l;
      turtle1.Draw(l);
      turtle1.turn(90);
      turtle1.Draw(l);
      turtle1.turn(90);
      turtle1.Draw(l);
      turtle1.turn(90);
      turtle1.Draw(l);
      turtle1.Move(-l);
      turtle1.turn(90);
      turtle1.turn(w);
      Pythagoras(a,w);
      turtle1.move(a);
      turtle1.turn(-90);
      Pythagoras(b,w);
      turtle1.Move(b);
      turtle1.Turn(-w);
      turtle1.move(l);
      turtle1.turn(-90);
      turtle1.draw(l);
      turtle1.turn(180);
    end;
end;

Procedure TForm20.koch(laenge:extended);
 Begin
   If laenge>2/(dx*25) then
    begin
      koch(laenge/2);
      turtle1.turn(60);
      koch(laenge/2);
      turtle1.turn(-120);
      koch(laenge/2);
      turtle1.turn(60);
      koch(laenge/2);
      End
    Else turtle1.draw(laenge);



  
  end;



    Procedure TForm20.flocke(l:extended;s:Integer);
    begin
     If l>(2/dx) then
      For i:= 1 to s do
       begin
        turtle1.draw(l);
        flocke(l/3,s);
        turtle1.move(-l);
        turtle1.turn(360/s);
       end;
    end;



     Procedure Tform20.rosetten(laenge:extended);
  Begin
   if (laenge > (2/(dx*5))) then

    Begin
     For i:= 1 to 6 do
      Begin

       turtle1.draw(laenge);
         turtle1.turn(60);
       turtle1.draw(laenge);
          turtle1.turn(-120);
      End;
         turtle1.Move(laenge);
         turtle1.turn(-30);
         rosetten(laenge * (sin(30*pi/180)) / (cos(30*pi/180)) );
      End;
  End;


Procedure TForm20.spiralen(l:extended);
  Begin
   if l > 5 /dx then
    begin
     For i:= 1 to 3 do
      begin
       turtle1.Draw(l);
       turtle1.Turn(60);
      End;
     spiralen(l*9/10);
   End;
 End;

 Procedure TForm20.sechseck(lang:extended);
   Begin
     if lang > (3/dx) then
      begin
     For i:= 1 to 6 do
      begin
       turtle1.Draw(lang);
       turtle1.Turn(60);
       

      End;
       turtle1.move(lang/2);
       turtle1.Turn(30);
       sechseck(lang*6/7);
 End;
 End;


end.

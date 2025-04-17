unit fexpo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Spin, math;

type
  TForm19 = class(TForm)
    PaintBox1: TPaintBox;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox2: TGroupBox;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Button1: TButton;
    Shape1: TShape;
    Label18: TLabel;
    SpinEdit1: TSpinEdit;
    CheckBox1: TCheckBox;
    GroupBox4: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Button2: TButton;
    Button3: TButton;
    ColorDialog1: TColorDialog;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure anzeige;
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; mX,
      mY: Integer);
      procedure rechex;
      procedure rechln;
      procedure Rechlog;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form19: TForm19;
  e,a,u:integer;
  x,y,i,h,px,py,yy,v,ay:extended;
  fex,fln,flog:array[0..4] of extended;
  pic:Tbitmap;
  exwert,lnwert,logwert:extended;
  asy:boolean;


implementation

uses main;
{$R *.DFM}

procedure TForm19.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.brush.color;
if colordialog1.execute
then
shape1.brush.color:=colordialog1.color;

end;

procedure TForm19.Button3Click(Sender: TObject);
begin
form19.visible:=false;
end;

procedure TForm19.Button2Click(Sender: TObject);
begin
form1.fexpgraph(pic);
form19.visible:=false;
end;

procedure TForm19.FormCreate(Sender: TObject);
begin
pic:=Tbitmap.create;
pic.width:=250;
pic.height:=250;
pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=1;
pic.canvas.FillRect(rect(0,0,250,250));
end;

procedure TForm19.Button6Click(Sender: TObject);
begin
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0';

edit6.text:='0';
edit7.text:='0';
edit8.text:='0';
edit9.text:='0';
edit10.text:='0';

edit11.text:='0';
edit12.text:='0';
edit13.text:='0';
edit14.text:='0';
edit15.text:='0';

anzeige;
end;

procedure TForm19.Button4Click(Sender: TObject);
begin
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0';

anzeige;
end;

procedure TForm19.Button7Click(Sender: TObject);
begin
edit6.text:='0';
edit7.text:='0';
edit8.text:='0';
edit9.text:='0';
edit10.text:='0';

anzeige;
end;

procedure TForm19.Button5Click(Sender: TObject);
begin
edit11.text:='0';
edit12.text:='0';
edit13.text:='0';
edit14.text:='0';
edit15.text:='0';

anzeige;
end;

procedure Tform19.anzeige;
begin
Label1.caption:='f(x) = '+Edit5.text+' * e^( '+Edit1.text+'*x^3 + '+Edit2.text+'*x^2 + '+Edit3.text+'*x + '+Edit4.text+') + '+Edit10.text+' * ln( '+Edit6.text+'*x^3 + '+Edit7.text+'*x^2 + '+Edit8.text+'*x + '+Edit9.text+') + '+Edit15.text+' * log( '+Edit11.text+'*x^3 + '+Edit12.text+'*x^2 + '+Edit13.text+'*x + '+Edit14.text+')  ';
end;


procedure TForm19.Button9Click(Sender: TObject);
begin
edit6.text:='0';
edit7.text:='0';
edit8.text:='0';
edit9.text:='0';
edit10.text:='0';

edit11.text:='0';
edit12.text:='0';
edit13.text:='0';
edit14.text:='0';
edit15.text:='0';

anzeige;
end;

procedure TForm19.Button8Click(Sender: TObject);
begin
edit5.text:='1';
edit10.text:='1';
edit15.text:='1';

anzeige;
end;

procedure TForm19.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  mX, mY: Integer);
begin
i:=(strtofloat(edit18.text)-strtofloat(edit16.text))/250;
h:=(strtofloat(edit19.text)-strtofloat(edit17.text))/250;
px:=-strtofloat(edit16.text);
py:=-strtofloat(edit17.text);

v:=(((strtofloat(edit19.text)+strtofloat(edit17.text))/2)+py)*2;

label2.caption:='aktulle Position: ( '+floattostr(mx*i-px)+' / '+floattostr(((v)-my*h-py))+' )';



end;





   procedure Tform19.rechex;
   begin
   exwert:=0;

for e:=0 to 3 do
begin

yy:=fex[e];

if e>0
then
for a:=1 to e do
yy:=yy*x;

exwert:=exwert+yy;
 end;

exwert:=exp(exwert)*fex[4];


   end;

      procedure Tform19.rechln;
         begin
   lnwert:=0;
         if fln[4]<>0
   then
          begin
   for e:=0 to 3 do
begin

yy:=fln[e];

if e>0
then
for a:=1 to e do
yy:=yy*x;

lnwert:=lnwert+yy;
 end;

if lnwert>0
then
lnwert:=ln(lnwert)*fln[4]
else
asy:=true;
   end;
   end;


      procedure Tform19.Rechlog;
         begin
   logwert:=0;
   if flog[4]<>0
   then
          begin
      for e:=0 to 3 do
begin

yy:=flog[e];

if e>0
then
for a:=1 to e do
yy:=yy*x;

logwert:=logwert+yy;
 end;
if (logwert>0)
then
logwert:=log10(logwert)*flog[4]
else
asy:=true;
      end;
   end;



procedure TForm19.Button1Click(Sender: TObject);
begin
anzeige;

pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=spinedit1.value;
pic.canvas.FillRect(rect(0,0,250,250));

pic.canvas.pen.color:=shape1.Brush.color;

fex[4]:=strtofloat(edit5.text);
fex[3]:=strtofloat(edit1.text);
fex[2]:=strtofloat(edit2.text);
fex[1]:=strtofloat(edit3.text);
fex[0]:=strtofloat(edit4.text);

fln[4]:=strtofloat(edit10.text);
fln[3]:=strtofloat(edit6.text);
fln[2]:=strtofloat(edit7.text);
fln[1]:=strtofloat(edit8.text);
fln[0]:=strtofloat(edit9.text);

flog[4]:=strtofloat(edit15.text);
flog[3]:=strtofloat(edit11.text);
flog[2]:=strtofloat(edit12.text);
flog[1]:=strtofloat(edit13.text);
flog[0]:=strtofloat(edit14.text);


asy:=false;

i:=(strtofloat(edit18.text)-strtofloat(edit16.text))/250;
h:=(strtofloat(edit19.text)-strtofloat(edit17.text))/250;
px:=-strtofloat(edit16.text);
py:=-strtofloat(edit17.text);

v:=(((strtofloat(edit19.text)+strtofloat(edit17.text))/2)+py)*2;

x:=strtofloat(edit16.text);

rechex;
rechln;
rechlog;



if asy=false
then
begin
y:=exwert+lnwert+logwert;

ay:=(((v)-y-py)/h);

pic.canvas.MoveTo(0,round(ay));
end;



for u:=0 to 250 do
begin
if asy=true
then
pic.canvas.moveto(round(u),round(500));

asy:=false;
x:=x+i;
rechex;
rechln;
rechlog;




if asy=false
then
begin
y:=exwert+lnwert+logwert;



if y>strtofloat(edit19.text) 
then
y:=strtofloat(edit19.text)*2;

if y<strtofloat(edit17.text)
then
y:=strtofloat(edit17.text)*2;

ay:=(((v)-y-py)/h);

pic.canvas.lineto(u,round(ay));
end;

end;

paintbox1.canvas.draw(0,0,pic);



end;

end.

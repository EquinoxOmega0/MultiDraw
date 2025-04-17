unit fratio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Spin;

type
  TForm12 = class(TForm)
    Label2: TLabel;
    PaintBox1: TPaintBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Panel1: TPanel;
    Shape1: TShape;
    SpinEdit1: TSpinEdit;
    Label19: TLabel;
    ColorDialog1: TColorDialog;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    GroupBox4: TGroupBox;
    Edit7: TEdit;
    Edit14: TEdit;
    Edit19: TEdit;
    Label3: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Button4: TButton;
    Label1: TLabel;
    procedure Button7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure aktu;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure rechneZ;
    procedure rechneN;
    procedure rechneA;
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; mX,
      mY: Integer);
    procedure Button6Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form12: TForm12;
  gfarb,e,a,u:integer;
  x,y,i,h,px,py,yy,v,zwert,nwert,awert,ay:extended;
  fn,fz:array[0..5] of extended;
  fa:array[0..2] of extended;
  pic:Tbitmap;
  asy:boolean;

implementation


uses main;
{$R *.DFM}

procedure TForm12.Button7Click(Sender: TObject);
begin
form12.visible:=false;
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
gfarb:=0;
pic:=Tbitmap.create;
pic.width:=250;
pic.height:=250;
pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=1;
pic.canvas.FillRect(rect(0,0,250,250));
end;

procedure TForm12.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.brush.color;
if colordialog1.execute
then
shape1.brush.color:=colordialog1.color;

gfarb:=shape1.brush.color;
end;

procedure TForm12.Button1Click(Sender: TObject);
begin
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0';
edit6.text:='0';
aktu;
end;


procedure Tform12.aktu;
begin
label2.caption:='( '+edit1.text+'*x^5 + '+edit2.text+'*x^4 + '+edit3.text+'*x^3 + '+edit4.text+'*x^2 + '+edit5.text+'*x + '+edit6.text+'*1 )';
label17.caption:='( '+edit8.text+'*x^5 + '+edit9.text+'*x^4 + '+edit10.text+'*x^3 + '+edit11.text+'*x^2 + '+edit12.text+'*x + '+edit13.text+'*1 )';
label23.caption:='+ ( '+edit7.text+'*x^2 + '+edit14.text+'*x + '+edit19.text+'*1 )';
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
edit8.text:='0';
edit9.text:='0';
edit10.text:='0';
edit11.text:='0';
edit12.text:='0';
edit13.text:='0';
aktu;
end;

procedure TForm12.Button4Click(Sender: TObject);
begin
edit7.text:='0';
edit14.text:='0';
edit19.text:='0';
aktu;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0';
edit6.text:='0';

edit8.text:='0';
edit9.text:='0';
edit10.text:='0';
edit11.text:='0';
edit12.text:='0';
edit13.text:='0';

edit7.text:='0';
edit14.text:='0';
edit19.text:='0';

aktu;

pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=1;
pic.canvas.FillRect(rect(0,0,250,250));

end;

procedure TForm12.Button5Click(Sender: TObject);
begin

aktu;

pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=spinedit1.value;
pic.canvas.FillRect(rect(0,0,250,250));

pic.canvas.pen.color:=gfarb;

fz[5]:=strtofloat(edit1.text);
fz[4]:=strtofloat(edit2.text);
fz[3]:=strtofloat(edit3.text);
fz[2]:=strtofloat(edit4.text);
fz[1]:=strtofloat(edit5.text);
fz[0]:=strtofloat(edit6.text);

fn[5]:=strtofloat(edit8.text);
fn[4]:=strtofloat(edit9.text);
fn[3]:=strtofloat(edit10.text);
fn[2]:=strtofloat(edit11.text);
fn[1]:=strtofloat(edit12.text);
fn[0]:=strtofloat(edit13.text);


fa[2]:=strtofloat(edit7.text);
fa[1]:=strtofloat(edit14.text);
fa[0]:=strtofloat(edit19.text);

asy:=false;

i:=(strtofloat(edit16.text)-strtofloat(edit15.text))/250;
h:=(strtofloat(edit18.text)-strtofloat(edit17.text))/250;
px:=-strtofloat(edit15.text);
py:=-strtofloat(edit17.text);

v:=(((strtofloat(edit18.text)+strtofloat(edit17.text))/2)+py)*2;

x:=strtofloat(edit15.text);

rechneZ;
rechneN;
rechneA;

if nwert<>0
then
y:=(zwert/nwert)+awert;



 ay:=(((v)-y-py)/h);

pic.canvas.MoveTo(0,round(ay));


for u:=0 to 250 do
begin
if (y<strtofloat(edit18.text)*100) and (y>strtofloat(edit17.text)*100)
then
pic.canvas.moveto(round(u),round(ay));


x:=x+i;
rechneZ;
rechneN;
rechneA;

if nwert<>0
then
y:=(zwert/nwert)+awert ;

      ay:=(((v)-y-py)/h);

if (y<strtofloat(edit18.text)*10) and (y>strtofloat(edit17.text)*10)
then
pic.canvas.lineto(u,round(ay));



end;

paintbox1.canvas.draw(0,0,pic);

end;


  procedure Tform12.rechneZ;
  begin

zwert:=0;

for e:=0 to 5 do
begin

yy:=fz[e];

if e>0
then
for a:=1 to e do
yy:=yy*x;

zwert:=zwert+yy;

end;


end;


    procedure Tform12.rechneN;
      begin


nwert:=0;

for e:=0 to 5 do
begin

yy:=fn[e];

if e>0
then
for a:=1 to e do
yy:=yy*x;

nwert:=nwert+yy;

end;



end;


    procedure Tform12.rechneA;
      begin

awert:=0;

for e:=0 to 2 do
begin

yy:=fa[e];

if e>0
then
for a:=1 to e do
yy:=yy*x;

awert:=awert+yy;

end;



end;



procedure TForm12.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  mX, mY: Integer);
begin
i:=(strtofloat(edit16.text)-strtofloat(edit15.text))/250;
h:=(strtofloat(edit18.text)-strtofloat(edit17.text))/250;
px:=-strtofloat(edit15.text);
py:=-strtofloat(edit17.text);

v:=(((strtofloat(edit18.text)+strtofloat(edit17.text))/2)+py)*2;

label1.caption:='aktulle Position: ( '+floattostr(mx*i-px)+' / '+floattostr(((v)-my*h-py))+' )';
end;


procedure TForm12.Button6Click(Sender: TObject);
begin
form1.ratgraph(pic);
form12.visible:=false;
end;

end.
 
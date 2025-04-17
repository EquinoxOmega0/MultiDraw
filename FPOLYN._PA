unit fpolyn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Spin;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    PaintBox1: TPaintBox;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit8: TEdit;
    Label10: TLabel;
    Button9: TButton;
    Button10: TButton;
    GroupBox2: TGroupBox;
    Edit9: TEdit;
    Edit10: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Button11: TButton;
    CheckBox1: TCheckBox;
    Shape1: TShape;
    ColorDialog1: TColorDialog;
    Label13: TLabel;
    SpinEdit1: TSpinEdit;
    Label14: TLabel;
    procedure Button10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rechne;
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; mX,
      mY: Integer);
    procedure Button9Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form11: TForm11;
  gfarb,e,a,u:integer;
  x,y,i,h,px,py,yy,v,ay:extended;
  f:array[0..7] of extended;
  pic:Tbitmap;

implementation

uses main;
{$R *.DFM}

procedure TForm11.Button10Click(Sender: TObject);
begin
form11.visible:=false;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
edit2.text:='0';
edit4.text:='0';
edit6.text:='0';
edit8.text:='0';
label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
edit1.text:='0';
edit3.text:='0';
edit5.text:='0';
edit7.text:='0';
label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;

end;

procedure TForm11.Button11Click(Sender: TObject);
begin
edit2.text:='0';
edit4.text:='0';
edit6.text:='0';
edit8.text:='0';
edit1.text:='0';
edit3.text:='0';
edit5.text:='0';
edit7.text:='0';
label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;
pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=1;
pic.canvas.FillRect(rect(0,0,250,250));
end;

procedure TForm11.Button7Click(Sender: TObject);
begin
edit1.text:=floattostr(-strtofloat(edit1.text));
edit2.text:=floattostr(-strtofloat(edit2.text));
edit3.text:=floattostr(-strtofloat(edit3.text));
edit4.text:=floattostr(-strtofloat(edit4.text));
edit5.text:=floattostr(-strtofloat(edit5.text));
edit6.text:=floattostr(-strtofloat(edit6.text));
edit7.text:=floattostr(-strtofloat(edit7.text));
edit8.text:=floattostr(-strtofloat(edit8.text));

label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;

end;

procedure TForm11.Button8Click(Sender: TObject);
begin

edit2.text:='0';
edit4.text:='0';
edit6.text:='0';
edit1.text:='0';
edit3.text:='0';
edit5.text:='0';

label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;

end;

procedure TForm11.Button4Click(Sender: TObject);
begin

edit8.text:=edit7.text;
edit7.text:=floattostr(strtofloat(edit6.text)*2);
edit6.text:=floattostr(strtofloat(edit5.text)*3);
edit5.text:=floattostr(strtofloat(edit4.text)*4);
edit4.text:=floattostr(strtofloat(edit3.text)*5);
edit3.text:=floattostr(strtofloat(edit2.text)*6);
edit2.text:=floattostr(strtofloat(edit1.text)*7);
edit1.text:='0';



label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;

end;

procedure TForm11.Button6Click(Sender: TObject);
begin

edit8.text:=edit7.text;
edit7.text:=floattostr(strtofloat(edit6.text)*2);
edit6.text:=floattostr(strtofloat(edit5.text)*3);
edit5.text:=floattostr(strtofloat(edit4.text)*4);
edit4.text:=floattostr(strtofloat(edit3.text)*5);
edit3.text:=floattostr(strtofloat(edit2.text)*6);
edit2.text:=floattostr(strtofloat(edit1.text)*7);
edit1.text:='0';

edit8.text:=edit7.text;
edit7.text:=floattostr(strtofloat(edit6.text)*2);
edit6.text:=floattostr(strtofloat(edit5.text)*3);
edit5.text:=floattostr(strtofloat(edit4.text)*4);
edit4.text:=floattostr(strtofloat(edit3.text)*5);
edit3.text:=floattostr(strtofloat(edit2.text)*6);
edit2.text:=floattostr(strtofloat(edit1.text)*7);
edit1.text:='0';

label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;

end;

procedure TForm11.Button5Click(Sender: TObject);
begin



edit1.text:=floattostr( strtofloat(edit2.text)/7 );
edit2.text:=floattostr( strtofloat(edit3.text)/6 );
edit3.text:=floattostr( strtofloat(edit4.text)/5 );
edit4.text:=floattostr( strtofloat(edit5.text)/4 );
edit5.text:=floattostr( strtofloat(edit6.text)/3 );
edit6.text:=floattostr( strtofloat(edit7.text)/2 );
edit7.text:=floattostr( strtofloat(edit8.text) );
edit8.text:='0';

label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;

end;

procedure TForm11.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.brush.color;
if colordialog1.execute
then
shape1.brush.color:=colordialog1.color;

gfarb:=shape1.brush.color;
end;

procedure TForm11.FormCreate(Sender: TObject);
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

procedure TForm11.Button1Click(Sender: TObject);
begin

label2.caption:='f(x) = '+edit1.text+' * x^7 + '+edit2.text+' * x^6 + '+edit3.text+' * x^5 + '+edit4.text+' * x^4 + '+edit5.text+' * x^3 + '+edit6.text+' * x^2 + '+edit7.text+' * x + '+edit8.text;


pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=spinedit1.value;
pic.canvas.FillRect(rect(0,0,250,250));

pic.canvas.pen.color:=gfarb;

f[7]:=strtofloat(edit1.text);
f[6]:=strtofloat(edit2.text);
f[5]:=strtofloat(edit3.text);
f[4]:=strtofloat(edit4.text);
f[3]:=strtofloat(edit5.text);
f[2]:=strtofloat(edit6.text);
f[1]:=strtofloat(edit7.text);
f[0]:=strtofloat(edit8.text);

i:=(strtofloat(edit10.text)-strtofloat(edit9.text))/250;
h:=(strtofloat(edit12.text)-strtofloat(edit11.text))/250;

px:=-strtofloat(edit9.text);
py:=-strtofloat(edit11.text);

v:=(((strtofloat(edit12.text)+strtofloat(edit11.text))/2)+py)*2;

x:=strtofloat(edit9.text);

rechne;

ay:=(((v)-y-py)/h);

pic.canvas.MoveTo(round(0),round(ay));


for u:=0 to 250 do
begin
if (y<strtofloat(edit12.text)*10) and (y>strtofloat(edit11.text)*10)
then
pic.canvas.lineto(round(u),round(ay));

x:=x+i;
rechne;

 ay:=(((v)-y-py)/h);

if (y<strtofloat(edit12.text)*10) and (y>strtofloat(edit11.text)*10)
then
pic.canvas.lineto(round(u),round(ay));
end;

paintbox1.canvas.draw(0,0,pic);

end;

procedure Tform11.rechne;
begin
y:=0;

for e:=0 to 7 do
begin

yy:=f[e];

if e>0
then
for a:=1 to e do
yy:=yy*x;

y:=y+yy;

end;

end;

procedure TForm11.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  mX, mY: Integer);
begin
i:=(strtofloat(edit10.text)-strtofloat(edit9.text))/250;
h:=(strtofloat(edit12.text)-strtofloat(edit11.text))/250;
px:=-strtofloat(edit9.text);
py:=-strtofloat(edit11.text);

v:=(((strtofloat(edit12.text)+strtofloat(edit11.text))/2)+py)*2;

label13.caption:='aktulle Position: ( '+floattostr(mx*i-px)+' / '+floattostr(((v)-my*h-py))+' )';
end;

procedure TForm11.Button9Click(Sender: TObject);
begin
form1.graphen(pic);
form11.visible:=false;
end;

end.


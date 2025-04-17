unit ftrig;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Spin, math;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    PaintBox1: TPaintBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
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
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Shape1: TShape;
    Label19: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ColorDialog1: TColorDialog;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; mX,
      mY: Integer);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aktu;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rechneC;
    procedure rechneS;
    procedure rechneT;
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form13: TForm13;
  gfarb,e,a,u:integer;
  x,y,i,h,px,py,yy,v,cwert,swert,twert,zz,hh:extended;
  fc,fs:array[0..4] of extended;
  ft:array[0..5] of extended;
  pic:Tbitmap;
  asy:boolean;

implementation

uses main;
{$R *.DFM}

procedure TForm13.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.brush.color;
if colordialog1.execute
then
shape1.brush.color:=colordialog1.color;

gfarb:=shape1.brush.color;
end;

procedure TForm13.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  mX, mY: Integer);
begin
i:=(strtofloat(edit18.text)-strtofloat(edit17.text))/250;
h:=(strtofloat(edit20.text)-strtofloat(edit19.text))/250;
px:=-strtofloat(edit17.text);
py:=-strtofloat(edit19.text);

v:=(((strtofloat(edit20.text)+strtofloat(edit19.text))/2)+py)*2;

label2.caption:='aktulle Position: ( '+floattostr(mx*i-px)+' / '+floattostr(((v)-my*h-py))+' )';
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
form13.visible:=false;
end;

procedure TForm13.FormCreate(Sender: TObject);
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



procedure Tform13.aktu;
begin
label1.caption:='f(x) = '+edit5.text+'*cos( '+edit1.text+'*x^2 + '+edit2.text+'*x +'+edit3.text+' )^'+edit4.text+' + '+edit10.text+'*sin( '+edit6.text+'*x^2 + '+edit7.text+'*x +'+edit8.text+' )^'+edit9.text+' + '+edit16.text+'*tan( '+edit11.text+'*x^3 + '+edit12.text+'*x^2 + '+edit13.text+'*x +'+edit14.text+' )^'+edit15.text+' ';
end;

procedure TForm13.Button4Click(Sender: TObject);
begin
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0';
aktu;
end;

procedure TForm13.Button5Click(Sender: TObject);
begin
edit6.text:='0';
edit7.text:='0';
edit8.text:='0';
edit9.text:='0';
edit10.text:='0';
aktu;
end;

procedure TForm13.Button6Click(Sender: TObject);
begin
edit11.text:='0';
edit12.text:='0';
edit13.text:='0';
edit14.text:='0';
edit15.text:='0';
edit16.text:='0';
aktu;
end;

procedure TForm13.Button7Click(Sender: TObject);
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
edit16.text:='0';


aktu;

pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=1;
pic.canvas.FillRect(rect(0,0,250,250));

end;

procedure TForm13.Button8Click(Sender: TObject);
begin
edit4.text:='1';
edit9.text:='1';
edit15.text:='1';
aktu;
end;

procedure TForm13.Button12Click(Sender: TObject);
begin
edit5.text:='1';
edit10.text:='1';
edit16.text:='1';
aktu;
end;

procedure TForm13.Button9Click(Sender: TObject);
begin
edit1.text:='0';
edit2.text:='1';
edit3.text:='0';
edit4.text:='1';
edit5.text:='1';
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
edit16.text:='0';


aktu;
end;

procedure TForm13.Button10Click(Sender: TObject);
begin
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0';
edit6.text:='0';
edit7.text:='1';
edit8.text:='0';
edit9.text:='1';
edit10.text:='1';
edit11.text:='0';
edit12.text:='0';
edit13.text:='0';
edit14.text:='0';
edit15.text:='0';
edit16.text:='0';


aktu;
end;

procedure TForm13.Button11Click(Sender: TObject);
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
edit13.text:='1';
edit14.text:='0';
edit15.text:='1';
edit16.text:='1';


aktu;
end;

procedure TForm13.Button1Click(Sender: TObject);
begin

aktu;

pic.canvas.brush.color:=clwhite;
pic.canvas.pen.color:=clwhite;
pic.canvas.pen.width:=spinedit1.value;
pic.canvas.FillRect(rect(0,0,250,250));

pic.canvas.pen.color:=gfarb;


fc[4]:=strtofloat(edit5.text);
fc[3]:=strtofloat(edit4.text);
fc[2]:=strtofloat(edit1.text);
fc[1]:=strtofloat(edit2.text);
fc[0]:=strtofloat(edit3.text);


fs[4]:=strtofloat(edit10.text);
fs[3]:=strtofloat(edit9.text);
fs[2]:=strtofloat(edit6.text);
fs[1]:=strtofloat(edit7.text);
fs[0]:=strtofloat(edit8.text);


ft[5]:=strtofloat(edit16.text);
ft[4]:=strtofloat(edit15.text);
ft[3]:=strtofloat(edit11.text);
ft[2]:=strtofloat(edit12.text);
ft[1]:=strtofloat(edit13.text);
ft[0]:=strtofloat(edit14.text);

asy:=false;



i:=(strtofloat(edit18.text)-strtofloat(edit17.text))/250;
h:=(strtofloat(edit20.text)-strtofloat(edit19.text))/250;
px:=-strtofloat(edit17.text);
py:=-strtofloat(edit19.text);

v:=(((strtofloat(edit20.text)+strtofloat(edit19.text))/2)+py)*2;


x:=strtofloat(edit17.text);

cwert:=0;
swert:=0;
twert:=0;

rechneC;
rechneS;
rechneT;


y:=cwert+swert+twert;



yy:=(((v)-y-py)/h);

pic.canvas.MoveTo(0,round(yy));


for u:=0 to 250 do
begin
if (y<strtofloat(edit20.text)*10) and (y>strtofloat(edit19.text)*10)
then
pic.canvas.lineto(round(u),round(yy));

cwert:=0;
swert:=0;
twert:=0;
x:=x+i;
rechneC;
rechneS;
rechneT;


y:=cwert+swert+twert;


yy:=(((v)-y-py)/h);

if (y<strtofloat(edit20.text)*10) and (y>strtofloat(edit19.text)*10)
then
pic.canvas.lineto(u,round(yy));



end;

paintbox1.canvas.draw(0,0,pic);

end;




    procedure Tform13.rechneC;
    begin
  cwert:=cos(fc[0]+x*fc[1]+x*x*fc[2]);

  zz:=cwert;
     if round(fc[3])=0
     then
     zz:=1;

  for e:=2 to round(fc[3]) do
  begin
  zz:=zz*cwert;
  end;

cwert:=zz;

cwert:=fc[4]*cwert;
end;

    procedure Tform13.rechneS;
    begin
  swert:=sin(fs[0]+x*fs[1]+x*x*fs[2]);

  zz:=swert;
     if round(fs[3])=0
     then
     zz:=1;

  for e:=2 to round(fs[3]) do
  begin
  zz:=zz*swert;
  end;

swert:=zz;

swert:=fs[4]*swert;
end;

    procedure Tform13.rechneT;
    begin

    hh:=ft[0]+x*ft[1]+x*x*ft[2]+x*x*x*ft[3];
if (cos(hh)=0)
then
twert:=sin(hh)/100000
else
twert:=tan(hh);


  zz:=twert;
     if round(ft[4])=0
     then
     zz:=1;

  for e:=2 to round(ft[4]) do
  begin
  zz:=zz*twert;
  end;

twert:=zz;

twert:=ft[5]*twert;




end;


procedure TForm13.Button2Click(Sender: TObject);
begin
form1.trigraph(pic);
form13.visible:=false;
end;

end.

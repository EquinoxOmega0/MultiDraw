unit bs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, MPlayer,  math, StdCtrls;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    MediaPlayer1: TMediaPlayer;
    PaintBox1: TPaintBox;
    Memo1: TMemo;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Musik;
    procedure Abbruch;
    procedure Bildereff;
    procedure Pixeleff;
    procedure Fracteff;
    procedure Texteff;
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;





  type Tscrdata= Record

  musicon:byte;
  bgcolor:longint;
  abbrmaus,abbrkey,abbrklick:byte;
  abbrhot:integer;
  abbrpass:string;
  bildschirmauf:TDevMode;

  bilderon:byte;
  bdauer,bzahl:integer;
  banzeige:byte;
  bbreit,bhoch:integer;

  pixelon,pubermal:byte;
  panzahl,pdauer:integer;
  pmuster,pfarbein:byte;
  pzmin,pzmax,pfarb,pschatt:longint;

  formon,fubermal:byte;
  fbeweg:byte;
  fanzeige,fanzahl:integer;
  fart,ffarbein:byte;
  fzmin,fzmax,ffarb,fschatt:longint;
  frand:byte;

  fracton:byte;
  fracart:byte;
  fracdauer:integer;
  fractyp:byte;
  abwx,abwy,konstx,konsty:extended;
  jill,mill,jff,mff:integer;

  transon:byte;
  torgi:byte;
  tanzeig:longint;
  transtyp:byte;
  tshoch,tsbreit:integer;

  texton:byte;
  textart:byte;
  schrift:tfont;
  twort:string;
  tfarbein:byte;
  tzmin,tzmax,tfarb,tschatt:longint;
  textbeweg:byte;

  end;

      type TFigur=class
  x,y,vx,vy,r:extended;
  st:integer;
  Procedure Init(stNeu:integer; xNeu,yNeu,vxNeu,vyNeu,rNeu:Extended);
  Procedure Bewegung(scrd:Tscrdata);
  Procedure Anzeigen(leinwand:Tcanvas);
  end;

  type TPartikel=record
  x,y,vx,vy,m:extended;
  end;

var
  Form1: TForm1;
  scrdata:Tscrdata;
  speicherdatei:textfile;
  sdb:file of TDevmode;
  sds:file of TFont;
  pname,hilf:string;
  bild,puf,hil:Tbitmap;
  i,e,a,bpos,zoomanz,aban:integer    ;
  llx,lly,z,r,alpha:extended;
  AspectRatio,OutputWidth,OutputHeight:extended;
  partikel:array[1..100000] of TPartikel;
  p:array[0..100] of TPoint;
  figur:array[1..1000] of TFigur;
  fdd,fd,fa,fb,fx,fy,dstartx,dstarty,astart,bstart,fz,fxx:extended;
  bildz,pixz,formz,fractz,textz:longint;
  tx,ty,tvx,tvy,tz,tl,bpx,bpy,bpvx,bpvy,sx,sy,sg,dx,dy:integer;
  tbx,tby,tbvx,tbvy:array[1..256] of integer;
  dc,ddc,hDestDC,hBM,hbold:HDC;
  zz,devmode,dd:TDevmode;
  farb,scrx,scry,d:longint;


implementation

{$R *.DFM}

procedure TForm1.Timer1Timer(Sender: TObject);
begin

if getasynckeystate(27)<>0
then
close;





if (scrdata.pubermal=1) or (scrdata.fubermal=1)
then
begin
bild.canvas.pen.color:=scrdata.bgcolor;
bild.canvas.brush.color:=scrdata.bgcolor;
bild.Canvas.fillrect(rect(0,0,bild.width,bild.height));
end;

if scrdata.torgi=1
then
begin

bild.canvas.draw(0,0,hil);

end;




if scrdata.musicon=1
then
Musik;

if scrdata.bilderon=1
then
begin
inc(bildz);
if bildz>scrdata.bdauer
then
begin
Bildereff;
bildz:=0;
end;
end;

if scrdata.pixelon=1
then
begin
inc(pixz);
if pixz>scrdata.pdauer
then
begin
Pixeleff;
pixz:=0;
end;
end;

if scrdata.formon=1
then
begin
inc(formz);

if formz>scrdata.fanzeige
then
begin



for i:=1 to scrdata.fanzahl do
begin
figur[i].bewegung(scrdata);
figur[i].anzeigen(bild.canvas);
end;
 formz:=0;
end;

end;


if scrdata.fracton=1
then
begin
inc(fractz);

if fractz>scrdata.fracdauer
then
begin
Fracteff;
fractz:=0;
end;
end;

if scrdata.texton=1
then
begin
    Texteff;
end;      

if aban<10
then
   inc(aban) ;

if aban<5
then
begin

for i:=0 to 255 do
if getasynckeystate(i)<>0
then
begin

end;
end ;


if aban>5
then
Abbruch;
 
Paintbox1.canvas.Draw(0,0,bild);



end;

procedure TForm1.FormCreate(Sender: TObject);
var iLength:integer;
sWindir,hier,zeile,vergl:string;
sysin:textfile;

    begin
    randomize;

ddc:=createDC('Display',NIL,NIL,NIL);
dx:=screen.width;
dy:=screen.height;
bild:=Tbitmap.create;
bild.height:=400;
bild.width:=200;
hDestDC:=CreateCompatibleDC(DdC);
hBM:=CreateCompatibleBitmap(ddc,dx,dy);
hbold:=selectObject(hdestDC,hbM);
BITBlt(hDestDC,0,0,dx,dy,ddc,0,0,SRCCopy);


    
getdir(0,hier);
iLength := 255;
setLength(sWinDir, iLength);
iLength := GetWindowsDirectory(PChar(sWinDir), iLength);
setLength(sWinDir, iLength);
hier:=sWinDir+'/SYSTEM.INI';


assignfile(sysin,hier);
reset(sysin);
repeat
readln(sysin,zeile);
vergl:=zeile;
setlength(vergl,12);
until (vergl='SCRNSAVE.EXE') or EOF(sysin)=true;
closefile(sysin);

vergl:='';
setLength(vergl, Length(zeile)-13);
for i:=14 to Length(zeile) do
vergl[i-13]:=zeile[i];

hier:=ExtractFileName(vergl);

setlength(hier,length(hier)-4);

pname:=sWindir+'/SYSTEM/'+hier;
         {   pname:='NEU';     }
          puf:=Tbitmap.create;
assignfile(speicherdatei,pname+'\data.dat');
reset(speicherdatei);
readln(speicherdatei,scrdata.musicon);
readln(speicherdatei,scrdata.bgcolor);
readln(speicherdatei,scrdata.abbrmaus);
readln(speicherdatei,scrdata.abbrkey);
readln(speicherdatei,scrdata.abbrklick);
readln(speicherdatei,scrdata.abbrhot);
readln(speicherdatei,scrdata.abbrpass);

readln(speicherdatei,scrdata.bilderon);
readln(speicherdatei,scrdata.bdauer);
readln(speicherdatei,scrdata.bzahl);
readln(speicherdatei,scrdata.banzeige);
readln(speicherdatei,scrdata.bbreit);
readln(speicherdatei,scrdata.bhoch);
readln(speicherdatei,scrdata.pixelon);
readln(speicherdatei,scrdata.pubermal);
readln(speicherdatei,scrdata.panzahl);
readln(speicherdatei,scrdata.pdauer);
readln(speicherdatei,scrdata.pmuster);
readln(speicherdatei,scrdata.pfarbein);
readln(speicherdatei,scrdata.pzmin);
readln(speicherdatei,scrdata.pzmax);
readln(speicherdatei,scrdata.pfarb);
readln(speicherdatei,scrdata.pschatt);
readln(speicherdatei,scrdata.formon);
readln(speicherdatei,scrdata.fubermal);
readln(speicherdatei,scrdata.fbeweg);
readln(speicherdatei,scrdata.fanzeige);
readln(speicherdatei,scrdata.fanzahl);
readln(speicherdatei,scrdata.fart);
readln(speicherdatei,scrdata.ffarbein);
readln(speicherdatei,scrdata.fzmin);
readln(speicherdatei,scrdata.fzmax);
readln(speicherdatei,scrdata.ffarb);
readln(speicherdatei,scrdata.fschatt);
readln(speicherdatei,scrdata.frand);
readln(speicherdatei,scrdata.fracton);
readln(speicherdatei,scrdata.fracart);
readln(speicherdatei,scrdata.fracdauer);
readln(speicherdatei,scrdata.fractyp);
readln(speicherdatei,scrdata.abwx);
readln(speicherdatei,scrdata.abwy);
readln(speicherdatei,scrdata.konstx);
readln(speicherdatei,scrdata.konsty);
readln(speicherdatei,scrdata.jill);
readln(speicherdatei,scrdata.mill);
readln(speicherdatei,scrdata.jff);
readln(speicherdatei,scrdata.mff);
readln(speicherdatei,scrdata.texton);
readln(speicherdatei,scrdata.textart);
readln(speicherdatei,scrdata.transon);
readln(speicherdatei,scrdata.torgi);
readln(speicherdatei,scrdata.tanzeig);
readln(speicherdatei,scrdata.transtyp);
readln(speicherdatei,scrdata.tshoch);
readln(speicherdatei,scrdata.tsbreit);
readln(speicherdatei,scrdata.twort);
readln(speicherdatei,scrdata.tfarbein);
readln(speicherdatei,scrdata.tzmin);
readln(speicherdatei,scrdata.tzmax);
readln(speicherdatei,scrdata.tfarb);
readln(speicherdatei,scrdata.tschatt);
readln(speicherdatei,scrdata.textbeweg);
closefile(speicherdatei);

assignfile(sdb,pname+'/bsdata.dat');
reset(sdb);
read(sdb,scrdata.bildschirmauf);
closefile(sdb);

assignfile(sds,pname+'/sadata.dat');
reset(sds);
read(sds,scrdata.schrift);
closefile(sds);


     bpx:=random(screen.width);
     bpy:=random(screen.height);
     bpvx:=random(41)-20;
     bpvy:=random(41)-20;

    { scrdata.musicon:=1;}
if scrdata.musicon=1
then
begin
With MediaPlayer1 do
begin
     Filename := pname+'\music.wav';
     DeviceType := dtWaveaudio;
     Open;
     play;

end;

end;

dc:=getdc(0);
farb:=1 shl getdevicecaps(dc, Bitspixel);
releaseDC(0,dc);
scrx:=screen.width;
scry:=screen.height;


devmode.dmsize:=Sizeof(TDevmode);
devmode.dmdriverextra:=0;
d:=0;


while EnumDisplaySettings(nil,d,devmode)  do

begin

inc(d);
if (devmode.dmpelswidth=scrdata.bildschirmauf.dmpelswidth) and (devmode.dmpelsheight=scrdata.bildschirmauf.dmpelsheight) and ((1 shl devmode.dmbitsperpel)=scrdata.bildschirmauf.dmbitsperpel)
then
begin
dd:=devmode;
end;

if (devmode.dmpelswidth=scrx) and (devmode.dmpelsheight=scry) and ((1 shl devmode.dmbitsperpel)=farb)
then
begin
zz:=devmode;
end;

end;


changedisplaySettings(Tdevmode(scrdata.bildschirmauf),0);
      bildz:=scrdata.bdauer-1;
Bild:=Tbitmap.create;
bild.width:=screen.width;
bild.height:=screen.height;
bild.canvas.pen.color:=scrdata.bgcolor;
bild.canvas.brush.color:=scrdata.bgcolor;
bild.Canvas.fillrect(rect(0,0,bild.width,bild.height));
form1.color:=scrdata.bgcolor;
Paintbox1.canvas.draw(0,0,bild);

{
bild.Canvas.Font:=TFont(scrdata.schrift);   }
                          
     hil:=tbitmap.Create;
hil.width:=screen.width;
hil.height:=screen.height;
hil.Canvas.handle:=hDestdc;


                      
if scrdata.bilderon=1
then
begin
bpos:=0;
end;





for i:=1 to 100000 do
begin
with partikel[i] do
begin
x:=random(screen.width);
y:=random(screen.height);
vx:=(random(1000)-500)/100;
vy:=(random(1000)-500)/100;
m:=random(1000);
end;

end;


if scrdata.formon=1
then
begin
for i:=1 to scrdata.fanzahl do
begin
figur[i]:=Tfigur.create;
figur[i].init(scrdata.fart,random(screen.width),random(screen.height),round((random(1000)-500)/100),round((random(1000)-500)/100),random(50));
end;
  end;

for i:=0 to 100 do
begin
p[i].x:=random(50)-25;
p[i].y:=random(50)-25;

end;


zoomanz:=0;

if (scrdata.texton=1) and (scrdata.textart=2)
then
begin
memo1.Lines.LoadFromFile(pname+'/text.txt');
end;

bildz:=0;
pixz:=0;
formz:=0;
fractz:=0;
textz:=0;

      aban:=0;

tx:=random(screen.width);
ty:=random(screen.height);
tvx:=random(10);
tvy:=random(10);
tz:=0;
tl:=length(scrdata.twort);

 for i:=1 to 256 do
 begin
 tbx[i]:=random(screen.width);
 tby[i]:=random(screen.height);
 tbvx[i]:=random(20)+5;

 if random(2)=0
 then
 tbvx[i]:=-tbvx[i];

 tbvy[i]:=random(20)+5;

  if random(2)=0
 then
 tbvy[i]:=-tbvy[i];


 end;

end;


procedure Tform1.Musik;
begin

if Mediaplayer1.position>Mediaplayer1.length-10
then
begin
Mediaplayer1.position:=0;
mediaplayer1.play;

end;   

end;



Procedure TForm1.Abbruch;
begin

if getasynckeystate(scrdata.abbrhot)<>0
then
close;




if scrdata.abbrkey=1
then
for i:=0 to 255 do
if getasynckeystate(i)<>0
then
close;


end;





procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if (scrdata.abbrmaus=1) and (aban>5)
then
close;

end;

procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

if (scrdata.abbrklick=1)   and (aban>5)
then
close;
end;



    procedure Tform1.Bildereff;
    var ziel:Trect;
    mx,my:integer;
    begin

puf.loadfromfile(pname+'/pic'+inttostr(bpos)+'.bmp');
mx:=puf.Width div 2;
my:=puf.height div 2;
case scrdata.banzeige of
1:begin


 OutputWidth := puf.Width;
    OutputHeight := puf.Height;

    AspectRatio := OutputWidth / OutputHeight;
    if (OutputWidth < screen.Width) and
      (OutputHeight < screen.Height) then
    begin
      if OutputWidth < OutputHeight then

      begin
        OutputHeight := screen.Height;
        OutputWidth := OutputHeight * AspectRatio;
      end
      else
      begin
        OutputWidth := screen.Width;
        OutputHeight := OutputWidth / AspectRatio;
      end
    end;
    if OutputWidth > screen.Width then
    begin
      OutputWidth := screen.Width;
      OutputHeight := OutputWidth / AspectRatio;
    end;
    if OutputHeight > screen.Height then

    begin
      OutputHeight := screen.Height;
      OutputWidth := OutputHeight * AspectRatio;
    end;

ziel.left:=round(mx-OutputWidth/2);
ziel.right:=round(mx+OutputWidth/2);
ziel.Top:=round(my-OutputHeight/2);
ziel.bottom:=round(my+OutputHeight/2);
end;
2:begin
ziel.left:=0;
ziel.right:=screen.width;
ziel.Top:=0;
ziel.bottom:=screen.height;
end;
3:begin
ziel.left:=mx-(puf.Width div 2);
ziel.right:=mx+(puf.Width div 2);
ziel.Top:=my-(puf.height div 2);
ziel.bottom:=my-(puf.height div 2);
end;
4:begin
ziel.left:=0;
ziel.right:=puf.Width;
ziel.Top:=0;
ziel.bottom:=puf.height;
end;
5:begin
bpx:=bpx+bpvx;
bpy:=bpy+bpvy;

if bpx<0
then
begin
bpx:=0;
bpvx:=-bpvx;
end;

if bpy<0
then
begin
bpy:=0;
bpvy:=-bpvy;
end;

if bpx>screen.width-puf.width
then
begin
bpx:=screen.width-puf.width;
bpvx:=-bpvx;
end;

if bpy>screen.height-puf.height
then
begin
bpy:=screen.height-puf.height;
bpvy:=-bpvy;
end;


ziel.left:=bpx;
ziel.right:=bpx+puf.width;
ziel.Top:=bpy;
ziel.bottom:=bpy+puf.height;



end;
6:begin
ziel.left:=mx-(scrdata.bbreit div 2);
ziel.right:=mx+(scrdata.bbreit div 2);
ziel.Top:=my-(scrdata.bhoch div 2);
ziel.bottom:=my+(scrdata.bhoch div 2);
end;
7:begin
ziel.left:=0;
ziel.right:=scrdata.bbreit;
ziel.Top:=0;
ziel.bottom:=scrdata.bhoch;
end;
8:begin

bpx:=bpx+bpvx;
bpy:=bpy+bpvy;

if bpx<0
then
begin
bpx:=0;
bpvx:=-bpvx;
end;

if bpy<0
then
begin
bpy:=0;
bpvy:=-bpvy;
end;

if bpx>screen.width-scrdata.bbreit
then
begin
bpx:=screen.width-scrdata.bbreit;
bpvx:=-bpvx;
end;

if bpy>screen.height-scrdata.bhoch
then
begin
bpy:=screen.height-scrdata.bhoch;
bpvy:=-bpvy;
end;


ziel.left:=bpx;
ziel.right:=bpx+scrdata.bbreit;
ziel.Top:=bpy;
ziel.bottom:=bpy+scrdata.bhoch;

end;

end;


bild.Canvas.CopyRect(ziel,puf.canvas,rect(0,0,puf.width,puf.height));
inc(bpos);
if bpos>=scrdata.bzahl
then
bpos:=0;

    end;


 procedure TForm1.Pixeleff;
begin




case scrdata.pmuster of
1:begin

for i:=1 to scrdata.panzahl do
begin

case scrdata.pfarbein of

1:begin
bild.canvas.pixels[random(screen.width),random(screen.height)]:=random(scrdata.pzmax-scrdata.pzmin)+scrdata.pzmin;
end;
2:begin
bild.canvas.pixels[random(screen.width),random(screen.height)]:=scrdata.pfarb;
end;
3:begin
bild.canvas.pixels[random(screen.width),random(screen.height)]:=random(256) shl scrdata.pschatt;
end;

end;


   end;
   end;


2:begin

z:=random(10)+5;
for e:=1 to round(z) do
begin

llx:=random(screen.width);
lly:=random(screen.height);

for i:=1 to round(scrdata.panzahl/z) do
begin



case scrdata.pfarbein of
1:begin


       r:=random(round(1000))/10;
       alpha:=random(20000)*pi/10000;

       bild.canvas.pixels[round(llx+r*cos(alpha)),round(lly+r*sin(alpha))]:=random(scrdata.pzmax-scrdata.pzmin)+scrdata.pzmin;

end;
2:begin

       r:=random(round(1000))/10;
       alpha:=random(20000)*pi/10000;

       bild.canvas.pixels[round(llx+r*cos(alpha)),round(lly+r*sin(alpha))]:=scrdata.pfarb;
end;
3:begin

       r:=random(round(1000))/10;
       alpha:=random(20000)*pi/10000;

       bild.canvas.pixels[round(llx+r*cos(alpha)),round(lly+r*sin(alpha))]:=random(256) shl scrdata.pschatt;

end;
end;
end;
    end;

end;
3:begin
for i:=1 to scrdata.panzahl do
begin
partikel[i].x:=partikel[i].x+partikel[i].vx;
partikel[i].y:=partikel[i].y+partikel[i].vy;

case scrdata.pfarbein of
1:begin
bild.canvas.pixels[round(partikel[i].x),round(partikel[i].y)]:=random(scrdata.pzmax-scrdata.pzmin)+scrdata.pzmin;
end;
2:begin
bild.canvas.pixels[round(partikel[i].x),round(partikel[i].y)]:=scrdata.pfarb;
end;
3:begin
bild.canvas.pixels[round(partikel[i].x),round(partikel[i].y)]:=random(256) shl scrdata.pschatt;

end;

end;
end;


end;
4:begin

sx:=round(screen.width/2)+random(100)-50;
sy:=round(screen.width/2)+random(100)-50;
sg:=random(1000)+500;

   for i:=1 to scrdata.panzahl do
begin

if (sx<>partikel[i].x) and (sy<>partikel[i].y)
then
begin
partikel[i].vx:=partikel[i].vx+((sg/((sx-partikel[i].x)*(sx-partikel[i].x) + (sy-partikel[i].y)*(sy-partikel[i].y)))*(sx-partikel[i].x)/sqrt((sx-partikel[i].x)*(sx-partikel[i].x) + (sy-partikel[i].y)*(sy-partikel[i].y)));   {GRATITATION NOCH EINFÜGEN}
partikel[i].vy:=partikel[i].vy+((sg/((sx-partikel[i].x)*(sx-partikel[i].x) + (sy-partikel[i].y)*(sy-partikel[i].y)))*(sy-partikel[i].y)/sqrt((sx-partikel[i].x)*(sx-partikel[i].x) + (sy-partikel[i].y)*(sy-partikel[i].y)));
end;
                                          

partikel[i].x:=partikel[i].x+partikel[i].vx;
partikel[i].y:=partikel[i].y+partikel[i].vy;

case scrdata.pfarbein of
1:begin
bild.canvas.pixels[round(partikel[i].x),round(partikel[i].y)]:=random(scrdata.pzmax-scrdata.pzmin)+scrdata.pzmin;
end;
2:begin
bild.canvas.pixels[round(partikel[i].x),round(partikel[i].y)]:=scrdata.pfarb;
end;
3:begin
bild.canvas.pixels[round(partikel[i].x),round(partikel[i].y)]:=random(256) shl scrdata.pschatt;

end;    end;


end;

end;
end;

end;







  Procedure TFigur.Init(stNeu:integer; xNeu,yNeu,vxNeu,vyNeu,rNeu:Extended);
  begin
r:=rNeu;
x:=xNeu;
y:=yNeu;
vx:=vxNeu;
vy:=vyNeu;
st:=stNeu;
  end;

  Procedure TFigur.Bewegung(scrd:Tscrdata);
  var  gx,gy,gra:integer;
    begin

gra:=2000;

    if scrd.fbeweg=1
    then
    begin
  x:=x+vx;
  y:=y+vy;

  case scrd.frand of
  1:begin
 if x<r
  then
  begin
  x:=r;
  vx:=-vx;
  end;
 if y<r
  then
  begin
  y:=r;
  vy:=-vy;
  end;

   if x>screen.width-r
  then
  begin
  x:=screen.width-r  ;
  vx:=-vx;
  end;
   if y>screen.height-r
  then
  begin
  y:=screen.height-r    ;
  vy:=-vy;
  end;


  end;
  2:begin

  if x<r
  then
  begin
x:=screen.width-r;
  end;
 if y<r
  then
  begin
y:=screen.height-r;
  end;

   if x>screen.width-r
  then
  begin
x:=r;
  end;
   if y>screen.height-r
  then
  begin
y:=r;
  end;

  end;
  3:begin


     if x<r
  then
  begin
  x:=r;
  vx:=-vx;
  end;
 if y<r
  then
  begin
  y:=r;
  vy:=-vy;
  end;

   if x>screen.width-r
  then
  begin
  x:=screen.width-r  ;
  vx:=-vx;
  end;
   if y>screen.height-r
  then
  begin
  y:=screen.height-r    ;
  vy:=-vy;
  end;

if (gx-x)*(gx-x)+(gy-y)*(gy-y)>r*r
then
begin
vx:=vx+((gra/((gx-x)*(gx-x) + (gy-y)*(gy-y)))*(gx-x)/sqrt((gx-x)*(gx-x) + (gy-y)*(gy-y)));
vy:=vy+((gra/((gx-x)*(gx-x) + (gy-y)*(gy-y)))*(gy-y)/sqrt((gx-x)*(gx-x) + (gy-y)*(gy-y)));
end;


gx:=gx+random(3)-1;
gy:=gy+random(3)-1;

if (gx<0) or (gx>screen.width)
then
gx:=random(screen.width);

if (gy<0) or (gy>screen.height)
then
gy:=random(screen.height);



  end;
  end;

  end
  else
 if scrd.fbeweg=2
 then
 begin
 x:=random(screen.width);
 y:=random(screen.height);
 end;
  end;

  
  Procedure TFigur.Anzeigen(leinwand:Tcanvas);
    begin
    case scrdata.ffarbein of
1:begin
leinwand.Brush.color:=random(scrdata.fzmax-scrdata.fzmin)+scrdata.fzmin;
leinwand.pen.color:=random(scrdata.fzmax-scrdata.fzmin)+scrdata.fzmin;
end;
2:begin
leinwand.Brush.color:=scrdata.ffarb;
leinwand.Pen.color:=scrdata.ffarb;
end;
3:begin
leinwand.Brush.color:=random(256) shl scrdata.fschatt;
leinwand.Pen.color:=random(256) shl scrdata.fschatt;
end;
    end;

case st of
1:begin


p[0].x:=round(x);
p[0].y:=round(y);
p[1].x:=p[0].x+round(r);
p[1].y:=p[0].y;
p[2].x:=p[0].x+round(r/2);
p[2].y:=p[0].y+round(r*9/10);

Leinwand.Polygon(Slice((p), 3));
end;
2:begin

p[0].x:=round(x);
p[0].y:=round(y);
p[1].x:=p[0].x+random(50)-25;
p[1].y:=p[0].y+random(50)-25;
p[2].x:=p[0].x+random(50)-25;
p[2].y:=p[0].y+random(50)-25;

Leinwand.Polygon(Slice((p), 3));
end;
3:begin
leinwand.rectangle(round(x),round(y),round(x+r),round(y+r));
end;
4:begin
p[0].x:=round(x);
p[0].y:=round(y);
p[1].x:=p[0].x+random(50)-25;
p[1].y:=p[0].y+random(50)-25;
p[2].x:=p[0].x+random(50)-25;
p[2].y:=p[0].y+random(50)-25;
p[3].x:=p[0].x+random(50)-25;
p[3].y:=p[0].y+random(50)-25;

leinwand.Polygon(Slice((p), 4));
end;

5:begin


for e:=0 to 9 do
begin

if e mod 2=1
then
begin
p[e].x:=round(x+r/2*cos(e*PI/5));
p[e].y:=round(y+r/2*sin(e*PI/5));
end
else
begin
p[e].x:=round(x+r*cos(e*PI/5));
p[e].y:=round(y+r*sin(e*PI/5));
end

end;


leinwand.Polygon(Slice((p), 10));
end;
6:begin


a:=0;
for e:=0 to random(75)+5 do
begin
p[e].x:=round(x+random(100)-50);
p[e].y:=round(x+random(100)-50);
inc(a);
end;


leinwand.Polygon(Slice((p), a));

end;
7:begin
leinwand.ellipse(round(x-r/2),round(y-r/2),round(x+r/2),round(y+r/2));
end;
8:begin

leinwand.ellipse(round(x-random(50)-25),round(y-random(50)-25),round(x+random(50)-25),round(y+random(50)-25));

end;
end;

  end;







    procedure Tform1.Fracteff;
    begin
   case scrdata.fracart of
   1:begin
   astart:=(random(30000)-25000)/10000;
   bstart:=(random(15000)-10000)/10000;
   if scrdata.fractyp=2
   then
   bstart:=bstart*2;
   dstartx:=(random(3000))/500000;
   dstarty:=(random(3000))/500000;
   end;
   2:begin
   inc(zoomanz);
   if zoomanz=10
   then
   begin
   zoomanz:=0;
   astart:=(random(30000)-25000)/10000;
   bstart:=(random(15000)-10000)/10000;
   if scrdata.fractyp=2
   then
   bstart:=bstart*2;
   dstartx:=(random(1000))/100;
   dstarty:=(random(1000))/100;
   end
   else
   begin
   dstartx:=dstarty/screen.width*10;
   dstarty:=dstartx/screen.height*10;
   end;

   end;
   end;

   case scrdata.fractyp of
   1:begin

   fdd:=dstartx/2;
fd:=dstarty/2;
fa:=astart;
fb:=bstart;

    fa:=astart;
    for i:=0 to screen.width do begin
      fb:=bstart;
      for e:=0 to screen.height do begin
        fx:=scrdata.abwx;
        fy:=scrdata.abwy;
        fz:=0;
        while (fz<scrdata.mill) and (sqrt(fx*fx+fy*fy)<(9)) do begin
          fz:=fz+1;
          fxx:=fx*fx-fy*fy+fa;
          fy:=2*fx*fy+fb;
          fx:=fxx;
        end;

         bild.canvas.Pixels[i,e]:=round((scrdata.mill-fz)*scrdata.mff);


        fb:=fb+fd;
      end;
      fa:=fa+fdd;
           
    end;



   end;
   2:begin
                 
    fdd:=dstartx/2;
fd:=dstarty/2;
fa:=astart;
fb:=bstart;

    fa:=astart;
    for i:=0 to screen.width do begin
      fb:=bstart;
      for e:=0 to screen.height do begin
        fx:=fa;
        fy:=fb;
        fz:=0;
        while (fz<scrdata.jill) and (sqrt(fx*fx+fy*fy)<(9)) do begin
        fz:=fz+1;
          fxx:=fx*fx-fy*fy+scrdata.konstx;
          fy:=2*fx*fy+scrdata.konsty;
          fx:=fxx;
        end;

         Bild.canvas.Pixels[i,e]:=round((scrdata.jill-fz)*scrdata.jff);


        fb:=fb+fd;
      end;
      fa:=fa+fdd;      

    end;

             
   end;
      end;

   paintbox1.canvas.draw(0,0,bild);
    end;




 procedure Tform1.Texteff;
begin
if scrdata.textart=1
then
begin

case scrdata.tfarbein of
1:begin
bild.canvas.font.color:=random(scrdata.tzmax-scrdata.tzmin)+scrdata.tzmin;
end;
2:begin
bild.canvas.font.color:=scrdata.tfarb;
end;
3:begin
bild.canvas.font.color:=random(256) shl scrdata.tschatt;
end;
end;

case scrdata.textbeweg of
1:begin

if tx>screen.width
then
begin
tx:=0;
ty:=random(screen.height);
tvx:=random(10);
end;

tx:=tx+tvx;
bild.canvas.textout(tx,ty,scrdata.twort);

end;
2:begin

if tx<0
then
begin
tx:=screen.width;
ty:=random(screen.height);
tvx:=-random(10);
end;

tx:=tx+tvx;
bild.canvas.textout(tx,ty,scrdata.twort);


end;
3:begin

if ty>screen.height
then
begin
ty:=0;
tx:=random(screen.width);
tvy:=random(10);
end;

ty:=ty+tvy;
bild.canvas.textout(tx,ty,scrdata.twort);


end;
4:begin

if ty<0
then
begin
ty:=screen.height;
tx:=random(screen.width);
tvy:=-random(10);
end;

ty:=ty+tvy;
bild.canvas.textout(tx,ty,scrdata.twort);

end;
5:begin

if ty<0
then
begin
ty:=0;
tvy:=-tvy;
end;

if ty>screen.height
then
begin
ty:=screen.height;
tvy:=-tvy;
end;

if tx<0
then
begin
tx:=0;
tvx:=-tvx;
end;

if tx>screen.width
then
begin
tx:=screen.width;
tvx:=-tvx;
end;

tx:=tx+tvx;
ty:=ty+tvy;
bild.canvas.textout(tx,ty,scrdata.twort);


end;
6:begin

tx:=random(screen.width);
ty:=random(screen.height);
bild.canvas.textout(tx,ty,scrdata.twort);

end;

8:begin

if ty<0
then
begin
ty:=0;
tvy:=-tvy;
end;

if ty>screen.height
then
begin
ty:=screen.height;
tvy:=-tvy;
end;

if tx<0
then
begin
tx:=0;
tvx:=-tvx;
end;

if tx>screen.width
then
begin
tx:=screen.width;
tvx:=-tvx;
end;

tvx:=tvx+random(5)-2;
tvy:=tvy+random(5)-2;

if abs(tvx)>50
then
tvx:=0;

if abs(tvy)>50
then
tvy:=0;

tx:=tx+tvx;
ty:=ty+tvy;
bild.canvas.textout(tx,ty,scrdata.twort);
end;
9:begin

for i:=1 to tl do
begin
if tby[i]<0
then
begin
tby[i]:=0;
tbvy[i]:=-tbvy[i];
end;

if tby[i]>screen.height
then
begin
tby[i]:=screen.height;
tbvy[i]:=-tbvy[i];
end;

if tbx[i]<0
then
begin
tbx[i]:=0;
tbvx[i]:=-tbvx[i];
end;

if tbx[i]>screen.width
then
begin
tbx[i]:=screen.width;
tbvx[i]:=-tbvx[i];
end;

tbvx[i]:=tbvx[i]+random(5)-2;
tbvy[i]:=tbvy[i]+random(5)-2;

if abs(tbvx[i])>50
then
tbvx[i]:=0;

if abs(tbvy[i])>50
then
tbvy[i]:=0;

tbx[i]:=tbx[i]+tbvx[i];
tby[i]:=tby[i]+tbvy[i];

bild.canvas.textout(tbx[i],tby[i],scrdata.twort[i]);
end;


end;

11:begin
tbx[1]:=random(screen.width);
tby[1]:=random(screen.height);
for i:=1 to tl do
begin
bild.canvas.textout(tbx[1]+i*10,tby[1]+i*10,scrdata.twort[i]);
sleep(200);
end;
 sleep(1000);
end;
12:begin
tbx[1]:=tbx[1]+tbvx[1];
tby[1]:=tby[1]+tbvy[1];

if tbx[1]>screen.width
then
begin
tbvx[1]:=-(random(20)+5);
tby[1]:=tby[1]+20;
end;

if tbx[1]<0
then
begin
tbvx[1]:=random(20)+5;
tby[1]:=tby[1]+20;
end;

bild.canvas.textout(tbx[1],tby[1],scrdata.twort);

if tby[1]>screen.height
then
begin
tbx[1]:=0;
tby[1]:=0;
tbvx[1]:=random(20)+5;
end;

end;

end;



end
else if scrdata.textart=2
then
begin

case scrdata.tfarbein of
1:begin
bild.canvas.font.color:=random(scrdata.tzmax-scrdata.tzmin)+scrdata.tzmin;
end;
2:begin
bild.canvas.font.color:=scrdata.tfarb;
end;
3:begin
bild.canvas.font.color:=random(256) shl scrdata.tschatt;
end;
end;

case scrdata.textbeweg of
1:begin

if tx>screen.width
then
begin
tx:=0;
ty:=random(screen.height);
tvx:=random(10);
end;

tx:=tx+tvx;
bild.canvas.textout(tx,ty,memo1.lines.Strings[random(memo1.Lines.count)]);

end;
2:begin

if tx<0
then
begin
tx:=screen.width;
ty:=random(screen.height);
tvx:=-random(10);
end;

tx:=tx+tvx;
bild.canvas.textout(tx,ty,memo1.lines.Strings[random(memo1.Lines.count)]);


end;
3:begin

if ty>screen.height
then
begin
ty:=0;
tx:=random(screen.width);
tvy:=random(10);
end;

ty:=ty+tvy;
bild.canvas.textout(tx,ty,memo1.lines.Strings[random(memo1.Lines.count)]);


end;
4:begin

if ty<0
then
begin
ty:=screen.height;
tx:=random(screen.width);
tvy:=-random(10);
end;

ty:=ty+tvy;
bild.canvas.textout(tx,ty,memo1.lines.Strings[random(memo1.Lines.count)]);

end;
5:begin

if ty<0
then
begin
ty:=0;
tvy:=-tvy;
end;

if ty>screen.height
then
begin
ty:=screen.height;
tvy:=-tvy;
end;

if tx<0
then
begin
tx:=0;
tvx:=-tvx;
end;

if tx>screen.width
then
begin
tx:=screen.width;
tvx:=-tvx;
end;

tx:=tx+tvx;
ty:=ty+tvy;
bild.canvas.textout(tx,ty,memo1.lines.Strings[random(memo1.Lines.count)]);


end;
6:begin

tx:=random(screen.width);
ty:=random(screen.height);
bild.canvas.textout(tx,ty,memo1.lines.Strings[random(memo1.Lines.count)]);
                  sleep(1000);
end;

8:begin

if ty<0
then
begin
ty:=0;
tvy:=-tvy;
end;

if ty>screen.height
then
begin
ty:=screen.height;
tvy:=-tvy;
end;

if tx<0
then
begin
tx:=0;
tvx:=-tvx;
end;

if tx>screen.width
then
begin
tx:=screen.width;
tvx:=-tvx;
end;

tvx:=tvx+random(5)-2;
tvy:=tvy+random(5)-2;

if abs(tvx)>50
then
tvx:=0;

if abs(tvy)>50
then
tvy:=0;

tx:=tx+tvx;
ty:=ty+tvy;
bild.canvas.textout(tx,ty,memo1.lines.Strings[random(memo1.Lines.count)]);
end;
9:begin
 hilf:=memo1.lines.Strings[random(memo1.Lines.count)];

 tl:=length(hilf);
for i:=1 to tl do
begin
if tby[i]<0
then
begin
tby[i]:=0;
tbvy[i]:=-tbvy[i];
end;

if tby[i]>screen.height
then
begin
tby[i]:=screen.height;
tbvy[i]:=-tbvy[i];
end;

if tbx[i]<0
then
begin
tbx[i]:=0;
tbvx[i]:=-tbvx[i];
end;

if tbx[i]>screen.width
then
begin
tbx[i]:=screen.width;
tbvx[i]:=-tbvx[i];
end;

tbvx[i]:=tbvx[i]+random(5)-2;
tbvy[i]:=tbvy[i]+random(5)-2;

if abs(tbvx[i])>50
then
tbvx[i]:=0;

if abs(tbvy[i])>50
then
tbvy[i]:=0;

tbx[i]:=tbx[i]+tbvx[i];
tby[i]:=tby[i]+tbvy[i];

bild.canvas.textout(tbx[i],tby[i],hilf);
end;


end;

11:begin
 hilf:=memo1.lines.Strings[random(memo1.Lines.count)];

 tl:=length(hilf);
tbx[1]:=random(screen.width);
tby[1]:=random(screen.height);
for i:=1 to tl do
begin
bild.canvas.textout(tbx[1]+i*10,tby[1]+i*10,hilf);
sleep(200);
end;
 sleep(1000);
end;


12:begin
 hilf:=memo1.lines.Strings[random(memo1.Lines.count)];

 tl:=length(hilf);

tbx[1]:=tbx[1]+tbvx[1];
tby[1]:=tby[1]+tbvy[1];

if tbx[1]>screen.width
then
begin
tbvx[1]:=-(random(20)+5);
tby[1]:=tby[1]+20;
end;

if tbx[1]<0
then
begin
tbvx[1]:=random(20)+5;
tby[1]:=tby[1]+20;
end;

bild.canvas.textout(tbx[1],tby[1],hilf);

if tby[1]>screen.height
then
begin
tbx[1]:=0;
tby[1]:=0;
tbvx[1]:=random(20)+5;
end;

end;

end;

end;

end;



procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
changedisplaySettings(Tdevmode(zz),0);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
changedisplaySettings(Tdevmode(zz),0);
end;


 end.

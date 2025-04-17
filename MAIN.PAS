unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, StdCtrls, Buttons, ExtDlgs, OleCtrls, vcf1, Spin,
  ComCtrls, ColorGrd, printers, math ,Clipbrd, lauf, farbaus, neuneu, mandel, zufpi, julia,
  farbwert, zufli, zuffo, fpolyn, fratio, ftrig, gross, effmuster, zerh, feige, zwisch,
  fexpo, rekurs, gzoom, autod, hell, vollb, kombi , mainhilfe, info;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Bearbeiten1: TMenuItem;
    Bild1: TMenuItem;
    Einstellungen1: TMenuItem;
    Werkzeug1: TMenuItem;
    Hilfe1: TMenuItem;
    Neu1: TMenuItem;
    ffnen1: TMenuItem;
    Speichern1: TMenuItem;
    Speichernunter1: TMenuItem;
    Drucken1: TMenuItem;
    Druckeinstellungen1: TMenuItem;
    AusSpeicheraktualisieren1: TMenuItem;
    Beenden1: TMenuItem;
    Ausschneiden1: TMenuItem;
    Kopieren1: TMenuItem;
    Einfgen1: TMenuItem;
    Lschen1: TMenuItem;
    Zwischenablage1: TMenuItem;
    Speichern2: TMenuItem;
    Laden1: TMenuItem;
    Verwerfen1: TMenuItem;
    Drehen1: TMenuItem;
    N90nachrechts1: TMenuItem;
    N90nachlinks1: TMenuItem;
    N1801: TMenuItem;
    genauerWinkel1: TMenuItem;
    Spiegeln1: TMenuItem;
    Hilfe2: TMenuItem;
    horizontal1: TMenuItem;
    vertikal1: TMenuItem;
    N1Meriadiane1: TMenuItem;
    N2Meridiane1: TMenuItem;
    Autodreh1: TMenuItem;
    Zoomen1: TMenuItem;
    Vollbild1: TMenuItem;
    hinein1: TMenuItem;
    heraus1: TMenuItem;
    genau1: TMenuItem;
    N1001: TMenuItem;
    N1501: TMenuItem;
    N2001: TMenuItem;
    N2501: TMenuItem;
    N4001: TMenuItem;
    N8001: TMenuItem;
    N10001: TMenuItem;
    N901: TMenuItem;
    N751: TMenuItem;
    N661: TMenuItem;
    N501: TMenuItem;
    N331: TMenuItem;
    N251: TMenuItem;
    N201: TMenuItem;
    N101: TMenuItem;
    Farbeeinstellungen1: TMenuItem;
    Pinsel1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    PaintBox1: TPaintBox;
    Bleistift1: TMenuItem;
    Fller1: TMenuItem;
    Radierer1: TMenuItem;
    Farbradierer1: TMenuItem;
    Streuer1: TMenuItem;
    Farbholer1: TMenuItem;
    Formen1: TMenuItem;
    Kreis1: TMenuItem;
    Ellipse1: TMenuItem;
    Quadrat1: TMenuItem;
    Rechteck1: TMenuItem;
    Linie1: TMenuItem;
    Dreieck1: TMenuItem;
    Wichzeichner1: TMenuItem;
    SchwarzWei1: TMenuItem;
    Komplimentr1: TMenuItem;
    Hilfe3: TMenuItem;
    Info1: TMenuItem;
    Schrifteinstellungen1: TMenuItem;
    Polygom1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    PopupMenu1: TPopupMenu;
    Timer1: TTimer;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Text1: TMenuItem;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ColorGrid1: TColorGrid;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    Rckgngig1: TMenuItem;
    Shape1: TShape;
    Shape2: TShape;
    Label4: TLabel;
    Label5: TLabel;
    FarbeinstellungenVG1: TMenuItem;
    ColorDialog2: TColorDialog;
    SpinEdit3: TSpinEdit;
    Label6: TLabel;
    Groendern1: TMenuItem;
    Rahmen1: TMenuItem;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    Bogen1: TMenuItem;
    Rundrechteck1: TMenuItem;
    BitBtn19: TBitBtn;
    Dauerlinie1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Effekte: TMenuItem;
    Fraktale1: TMenuItem;
    Zuflle1: TMenuItem;
    Muster1: TMenuItem;
    Farbnderung1: TMenuItem;
    Mandelbrot1: TMenuItem;
    Julia1: TMenuItem;
    Pixel1: TMenuItem;
    Formen2: TMenuItem;
    Linien1: TMenuItem;
    Farbeentfernaustauschen1: TMenuItem;
    Totenstck1: TMenuItem;
    VGStyle1: TMenuItem;
    HGStyle1: TMenuItem;
    Bzierkurve1: TMenuItem;
    Kreisstck1: TMenuItem;
    BitBtn21: TBitBtn;
    Funktionen1: TMenuItem;
    Polynom1: TMenuItem;
    Rational1: TMenuItem;
    Trigonometrisch1: TMenuItem;
    Expotentiel1: TMenuItem;
    AlsLaufwerkshintergrundspeichern1: TMenuItem;
    Rekursionen1: TMenuItem;
    BitBtn5: TBitBtn;
    BitBtn10: TBitBtn;
    Farbfilter1: TMenuItem;
    rot1: TMenuItem;
    grn1: TMenuItem;
    blau1: TMenuItem;
    Feigenbaum1: TMenuItem;
    Allezurcksetzen1: TMenuItem;
    Kanlevertauschen1: TMenuItem;
    RGBBGR1: TMenuItem;
    RGBGBR1: TMenuItem;
    RGBRBG1: TMenuItem;
    RGBGRB1: TMenuItem;
    RGBBRG1: TMenuItem;
    Zerhacken1: TMenuItem;
    PrintDialog1: TPrintDialog;
    Verwischer1: TMenuItem;
    nachlinks1: TMenuItem;
    nachoben1: TMenuItem;
    nachrechts1: TMenuItem;
    nachunten1: TMenuItem;
    test1: TMenuItem;
    Helligkeitsnderung1: TMenuItem;
    Unschrfemaskierung1: TMenuItem;
    mitanderemBildkombinieren1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Bleistift1Click(Sender: TObject);
    procedure Pinsel1Click(Sender: TObject);
    procedure Fller1Click(Sender: TObject);
    procedure Radierer1Click(Sender: TObject);
    procedure Farbradierer1Click(Sender: TObject);
    procedure Streuer1Click(Sender: TObject);
    procedure Linie1Click(Sender: TObject);
    procedure Text1Click(Sender: TObject);
    procedure Farbholer1Click(Sender: TObject);
    procedure Kreis1Click(Sender: TObject);
    procedure Ellipse1Click(Sender: TObject);
    procedure Quadrat1Click(Sender: TObject);
    procedure Rechteck1Click(Sender: TObject);
    procedure Dreieck1Click(Sender: TObject);
    procedure Polygom1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure PaintBox1DblClick(Sender: TObject);
    procedure klick;
    procedure ffnen1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure Beenden1Click(Sender: TObject);
    procedure blei1(x,y:integer);
    procedure Blei2(x,y:integer);
    procedure Rckgngig1Click(Sender: TObject);
    procedure ColorGrid1Change(Sender: TObject);
    procedure FarbeinstellungenVG1Click(Sender: TObject);
    procedure Farbeeinstellungen1Click(Sender: TObject);
    procedure vfarba;
    procedure hfarba;
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pins1(x,y:integer);
    procedure pins2(x,y:integer);
    procedure SpinEdit3Change(Sender: TObject);
    procedure full(x,y:integer);
    procedure AusSpeicheraktualisieren1Click(Sender: TObject);
    procedure allr1(x,y:integer);
    procedure allr2(x,y:integer);
    procedure holer(x,y:integer);
    procedure farbr1(x,y:integer);
    procedure farbr2(x,y:integer);
    procedure streu1(x,y:integer);
    procedure streu2(x,y:integer);
    procedure lini1(x,y:integer);
    procedure lini2(x,y:integer);
    procedure ansatz(x,y:integer);
    procedure krei1(x,y:integer);
    procedure krei2(x,y:integer);
    procedure BitBtn16Click(Sender: TObject);
    procedure Rahmen1Click(Sender: TObject);
    procedure ell1(x,y:integer);
    procedure ell2(x,y:integer);
    procedure quad1(x,y:integer);
    procedure quad2(x,y:integer);
    procedure recht1(x,y:integer);
    procedure recht2(x,y:integer);
    procedure drei1(x,y:integer);
    procedure drei2(x,y:integer);
    procedure poly1(x,y:integer);
    procedure poly2(x,y:integer);
    procedure poly3(x,y:integer);
    procedure polyl1(x,y:integer);
    procedure polyl2(x,y:integer);
    procedure polyl3(x,y:integer);
    procedure rahm1(x,y:integer);
    procedure rahm2(x,y:integer);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure Bogen1Click(Sender: TObject);
    procedure Rundrechteck1Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure Dauerlinie1Click(Sender: TObject);
    procedure rund1(x,y:integer);
    procedure rund2(x,y:integer);
    procedure horizontal1Click(Sender: TObject);
    procedure vertikal1Click(Sender: TObject);
    procedure N2Meridiane1Click(Sender: TObject);
    procedure N1Meriadiane1Click(Sender: TObject);
    procedure Speichernunter1Click(Sender: TObject);
    procedure Speichern1Click(Sender: TObject);
    procedure Totenstck1Click(Sender: TObject);
    procedure schreib1(x,y:integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Schrifteinstellungen1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure pbc(sender: Tobject);
    procedure bbc(sender: Tobject);
    procedure Button2Click(Sender: TObject);
    procedure VGStyle1Click(Sender: TObject);
    procedure HGStyle1Click(Sender: TObject);
    procedure Druckeinstellungen1Click(Sender: TObject);
    procedure Drucken1Click(Sender: TObject);
    procedure bogenn1(x,y:integer);
    procedure bogenn2(x,y:integer);
    procedure bogenn3(x,y:integer);
    procedure tort1(x,y:integer);
    procedure tort2(x,y:integer);
    procedure tort3(x,y:integer);
    procedure BitBtn21Click(Sender: TObject);
    procedure Kreisstck1Click(Sender: TObject);
    procedure Bzierkurve1Click(Sender: TObject);
    procedure ks1(x,y:integer);
    procedure ks2(x,y:integer);
    procedure ks3(x,y:integer);
    procedure Farbeentfernaustauschen1Click(Sender: TObject);
    procedure facc;
    procedure faa1p;
    procedure faa2p;
    procedure faan;
    procedure AlsLaufwerkshintergrundspeichern1Click(Sender: TObject);
    procedure balws;
    procedure Neu1Click(Sender: TObject);
    procedure neuerstellen;
    procedure neuabr;
    procedure neubgfarb;
    procedure Mandelbrot1Click(Sender: TObject);
    procedure mbmu1(pic:Tbitmap);
    procedure mbmu2(pic:Tbitmap);
    procedure mbmu3(pic:Tbitmap);
    procedure mbmzieh1(x,y:integer);
    procedure mbmzieh2(x,y:integer);
    procedure Pixel1Click(Sender: TObject);
    procedure Julia1Click(Sender: TObject);
    Procedure pixein(pfe,psm:integer);
    procedure pixpunkt(x,y:integer);
    procedure pixlin1(x,y:integer);
    procedure pixlin2(x,y:integer);
    procedure komet(x,y:integer);
    procedure julu1(pic:Tbitmap);
    procedure julu2(pic:Tbitmap);
    procedure Wichzeichner1Click(Sender: TObject);
    procedure aufschlussel(f,z:integer);
    procedure rot1Click(Sender: TObject);
    procedure grn1Click(Sender: TObject);
    procedure blau1Click(Sender: TObject);
    procedure Farbnderung1Click(Sender: TObject);
    procedure fwbereich;
    procedure fwganz;
    procedure Linien1Click(Sender: TObject);
    procedure zlinein(anzahl,dicke,farben,typ:integer);
    procedure Formen2Click(Sender: TObject);
    procedure zforein(typ,farbe: integer);
    procedure Komplimentr1Click(Sender: TObject);
    procedure SchwarzWei1Click(Sender: TObject);
    procedure Allezurcksetzen1Click(Sender: TObject);
    procedure Polynom1Click(Sender: TObject);
    procedure graphen(pic:Tbitmap);
    procedure gzieh1(x,y:integer);
    procedure gzieh2(x,y:integer);
    procedure Rational1Click(Sender: TObject);
    procedure ratgraph(pic:Tbitmap);
    procedure RGBBGR1Click(Sender: TObject);
    procedure RGBGBR1Click(Sender: TObject);
    procedure RGBRBG1Click(Sender: TObject);
    procedure RGBGRB1Click(Sender: TObject);
    procedure RGBBRG1Click(Sender: TObject);
    procedure Trigonometrisch1Click(Sender: TObject);
    procedure Trigraph(pic:tbitmap);
    procedure Groendern1Click(Sender: TObject);
    procedure grossander;
    procedure Muster1Click(Sender: TObject);
    procedure mustra(pic:Tbitmap);
    procedure Zerhacken1Click(Sender: TObject);
    procedure hack;
    procedure Feigenbaum1Click(Sender: TObject);
    procedure feigb1(pic:Tbitmap);
    procedure feigb2(pic:Tbitmap);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure N90nachrechts1Click(Sender: TObject);
    procedure backspeicher;
    procedure SpinEdit2Click(Sender: TObject);
    procedure SpinEdit1Click(Sender: TObject);
    procedure N90nachlinks1Click(Sender: TObject);
    procedure N1801Click(Sender: TObject);
    procedure SpinEdit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpinEdit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
      procedure ausschn1(x,y:integer);
      procedure ausschn2(x,y:integer);
      procedure ausschn3(x,y:integer);
      procedure ausschn4;
      procedure ausschn5;
    procedure Kopieren1Click(Sender: TObject);
    procedure vorzwischen;
    procedure Ausschneiden1Click(Sender: TObject);
    procedure Lschen1Click(Sender: TObject);
    procedure Einfgen1Click(Sender: TObject);
    procedure Verwerfen1Click(Sender: TObject);
    procedure Laden1Click(Sender: TObject);
    procedure Speichern2Click(Sender: TObject);
    procedure Expotentiel1Click(Sender: TObject);
    procedure fexpgraph(pic:Tbitmap);
    procedure Rekursionen1Click(Sender: TObject);
    procedure rektra1(pic:Tbitmap);
    procedure rektra2(pic:Tbitmap);
    procedure zoomzoom(zoomfaktor:extended);
    procedure N1501Click(Sender: TObject);
    procedure N2001Click(Sender: TObject);
    procedure N2501Click(Sender: TObject);
    procedure N4001Click(Sender: TObject);
    procedure N8001Click(Sender: TObject);
    procedure N10001Click(Sender: TObject);
    procedure N1001Click(Sender: TObject);
    procedure N901Click(Sender: TObject);
    procedure N751Click(Sender: TObject);
    procedure N661Click(Sender: TObject);
    procedure N501Click(Sender: TObject);
    procedure N331Click(Sender: TObject);
    procedure N251Click(Sender: TObject);
    procedure N201Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure genau1Click(Sender: TObject);
    procedure gzaus;
    procedure nachlinks1Click(Sender: TObject);
    procedure nachoben1Click(Sender: TObject);
    procedure nachrechts1Click(Sender: TObject);
    procedure nachunten1Click(Sender: TObject);
    procedure test1Click(Sender: TObject);
    procedure rotier(winkel:extended);
    procedure genauerWinkel1Click(Sender: TObject);
    procedure zoomnormal;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Autodreh1Click(Sender: TObject);
    procedure adreh;
    procedure Helligkeitsnderung1Click(Sender: TObject);
    procedure hellander;
    procedure Vollbild1Click(Sender: TObject);
    procedure bez1(x,y:integer);
    procedure bez2(x,y:integer);
    procedure bez3(x,y:integer);
    procedure Unschrfemaskierung1Click(Sender: TObject);
    procedure mitanderemBildkombinieren1Click(Sender: TObject);
    procedure kombibilder;
    procedure Hilfe3Click(Sender: TObject);
    procedure Info1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;




var
  Form1: TForm1;
  bild,puffer,fract,kurve,klein,movbit,kombpic:TBitmap;
  rx,ry,z,f,w,d,bclick,i,e,a,order,vfarb,hfarb,varx,vary,zoom,dick,mx,my,mmx,mmy,lx,ly,llx,lly,n,bx,by,farb1,farb2:integer;
  mal,dd,t,hak,stret,mark,halten,zc:boolean;
  ausz,bzz:byte;
  dateiname,s:string;
  p:array[0..100] of Tpoint;
  schrift:Tfont;
  pst,bst:Tform;
  pstc,bstc:Tcombobox;
  pstb,bstb:Tbutton;
  r,alpha:extended;
  rot,grun,blau:array[1..9] of integer;
  brushstz:TBrushStyle;
  olx,oly,urx,ury:integer;
  zf:extended;



implementation

uses controll;
{$R *.DFM}


procedure TForm1.FormCreate(Sender: TObject);
begin
randomize;
schrift:=Paintbox1.Font;
           stret:=false;
           ausz:=0;
s:='';
zc:=false;
t:=false;
dd:=false;
 bclick:=0;
mal:=false;
zoom:=1;
n:=0;
zf:=1;
dateiname:='unbenannt';
      dick:=1;
     vfarb:=0;
     hfarb:=0;
     varx:=0;
     vary:=0;
     order:=-1;
     
bild:=Tbitmap.create;
puffer:=tbitmap.create;

bild.width:=spinedit1.value;
puffer.width:=spinedit1.value;

bild.height:=spinedit2.value;
puffer.height:=spinedit2.value;
bild.Canvas.Brush.color:=clblack;
bild.Canvas.pen.color:=clblack;
puffer.Canvas.Brush.color:=clblack;
puffer.Canvas.pen.color:=clblack;
bild.canvas.fillrect(rect(0,0,bild.width,bild.height));
puffer.canvas.draw(0,0,bild);
Paintbox1.canvas.draw(0,0,bild);
puffer.canvas.font:=schrift;
bild.canvas.font:=schrift;


fract:=tbitmap.create;
kurve:=Tbitmap.create;
klein:=Tbitmap.create;
movbit:=Tbitmap.create;
kombpic:=tbitmap.create;
end;

procedure TForm1.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
mx:=x;
my:=y;
statusbar1.Panels[0].text:='pos: '+inttostr(x)+' / '+inttostr(y);
case order of
0:blei2(x,y);
1:pins2(x,y);
3:allr2(x,y);
4:farbr2(x,y);
6:lini1(x,y);
9:krei1(x,y);
10:ell1(x,y);
11:quad1(x,y);
12:recht1(x,y);
13:drei2(x,y);
14:poly2(x,y);
15:rahm1(x,y);
16:bogenn2(x,y);
17:rund1(x,y);
18:polyl2(x,y);
19:tort2(x,y);
20:bez2(x,y);
21:ks2(x,y);
22:mbmzieh1(x,y);
24..25:pixlin1(x,y);
26:gzieh1(x,y);
27:ausschn2(x,y);
end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

case order of

5:streu2(mx,my);
27:ausschn4;
end;

end;



procedure TForm1.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mx:=x;
my:=y;
mal:=true;
case order of
0:blei1(x,y);
1:pins1(x,y);
2:full(x,y);
3:allr1(x,y);
4:farbr1(x,y);
5:streu1(x,y);
6:ansatz(x,y);
7:schreib1(x,y);
8:holer(x,y);
9..12:ansatz(x,y);
13:drei1(x,y);
14:poly1(x,y);
15:ansatz(x,y);
16:bogenn1(x,y);
17:ansatz(x,y);
18:polyl1(x,y);
19:tort1(x,y);
20:bez1(x,y);
21:ks1(x,y);
22:ansatz(x,y);
23:pixpunkt(x,y);
24..26:ansatz(x,y);
27:begin
if button=mbLeft 
then
ausschn1(x,y);
if button=mbRight
then
begin
ausschn5;

end;
end;

end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;




procedure TForm1.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mx:=x;
my:=y;
mal:=false;
case order of
6:lini2(x,y);
9:krei2(x,y);
10:ell2(x,y);
11:quad2(x,y);
12:recht2(x,y);
15:rahm2(x,y);
16:bogenn3(x,y);
17:rund2(x,y);
19:tort3(x,y);
20:bez3(x,y);
21:ks3(x,y);
22:mbmzieh2(x,y);
24:pixlin2(x,y);
25:komet(x,y);
26:gzieh2(x,y);
27:if button=mbleft
then
ausschn3(x,y);
end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;



procedure TForm1.PaintBox1DblClick(Sender: TObject);
begin
dd:=true;
case order of
14:poly3(mx,my);
18:polyl3(mx,my);
27:ausschn5;
end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Bleistift1Click(Sender: TObject);
begin
order:=0;
label3.caption:='Bleistift';
klick;
bitbtn1.enabled:=false;
end;

procedure TForm1.Pinsel1Click(Sender: TObject);
begin
order:=1;
label3.caption:='Pinsel';
klick;
bitbtn2.enabled:=false;
end;

procedure TForm1.Fller1Click(Sender: TObject);
begin
order:=2;
label3.caption:='Füller';
klick;
bitbtn3.enabled:=false;
end;

procedure TForm1.Radierer1Click(Sender: TObject);
begin
order:=3;
label3.caption:='Allesradierer';
klick;
bitbtn4.enabled:=false;
end;

procedure TForm1.Farbradierer1Click(Sender: TObject);
begin
order:=4;
label3.caption:='Farbradierer';
klick;

end;

procedure TForm1.Streuer1Click(Sender: TObject);
begin
order:=5;
label3.caption:='Streuer';
klick;
bitbtn6.enabled:=false;
end;

procedure TForm1.Linie1Click(Sender: TObject);
begin
order:=6;
label3.caption:='Linie';
klick;
bitbtn7.enabled:=false;
end;

procedure TForm1.Text1Click(Sender: TObject);
begin
t:=false;
order:=7;
label3.caption:='Text';
klick;
bitbtn8.enabled:=false;
end;

procedure TForm1.Farbholer1Click(Sender: TObject);
begin
order:=8;
label3.caption:='Farbholer';
klick;
bitbtn9.enabled:=false;
end;

procedure TForm1.Kreis1Click(Sender: TObject);
begin
order:=9;
label3.caption:='Kreis';
klick;

end;

procedure TForm1.Ellipse1Click(Sender: TObject);
begin
order:=10;
label3.caption:='Ellipse';
klick;
bitbtn11.enabled:=false;
end;

procedure TForm1.Quadrat1Click(Sender: TObject);
begin
order:=11;
label3.caption:='Quadrat';
klick;

end;

procedure TForm1.Rechteck1Click(Sender: TObject);
begin
order:=12;
label3.caption:='Rechteck';
klick;
bitbtn13.enabled:=false;
end;

procedure TForm1.Dreieck1Click(Sender: TObject);
begin
bclick:=0;
order:=13;
label3.caption:='Dreieck';
klick;

end;

procedure TForm1.Polygom1Click(Sender: TObject);
begin
n:=-1;
order:=14;
label3.caption:='Polygon';
klick;
bitbtn15.enabled:=false;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
order:=0;
label3.caption:='Bleistift';
klick;
bitbtn1.enabled:=false;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
order:=1;
label3.caption:='Pinsel';
klick;
bitbtn2.enabled:=false;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
order:=2;
label3.caption:='Füller';
klick;
bitbtn3.enabled:=false;
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
order:=3;
label3.caption:='Allesradierer';
klick;
bitbtn4.enabled:=false;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
begin
order:=5;
label3.caption:='Streuer';
klick;
bitbtn6.enabled:=false;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
order:=6;
label3.caption:='Linie';
klick;
bitbtn7.enabled:=false;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
t:=false;
order:=7;
label3.caption:='Text';
klick;
bitbtn8.enabled:=false;
end;

procedure TForm1.BitBtn9Click(Sender: TObject);
begin
order:=8;
label3.caption:='Farbholer';
klick;
bitbtn9.enabled:=false;
end;

procedure TForm1.BitBtn11Click(Sender: TObject);
begin
order:=10;
label3.caption:='Ellipse';
klick;
bitbtn11.enabled:=false;
end;

procedure TForm1.BitBtn13Click(Sender: TObject);
begin
order:=12;
label3.caption:='Rechteck';
klick;
bitbtn13.enabled:=false;
end;

procedure TForm1.BitBtn15Click(Sender: TObject);
begin
n:=-1;
order:=14;
label3.caption:='Polygon';
klick;
bitbtn15.enabled:=false;
end;





procedure Tform1.klick;
begin
BitBtn1.enabled:=true;
BitBtn2.enabled:=true;
BitBtn3.enabled:=true;
BitBtn4.enabled:=true;
BitBtn5.enabled:=true;
BitBtn6.enabled:=true;
BitBtn7.enabled:=true;
BitBtn8.enabled:=true;
BitBtn9.enabled:=true;
BitBtn10.enabled:=true;
BitBtn11.enabled:=true;

BitBtn13.enabled:=true;

BitBtn15.enabled:=true;
BitBtn16.enabled:=true;
BitBtn17.enabled:=true;
BitBtn18.enabled:=true;
BitBtn19.enabled:=true;

BitBtn21.enabled:=true;
puffer.canvas.pen.style:=pssolid;
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;


mark:=false;


zoomnormal;
 Paintbox1.canvas.draw(-varx,-vary,puffer);
end;




procedure TForm1.ffnen1Click(Sender: TObject);
begin
if OpenPictureDialog1.Execute
then
begin
paintbox1.canvas.pen.color:=clsilver;
paintbox1.canvas.brush.color:=clsilver;
paintbox1.canvas.FillRect(rect(0,0,paintbox1.width,paintbox1.height));
                dateiname:=OpenPictureDialog1.FileName;
bild.LoadFromFile(dateiname);

form1.caption:='Multidraw - '+dateiname;
puffer.height:=bild.height;
puffer.width:=bild.width;
puffer.canvas.draw(0,0,bild);
spinedit1.value:=bild.width;
spinedit2.value:=bild.height;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
varx:=scrollbar1.position;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
vary:=scrollbar2.position;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Beenden1Click(Sender: TObject);
begin
form1.visible:=false;
form22.visible:=true;
end;


    procedure Tform1.blei1(x,y:integer);
    begin
    backspeicher;;
    puffer.canvas.pen.color:=clblack;
    puffer.Canvas.pen.width:=1;
    puffer.canvas.pixels[x,y]:=clblack;
    puffer.canvas.moveto(x+varx,y+vary);
    end;


    procedure Tform1.Blei2(x,y:integer);
    begin
    if mal=true
    then
    puffer.canvas.lineto(x+varx,y+vary);
    end;

procedure TForm1.Rckgngig1Click(Sender: TObject);
begin
puffer.width:=bild.width;
puffer.height:=bild.height;
puffer.canvas.draw(0,0,bild);

spinedit1.value:=bild.Width;
spinedit2.value:=bild.height;


if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.ColorGrid1Change(Sender: TObject);
begin
vfarb:= ColorGrid1.ForegroundColor;
hfarb:= ColorGrid1.BackgroundColor;
shape1.brush.color:=vfarb;
shape2.brush.color:=hfarb;
end;

procedure TForm1.FarbeinstellungenVG1Click(Sender: TObject);
begin
vfarba;
end;

procedure TForm1.Farbeeinstellungen1Click(Sender: TObject);
begin
hfarba;
end;


procedure Tform1.hfarba;
begin
colordialog2.color:=hfarb;
if colordialog2.Execute
then
begin
hfarb:=colordialog2.Color;
shape2.brush.color:=hfarb;
end;
end;


procedure Tform1.vfarba;
begin
colordialog1.color:=vfarb;
if colordialog1.Execute
then
begin
vfarb:=colordialog1.Color;
shape1.brush.color:=vfarb;
end;
end;

procedure TForm1.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
vfarba;
end;

procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
hfarba;
end;


    procedure Tform1.pins1(x,y:integer);
    begin
    backspeicher;
     puffer.canvas.pen.color:=vfarb;
     puffer.canvas.brush.color:=vfarb;
     puffer.Canvas.pen.width:=1;
    puffer.canvas.Ellipse(x-trunc(dick / 2)+varx,y-trunc(dick / 2)+vary,x+trunc(dick / 2)+varx,y+trunc(dick / 2)+vary);
    puffer.Canvas.pen.width:=dick;
   puffer.canvas.moveto(x+varx,y+vary);
    end;


    procedure Tform1.pins2(x,y:integer);
    begin
    if mal=true
    then
    puffer.canvas.lineto(x+varx,y+vary);
    end;

procedure TForm1.SpinEdit3Change(Sender: TObject);
begin
dick:=spinedit3.value;

end;


procedure Tform1.full(x,y:integer);
var local:integer;
begin
backspeicher;
puffer.canvas.Brush.color:=vfarb;
local:=puffer.canvas.pixels[x,y];
puffer.canvas.FloodFill(x, y, local,fsSurface);
end;

procedure TForm1.AusSpeicheraktualisieren1Click(Sender: TObject);
begin
paintbox1.canvas.pen.color:=clsilver;
paintbox1.canvas.brush.color:=clsilver;
paintbox1.canvas.FillRect(rect(0,0,paintbox1.width,paintbox1.height));

bild.LoadFromFile(dateiname);

form1.caption:='Multidraw - '+dateiname;
puffer.height:=bild.height;
puffer.width:=bild.width;
puffer.canvas.draw(0,0,bild);
spinedit1.value:=bild.width;
spinedit2.value:=bild.height;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;


    procedure Tform1.allr1(x,y:integer);
    begin
    backspeicher;
    puffer.canvas.Pen.color:=hfarb;
    puffer.canvas.Brush.color:=hfarb;
    puffer.canvas.FillRect(rect(x+round(dick / 2)+varx,y+round(dick / 2)+vary,x-round(dick / 2)+varx,y-round(dick / 2)+vary));
    end;




    procedure Tform1.allr2(x,y:integer);
    begin
     if mal=true
     then
     puffer.canvas.FillRect(rect(x+round(dick / 2)+varx,y+round(dick / 2)+vary,x-round(dick / 2)+varx,y-round(dick / 2)+vary));

    end;


    procedure Tform1.holer(x,y:integer);
    begin
    vfarb:=puffer.canvas.pixels[x+varx,y+vary];
    shape1.brush.color:=vfarb;
    end;


    procedure tform1.farbr1(x,y:integer);
    begin
     backspeicher;
     for i:=(x-round(dick/2)+varx) to (x+round(dick/2)+varx) do
     for e:=(y-round(dick/2)+vary) to (y+round(dick/2)+vary) do
     begin
     if puffer.canvas.pixels[i,e]=vfarb
     then
     puffer.canvas.pixels[i,e]:=hfarb;
     end;
    end;

    Procedure Tform1.farbr2(x,y:integer);
    begin
     if mal=true
     then
     begin
     for i:=(x-round(dick/2)+varx) to (x+round(dick/2)+varx) do
     for e:=(y-round(dick/2)+vary) to (y+round(dick/2)+vary) do
     begin
     if puffer.canvas.pixels[i,e]=vfarb
     then
     puffer.canvas.pixels[i,e]:=hfarb;
     end;
          end;
    end;


    procedure Tform1.streu1(x,y:integer);
    var rx,ry:integer;
    begin
    backspeicher;
  for i:=0 to dick do
  begin
  repeat
  rx:=random(2*dick+1)-dick;
  ry:=random(2*dick+1)-dick;
  until sqr(rx)+sqr(ry)<sqr(dick);
  puffer.canvas.pixels[rx+x+varx,ry+y+vary]:=vfarb;
  end;


    end;

    procedure Tform1.streu2(x,y:integer);
        var rx,ry:integer;
    begin
    if mal=true
    then
 for i:=0 to dick do
  begin
  repeat
  rx:=random(2*dick+1)-dick;
  ry:=random(2*dick+1)-dick;
  until sqr(rx)+sqr(ry)<sqr(dick);
  puffer.canvas.pixels[rx+x+varx,ry+y+vary]:=vfarb;
    end;
    Paintbox1.canvas.draw(-varx,-vary,puffer);
    end;



    procedure Tform1.ansatz(x,y:integer);
    begin
   backspeicher;
     lx:=x;
     ly:=y;
     puffer.canvas.pen.color:=vfarb;
     puffer.canvas.Pen.width:=dick;
     puffer.canvas.brush.color:=hfarb;
    end;

    procedure Tform1.lini1(x,y:integer);
  begin
  if mal=true
  then
  begin
  puffer.canvas.draw(0,0,bild);
  puffer.canvas.moveto(lx+varx,ly+vary);
  puffer.canvas.lineto(x+varx,y+vary);
  end;
  end;

     procedure tform1.lini2(x,y:integer);
     begin
 puffer.canvas.draw(0,0,bild);


  puffer.canvas.moveto(lx+varx,ly+vary);
  puffer.canvas.lineto(x+varx,y+vary);

  end;
  

      procedure Tform1.krei1(x,y:integer);
      var d,dd:integer;
      begin
       if mal=true
  then
  begin
  puffer.canvas.draw(0,0,bild);
  d:=abs(x-lx);
  dd:=y-ly;
    if dd<>0
  then
  y:=ly+d*round((dd)/abs(dd));
puffer.Canvas.ellipse(lx+varx,ly+vary,x+varx,y+vary);
  end;
      end;


    procedure Tform1.krei2(x,y:integer);
    var d,dd:integer;
    begin
 puffer.canvas.draw(0,0,bild);
  d:=abs(x-lx);
  dd:=y-ly;
    if dd<>0
  then
  y:=ly+d*round((dd)/abs(dd));
puffer.Canvas.ellipse(lx+varx,ly+vary,x+varx,y+vary);

  end;



procedure TForm1.BitBtn16Click(Sender: TObject);
begin
order:=15;
label3.caption:='Rahmen';
klick;
bitbtn16.enabled:=false;
end;

procedure TForm1.Rahmen1Click(Sender: TObject);
begin
order:=15;
label3.caption:='Rahmen';
klick;
bitbtn16.enabled:=false;
end;


      procedure Tform1.ell1(x,y:integer);

      begin
       if mal=true
  then
  begin
  puffer.canvas.draw(0,0,bild);

puffer.Canvas.ellipse(lx+varx,ly+vary,x+varx,y+vary);
  end;
      end;


    procedure Tform1.ell2(x,y:integer);

    begin
 puffer.canvas.draw(0,0,bild);

puffer.Canvas.ellipse(lx+varx,ly+vary,x+varx,y+vary);

  end;


   procedure Tform1.quad1(x,y:integer);
      var d,dd:integer;
      begin
       if mal=true
  then
  begin
  puffer.canvas.draw(0,0,bild);
  d:=abs(x-lx);
  dd:=y-ly;
    if dd<>0
  then
  y:=ly+d*round((dd)/abs(dd));

puffer.Canvas.rectangle(lx+varx,ly+vary,x+varx,y+vary);
  end;
      end;


    procedure Tform1.quad2(x,y:integer);
    var d,dd:integer;
    begin
 puffer.canvas.draw(0,0,bild);
  d:=abs(x-lx);
  dd:=y-ly;
    if dd<>0
  then
  y:=ly+d*round((dd)/abs(dd));
puffer.Canvas.rectangle(lx+varx,ly+vary,x+varx,y+vary);

  end;

        procedure Tform1.recht1(x,y:integer);

      begin
       if mal=true
  then
  begin
  puffer.canvas.draw(0,0,bild);

puffer.Canvas.rectangle(lx+varx,ly+vary,x+varx,y+vary);
  end;
      end;


    procedure Tform1.recht2(x,y:integer);

    begin
 puffer.canvas.draw(0,0,bild);

puffer.Canvas.rectangle(lx+varx,ly+vary,x+varx,y+vary);

  end;

  procedure Tform1.drei1(x,y:integer);
  begin

Case bclick of
0:begin
backspeicher;
bclick:=1;
lx:=x;
ly:=y;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.Pen.width:=dick;
puffer.canvas.brush.color:=hfarb;
end;
1:begin
bclick:=2;
llx:=x;
lly:=y;
puffer.canvas.MoveTo(lx,ly);
puffer.canvas.lineto(llx,lly);
end;
2:begin
bclick:=0;
puffer.canvas.MoveTo(lx,ly);
puffer.canvas.lineto(llx,lly);
puffer.canvas.lineto(x,y);
puffer.canvas.lineto(lx,ly);
end;
  end;
  end;

  procedure Tform1.drei2(x,y:integer);
  begin


Case bclick of
1:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.MoveTo(lx,ly);
puffer.canvas.lineto(x,y);
end;
2:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.MoveTo(lx,ly);
puffer.canvas.lineto(llx,lly);
puffer.canvas.lineto(x,y);
puffer.canvas.lineto(lx,ly);
end;
  end;

  end;



  procedure Tform1.rahm1(x,y:integer);
begin
if mal=true
then
begin
puffer.canvas.draw(0,0,bild);           // kein framerect weil es nur in eine Richtung geht
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,y+vary);
puffer.Canvas.lineto(x+varx,y+vary);
puffer.Canvas.lineto(x+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);
  end;
end;

procedure Tform1.rahm2(x,y:integer);
begin
puffer.canvas.draw(0,0,bild);
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,y+vary);
puffer.Canvas.lineto(x+varx,y+vary);
puffer.Canvas.lineto(x+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);
end;



procedure Tform1.poly1(x,y:integer);
begin
if dd=false
then
begin
if n=-1
then
begin
backspeicher;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.Pen.width:=dick;
puffer.canvas.brush.color:=hfarb;
p[0].x:=x+varx;
p[0].y:=y+vary;
n:=0;
end
else
begin
if n<99
then
inc(n);
p[n].x:=x+varx;
p[n].y:=y+vary;
puffer.canvas.draw(0,0,bild);
puffer.Canvas.Polygon(Slice((p), n+1));
end;

end
else dd:=false;
end;

procedure Tform1.poly2(x,y:integer);
begin
if n<>-1
then
begin
p[n+1].x:=x+varx;
p[n+1].y:=y+vary;
puffer.canvas.draw(0,0,bild);
puffer.Canvas.Polygon(Slice((p), n+2));
end;
end;

procedure Tform1.poly3(x,y:integer);
begin
inc(n);
p[n].x:=x+varx;
p[n].y:=y+vary;
puffer.canvas.draw(0,0,bild);
puffer.Canvas.Polygon(Slice((p), n+1));
n:=-1;
end;

procedure TForm1.BitBtn17Click(Sender: TObject);
begin
bclick:=0;
order:=16;
label3.caption:='Bogen';
klick;
bitbtn17.enabled:=false;
end;

procedure TForm1.BitBtn18Click(Sender: TObject);
begin
order:=17;
label3.caption:='Rundeck';
klick;
bitbtn18.enabled:=false;
end;

procedure TForm1.Bogen1Click(Sender: TObject);
begin
bclick:=0;
order:=16;
label3.caption:='Bogen';
klick;
bitbtn17.enabled:=false;
end;

procedure TForm1.Rundrechteck1Click(Sender: TObject);
begin
order:=17;
label3.caption:='Rundeck';
klick;
bitbtn18.enabled:=false;
end;

procedure TForm1.BitBtn19Click(Sender: TObject);
begin
n:=-1;
order:=18;
label3.caption:='Dauerlinie';
klick;
bitbtn19.enabled:=false;
end;

procedure TForm1.Dauerlinie1Click(Sender: TObject);
begin
n:=-1;
order:=18;
label3.caption:='Dauerlinie';
klick;
bitbtn19.enabled:=false;
end;



procedure Tform1.polyl1(x,y:integer);
begin
if dd=false
then
begin
if n=-1
then
begin
backspeicher;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.Pen.width:=dick;
puffer.canvas.brush.color:=hfarb;
p[0].x:=x+varx;
p[0].y:=y+vary;
n:=0;
end
else
begin
if n<99
then
inc(n);
p[n].x:=x+varx;
p[n].y:=y+vary;
puffer.canvas.draw(0,0,bild);
puffer.Canvas.Polyline(Slice((p), n+1));
end;

end
else dd:=false;
end;

procedure Tform1.polyl2(x,y:integer);
begin
if n<>-1
then
begin
p[n+1].x:=x+varx;
p[n+1].y:=y+vary;
puffer.canvas.draw(0,0,bild);
puffer.Canvas.Polyline(Slice((p), n+2));
end;
end;

procedure Tform1.polyl3(x,y:integer);
begin
inc(n);
p[n].x:=x+varx;
p[n].y:=y+vary;
puffer.canvas.draw(0,0,bild);
puffer.Canvas.Polyline(Slice((p), n+1));
n:=-1;
end;


        procedure Tform1.rund1(x,y:integer);

      begin
       if mal=true
  then
  begin
  puffer.canvas.draw(0,0,bild);

puffer.Canvas.roundrect(lx+varx,ly+vary,x+varx,y+vary,abs(lx-x)div 2,abs(ly-y) div 2);
  end;
      end;


    procedure Tform1.rund2(x,y:integer);

    begin
 puffer.canvas.draw(0,0,bild);

puffer.Canvas.roundrect(lx+varx,ly+vary,x+varx,y+vary,abs(lx-x)div 2,abs(ly-y) div 2);

  end;

procedure TForm1.horizontal1Click(Sender: TObject);
begin
backspeicher;
for i:=0 to bild.width do
for e:=0 to bild.height do
puffer.canvas.Pixels[i,puffer.height-e-1]:=bild.canvas.pixels[i,e];
paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.vertikal1Click(Sender: TObject);
begin
backspeicher;
for i:=0 to bild.width do
for e:=0 to bild.height do
puffer.canvas.Pixels[puffer.width-i-1,e]:=bild.canvas.pixels[i,e];
paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.N2Meridiane1Click(Sender: TObject);
begin


backspeicher;
puffer.width:=bild.height;
puffer.height:=bild.width;
spinedit1.value:=puffer.width;
spinedit2.value:=puffer.Height;




if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;



if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;



for i:=0 to bild.width do
for e:=0 to bild.height do
puffer.canvas.Pixels[e,i]:=bild.canvas.pixels[i,e];



paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));
paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.N1Meriadiane1Click(Sender: TObject);
begin


backspeicher;
puffer.width:=bild.height;
puffer.height:=bild.width;
spinedit1.value:=puffer.width;
spinedit2.value:=puffer.Height;




if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;




if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;       

for i:=0 to bild.width do
for e:=0 to bild.height do
puffer.canvas.Pixels[e,i]:=bild.canvas.pixels[puffer.height-i,puffer.width-e];




paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));
paintbox1.canvas.draw(-varx,-vary,puffer);


end;

procedure TForm1.Speichernunter1Click(Sender: TObject);
begin
zoomnormal;
backspeicher;
SavePictureDialog1.DefaultExt := GraphicExtension(TBitmap);
SavePictureDialog1.Filter := GraphicFilter(TBitmap);
if SavePictureDialog1.Execute
then
begin
Bild.SaveToFile(SavePictureDialog1.FileName);

dateiname:=SavePictureDialog1.FileName;
form1.caption:='Multidraw - '+dateiname;
end;
end;

procedure TForm1.Speichern1Click(Sender: TObject);
begin
zoomnormal;
backspeicher;
if dateiname<>'unbenannt'
then
Bild.SaveToFile(dateiname)
else
begin
SavePictureDialog1.DefaultExt := GraphicExtension(Tbitmap);
SavePictureDialog1.Filter := GraphicFilter(TBitmap);
if SavePictureDialog1.Execute
then
begin
Bild.SaveToFile(SavePictureDialog1.FileName);

dateiname:=SavePictureDialog1.FileName;
form1.caption:='Multidraw - '+dateiname;
 end;
end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Totenstck1Click(Sender: TObject);
begin
bclick:=0;
order:=19;
label3.caption:='Tortenstück';
klick;

end;


procedure Tform1.schreib1(x,y:integer);
begin

if t=false
then
begin
t:=true;
backspeicher;
s:='';
lx:=x;
ly:=y;
end
else
t:=false;

end;


procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if t=true
then
begin

puffer.canvas.Brush.color:=hfarb;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
puffer.canvas.font:=schrift;

puffer.canvas.Draw(0,0,bild);
s:=s+key;
puffer.canvas.TextOut(lx+varx,ly+vary,s);
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

end;

procedure TForm1.Schrifteinstellungen1Click(Sender: TObject);
begin
 FontDialog1.Font := schrift;
 if FontDialog1.Execute
 then
 schrift := FontDialog1.Font;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
pst:=Tform.create(Form1);
pst.parent:=Form1;
pst.formstyle:=fsStayOnTop;
pst.top:=400;
pst.left:=250;
pst.width:=150;
pst.height:=100;
pst.visible:=true;
pst.borderstyle:=bsdialog;
pst.caption:='VG-Stil';

pstc:=Tcombobox.create(pst);
pstc.parent:=pst;
pstc.top:=10;
pstc.left:=10;
pstc.width:=125;
pstc.height:=20;
pstc.text:='Bitte auswählen';
pstc.items.Add('durchgezogen');
pstc.items.Add('strichliert');
pstc.items.Add('punktiert');
pstc.items.Add('Strich - Punkt');
pstc.items.Add('Strich - Punkt - Punkt');
pstc.items.Add('unsichtbar');
pstc.items.Add('spezial');

pstb:=Tbutton.create(pst);
pstb.parent:=pst;
pstb.top:=40;
pstb.left:=10;
pstb.width:=130;
pstb.height:=30;
pstb.caption:='Annehmen und schließen';
pstb.onclick:=pbc;

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;


    procedure Tform1.pbc(sender: Tobject);
    begin
case pstc.itemindex of
0:puffer.canvas.pen.style:=psSolid;
1:puffer.canvas.pen.style:=psDash	;
2:puffer.canvas.pen.style:=psDot	;
3:puffer.canvas.pen.style:=psDashDot	;
4:puffer.canvas.pen.style:=psDashDotDot	;
5:puffer.canvas.pen.style:=psClear	;
6:puffer.canvas.pen.style:=psInsideFrame	;
end;

pst.Close;
      end;

    procedure Tform1.bbc(sender: Tobject);
    begin
case bstc.itemindex of
0:puffer.canvas.brush.style:=bsSolid;
1:puffer.canvas.brush.style:=bsClear;
2:puffer.canvas.brush.style:=bsBDiagonal			;
3:puffer.canvas.brush.style:=bsFDiagonal			;
4:puffer.canvas.brush.style:=bsCross	;
5:puffer.canvas.brush.style:=bsDiagCross	;
6:puffer.canvas.brush.style:=bsHorizontal	;
7:puffer.canvas.brush.style:=bsVertical	;
end;

bst.Close;
    end;
    
procedure TForm1.Button2Click(Sender: TObject);
begin
bst:=Tform.create(Form1);
bst.parent:=Form1;
bst.formstyle:=fsStayOnTop;
bst.top:=400;
bst.left:=250;
bst.width:=150;
bst.height:=100;
bst.visible:=true;
bst.borderstyle:=bsdialog;
bst.caption:='HG-Stil';

bstc:=Tcombobox.create(bst);
bstc.parent:=bst;
bstc.top:=10;
bstc.left:=10;
bstc.width:=125;
bstc.height:=20;
bstc.text:='Bitte auswählen';
bstc.items.Add('ausgefüllt');
bstc.items.Add('leer');
bstc.items.Add('gestreift /');
bstc.items.Add('gestreift \');
bstc.items.Add('Gitter normal');
bstc.items.Add('Gitter quer');
bstc.items.Add('gestreift -');
bstc.items.Add('gestreift |');

bstb:=Tbutton.create(bst);
bstb.parent:=bst;
bstb.top:=40;
bstb.left:=10;
bstb.width:=130;
bstb.height:=30;
bstb.caption:='Annehmen und schließen';
bstb.onclick:=bbc;


Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.VGStyle1Click(Sender: TObject);
begin
pst:=Tform.create(Form1);
pst.parent:=Form1;
pst.formstyle:=fsStayOnTop;
pst.top:=400;
pst.left:=250;
pst.width:=150;
pst.height:=100;
pst.visible:=true;
pst.borderstyle:=bsdialog;
pst.caption:='VG-Style';

pstc:=Tcombobox.create(pst);
pstc.parent:=pst;
pstc.top:=10;
pstc.left:=10;
pstc.width:=125;
pstc.height:=20;
pstc.text:='Bitte auswählen';
pstc.items.Add('durchgezogen');
pstc.items.Add('strichliert');
pstc.items.Add('punktiert');
pstc.items.Add('Strich - Punkt');
pstc.items.Add('Strich - Punkt - Punkt');
pstc.items.Add('unsichtbar');
pstc.items.Add('spezial');

pstb:=Tbutton.create(pst);
pstb.parent:=pst;
pstb.top:=40;
pstb.left:=10;
pstb.width:=130;
pstb.height:=30;
pstb.caption:='Annehmen und schließen';
pstb.onclick:=pbc;

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.HGStyle1Click(Sender: TObject);
begin
bst:=Tform.create(Form1);
bst.parent:=Form1;
bst.formstyle:=fsStayOnTop;
bst.top:=400;
bst.left:=250;
bst.width:=150;
bst.height:=100;
bst.visible:=true;
bst.borderstyle:=bsdialog;
bst.caption:='HG-Style';

bstc:=Tcombobox.create(bst);
bstc.parent:=bst;
bstc.top:=10;
bstc.left:=10;
bstc.width:=125;
bstc.height:=20;
bstc.text:='Bitte auswählen';
bstc.items.Add('ausgefüllt');
bstc.items.Add('leer');
bstc.items.Add('gestreift /');
bstc.items.Add('gestreift \');
bstc.items.Add('Gitter normal');
bstc.items.Add('Gitter quer');
bstc.items.Add('gestreift -');
bstc.items.Add('gestreift |');

bstb:=Tbutton.create(bst);
bstb.parent:=bst;
bstb.top:=40;
bstb.left:=10;
bstb.width:=130;
bstb.height:=30;
bstb.caption:='Annehmen und schließen';
bstb.onclick:=bbc;


Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Druckeinstellungen1Click(Sender: TObject);
begin
PrinterSetupDialog1.Execute;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Drucken1Click(Sender: TObject);
var AspectRatio, OutputWidth, OutputHeight: extended;


begin

if  PrintDialog1.Execute then
begin
 zoomnormal;
backspeicher;
  Printer.create;

 Printer.BeginDoc;

    OutputWidth := bild.Width;
    OutputHeight := bild.Height;
 
    AspectRatio := OutputWidth / OutputHeight;
    if (OutputWidth < Printer.PageWidth) and
      (OutputHeight < Printer.PageHeight) then
    begin
      if OutputWidth < OutputHeight then

      begin
        OutputHeight := Printer.PageHeight;
        OutputWidth := OutputHeight * AspectRatio;
      end
      else
      begin
        OutputWidth := Printer.PageWidth;
        OutputHeight := OutputWidth / AspectRatio;
      end
    end;
    if OutputWidth > Printer.PageWidth then
    begin
      OutputWidth := Printer.PageWidth;
      OutputHeight := OutputWidth / AspectRatio;
    end;
    if OutputHeight > Printer.PageHeight then

    begin
      OutputHeight := Printer.PageHeight;
      OutputWidth := OutputHeight * AspectRatio;
    end;

    Printer.Canvas.StretchDraw(Rect(0,0,
      Trunc(OutputWidth), Trunc(OutputHeight)),
     bild);            


    Printer.EndDoc;



   end;



Paintbox1.canvas.draw(-varx,-vary,puffer);
end;



procedure Tform1.bogenn1(x,y:integer);
begin
case bclick of
0:begin
backspeicher;
bclick:=1;
lx:=x;
ly:=y;
     puffer.canvas.pen.color:=vfarb;
     puffer.canvas.Pen.width:=dick;
     puffer.canvas.brush.color:=hfarb;
end;
2:begin
bx:=x;
by:=y;
bclick:=3;
end;
3:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.arc(lx+varx,ly+vary,llx+varx,lly+vary,bx+varx,by+vary,x+varx,y+vary);
bclick:=0;
end;

end;
end;


procedure Tform1.bogenn2(x,y:integer);
begin
case bclick of
1:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.arc(lx+varx,ly+vary,x+varx,y+vary,0,0,0,0);
end;
2:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.arc(lx+varx,ly+vary,llx+varx,lly+vary,0,0,0,0);
puffer.canvas.moveto(round((lx+llx)/2)+varx,round((ly+lly)/2)+vary);
puffer.canvas.lineto(x+varx,y+vary);
end;
3:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.arc(lx+varx,ly+vary,llx+varx,lly+vary,bx+varx,by+vary,x+varx,y+vary);
end;
end;
end;


procedure Tform1.bogenn3(x,y:integer);
begin
if bclick=1
then
begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.arc(lx+varx,ly+vary,x+varx,y+vary,0,0,0,0);
llx:=x;
lly:=y;
bclick:=2;
end;
end;






procedure Tform1.tort1(x,y:integer);
begin
case bclick of
0:begin
backspeicher;
bclick:=1;
lx:=x;
ly:=y;
     puffer.canvas.pen.color:=vfarb;
     puffer.canvas.Pen.width:=dick;
     puffer.canvas.brush.color:=hfarb;
end;
2:begin
bx:=x;
by:=y;
bclick:=3;
end;
3:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.pie(lx+varx,ly+vary,llx+varx,lly+vary,bx+varx,by+vary,x+varx,y+vary);
bclick:=0;
end;

end;
end;


procedure Tform1.tort2(x,y:integer);
begin
case bclick of
1:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.ellipse(lx+varx,ly+vary,x+varx,y+vary);
end;
2:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.ellipse(lx+varx,ly+vary,llx+varx,lly+vary);
puffer.canvas.moveto(round((lx+llx)/2)+varx,round((ly+lly)/2)+vary);
puffer.canvas.lineto(x+varx,y+vary);
end;
3:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.pie(lx+varx,ly+vary,llx+varx,lly+vary,bx+varx,by+vary,x+varx,y+vary);
end;
end;
end;


procedure Tform1.tort3(x,y:integer);
begin
if bclick=1
then
begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.ellipse(lx+varx,ly+vary,x+varx,y+vary);
llx:=x;
lly:=y;
bclick:=2;
end;
end;


procedure TForm1.BitBtn21Click(Sender: TObject);
begin
bzz:=0;
order:=20;
label3.caption:='Bézierkurve';
klick;
bitbtn21.enabled:=false;
end;

procedure TForm1.Kreisstck1Click(Sender: TObject);
begin
bclick:=0;
order:=21;
label3.caption:='Kreisstück';
klick;

end;

procedure TForm1.Bzierkurve1Click(Sender: TObject);
begin
bzz:=0;
order:=20;
label3.caption:='Bézierkurve';
klick;
bitbtn21.enabled:=false;
end;









procedure Tform1.ks1(x,y:integer);
begin
case bclick of
0:begin
backspeicher;
bclick:=1;
lx:=x;
ly:=y;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.Pen.width:=dick;
puffer.canvas.brush.color:=hfarb;
end;
2:begin
bx:=x;
by:=y;
bclick:=3;
end;
3:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.chord(lx+varx,ly+vary,llx+varx,lly+vary,bx+varx,by+vary,x+varx,y+vary);
bclick:=0;
end;

end;
end;


procedure Tform1.ks2(x,y:integer);
begin
case bclick of
1:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.ellipse(lx+varx,ly+vary,x+varx,y+vary);
end;

3:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.chord(lx+varx,ly+vary,llx+varx,lly+vary,bx+varx,by+vary,x+varx,y+vary);
end;
end;
end;


procedure Tform1.ks3(x,y:integer);
begin
if bclick=1
then
begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.ellipse(lx+varx,ly+vary,x+varx,y+vary);
llx:=x;
lly:=y;                
bclick:=2;
end;
end;

procedure TForm1.Farbeentfernaustauschen1Click(Sender: TObject);
begin
Form3.visible:=true;

      farb1:=0;
      farb2:=0;




Paintbox1.canvas.draw(-varx,-vary,puffer);
end;



 procedure Tform1.facc;
 begin
 backspeicher;
 for i:=0 to puffer.Width do
 for e:=0 to puffer.height do
 if puffer.canvas.pixels[i,e]=farb1
 then
 puffer.canvas.pixels[i,e]:=farb2;
Form3.visible:=false;
 Paintbox1.canvas.draw(-varx,-vary,puffer);
 end;

    procedure Tform1.faa1p;
     begin
Form3.colordialog1.color:=farb1;
if Form3.colordialog1.Execute
then
begin
farb1:=Form3.colordialog1.Color;
Form3.shape1.brush.color:=farb1;
end;
 end;

    procedure Tform1.faa2p;
     begin
Form3.colordialog1.color:=farb2;
if Form3.colordialog1.Execute
then
begin
farb2:=Form3.colordialog1.Color;
Form3.shape2.brush.color:=farb2;
end;
 end;


     procedure Tform1.faan;
     begin
 Form3.visible:=false;
      Paintbox1.canvas.draw(-varx,-vary,puffer);
     end;


procedure TForm1.AlsLaufwerkshintergrundspeichern1Click(Sender: TObject);
begin
Form2.visible:=true;
end;



    procedure Tform1.balws;
    var datei:textfile;
    begin
    backspeicher;
    bild.savetofile(form2.drivecombobox1.drive+':\bild.bmp');
    form2.visible:=false;
    Assignfile(datei,form2.drivecombobox1.drive+':\Desktop.ini');
    rewrite(datei);
    writeln(datei,'[ExtShellFolderViews]');
    writeln(datei,'{BE098140-A513-11D0-A3A4-00C04FD706EC}={BE098140-A513-11D0-A3A4-00C04FD706EC}');
    writeln(datei,'');
    writeln(datei,'[{BE098140-A513-11D0-A3A4-00C04FD706EC}]');
    writeln(datei,'Attributes=1');
    writeln(datei,'IconArea_Image=bild.bmp');
    writeln(datei,'');
    writeln(datei,'[.ShellClassInfo]');
    writeln(datei,'ConfirmFileOp=0');
    closefile(datei);
 end;
procedure TForm1.Neu1Click(Sender: TObject);
begin
Form4.visible:=true;

end;


    procedure Tform1.neuerstellen;
    begin


    schrift:=Paintbox1.Font;

s:='';
t:=false;
dd:=false;
 bclick:=0;
 klick;
mal:=false;
      zoomnormal;
zf:=1;
   statusbar1.Panels[1].text:='Zoom : '+floattostr(zf*100)+' %';
n:=0;
dateiname:='unbenannt';
form1.caption:='Multidraw - '+dateiname;
      dick:=1;
     vfarb:=0;
     hfarb:=form4.Shape1.Brush.color;
     varx:=0;
     vary:=0;
 Label3.caption:='nichts';

     order:=-1;
klick;
 bitbtn5.enabled:=false;
spinedit3.value:=1;
  puffer.canvas.pen.style:=psSolid;
  puffer.canvas.brush.style:=bsSolid;

        spinedit1.value:=form4.spinedit1.value;
        spinedit2.value:=form4.spinedit2.value;

bild.width:=spinedit1.value;
puffer.width:=spinedit1.value;
bild.height:=spinedit2.value;
puffer.height:=spinedit2.value;
bild.Canvas.Brush.color:=form4.Shape1.Brush.color;
bild.Canvas.pen.color:=form4.Shape1.Brush.color;
puffer.Canvas.Brush.color:=form4.Shape1.Brush.color;
puffer.Canvas.pen.color:=form4.Shape1.Brush.color;
shape2.brush.color:=form4.Shape1.Brush.color ;
bild.canvas.fillrect(rect(0,0,bild.width,bild.height));
puffer.canvas.draw(0,0,bild);
Paintbox1.canvas.draw(0,0,bild);
puffer.canvas.font:=schrift;
bild.canvas.font:=schrift;





Form4.visible:=false;
Form4.spinedit1.value:=100;
Form4.spinedit2.value:=100;
Form4.shape1.brush.color:=clBlack;
Form4.label5.caption:=floattostr(round(((Form4.spinedit1.value*Form4.spinedit2.value*4)+4)/1.024)/1000)+' KB';

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

Paintbox1.canvas.draw(-varx,-vary,puffer);


    end;

    procedure Tform1.neuabr;
        begin
Form4.visible:=false;
      Paintbox1.canvas.draw(-varx,-vary,puffer);
    end;

    procedure Tform1.neubgfarb;
        begin
if Form4.colordialog1.Execute
then
begin
Form4.shape1.brush.color:=Form4.colordialog1.Color;

end;
    end;
    

procedure TForm1.Mandelbrot1Click(Sender: TObject);
begin
form5.visible:=true;
end;




    procedure TForm1.mbmu1(pic:Tbitmap);
    begin
    backspeicher;
  puffer.canvas.StretchDraw(rect(0,0,puffer.width,puffer.height),pic);
    Paintbox1.canvas.draw(-varx,-vary,puffer);
    end;

    procedure TForm1.mbmu2(pic:Tbitmap);
     begin
     backspeicher;



bild.width:=720;
puffer.width:=720;
spinedit1.value:=720;


scrollbar1.max:=0;

bild.height:=480;
puffer.height:=480;
spinedit2.value:=480;


scrollbar2.max:=0;
     puffer.canvas.draw(0,0,pic);

varx:=0;
vary:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

    Paintbox1.canvas.draw(-varx,-vary,puffer);

    end;

    procedure TForm1.mbmu3(pic:Tbitmap);
     begin
order:=22;
fract.width:=720;
fract.height:=480;
fract.canvas.draw(0,0,pic);
Label3.caption:='Fraktal';
klick;
    end;
    
    procedure Tform1.mbmzieh1(x,y:integer);
    begin
if mal=true
then
begin
puffer.canvas.pen.color:=clwhite;
puffer.canvas.pen.width:=1;
puffer.canvas.draw(0,0,bild);
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,y+vary);
puffer.Canvas.lineto(x+varx,y+vary);
puffer.Canvas.lineto(x+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);
  end;
end;

    procedure Tform1.mbmzieh2(x,y:integer);
        begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.stretchdraw(rect(lx,ly,x,y),fract);
mal:=false;

puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
end;

procedure TForm1.Pixel1Click(Sender: TObject);
begin
Form6.visible:=true;
end;

procedure TForm1.Julia1Click(Sender: TObject);
begin
form7.visible:=true;
end;


procedure Tform1.pixein(pfe,psm:integer);
begin
backspeicher;
case psm of
1:begin
for a:=1 to form6.spinedit3.value do
case pfe of
1:puffer.canvas.pixels[random(puffer.width),random(puffer.height)]:=random(form6.spinedit2.value-form6.spinedit1.value)+form6.spinedit1.value;
2:puffer.canvas.pixels[random(puffer.width),random(puffer.height)]:=form6.shape1.brush.color;

3:begin

puffer.canvas.pixels[random(puffer.width),random(puffer.height)]:=random(256) shl (form6.combobox1.itemindex*8);



end;

end;

end;
2:begin
  order:=23;
  klick;
  label3.caption:='Pixels';
end;

3:begin
   order:=24;
  klick;
  label3.caption:='Pixels';
end;

4:begin

backspeicher;
z:=random(10)+5;

   for e:=1 to z do
    begin
    llx:=random(puffer.width);
    lly:=random(puffer.height);
    for a:=1 to round(form6.spinedit3.value/z) do
     case pfe of
      1:begin
       r:=random(round(10000/form6.spinedit4.value));
       alpha:=random(20000)*pi/10000;

       puffer.canvas.pixels[round(llx+r*cos(alpha)),round(lly+r*sin(alpha))]:=random(form6.spinedit2.value-form6.spinedit1.value)+form6.spinedit1.value;
      end;

2:
begin
      r:=random(round(10000/form6.spinedit4.value));
       alpha:=random(20000)*pi/10000;

       puffer.canvas.pixels[round(llx+r*cos(alpha)),round(lly+r*sin(alpha))]:=form6.shape1.brush.color;
      end;


3:begin

      r:=random(round(10000/form6.spinedit4.value));
       alpha:=random(20000)*pi/10000;

       puffer.canvas.pixels[round(llx+r*cos(alpha)),round(lly+r*sin(alpha))]:=random(256) shl (form6.combobox1.itemindex*8);

end;

end;

       end;
end;


5:begin
    order:=25;
  klick;
  label3.caption:='Pixels';


end;
end;
    Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

    procedure Tform1.pixpunkt(x,y:integer);

    begin
    backspeicher;
   for a:=1 to form6.spinedit3.value do
case pfe of
1:begin
r:=random(round(10000/form6.spinedit4.value));
alpha:=random(20000)*pi/10000;
puffer.canvas.pixels[varx+round(x+r*cos(alpha)),vary+round(y+r*sin(alpha))]:=random(form6.spinedit2.value-form6.spinedit1.value)+form6.spinedit1.value;
end;

2:begin
r:=random(round(10000/form6.spinedit4.value));
alpha:=random(20000)*pi/10000;
puffer.canvas.pixels[varx+round(x+r*cos(alpha)),vary+round(y+r*sin(alpha))]:=form6.shape1.brush.color;
end;

3:begin
r:=random(round(10000/form6.spinedit4.value));
alpha:=random(20000)*pi/10000;

puffer.canvas.pixels[varx+round(x+r*cos(alpha)),vary+round(y+r*sin(alpha))]:=random(256) shl (form6.combobox1.itemindex*8);


end;

end;
    end;



        procedure Tform1.pixlin1(x,y:integer);
        begin
         if mal=true
  then
  begin
  puffer.canvas.pen.width:=1;
  puffer.canvas.Pen.color:=clblack;
  puffer.canvas.draw(0,0,bild);
  puffer.canvas.moveto(lx+varx,ly+vary);
  puffer.canvas.lineto(x+varx,y+vary);
  end;
        end;


    procedure Tform1.pixlin2(x,y:integer);
        begin
        puffer.canvas.draw(0,0,bild);
  for a:=1 to form6.spinedit3.value do
case pfe of
1:begin
llx:=round(((lx-x)*a)/form6.spinedit3.value)+x;
lly:=round(((ly-y)*a)/form6.spinedit3.value)+y;
r:=random(round(10000/form6.spinedit4.value));
alpha:=random(20000)*pi/10000;
puffer.canvas.pixels[varx+round(llx+r*cos(alpha)),vary+round(lly+r*sin(alpha))]:=random(form6.spinedit2.value-form6.spinedit1.value)+form6.spinedit1.value;
end;

2:begin
llx:=round(((lx-x)*a)/form6.spinedit3.value)+x;
lly:=round(((ly-y)*a)/form6.spinedit3.value)+y;
r:=random(round(10000/form6.spinedit4.value));
alpha:=random(20000)*pi/10000;
puffer.canvas.pixels[varx+round(llx+r*cos(alpha)),vary+round(lly+r*sin(alpha))]:=form6.shape1.brush.color;
end;

3:begin


llx:=round(((lx-x)*a)/form6.spinedit3.value)+x;
lly:=round(((ly-y)*a)/form6.spinedit3.value)+y;
r:=random(round(10000/form6.spinedit4.value));
alpha:=random(20000)*pi/10000;
puffer.canvas.pixels[varx+round(llx+r*cos(alpha)),vary+round(lly+r*sin(alpha))]:=random(256) shl (form6.combobox1.itemindex*8);



end;

end;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
        end;


        procedure Tform1.komet(x,y:integer);
        begin



        puffer.canvas.draw(0,0,bild);
  for a:=1 to form6.spinedit3.value do
case pfe of
1:begin
alpha:=arctan2(y-ly,x-lx);
r:=random(5000);
alpha:=alpha+ (random(200*form6.SpinEdit4.value)*pi/10000) - ((100*form6.SpinEdit4.value)*pi/10000);
puffer.canvas.pixels[varx+round(lx+r*cos(alpha)),vary+round(ly+r*sin(alpha))]:=random(form6.spinedit2.value-form6.spinedit1.value)+form6.spinedit1.value;

end;

2:begin
alpha:=arctan2(y-ly,x-lx);
r:=random(5000);
alpha:=alpha+ (random(200*form6.SpinEdit4.value)*pi/10000) - ((100*form6.SpinEdit4.value)*pi/10000);
puffer.canvas.pixels[varx+round(lx+r*cos(alpha)),vary+round(ly+r*sin(alpha))]:=form6.shape1.brush.color;
end;

3:begin


alpha:=arctan2(y-ly,x-lx);
r:=random(5000);
alpha:=alpha+ (random(200*form6.SpinEdit4.value)*pi/10000) - ((100*form6.SpinEdit4.value)*pi/10000);
puffer.canvas.pixels[varx+round(lx+r*cos(alpha)),vary+round(ly+r*sin(alpha))]:=random(256) shl (form6.combobox1.itemindex*8);

end;

end;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
        end;






         procedure TForm1.julu1(pic:Tbitmap);
     begin
     backspeicher;



bild.width:=600;
puffer.width:=600;
spinedit1.value:=600;


scrollbar1.max:=0;

bild.height:=600;
puffer.height:=600;
spinedit2.value:=600;


if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;
     puffer.canvas.draw(0,0,pic);

varx:=0;
vary:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

    Paintbox1.canvas.draw(-varx,-vary,puffer);

    end;



procedure TForm1.julu2(pic:Tbitmap);
begin
order:=22;
fract.width:=600;
fract.height:=600;
fract.canvas.draw(0,0,pic);
Label3.caption:='Fraktal';
klick;
end;


 procedure TForm1.Wichzeichner1Click(Sender: TObject);
begin
backspeicher;









for i:=1 to bild.width-2 do
begin
f:=bild.canvas.pixels[i,0];
aufschlussel(f,1);

f:=bild.canvas.pixels[i,1];
aufschlussel(f,2);

f:=bild.canvas.pixels[i-1,0];
aufschlussel(f,3);

f:=bild.canvas.pixels[i+1,0];
aufschlussel(f,4);

f:=bild.canvas.pixels[i-1,1];
aufschlussel(f,5);

f:=bild.canvas.pixels[i+1,1];
aufschlussel(f,6);

for a:=2 to 6 do
begin
blau[1]:=blau[1]+blau[a];
grun[1]:=grun[1]+grun[a];
rot[1]:=rot[1]+rot[a];
end;


blau[1]:=round(blau[1]/6);
grun[1]:=round(grun[1]/6);
rot[1]:=round(rot[1]/6);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,0]:=f;






f:=bild.canvas.pixels[i,bild.height-1];
aufschlussel(f,1);

f:=bild.canvas.pixels[i,bild.height-2];
aufschlussel(f,2);

f:=bild.canvas.pixels[i-1,bild.height-1];
aufschlussel(f,3);

f:=bild.canvas.pixels[i+1,bild.height-1];
aufschlussel(f,4);

f:=bild.canvas.pixels[i-1,bild.height-2];
aufschlussel(f,5);

f:=bild.canvas.pixels[i+1,bild.height-2];
aufschlussel(f,6);

for a:=2 to 6 do
begin
blau[1]:=blau[1]+blau[a];
grun[1]:=grun[1]+grun[a];
rot[1]:=rot[1]+rot[a];
end;


blau[1]:=round(blau[1]/6);
grun[1]:=round(grun[1]/6);
rot[1]:=round(rot[1]/6);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,bild.height-1]:=f;
end;







for e:=1 to bild.height-2 do
begin
f:=bild.canvas.pixels[0,e];
aufschlussel(f,1);

f:=bild.canvas.pixels[1,e];
aufschlussel(f,2);

f:=bild.canvas.pixels[0,e-1];
aufschlussel(f,3);

f:=bild.canvas.pixels[0,e+1];
aufschlussel(f,4);

f:=bild.canvas.pixels[1,e-1];
aufschlussel(f,5);

f:=bild.canvas.pixels[1,e+1];
aufschlussel(f,6);

for a:=2 to 6 do
begin
blau[1]:=blau[1]+blau[a];
grun[1]:=grun[1]+grun[a];
rot[1]:=rot[1]+rot[a];
end;


blau[1]:=round(blau[1]/6);
grun[1]:=round(grun[1]/6);
rot[1]:=round(rot[1]/6);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[0,e]:=f;






f:=bild.canvas.pixels[bild.height-1,e];
aufschlussel(f,1);

f:=bild.canvas.pixels[bild.height-2,e];
aufschlussel(f,2);

f:=bild.canvas.pixels[bild.height-1,e-1];
aufschlussel(f,3);

f:=bild.canvas.pixels[bild.height-1,e+1];
aufschlussel(f,4);

f:=bild.canvas.pixels[bild.height-2,e-1];
aufschlussel(f,5);

f:=bild.canvas.pixels[bild.height-2,e+1];
aufschlussel(f,6);

for a:=2 to 6 do
begin
blau[1]:=blau[1]+blau[a];
grun[1]:=grun[1]+grun[a];
rot[1]:=rot[1]+rot[a];
end;


blau[1]:=round(blau[1]/6);
grun[1]:=round(grun[1]/6);
rot[1]:=round(rot[1]/6);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[bild.width-1,e]:=f;
end;



for i:=1 to bild.width-2 do
for e:=1 to bild.height-2 do
begin
z:=1;


f:=bild.canvas.pixels[i,e];
aufschlussel(f,z);
     {
if i>0
then
begin }
inc(z);
f:=bild.canvas.pixels[i-1,e];
aufschlussel(f,z); {
end;

if e>0
then
begin   }
inc(z);
f:=bild.canvas.pixels[i,e-1];
aufschlussel(f,z); {
end;

if (i>0) and (e>0)
then
begin     }
inc(z);
f:=bild.canvas.pixels[i-1,e-1];
aufschlussel(f,z);  {
end;

if i<bild.width-1
then
begin   }
inc(z);
f:=bild.canvas.pixels[i+1,e];
aufschlussel(f,z);  {
end;


if e<bild.height-1
then
begin     }
inc(z);
f:=bild.canvas.pixels[i,e+1];
aufschlussel(f,z);  {
end;

if (i<bild.width-1) and (e<bild.height-1)
then
begin  }
inc(z);
f:=bild.canvas.pixels[i+1,e+1];
aufschlussel(f,z);  {
end;

if (i<bild.width-1) and (e>0)
then
begin   }
inc(z);
f:=bild.canvas.pixels[i+1,e-1];
aufschlussel(f,z);   {
end;

if (i>0) and (e<bild.height-1)
then
begin    }
inc(z);
f:=bild.canvas.pixels[i-1,e+1];
aufschlussel(f,z);




for a:=2 to 9 do
begin
blau[1]:=blau[1]+blau[a];
grun[1]:=grun[1]+grun[a];
rot[1]:=rot[1]+rot[a];
end;


blau[1]:=round(blau[1]/9);
grun[1]:=round(grun[1]/9);
rot[1]:=round(rot[1]/9);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,e]:=f;


end;

    Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure tform1.aufschlussel(f,z:integer);
begin
blau[z]:=f div (256*256);
w:=f mod (256*256);
grun[z]:=w div 256;
rot[z]:=w mod 256;
end;

procedure TForm1.rot1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to bild.width-1 do
for e:=0 to bild.height-1 do
begin
f:=puffer.canvas.pixels[i,e];
f:=(f mod (256*256)) mod (256);
puffer.canvas.pixels[i,e]:=f;

end;


Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.grn1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to bild.width-1 do
for e:=0 to bild.height-1 do
begin
f:=puffer.canvas.pixels[i,e];
f:=(f mod (256*256)) div 256 ;
puffer.canvas.pixels[i,e]:=f shl 8;

end;


Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.blau1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to bild.width-1 do
for e:=0 to bild.height-1 do
begin
f:=puffer.canvas.pixels[i,e];
f:=(f div (256*256))  ;
puffer.canvas.pixels[i,e]:=f shl 16;

end;


Paintbox1.canvas.draw(-varx,-vary,puffer);


end;

procedure TForm1.Farbnderung1Click(Sender: TObject);
begin
Form8.visible:=true;
end;


    procedure Tform1.fwbereich;
    begin
          backspeicher;



       if form8.radiobutton1.checked=true
       then
       begin
          if form8.checkbox1.checked=false
    then
    begin
    for i:=form8.spinedit5.value to form8.spinedit7.value do
    for e:=form8.spinedit6.value to form8.spinedit8.value do
    begin
    f:=puffer.canvas.pixels[i,e];
    puffer.canvas.pixels[i,e]:=f+form8.spinedit1.value+(form8.spinedit2.value shl 8)+(form8.spinedit3.Value shl 16);
    end;
    end
    else
    begin
     for i:=form8.spinedit5.value to form8.spinedit7.value do
    for e:=form8.spinedit6.value to form8.spinedit8.value do
    begin
    f:=puffer.canvas.Pixels[i,e];
    aufschlussel(f,1);
    rot[1]:=rot[1]+form8.spinedit1.value;
    grun[1]:=grun[1]+form8.spinedit2.value;
    blau[1]:=blau[1]+form8.spinedit3.value;

    if rot[1]<0
    then
    rot[1]:=0;
    if rot[1]>255
    then
    rot[1]:=255;

  if grun[1]<0
    then
    grun[1]:=0;
    if grun[1]>255
    then
    grun[1]:=255;

      if blau[1]<0
    then
    blau[1]:=0;
    if blau[1]>255
    then
    blau[1]:=255;

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,e]:=f;

    end;

    end;
    end
    else
    begin
    if form8.checkbox2.checked=false
    then
    begin
    for i:=form8.spinedit5.value to form8.spinedit7.value do
    for e:=form8.spinedit6.value to form8.spinedit8.value do
    begin
    f:=puffer.canvas.Pixels[i,e];
    f:=f+form8.spinedit4.value;
    puffer.canvas.pixels[i,e]:=f;
    end;
    end
    else
    begin
    for i:=form8.spinedit5.value to form8.spinedit7.value do
    for e:=form8.spinedit6.value to form8.spinedit8.value do
    begin
    f:=puffer.canvas.Pixels[i,e];
    f:=f+form8.spinedit4.value;
    if f<0
    then
    f:=16777215-f;

    if f>16777215
    then
    f:=f-16777215;

    puffer.canvas.pixels[i,e]:=f;
    end;


    end;




    end;





          
 Paintbox1.canvas.draw(-varx,-vary,puffer);

    end;

    procedure Tform1.fwganz;
       begin
       backspeicher;

       if form8.radiobutton1.checked=true
       then
       begin
          if form8.checkbox1.checked=false
    then
    begin
    for i:=0 to puffer.width do
    for e:=0 to puffer.height do
    begin
    f:=puffer.canvas.pixels[i,e];
    puffer.canvas.pixels[i,e]:=f+form8.spinedit1.value+(form8.spinedit2.value shl 8)+(form8.spinedit3.Value shl 16);
    end;
    end
    else
    begin
     for i:=0 to puffer.width do
    for e:=0 to puffer.height do
    begin
    f:=puffer.canvas.Pixels[i,e];
    aufschlussel(f,1);
    rot[1]:=rot[1]+form8.spinedit1.value;
    grun[1]:=grun[1]+form8.spinedit2.value;
    blau[1]:=blau[1]+form8.spinedit3.value;

    if rot[1]<0
    then
    rot[1]:=0;
    if rot[1]>255
    then
    rot[1]:=255;

  if grun[1]<0
    then
    grun[1]:=0;
    if grun[1]>255
    then
    grun[1]:=255;

      if blau[1]<0
    then
    blau[1]:=0;
    if blau[1]>255
    then
    blau[1]:=255;

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,e]:=f;

    end;

    end;
    end
    else
    begin
    if form8.checkbox2.checked=false
    then
    begin
    for i:=0 to puffer.width do
    for e:=0 to puffer.height do
    begin
    f:=puffer.canvas.Pixels[i,e];
    f:=f+form8.spinedit4.value;
    puffer.canvas.pixels[i,e]:=f;
    end;
    end
    else
    begin
    for i:=0 to puffer.width do
    for e:=0 to puffer.height do
    begin
    f:=puffer.canvas.Pixels[i,e];
    f:=f+form8.spinedit4.value;
    if f<0
    then
    f:=16777215-f;

    if f>16777215
    then
    f:=f-16777215;

    puffer.canvas.pixels[i,e]:=f;
    end;


    end;




    end;

    Paintbox1.canvas.draw(-varx,-vary,puffer);
    end;



procedure TForm1.Linien1Click(Sender: TObject);
begin
Form9.visible:=true;
end;

 procedure Tform1.zlinein(anzahl,dicke,farben,typ:integer);
begin
backspeicher;

case typ of
1:begin

case farben of
1:begin

for i:=1 to anzahl do
begin

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;

puffer.canvas.pen.color:=random(form9.spinedit2.value-form9.spinedit1.value)+form9.spinedit1.value;

puffer.canvas.moveto(random(puffer.width),random(puffer.height));
puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;

end;
2:begin
   for i:=1 to anzahl do
begin

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;


puffer.canvas.pen.color:=form9.shape1.brush.color;


puffer.canvas.moveto(random(puffer.width),random(puffer.height));
puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;
end;
3:begin
  for i:=1 to anzahl do
begin

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;


puffer.canvas.pen.color:=random(256) shl (form9.combobox1.itemindex*8);


puffer.canvas.moveto(random(puffer.width),random(puffer.height));
puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;
end;
end;

end;

2:begin




case farben of
1:begin

puffer.canvas.moveto(random(puffer.width),random(puffer.height));

for i:=1 to anzahl do
begin

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;

puffer.canvas.pen.color:=random(form9.spinedit2.value-form9.spinedit1.value)+form9.spinedit1.value;


puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;

end;
2:begin

 puffer.canvas.moveto(random(puffer.width),random(puffer.height));

   for i:=1 to anzahl do
begin

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;


puffer.canvas.pen.color:=form9.shape1.brush.color;



puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;
end;
3:begin

 puffer.canvas.moveto(random(puffer.width),random(puffer.height));
 
  for i:=1 to anzahl do
begin

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;


puffer.canvas.pen.color:=random(256) shl (form9.combobox1.itemindex*8);



puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;
end;
end;




end;

3:begin


case farben of
1:begin


lx:=random(puffer.width);
ly:=random(puffer.height);

for i:=1 to anzahl do
begin

if random(10)=0
then
begin
lx:=random(puffer.width);
ly:=random(puffer.height);
end;

puffer.canvas.moveto(lx,ly);

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;

puffer.canvas.pen.color:=random(form9.spinedit2.value-form9.spinedit1.value)+form9.spinedit1.value;


puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;

end;
2:begin

lx:=random(puffer.width);
ly:=random(puffer.height);

for i:=1 to anzahl do
begin

if random(10)=0
then
begin
lx:=random(puffer.width);
ly:=random(puffer.height);
end;

puffer.canvas.moveto(lx,ly);

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;


puffer.canvas.pen.color:=form9.shape1.brush.color;



puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;
end;

3:begin
lx:=random(puffer.width);
ly:=random(puffer.height);

for i:=1 to anzahl do
begin

if random(10)=0
then
begin
lx:=random(puffer.width);
ly:=random(puffer.height);
end;

puffer.canvas.moveto(lx,ly);

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;


puffer.canvas.pen.color:=random(256) shl (form9.combobox1.itemindex*8);



puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;
end;
end;


end;

4:begin
















case farben of
1:begin

hak:=true;


for i:=1 to anzahl do
begin

if hak=true
then
begin
lx:=random(puffer.width);
ly:=random(puffer.height);
hak:=false;
end
else
hak:=true;

puffer.canvas.moveto(lx,ly);

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;

puffer.canvas.pen.color:=random(form9.spinedit2.value-form9.spinedit1.value)+form9.spinedit1.value;


puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;

end;
2:begin

for i:=1 to anzahl do
begin

if hak=true
then
begin
lx:=random(puffer.width);
ly:=random(puffer.height);
hak:=false;
end
else
hak:=true;

puffer.canvas.moveto(lx,ly);

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;


puffer.canvas.pen.color:=form9.shape1.brush.color;



puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;
end;

3:begin

for i:=1 to anzahl do
begin

if hak=true
then
begin
lx:=random(puffer.width);
ly:=random(puffer.height);
hak:=false;
end
else
hak:=true;

puffer.canvas.moveto(lx,ly);

if dicke=0
then
puffer.canvas.pen.width:=random(50)+1
else
puffer.canvas.pen.width:=dicke;


puffer.canvas.pen.color:=random(256) shl (form9.combobox1.itemindex*8);;



puffer.canvas.lineto(random(puffer.width),random(puffer.height));
end;
end;
end;



end;

end;



Paintbox1.canvas.draw(-varx,-vary,puffer);
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
end;


 procedure TForm1.Formen2Click(Sender: TObject);
begin
form10.visible:=true;
end;



procedure Tform1.zforein(typ,farbe: integer);
begin
backspeicher;
puffer.canvas.Pen.width:=1;

case typ of
1:begin

case farbe of
1:begin
for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=random(form10.spinedit2.value-form10.spinedit1.value)+form10.spinedit1.value;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width-10);
p[0].y:=random(puffer.height-9);
p[1].x:=p[0].x+10;
p[1].y:=p[0].y;
p[2].x:=p[0].x+5;
p[2].y:=p[0].y+9;

puffer.Canvas.Polygon(Slice((p), 3));

end;

end;

2:begin


for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=form10.shape1.Brush.color;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width-10);
p[0].y:=random(puffer.height-9);
p[1].x:=p[0].x+10;
p[1].y:=p[0].y;
p[2].x:=p[0].x+5;
p[2].y:=p[0].y+9;

puffer.Canvas.Polygon(Slice((p), 3));

end;

end;

3:begin



for i:=1 to form10.spinedit3.value do
begin


puffer.canvas.pen.color:=random(256) shl (form10.combobox1.itemindex*8);



puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width-10);
p[0].y:=random(puffer.height-9);
p[1].x:=p[0].x+10;
p[1].y:=p[0].y;
p[2].x:=p[0].x+5;
p[2].y:=p[0].y+9;

puffer.Canvas.Polygon(Slice((p), 3));

end;

end;
end;


end;

2:begin


case farbe of
1:begin
for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=random(form10.spinedit2.value-form10.spinedit1.value)+form10.spinedit1.value;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width);
p[0].y:=random(puffer.height);
p[1].x:=random(puffer.width);
p[1].y:=random(puffer.height);
p[2].x:=random(puffer.width);
p[2].y:=random(puffer.height);

puffer.Canvas.Polygon(Slice((p), 3));

end;

end;

2:begin


for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=form10.shape1.Brush.color;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width);
p[0].y:=random(puffer.height);
p[1].x:=random(puffer.width);
p[1].y:=random(puffer.height);
p[2].x:=random(puffer.width);
p[2].y:=random(puffer.height);

puffer.Canvas.Polygon(Slice((p), 3));

end;

end;

3:begin



for i:=1 to form10.spinedit3.value do
begin


puffer.canvas.pen.color:=random(256) shl (form10.combobox1.itemindex*8);



puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width);
p[0].y:=random(puffer.height);
p[1].x:=random(puffer.width);
p[1].y:=random(puffer.height);
p[2].x:=random(puffer.width);
p[2].y:=random(puffer.height);

puffer.Canvas.Polygon(Slice((p), 3));

end;

end;
end;


end;

3:begin


case farbe of
1:begin
for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=random(form10.spinedit2.value-form10.spinedit1.value)+form10.spinedit1.value;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
lx:=random(puffer.width-10);
ly:=random(puffer.height-10);

puffer.Canvas.rectangle(lx,ly,lx+10,ly+10);

end;

end;

2:begin


for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=form10.shape1.Brush.color;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
lx:=random(puffer.width-10);
ly:=random(puffer.height-10);

puffer.Canvas.rectangle(lx,ly,lx+10,ly+10);

end;

end;

3:begin



for i:=1 to form10.spinedit3.value do
begin


puffer.canvas.pen.color:=random(256) shl (form10.combobox1.itemindex*8);



puffer.canvas.brush.color:=puffer.canvas.Pen.color;
lx:=random(puffer.width-10);
ly:=random(puffer.height-10);

puffer.Canvas.rectangle(lx,ly,lx+10,ly+10);

end;

end;
end;

end;

4:begin


case farbe of
1:begin
for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=random(form10.spinedit2.value-form10.spinedit1.value)+form10.spinedit1.value;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width);
p[0].y:=random(puffer.height);
p[1].x:=random(puffer.width);
p[1].y:=random(puffer.height);
p[2].x:=random(puffer.width);
p[2].y:=random(puffer.height);
p[3].x:=random(puffer.width);
p[3].y:=random(puffer.height);

puffer.Canvas.Polygon(Slice((p), 4));

end;

end;

2:begin


for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=form10.shape1.Brush.color;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width);
p[0].y:=random(puffer.height);
p[1].x:=random(puffer.width);
p[1].y:=random(puffer.height);
p[2].x:=random(puffer.width);
p[2].y:=random(puffer.height);
p[3].x:=random(puffer.width);
p[3].y:=random(puffer.height);

puffer.Canvas.Polygon(Slice((p), 4));

end;

end;

3:begin



for i:=1 to form10.spinedit3.value do
begin


puffer.canvas.pen.color:=random(256) shl (form10.combobox1.itemindex*8);



puffer.canvas.brush.color:=puffer.canvas.Pen.color;
p[0].x:=random(puffer.width);
p[0].y:=random(puffer.height);
p[1].x:=random(puffer.width);
p[1].y:=random(puffer.height);
p[2].x:=random(puffer.width);
p[2].y:=random(puffer.height);
p[3].x:=random(puffer.width);
p[3].y:=random(puffer.height);

puffer.Canvas.Polygon(Slice((p), 4));

end;

end;
end;




end;

5:begin






case farbe of
1:begin
for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=random(form10.spinedit2.value-form10.spinedit1.value)+form10.spinedit1.value;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;

lx:=random(puffer.width-20)+10;
ly:=random(puffer.height-20)+10;


for e:=0 to 9 do
begin

if e mod 2=1
then
begin
p[e].x:=lx+round(5*cos(e*PI/5));
p[e].y:=ly+round(5*sin(e*PI/5));
end
else  
begin
p[e].x:=lx+round(10*cos(e*PI/5));
p[e].y:=ly+round(10*sin(e*PI/5));
end

end;


puffer.Canvas.Polygon(Slice((p), 10));

end;

end;

2:begin


for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=form10.shape1.Brush.color;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;

lx:=random(puffer.width-20)+10;
ly:=random(puffer.height-20)+10;


for e:=0 to 9 do
begin

if e mod 2=1
then
begin
p[e].x:=lx+round(5*cos(e*PI/5));
p[e].y:=ly+round(5*sin(e*PI/5));
end
else  
begin
p[e].x:=lx+round(10*cos(e*PI/5));
p[e].y:=ly+round(10*sin(e*PI/5));
end

end;


puffer.Canvas.Polygon(Slice((p), 10));

end;

end;

3:begin



for i:=1 to form10.spinedit3.value do
begin


puffer.canvas.pen.color:=random(256) shl (form10.combobox1.itemindex*8);



puffer.canvas.brush.color:=puffer.canvas.Pen.color;

lx:=random(puffer.width-20)+10;
ly:=random(puffer.height-20)+10;


for e:=0 to 9 do
begin

if e mod 2=1
then
begin
p[e].x:=lx+round(5*cos(e*PI/5));
p[e].y:=ly+round(5*sin(e*PI/5));
end
else  
begin
p[e].x:=lx+round(10*cos(e*PI/5));
p[e].y:=ly+round(10*sin(e*PI/5));
end

end;


puffer.Canvas.Polygon(Slice((p), 10));

end;

end;
end;









end;

6:begin


case farbe of
1:begin
for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=random(form10.spinedit2.value-form10.spinedit1.value)+form10.spinedit1.value;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;


a:=0;
for e:=0 to random(75)+5 do
begin
p[e].x:=random(puffer.width);
p[e].y:=random(puffer.height);
inc(a);
end;


puffer.Canvas.Polygon(Slice((p), a));

end;

end;

2:begin


for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=form10.shape1.Brush.color;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;


a:=0;
for e:=0 to random(75)+5 do
begin
p[e].x:=random(puffer.width);
p[e].y:=random(puffer.height);
inc(a);
end;


puffer.Canvas.Polygon(Slice((p), a));

end;

end;

3:begin



for i:=1 to form10.spinedit3.value do
begin


puffer.canvas.pen.color:=random(256) shl (form10.combobox1.itemindex*8);



puffer.canvas.brush.color:=puffer.canvas.Pen.color;


a:=0;
for e:=0 to random(75)+5 do
begin
p[e].x:=random(puffer.width);
p[e].y:=random(puffer.height);
inc(a);
end;


puffer.Canvas.Polygon(Slice((p), a));

end;

end;
end;




end;

7:begin


case farbe of
1:begin
for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=random(form10.spinedit2.value-form10.spinedit1.value)+form10.spinedit1.value;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
lx:=random(puffer.width-20);
ly:=random(puffer.height-20);

puffer.Canvas.ellipse(lx,ly,lx+20,ly+20);

end;

end;

2:begin


for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=form10.shape1.Brush.color;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;
lx:=random(puffer.width-20);
ly:=random(puffer.height-20);

puffer.Canvas.ellipse(lx,ly,lx+20,ly+20);

end;

end;

3:begin



for i:=1 to form10.spinedit3.value do
begin


puffer.canvas.pen.color:=random(256) shl (form10.combobox1.itemindex*8);



puffer.canvas.brush.color:=puffer.canvas.Pen.color;
lx:=random(puffer.width-20);
ly:=random(puffer.height-20);

puffer.Canvas.ellipse(lx,ly,lx+20,ly+20);

end;

end;
end;

end;

8:begin



case farbe of
1:begin
for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=random(form10.spinedit2.value-form10.spinedit1.value)+form10.spinedit1.value;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;

puffer.Canvas.ellipse(random(puffer.width),random(puffer.height),random(puffer.width),random(puffer.height));

end;

end;

2:begin


for i:=1 to form10.spinedit3.value do
begin
puffer.canvas.pen.color:=form10.shape1.Brush.color;
puffer.canvas.brush.color:=puffer.canvas.Pen.color;

puffer.Canvas.ellipse(random(puffer.width),random(puffer.height),random(puffer.width),random(puffer.height));

end;

end;

3:begin



for i:=1 to form10.spinedit3.value do
begin


puffer.canvas.pen.color:=random(256) shl (form10.combobox1.itemindex*8);



puffer.canvas.brush.color:=puffer.canvas.Pen.color;

puffer.Canvas.ellipse(random(puffer.width),random(puffer.height),random(puffer.width),random(puffer.height));

end;

end;
end;


end;

end;

Paintbox1.canvas.draw(-varx,-vary,puffer);
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
puffer.canvas.brush.color:=hfarb;


end;




procedure TForm1.Komplimentr1Click(Sender: TObject);
begin



backspeicher;

puffer.canvas.copymode:=cmDstInvert;
puffer.canvas.CopyRect(rect(0,0,puffer.width,puffer.height),bild.canvas,rect(0,0,puffer.width,puffer.height));
Paintbox1.canvas.draw(-varx,-vary,puffer);


{backspeicher;

for i:=0 to puffer.width-1 do
for e:=0 to puffer.height-1 do
begin
f:=puffer.canvas.pixels[i,e];
aufschlussel(f,2);


rot[1]:=255-rot[2];
grun[1]:=255-grun[2];
blau[1]:=255-blau[2];


f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1] ) ;
puffer.canvas.pixels[i,e]:=f;



end;

Paintbox1.canvas.draw(-varx,-vary,puffer);    }
end;

procedure TForm1.SchwarzWei1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to puffer.width-1 do
for e:=0 to puffer.height-1 do
begin
f:=puffer.canvas.pixels[i,e];
aufschlussel(f,2);



rot[1]:=round((rot[2]*2+grun[2]*3+blau[2])/6);
grun[1]:=round((rot[2]*2+grun[2]*3+blau[2])/6);
blau[1]:=round((rot[2]*2+grun[2]*3+blau[2])/6);


f:= (blau[1] shl 8)+ (grun[1]  )+ (rot[1] shl 16) ;
puffer.canvas.pixels[i,e]:=f;



end;

Paintbox1.canvas.draw(-varx,-vary,puffer);   





end;

procedure TForm1.Allezurcksetzen1Click(Sender: TObject);
begin
zoomnormal;
puffer.Canvas.pen.style:=pssolid;
puffer.canvas.brush.style:=bssolid;
puffer.canvas.pen.width:=1;
puffer.canvas.pen.color:=clblack;
puffer.canvas.brush.color:=clblack;
vfarb:=clblack;
hfarb:=clblack;
dick:=1;
spinedit3.value:=1;
shape1.brush.color:=clblack;
shape2.brush.color:=clblack;
klick;
order:=-1;
label3.caption:='nichts';
puffer.canvas.font:=schrift;
bild.canvas.font:=schrift;
varx:=0;
vary:=0;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;


if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
scrollbar1.position:=0;
zoom:=1;
end;

procedure TForm1.Polynom1Click(Sender: TObject);
begin
form11.visible:=true;
end;




procedure Tform1.graphen(pic:Tbitmap);
begin
with kurve do
begin
width:=250;
height:=250;
canvas.draw(0,0,pic);
Transparent := True;
TransParentColor := clwhite;

end;
if form11.checkbox1.checked=false
then
stret:=true
else
stret:=false;

order:=26;
klick;
label3.caption:='Funktion';

end;


    procedure Tform1.gzieh1(x,y:integer);
    var d,dd:integer;
    begin
         if mal=true
then
begin
puffer.canvas.pen.color:=clwhite;
puffer.canvas.pen.width:=1;
puffer.canvas.draw(0,0,bild);

if stret=true
then
begin
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,y+vary);
puffer.Canvas.lineto(x+varx,y+vary);
puffer.Canvas.lineto(x+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);
end
else
begin
d:=abs(x-lx);
dd:=y-ly;
if dd<>0
then
y:=ly+d*round((dd)/abs(dd));
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,y+vary);
puffer.Canvas.lineto(x+varx,y+vary);
puffer.Canvas.lineto(x+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);

end;

  end;
    end;

    procedure Tform1.gzieh2(x,y:integer);
    var d,dd:integer;
      begin
 puffer.canvas.draw(0,0,bild);

 if stret=true
then
begin
puffer.canvas.stretchdraw(rect(lx,ly,x,y),kurve);
end
else
begin
d:=abs(x-lx);
dd:=y-ly;
if dd<>0
then
y:=ly+d*round((dd)/abs(dd));
 puffer.canvas.stretchdraw(rect(lx,ly,x,y),kurve);
end;

mal:=false;

puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
    end;
    

procedure TForm1.Rational1Click(Sender: TObject);
begin
form12.visible:=true;
end;

   procedure Tform1.ratgraph(pic:Tbitmap);
   begin
  with kurve do
begin
width:=250;
height:=250;
canvas.draw(0,0,pic);
Transparent := True;
TransParentColor := clwhite;

end;
if form12.checkbox1.checked=false
then
stret:=true
else
stret:=false;

order:=26;
klick;
label3.caption:='Funktion';


   end;

procedure TForm1.RGBBGR1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to puffer.width do
for e:=0 to puffer.height do
begin
f:=puffer.canvas.pixels[i,e];
aufschlussel(f,1);
f:= rot[1] shl 16+ grun[1] shl 8 + blau[1];
puffer.canvas.pixels[i,e]:=f;

end;

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.RGBGBR1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to puffer.width do
for e:=0 to puffer.height do
begin
f:=puffer.canvas.pixels[i,e];
aufschlussel(f,1);
f:= rot[1] shl 16+ grun[1]  + blau[1] shl 8;
puffer.canvas.pixels[i,e]:=f;

end;

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.RGBRBG1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to puffer.width do
for e:=0 to puffer.height do
begin
f:=puffer.canvas.pixels[i,e];
aufschlussel(f,1);
f:= rot[1] + grun[1] shl 16 + blau[1]shl 8;
puffer.canvas.pixels[i,e]:=f;

end;

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.RGBGRB1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to puffer.width do
for e:=0 to puffer.height do
begin
f:=puffer.canvas.pixels[i,e];
aufschlussel(f,1);
f:= rot[1] shl 8+ grun[1]  + blau[1]shl 16;
puffer.canvas.pixels[i,e]:=f;

end;

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.RGBBRG1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to puffer.width do
for e:=0 to puffer.height do
begin
f:=puffer.canvas.pixels[i,e];
aufschlussel(f,1);
f:= rot[1] shl 8+ grun[1] shl 16 + blau[1];
puffer.canvas.pixels[i,e]:=f;

end;

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Trigonometrisch1Click(Sender: TObject);
begin
form13.visible:=true;
end;


 procedure Tform1.trigraph(pic:Tbitmap);
   begin
  with kurve do
begin
width:=250;
height:=250;
canvas.draw(0,0,pic);
Transparent := True;
TransParentColor := clwhite;

end;
if form13.checkbox1.checked=false
then
stret:=true
else
stret:=false;

order:=26;
klick;
label3.caption:='Funktion';


   end;

procedure TForm1.Groendern1Click(Sender: TObject);
begin

form14.visible:=true;
form14.label1.caption:='Breite : '+inttostr(form1.spinedit1.value)+' Pixels';
form14.label2.caption:='Höhe : '+inttostr(form1.spinedit2.value)+' Pixels';
end;


procedure Tform1.grossander;
begin

backspeicher;     zc:=true;
if form14.radiobutton1.checked=true
then
begin
puffer.width:=form14.SpinEdit1.Value;
puffer.height:=form14.SpinEdit2.Value;

end
else
begin

puffer.width:=round(form14.spinedit1.value*puffer.Width/100);
puffer.height:=round(form14.spinedit2.value*puffer.height/100);

end;



paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));


puffer.canvas.stretchdraw(rect(0,0,puffer.width,puffer.height),bild);

 spinedit1.value:=puffer.width;
spinedit2.value:=puffer.height;

  if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;


Paintbox1.canvas.draw(-varx,-vary,puffer);


end;


procedure TForm1.Muster1Click(Sender: TObject);
begin
form15.visible:=true;
end;



procedure Tform1.mustra(pic:Tbitmap);
var gschritt,bschritt,rschritt:extended;
begin
backspeicher;

if form15.radiobutton1.checked=true
then
begin

if form15.radiobutton2.checked=true
then
begin

aufschlussel(form15.shape1.brush.color,1);
aufschlussel(form15.shape2.brush.color,2);

rschritt:=(rot[2]-rot[1])/puffer.height;
gschritt:=(grun[2]-grun[1])/puffer.height;
bschritt:=(blau[2]-blau[1])/puffer.height;

for i:=0 to puffer.width-1 do
for e:=0 to puffer.height-1 do
puffer.canvas.pixels[i,e]:=(round(blau[1]+bschritt*e) shl 16 + round(grun[1]+gschritt*e) shl 8  + round(rot[1]+rschritt*e) );





end
else
begin

aufschlussel(form15.shape1.brush.color,1);
aufschlussel(form15.shape2.brush.color,2);

rschritt:=(rot[2]-rot[1])/puffer.width;
gschritt:=(grun[2]-grun[1])/puffer.width;
bschritt:=(blau[2]-blau[1])/puffer.width;

for i:=0 to puffer.width-1 do
for e:=0 to puffer.height-1 do
puffer.canvas.pixels[i,e]:=(round(blau[1]+bschritt*i) shl 16 + round(grun[1]+gschritt*i) shl 8  + round(rot[1]+rschritt*i) );




end;

end;


if form15.radiobutton4.checked=true
then
begin
for i:=0 to trunc(puffer.width/100) do
for e:=0 to trunc(puffer.height/100) do
begin
puffer.canvas.draw(i*100,e*100,pic);

end;

end;


if form15.radiobutton5.checked=true
then
begin
brushstz:=puffer.Canvas.brush.style;
case form15.combobox1.itemindex of
0:puffer.canvas.brush.style:=bsBDiagonal;
1:puffer.canvas.brush.style:=bsFDiagonal		;
2:puffer.canvas.brush.style:=bsHorizontal;
3:puffer.canvas.brush.style:=bsVertical;
4:puffer.canvas.brush.style:=bsCross;
5:puffer.canvas.brush.style:=bsDiagCross;
end;

puffer.canvas.brush.color:=form15.shape4.brush.color;
puffer.canvas.fillrect(rect(0,0,puffer.width,puffer.height));

puffer.canvas.brush.color:=hfarb;
puffer.Canvas.brush.style:=brushstz;
end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Zerhacken1Click(Sender: TObject);
begin
form16.visible:=true;
end;



procedure TForm1.hack;
var verzeichnis:string;
    kh,kb,ah,ab:integer;
begin

verzeichnis:=form16.DirectoryListBox1.Directory;
if Length(verzeichnis)>3
then
verzeichnis:=verzeichnis+'/';

verzeichnis:=verzeichnis+form16.edit1.Text;
mkdir(verzeichnis);

verzeichnis:=verzeichnis+'/';

kb:=form16.spinedit1.value;
kh:=form16.spinedit2.value;

klein.width:=kb;
klein.height:=kh;


ab:=(spinedit1.value-1 div kb);
ah:=(spinedit2.value-1 div kh);

klein.Canvas.copymode:=cmSrcCopy;
klein.canvas.pen.color:=clblack;
klein.canvas.brush.color:=clblack;

if form16.checkbox1.checked=true
then
begin
for i:=0 to ab do
for e:=0 to ah do
begin
klein.canvas.fillrect(rect(0,0,kb,kh));
klein.Canvas.CopyRect(rect(0,0,kb,kh), puffer.canvas, rect(i*kb,e*kh,(i+1)*kb,(e+1)*kh));
klein.savetofile(verzeichnis+inttostr(i)+inttostr(e)+'.bmp');
end;

end
else
begin

for i:=0 to ab-1 do
for e:=0 to ah-1 do
begin
klein.canvas.fillrect(rect(0,0,kb,kh));
klein.Canvas.CopyRect(rect(0,0,kb,kh), puffer.canvas, rect(i*kb,e*kh,(i+1)*kb,(e+1)*kh));
klein.savetofile(verzeichnis+inttostr(i)+inttostr(e)+'.bmp');
end;

e:=ah;

klein.height:=puffer.height-(kh*(ah));

for i:=0 to ab-1 do
begin
klein.canvas.fillrect(rect(0,0,kb,kh));
klein.Canvas.CopyRect(rect(0,0,kb,kh), puffer.canvas, rect(i*kb,e*kh,(i+1)*kb,(e+1)*kh));
klein.savetofile(verzeichnis+inttostr(i)+inttostr(e)+'.bmp');
end;
i:=ab;

klein.width:=puffer.width-(kb*(ab)) ;


klein.canvas.fillrect(rect(0,0,kb,kh));
klein.Canvas.CopyRect(rect(0,0,kb,kh), puffer.canvas, rect(i*kb,e*kh,(i+1)*kb,(e+1)*kh));
klein.savetofile(verzeichnis+inttostr(i)+inttostr(e)+'.bmp');


klein.height:=form16.spinedit2.value;


for e:=0 to ah-1 do                       
begin
klein.canvas.fillrect(rect(0,0,kb,kh));
klein.Canvas.CopyRect(rect(0,0,kb,kh), puffer.canvas, rect(i*kb,e*kh,(i+1)*kb,(e+1)*kh));
klein.savetofile(verzeichnis+inttostr(i)+inttostr(e)+'.bmp');
end;

end;

end;



procedure TForm1.Feigenbaum1Click(Sender: TObject);
begin
form17.visible:=true;
end;





  procedure TForm1.feigb1(pic:Tbitmap);
     begin
     backspeicher;



bild.width:=400;
puffer.width:=400;
spinedit1.value:=200;




bild.height:=200;
puffer.height:=200;
spinedit2.value:=200;


 puffer.canvas.draw(0,0,pic);

varx:=0;
vary:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

    Paintbox1.canvas.draw(-varx,-vary,puffer);

    end;



procedure TForm1.feigb2(pic:Tbitmap);
begin
order:=22;
fract.width:=400;
fract.height:=200;
fract.canvas.draw(0,0,pic);
Label3.caption:='Fraktal';
klick;
end;



procedure TForm1.BitBtn5Click(Sender: TObject);
begin
order:=-1;
label3.caption:='nichts';
klick;
bitbtn5.enabled:=false;
end;

procedure TForm1.BitBtn10Click(Sender: TObject);
begin
order:=27;
label3.caption:='Cutter';
klick;
bitbtn10.enabled:=false;
mark:=false;
    ausz:=0;
    halten:=false;
      lx:=-1;
  ly:=-1;
  llx:=-1;
  lly:=-1;
end;

procedure TForm1.N90nachrechts1Click(Sender: TObject);

begin

backspeicher;
zc:=true;

puffer.width:=spinedit2.value;         //Höhe breite umkehren
puffer.height:=spinedit1.value;

 {

for i:=0 to puffer.width do
for e:=0 to puffer.height do                 ////     180° !!!!!!
begin
puffer.canvas.pixels[i,e]:=bild.canvas.pixels[puffer.Height-i,puffer.width-e];
end;
        }
                  {
for i:=0 to puffer.width do
for e:=0 to puffer.height do
begin
puffer.canvas.pixels[i,e]:=bild.canvas.pixels[puffer.Height-e,i];     links 90

end;          }

for i:=0 to puffer.width do
for e:=0 to puffer.height do
begin
puffer.canvas.pixels[i,e]:=bild.canvas.pixels[e,puffer.width-i];
end;

spinedit2.value:=puffer.Height;
spinedit1.value:=puffer.width;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
varx:=0;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

scrollbar2.position:=0;
vary:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));


Paintbox1.canvas.draw(-varx,-vary,puffer);

end;



    procedure Tform1.backspeicher;
    begin 
    zoomnormal;
    bild.canvas.copymode:=cmSrcCopy;
    puffer.canvas.copymode:=cmSrcCopy;
    puffer.Transparent := false;
    bild.Transparent := false;
    bild.height:=puffer.height;
    bild.width:=puffer.width;
    bild.canvas.draw(0,0,puffer);
     end;


    procedure TForm1.SpinEdit2Click(Sender: TObject);
begin
if spinedit2.value<1
then
spinedit2.value:=1;

bild.canvas.brush.color:=hfarb;
puffer.canvas.brush.color:=hfarb;
bild.height:=spinedit2.value;
puffer.height:=spinedit2.value;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

scrollbar2.position:=0;
vary:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.SpinEdit1Click(Sender: TObject);
begin
if spinedit1.value<1
then
spinedit1.value:=1;

bild.canvas.brush.color:=hfarb;
puffer.canvas.brush.color:=hfarb;
bild.width:=spinedit1.value;
puffer.width:=spinedit1.value;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
varx:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.N90nachlinks1Click(Sender: TObject);
begin

backspeicher;
  zc:=true;

puffer.width:=spinedit2.value;         //Höhe breite umkehren
puffer.height:=spinedit1.value;



for i:=0 to puffer.width do
for e:=0 to puffer.height do
begin
puffer.canvas.pixels[i,e]:=bild.canvas.pixels[puffer.height-e,i];     

end;


spinedit2.value:=puffer.Height;
spinedit1.value:=puffer.width;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
varx:=0;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

scrollbar2.position:=0;
vary:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));


Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.N1801Click(Sender: TObject);
begin

backspeicher;

    zc:=true;




for i:=0 to puffer.width do
for e:=0 to puffer.height do                 ////     180° !!!!!!
begin
puffer.canvas.pixels[i,e]:=bild.canvas.pixels[puffer.width-i,puffer.Height-e];
end;
       





Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.SpinEdit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if spinedit1.value<1
then
spinedit1.value:=1;

bild.canvas.brush.color:=hfarb;
puffer.canvas.brush.color:=hfarb;
bild.width:=spinedit1.value;
puffer.width:=spinedit1.value;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
varx:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.SpinEdit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if spinedit2.value<1
then
spinedit2.value:=1;

bild.canvas.brush.color:=hfarb;
puffer.canvas.brush.color:=hfarb;
bild.height:=spinedit2.value;
puffer.height:=spinedit2.value;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

scrollbar2.position:=0;
vary:=0;


paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

Paintbox1.canvas.draw(-varx,-vary,puffer);
end;



  procedure Tform1.ausschn1(x,y:integer);

  begin

  if mark=false
  then
  backspeicher;

  if lx>llx
  then
  begin
  olx:=llx;
  urx:=lx;
  end
  else
  begin
   olx:=lx;
  urx:=llx;
end;

  if ly>lly
  then
  begin
  oly:=lly;
  ury:=ly;
  end
  else
  begin
   oly:=ly;
  ury:=lly;
end;


  if (x>olx) and (x<urx) and (y>oly) and (y<ury)
  then
  begin
   ry:=y;
        rx:=x;
  if  halten=false
  then
  begin 
  
  halten:=true;

  movbit.width:=urx-olx;
  movbit.height:=ury-oly;
  movbit.Canvas.copymode:=cmSrcCopy;
movbit.canvas.pen.color:=clblack;
movbit.canvas.brush.color:=clblack;
movbit.Canvas.CopyRect(rect(0,0,movbit.width,movbit.height), bild.canvas, rect(lx+varx,ly+vary,llx+varx,lly+vary));
  end;
  end
  else
  begin

lx:=x;
ly:=y;
halten:=false;
with puffer.canvas.pen do
begin

width:=1;
color:=clwhite;
style:=psDot;	
end;

puffer.canvas.brush.color:=clblack;

   end;
  ausz:=0;  
  end;


      procedure Tform1.ausschn2(x,y:integer);

        begin



if (mal=true) and (ausz=0)
then
begin
if halten=true
then
begin
lx:=lx+(x-rx);
ly:=ly+(y-ry);
llx:=llx+(x-rx);
lly:=lly+(y-ry);
rx:=x;
ry:=y;

  if lx>llx
  then
  begin
  olx:=llx;
  urx:=lx;
  end
  else
  begin
   olx:=lx;
  urx:=llx;
end;

  if ly>lly
  then
  begin
  oly:=lly;
  ury:=ly;
  end
  else
  begin
   oly:=ly;
  ury:=lly;
end;




puffer.canvas.draw(0,0,bild);
puffer.canvas.draw(olx,oly,movbit);
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);
end
else
begin
puffer.canvas.draw(0,0,bild);           
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,y+vary);
puffer.Canvas.lineto(x+varx,y+vary);
puffer.Canvas.lineto(x+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);
  end;
  end;
  end;

      procedure Tform1.ausschn3(x,y:integer);

        begin

if halten=true
then
begin
lx:=lx+(x-rx);
ly:=ly+(y-ry);
llx:=llx+(x-rx);
lly:=lly+(y-ry);
rx:=x;
ry:=y;

  if lx>llx
  then
  begin
  olx:=llx;
  urx:=lx;
  end
  else
  begin
   olx:=lx;
  urx:=llx;
end;

  if ly>lly
  then
  begin
  oly:=lly;
  ury:=ly;
  end
  else
  begin
   oly:=ly;
  ury:=lly;
end;




puffer.canvas.draw(0,0,bild);
puffer.canvas.draw(olx,oly,movbit);
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);

end
else
begin
puffer.canvas.draw(0,0,bild);
llx:=x;
lly:=y;
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);
end;
mark:=true;
      ausz:=0;
  end;

      procedure Tform1.ausschn4;
        begin
if mark=true
then
begin
if halten=true
then
begin







puffer.canvas.draw(0,0,bild);
puffer.canvas.draw(olx,oly,movbit);
puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);

end
else
begin
puffer.canvas.draw(0,0,bild);

puffer.Canvas.moveto(lx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,lly+vary);
puffer.Canvas.lineto(llx+varx,ly+vary);
puffer.Canvas.lineto(lx+varx,ly+vary);
end;
end;


  end;



      procedure Tform1.ausschn5;
      begin
                   lx:=-1;
  ly:=-1;
  llx:=-1;
  lly:=-1;
          mark:=false;
          puffer.canvas.draw(0,0,bild);
          ausz:=1;
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
if halten=true
then
begin


puffer.canvas.draw(olx,oly,movbit);
backspeicher;
end;
halten:=false;
      end;





procedure TForm1.Kopieren1Click(Sender: TObject);

begin
if (order=27) and (mark=true)
then
begin
vorzwischen;

clipboard.open;
clipboard.Assign(klein);
clipboard.close;
                   lx:=-1;
  ly:=-1;
  llx:=-1;
  lly:=-1;
end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;



    procedure Tform1.vorzwischen;
    begin
  mark:=false;
          puffer.canvas.draw(0,0,bild);
          ausz:=1;
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
if halten=true
then
begin
puffer.canvas.draw(olx,oly,movbit);
end;
halten:=false;


klein.width:=abs(lx-llx);
klein.height:=abs(ly-lly);
klein.Canvas.copymode:=cmSrcCopy;
klein.canvas.pen.color:=clblack;
klein.canvas.brush.color:=clblack;
klein.Canvas.CopyRect(rect(0,0,klein.width,klein.height), bild.canvas, rect(lx+varx,ly+vary,llx+varx,lly+vary));

    end;
procedure TForm1.Ausschneiden1Click(Sender: TObject);
begin

if (order=27) and (mark=true)
then
begin
vorzwischen;
clipboard.open;
clipboard.Assign(klein);
clipboard.close;
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=hfarb;
puffer.canvas.pen.width:=1;
puffer.canvas.fillrect( rect(lx+varx,ly+vary,llx+varx,lly+vary));
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
                   lx:=-1;
  ly:=-1;
  llx:=-1;
  lly:=-1;
end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Lschen1Click(Sender: TObject);
begin
if (order=27) and (mark=true)
then
begin
  mark:=false;
          puffer.canvas.draw(0,0,bild);
          ausz:=1;
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;

halten:=false;


puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=hfarb;
puffer.canvas.pen.width:=1;
puffer.canvas.fillrect( rect(lx+varx,ly+vary,llx+varx,lly+vary));
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
                   lx:=-1;
  ly:=-1;
  llx:=-1;
  lly:=-1;
  end;
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;

procedure TForm1.Einfgen1Click(Sender: TObject);
begin
zoomnormal;
if Clipboard.HasFormat(CF_Bitmap)
then
begin
klein.assign(clipboard);

if (order=27) and (mark=true)
then
begin

mark:=false;
          puffer.canvas.draw(0,0,bild);
          ausz:=1;


halten:=false;
                 {
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=hfarb;
puffer.canvas.pen.width:=1;           }
puffer.canvas.stretchdraw(rect(lx+varx,ly+vary,llx+varx,lly+vary),klein);  {
puffer.canvas.brush.color:=hfarb;
puffer.canvas.pen.color:=vfarb;
puffer.canvas.pen.width:=dick;
                lx:=-1;
  ly:=-1;
  llx:=-1;
  lly:=-1;       }

        mark:=true;

      halten:=true;
    if lx>llx
  then
  begin
  olx:=llx;
  urx:=lx;
  end
  else
  begin
   olx:=lx;
  urx:=llx;
end;

  if ly>lly
  then
  begin
  oly:=lly;
  ury:=ly;
  end
  else
  begin
   oly:=ly;
  ury:=lly;
end;

movbit.width:=abs(lx-llx);
movbit.height:=abs(ly-lly);
movbit.canvas.stretchdraw(rect(0,0,abs(lx-llx),abs(ly-lly)),klein);

end
else
begin
backspeicher;
 klick;
mark:=true;
      ausz:=0;
      order:=27;
      label3.caption:='Cutter';
      bitBtn10.enabled:=false;
      lx:=0;
      ly:=0;
      llx:=klein.width;
      lly:=klein.height;
      halten:=true;
      olx:=0;
      oly:=0;

movbit.width:=klein.width;
movbit.height:=klein.height;
movbit.canvas.draw(0,0,klein);

with puffer.canvas.pen do
begin
width:=1;
color:=clwhite;
style:=psDot;	
end;

puffer.canvas.brush.color:=clblack;


if puffer.width<klein.width
then
puffer.width:=klein.width;


if puffer.height<klein.height
then
puffer.height:=klein.height;

spinedit1.value:=puffer.width;
spinedit2.value:=puffer.height;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
varx:=0;

scrollbar2.position:=0;
vary:=0;

puffer.canvas.draw(0,0,klein);
Paintbox1.canvas.draw(-varx,-vary,puffer);
end;
end;

end;

procedure TForm1.Verwerfen1Click(Sender: TObject);
begin
clipboard.Clear;       
end;

procedure TForm1.Laden1Click(Sender: TObject);
begin
if Clipboard.HasFormat(CF_Bitmap)
then
begin
klein.assign(clipboard);

form18.visible:=true;
form18.timer1.enabled:=true;
form18.clientheight:=klein.height;
form18.clientwidth:=klein.width;
form18.image1.height:=klein.height;
form18.image1.width:=klein.width;
form18.image1.canvas.draw(0,0,klein);

end;
end;

procedure TForm1.Speichern2Click(Sender: TObject);
begin
if Clipboard.HasFormat(CF_Bitmap)
then
begin
klein.assign(clipboard);

form18.visible:=true;
form18.timer1.enabled:=true;
form18.clientheight:=klein.height;
form18.clientwidth:=klein.width;
form18.image1.height:=klein.height;
form18.image1.width:=klein.width;
form18.image1.canvas.draw(0,0,klein);

form18.SavePictureDialog1.DefaultExt := GraphicExtension(TBitmap);
form18.SavePictureDialog1.Filter := GraphicFilter(TBitmap);

if form18.SavePictureDialog1.execute
then
begin
klein.SaveToFile(form18.SavePictureDialog1.FileName);
form18.visible:=false;
end;

end;

end;

procedure TForm1.Expotentiel1Click(Sender: TObject);
begin
form19.visible:=true;
end;


procedure Tform1.fexpgraph(pic:Tbitmap);
begin
with kurve do
begin
width:=250;
height:=250;
canvas.draw(0,0,pic);
Transparent := True;
TransParentColor := clwhite;

end;
if form19.checkbox1.checked=false
then
stret:=true
else
stret:=false;

order:=26;
klick;
label3.caption:='Funktion';

end;
    procedure TForm1.Rekursionen1Click(Sender: TObject);
begin
form20.visible:=true;
end;



    procedure Tform1.rektra1(pic:Tbitmap);
    begin
     backspeicher;



bild.width:=300;
puffer.width:=300;
spinedit1.value:=300;

 scrollbar1.max:=0;


bild.height:=300;
puffer.height:=300;
spinedit2.value:=300;

scrollbar2.max:=0;

puffer.canvas.draw(0,0,pic);

varx:=0;
vary:=0;

paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

    Paintbox1.canvas.draw(-varx,-vary,puffer);

    end;






    procedure Tform1.rektra2(pic:Tbitmap);
    begin
order:=22;
fract.width:=300;
fract.height:=300;
fract.canvas.draw(0,0,pic);
Label3.caption:='Fraktal';
klick;

       end;


        procedure Tform1.zoomzoom(zoomfaktor:extended);
        begin

if order<>28
then
begin
klick;
     backspeicher;  
end;                 //seltsamer unlösbarer Fehler

order:=28;
label3.caption:='Zoomen';
 zf:=zoomfaktor;

puffer.width:=round(bild.width*zf);
puffer.height:=round(bild.height*zf);
spinedit1.value:=puffer.width;
spinedit2.value:=puffer.height;


if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
varx:=0;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

scrollbar2.position:=0;
vary:=0;

puffer.canvas.copymode:=cmSrcCopy;
puffer.canvas.CopyRect(rect(0,0,puffer.width,puffer.height),bild.canvas,rect(0,0,bild.width,bild.height));


  statusbar1.Panels[1].text:='Zoom : '+floattostr(zf*100)+' %';

  paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));

Paintbox1.canvas.draw(-varx,-vary,puffer);


        end;

procedure TForm1.N1501Click(Sender: TObject);
begin
zf:=1.5;
zoomzoom(zf);
end;

procedure TForm1.N2001Click(Sender: TObject);
begin
zf:=2;
zoomzoom(zf);
end;

procedure TForm1.N2501Click(Sender: TObject);
begin
zf:=2.5;
zoomzoom(zf);
end;

procedure TForm1.N4001Click(Sender: TObject);
begin
zf:=4;
zoomzoom(zf);
end;

procedure TForm1.N8001Click(Sender: TObject);
begin
zf:=8;
zoomzoom(zf);
end;

procedure TForm1.N10001Click(Sender: TObject);
begin
zf:=10;
zoomzoom(zf);
end;



procedure TForm1.N1001Click(Sender: TObject);
begin
zf:=1;
zoomzoom(zf);
end;

procedure TForm1.N901Click(Sender: TObject);
begin
zf:=0.9;
zoomzoom(zf);
end;

procedure TForm1.N751Click(Sender: TObject);
begin
zf:=0.75;
zoomzoom(zf);
end;

procedure TForm1.N661Click(Sender: TObject);
begin
zf:=0.66;
zoomzoom(zf);
end;

procedure TForm1.N501Click(Sender: TObject);
begin
zf:=0.5;
zoomzoom(zf);
end;

procedure TForm1.N331Click(Sender: TObject);
begin
zf:=0.33;
zoomzoom(zf);
end;

procedure TForm1.N251Click(Sender: TObject);
begin
zf:=0.25;
zoomzoom(zf);
end;

procedure TForm1.N201Click(Sender: TObject);
begin
zf:=0.2;
zoomzoom(zf);
end;

procedure TForm1.N101Click(Sender: TObject);
begin
zf:=0.1;
zoomzoom(zf);
end;

procedure TForm1.genau1Click(Sender: TObject);
begin
form21.visible:=true;
form21.caption:='genaues Zoomen';
form21.label1.caption:='Prozent der Originalgröße';
end;


    procedure Tform1.gzaus;
    begin
    zf:=strtofloat(form21.edit1.text)/100;
   zoomzoom(zf);
    end;


procedure TForm1.nachlinks1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to bild.width-1 do
for e:=0 to bild.height-1 do
begin

for a:=1 to 5 do
begin
rot[a]:=0;
grun[a]:=0;
blau[a]:=0;
end;

f:=bild.canvas.pixels[i,e];
aufschlussel(f,1);

f:=bild.canvas.pixels[i+1,e];
aufschlussel(f,2);

f:=bild.canvas.pixels[i+2,e];
aufschlussel(f,3);

f:=bild.canvas.pixels[i+3,e];
aufschlussel(f,4);

f:=bild.canvas.pixels[i+4,e];
aufschlussel(f,5);



blau[1]:=blau[1]*5+blau[2]*4+blau[3]*3+blau[4]*2+blau[5];
grun[1]:=grun[1]*5+grun[2]*4+grun[3]*3+grun[4]*2+grun[5];
rot[1]:=rot[1]*5+rot[2]*4+rot[3]*3+rot[4]*2+rot[5];



blau[1]:=round(blau[1]/15);
grun[1]:=round(grun[1]/15);
rot[1]:=round(rot[1]/15);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,e]:=f;


end;

    Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.nachoben1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to bild.width-1 do
for e:=0 to bild.height-1 do
begin

for a:=1 to 5 do
begin
rot[a]:=0;
grun[a]:=0;
blau[a]:=0;
end;

f:=bild.canvas.pixels[i,e];
aufschlussel(f,1);

f:=bild.canvas.pixels[i,e+1];
aufschlussel(f,2);

f:=bild.canvas.pixels[i,e+2];
aufschlussel(f,3);

f:=bild.canvas.pixels[i,e+3];
aufschlussel(f,4);

f:=bild.canvas.pixels[i,e+4];
aufschlussel(f,5);



blau[1]:=blau[1]*5+blau[2]*4+blau[3]*3+blau[4]*2+blau[5];
grun[1]:=grun[1]*5+grun[2]*4+grun[3]*3+grun[4]*2+grun[5];
rot[1]:=rot[1]*5+rot[2]*4+rot[3]*3+rot[4]*2+rot[5];



blau[1]:=round(blau[1]/15);
grun[1]:=round(grun[1]/15);
rot[1]:=round(rot[1]/15);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,e]:=f;


end;

    Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.nachrechts1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to bild.width-1 do
for e:=0 to bild.height-1 do
begin

for a:=1 to 5 do
begin
rot[a]:=0;
grun[a]:=0;
blau[a]:=0;
end;

f:=bild.canvas.pixels[i,e];
aufschlussel(f,1);

f:=bild.canvas.pixels[i-1,e];
aufschlussel(f,2);

f:=bild.canvas.pixels[i-2,e];
aufschlussel(f,3);

f:=bild.canvas.pixels[i-3,e];
aufschlussel(f,4);

f:=bild.canvas.pixels[i-4,e];
aufschlussel(f,5);



blau[1]:=blau[1]*5+blau[2]*4+blau[3]*3+blau[4]*2+blau[5];
grun[1]:=grun[1]*5+grun[2]*4+grun[3]*3+grun[4]*2+grun[5];
rot[1]:=rot[1]*5+rot[2]*4+rot[3]*3+rot[4]*2+rot[5];



blau[1]:=round(blau[1]/15);
grun[1]:=round(grun[1]/15);
rot[1]:=round(rot[1]/15);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,e]:=f;


end;

    Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.nachunten1Click(Sender: TObject);
begin
backspeicher;

for i:=0 to bild.width-1 do
for e:=0 to bild.height-1 do
begin

for a:=1 to 5 do
begin
rot[a]:=0;
grun[a]:=0;
blau[a]:=0;
end;

f:=bild.canvas.pixels[i,e];
aufschlussel(f,1);

f:=bild.canvas.pixels[i,e-1];
aufschlussel(f,2);

f:=bild.canvas.pixels[i,e-2];
aufschlussel(f,3);

f:=bild.canvas.pixels[i,e-3];
aufschlussel(f,4);

f:=bild.canvas.pixels[i,e-4];
aufschlussel(f,5);



blau[1]:=blau[1]*5+blau[2]*4+blau[3]*3+blau[4]*2+blau[5];
grun[1]:=grun[1]*5+grun[2]*4+grun[3]*3+grun[4]*2+grun[5];
rot[1]:=rot[1]*5+rot[2]*4+rot[3]*3+rot[4]*2+rot[5];



blau[1]:=round(blau[1]/15);
grun[1]:=round(grun[1]/15);
rot[1]:=round(rot[1]/15);

f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,e]:=f;


end;

    Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.test1Click(Sender: TObject);
begin
backspeicher;

for i:=1 to bild.width-2 do
for e:=1 to bild.height-2 do
begin

for a:=1 to 9 do
begin
rot[a]:=0;
end;

rot[1]:=bild.canvas.pixels[i,e];


rot[2]:=bild.canvas.pixels[i-1,e];

rot[3]:=bild.canvas.pixels[i,e-1];

rot[4]:=bild.canvas.pixels[i-1,e-1];

rot[5]:=bild.canvas.pixels[i+1,e];

rot[6]:=bild.canvas.pixels[i,e+1];

rot[7]:=bild.canvas.pixels[i+1,e+1];

rot[8]:=bild.canvas.pixels[i+1,e-1];

rot[9]:=bild.canvas.pixels[i-1,e+1];





for a:=2 to 9 do
begin
rot[1]:=rot[1]+rot[a];
end;



rot[1]:=round(rot[1]/9);

puffer.canvas.pixels[i,e]:=rot[1];


end;

    Paintbox1.canvas.draw(-varx,-vary,puffer);

end;


    procedure Tform1.rotier(winkel:extended);
    var dx,dy:integer;
    dia,be:extended;
    begin
backspeicher;

mmx:=bild.width div 2;
mmy:=bild.height div 2;

dia:=sqrt(puffer.width*puffer.width/4+puffer.height*puffer.height/4);
be:=arccos(puffer.width/(2*dia));

if ((winkel>=0) and (winkel<=90)) or ((winkel>=180) and (winkel<=270))
then
begin
puffer.width:=abs(round(dia*cos((winkel/180*PI)-be))*2);
puffer.height:=abs(round(dia*sin((winkel/180*PI)+be))*2);
end
else
begin
puffer.height:=abs(round(dia*sin((winkel/180*PI)-be))*2);
puffer.width:=abs(round(dia*cos((winkel/180*PI)+be))*2);
end;

mx:=puffer.Width div 2;
my:=puffer.height div 2;




for i:=0 to puffer.width-1 do
for e:=0 to puffer.height-1 do
begin
dx:=i-mx;
dy:=e-my;
r:=sqrt(dx*dx+dy*dy);
alpha:=arctan2(dy,dx);
alpha:=alpha-(winkel/180*PI);
dx:=round(r*cos(alpha));
dy:=round(r*sin(alpha));
lx:=mmx+dx;
ly:=mmy+dy;
puffer.canvas.pixels[i,e]:=bild.canvas.pixels[lx,ly];

end;

spinedit1.value:=puffer.Width;
spinedit2.value:=puffer.height;

if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
varx:=0;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

scrollbar2.position:=0;
vary:=0;


     paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));


        Paintbox1.canvas.draw(-varx,-vary,puffer);
    end;


procedure TForm1.genauerWinkel1Click(Sender: TObject);
begin

backspeicher;
 zc:=true;
form21.visible:=true;
form21.caption:='genauer Winkel';
form21.label1.caption:='Winkel in Altgrad';
end;





    procedure Tform1.zoomnormal;
    begin
if zf<>1
then
begin
zf:=1;
puffer.width:=bild.width;
puffer.height:=bild.height;

spinedit1.value:=puffer.width;
spinedit2.value:=puffer.height;


if spinedit1.value-paintbox1.width>=0
then
scrollbar1.max:=spinedit1.value-paintbox1.width
else
scrollbar1.max:=0;

scrollbar1.position:=0;
varx:=0;

if spinedit2.value-paintbox1.height>=0
then
scrollbar2.max:=spinedit2.value-paintbox1.height
else
scrollbar2.max:=0;

scrollbar2.position:=0;
vary:=0;

puffer.canvas.draw(0,0,bild);

  statusbar1.Panels[1].text:='Zoom : '+floattostr(zf*100)+' %';

  paintbox1.Canvas.Brush.color:=clsilver;
paintbox1.Canvas.pen.color:=clsilver;
paintbox1.canvas.fillrect(rect(0,0,paintbox1.width,paintbox1.height));


end;
    end;
procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form22.visible:=true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form22.visible:=true;
end;

procedure TForm1.Autodreh1Click(Sender: TObject);
begin
form23.visible:=true;
end;

procedure Tform1.adreh;
var stw,enw,wsch,beta,dia,be:extended;
dx,dy,cont,cm:integer;
pfad:string;
begin
backspeicher;

 stw:=strtofloat(form23.Edit1.text);
 enw:=strtofloat(form23.Edit2.text);
 wsch:=strtofloat(form23.Edit3.text);
 cm:=trunc((enw-stw)/wsch)+1;
 cont:=0;
 beta:=stw;
pfad:=form23.DirectoryListBox1.Directory;

if Length(pfad)>3
then
Pfad:=pfad+'\';

pfad:=pfad+form23.Edit4.text;
mkdir(pfad);
 repeat
dia:=sqrt(bild.width*bild.width/4+bild.height*bild.height/4);
be:=arccos(bild.width/(2*dia));
  inc(cont);
if ((beta>=0) and (beta<=90)) or ((beta>=180) and (beta<=270))
then
begin
fract.width:=abs(round(dia*cos((beta/180*PI)-be))*2);
fract.height:=abs(round(dia*sin((beta/180*PI)+be))*2);
end
else
begin
fract.height:=abs(round(dia*sin((beta/180*PI)-be))*2);
fract.width:=abs(round(dia*cos((beta/180*PI)+be))*2);
end;


mx:=fract.Width div 2;
my:=fract.height div 2;
                                          
mmx:=bild.width div 2;
mmy:=bild.height div 2;


for i:=0 to fract.width-1 do
for e:=0 to fract.height-1 do
begin
dx:=i-mx;
dy:=e-my;
r:=sqrt(dx*dx+dy*dy);
alpha:=arctan2(dy,dx);
alpha:=alpha-(beta/180*PI);
dx:=round(r*cos(alpha));
dy:=round(r*sin(alpha));
lx:=mmx+dx;
ly:=mmy+dy;
fract.canvas.pixels[i,e]:=bild.canvas.pixels[lx,ly];

end;

fract.savetofile(pfad+'\'+inttostr(round(beta*100))+'.bmp');

 beta:=beta+wsch;

 until ((beta>=enw) and (beta<enw+wsch)) or (cont>=cm);



end;

procedure TForm1.Helligkeitsnderung1Click(Sender: TObject);
begin
form27.visible:=true;
end;

    procedure Tform1.hellander;
    var ro,gr,bl:extended;
    begin
backspeicher;


for i:=0 to puffer.width-1 do
for e:=0 to puffer.height-1 do
begin
f:=bild.Canvas.Pixels[i,e];
aufschlussel(f,1);

if form27.spinedit1.value>0
then
begin
ro:=(255-rot[1])/255;
gr:=(255-grun[1])/255;
bl:=(255-blau[1])/255;

rot[2]:=round(rot[1]+(form27.spinedit1.value*ro));
grun[2]:=round(grun[1]+(form27.spinedit1.value*gr));
blau[2]:=round(blau[1]+(form27.spinedit1.value*bl));

if rot[2]>255
then
rot[2]:=255;

if grun[2]>255
then
grun[2]:=255;

if blau[2]>255
then
blau[2]:=255;

end
else
begin
ro:=(rot[1])/255;
gr:=(grun[1])/255;
bl:=(blau[1])/255;

rot[2]:=round(rot[1]+(form27.spinedit1.value*ro));
grun[2]:=round(grun[1]+(form27.spinedit1.value*gr));
blau[2]:=round(blau[1]+(form27.spinedit1.value*bl));

if rot[2]<0
then
rot[2]:=0;

if grun[2]<0
then
grun[2]:=0;

if blau[2]<0
then
blau[2]:=0;

end;




 puffer.canvas.pixels[i,e]:=rot[2] + (grun[2] shl 8 )+ (blau[2] shl 16);
end;


    end;






procedure TForm1.Vollbild1Click(Sender: TObject);
 var outputWidth,outputHeight,AspectRatio:extended;

begin
backspeicher;
form30.visible:=true;
form30.width:=screen.width;
form30.height:=screen.height;
form30.Canvas.pen.color:=clblack;
form30.Canvas.brush.color:=clblack;
form30.Canvas.fillrect(rect(0,0,form30.width,form30.height));


 OutputWidth := bild.Width;
    OutputHeight := bild.Height;

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



form30.Canvas.stretchdraw(rect(0,0,round(OutputWidth),round(OutputHeight)),puffer);
end;


    procedure Tform1.bez1(x,y:integer);
    begin
    case bzz of
    0:begin
    backspeicher;
    p[0].x:=x;
    p[0].y:=y;
     puffer.canvas.pen.color:=vfarb;
     puffer.canvas.Pen.width:=dick;
     bzz:=1;
     end;
     2:begin
puffer.canvas.draw(0,0,bild);
p[2].x:=x;
p[2].y:=y;
p[1].x:=x;
p[1].y:=y;
polybezier(puffer.canvas.handle,p,4);
bzz:=3;
    end;
3:begin
puffer.canvas.draw(0,0,bild);
p[2].x:=x;
p[2].y:=y;
polybezier(puffer.canvas.handle,p,4);
bzz:=0;
end;
     end;

    end;

    procedure Tform1.bez2(x,y:integer);
        begin
        case bzz of
        1:begin
puffer.canvas.draw(0,0,bild);
puffer.canvas.moveto(p[0].x+varx,p[0].y+vary);
puffer.canvas.lineto(x,y);
end;
2:begin
puffer.Canvas.Draw(0,0,bild);
p[2].x:=x;
p[2].y:=y;
p[1].x:=x;
p[1].y:=y;
polybezier(puffer.canvas.handle,p,4);
end;
3:begin
puffer.Canvas.Draw(0,0,bild);
p[2].x:=x;
p[2].y:=y;
polybezier(puffer.canvas.handle,p,4);
end;
end;
    end;

    procedure Tform1.bez3(x,y:integer);
        begin
        if bzz=1
        then
        begin
        puffer.canvas.draw(0,0,bild);
puffer.canvas.moveto(p[0].x+varx,p[0].y+vary);
puffer.canvas.lineto(x,y);
 p[3].x:=x;
 p[3].y:=y;
 bzz:=2;
     

        end;

    end;




procedure TForm1.Unschrfemaskierung1Click(Sender: TObject);
var  sr,sb,sg:integer;
begin
   backspeicher;









for i:=1 to bild.width-2 do
begin
f:=bild.canvas.pixels[i,0];
aufschlussel(f,1);

sr:=rot[1];
sg:=grun[1];
sb:=blau[1];

f:=bild.canvas.pixels[i,1];
aufschlussel(f,2);

f:=bild.canvas.pixels[i-1,0];
aufschlussel(f,3);

f:=bild.canvas.pixels[i+1,0];
aufschlussel(f,4);

f:=bild.canvas.pixels[i-1,1];
aufschlussel(f,5);

f:=bild.canvas.pixels[i+1,1];
aufschlussel(f,6);

for a:=2 to 6 do
begin
blau[1]:=blau[1]+round(blau[a]/3);
grun[1]:=grun[1]+round(grun[a]/3);
rot[1]:=rot[1]+round(rot[a]/3);
end;


if round(blau[1]/(2+2/3))<>sb
then
blau[1]:=round((255-(blau[1]/(2+2/3))+sb)/2)
else
blau[1]:=sb;

if round(grun[1]/(2+2/3))<>sg
then
grun[1]:=round((255-(grun[1]/(2+2/3))+sg)/2)
else
grun[1]:=sg;

if round(rot[1]/(2+2/3))<>sr
then
rot[1]:=round((255-(rot[1]/(2+2/3))+sr)/2)
else
rot[1]:=sr;


f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,0]:=f;






f:=bild.canvas.pixels[i,bild.height-1];
aufschlussel(f,1);
sr:=rot[1];
sg:=grun[1];
sb:=blau[1];

f:=bild.canvas.pixels[i,bild.height-2];
aufschlussel(f,2);

f:=bild.canvas.pixels[i-1,bild.height-1];
aufschlussel(f,3);

f:=bild.canvas.pixels[i+1,bild.height-1];
aufschlussel(f,4);

f:=bild.canvas.pixels[i-1,bild.height-2];
aufschlussel(f,5);

f:=bild.canvas.pixels[i+1,bild.height-2];
aufschlussel(f,6);

for a:=2 to 6 do
begin
blau[1]:=blau[1]+round(blau[a]/3);
grun[1]:=grun[1]+round(grun[a]/3);
rot[1]:=rot[1]+round(rot[a]/3);
end;


if round(blau[1]/(2+2/3))<>sb
then
blau[1]:=round((255-(blau[1]/(2+2/3))+sb)/2)
else
blau[1]:=sb;

if round(grun[1]/(2+2/3))<>sg
then
grun[1]:=round((255-(grun[1]/(2+2/3))+sg)/2)
else
grun[1]:=sg;

if round(rot[1]/(2+2/3))<>sr
then
rot[1]:=round((255-(rot[1]/(2+2/3))+sr)/2)
else
rot[1]:=sr;



f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,bild.height-1]:=f;
end;







for e:=1 to bild.height-2 do
begin
f:=bild.canvas.pixels[0,e];
aufschlussel(f,1);
sr:=rot[1];
sg:=grun[1];
sb:=blau[1];

f:=bild.canvas.pixels[1,e];
aufschlussel(f,2);

f:=bild.canvas.pixels[0,e-1];
aufschlussel(f,3);

f:=bild.canvas.pixels[0,e+1];
aufschlussel(f,4);

f:=bild.canvas.pixels[1,e-1];
aufschlussel(f,5);

f:=bild.canvas.pixels[1,e+1];
aufschlussel(f,6);

for a:=2 to 6 do
begin
blau[1]:=blau[1]+round(blau[a]/3);
grun[1]:=grun[1]+round(grun[a]/3);
rot[1]:=rot[1]+round(rot[a]/3);
end;


if round(blau[1]/(2+2/3))<>sb
then
blau[1]:=round((255-(blau[1]/(2+2/3))+sb)/2)
else
blau[1]:=sb;

if round(grun[1]/(2+2/3))<>sg
then
grun[1]:=round((255-(grun[1]/(2+2/3))+sg)/2)
else
grun[1]:=sg;

if round(rot[1]/(2+2/3))<>sr
then
rot[1]:=round((255-(rot[1]/(2+2/3))+sr)/2)
else
rot[1]:=sr;



f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[0,e]:=f;






f:=bild.canvas.pixels[bild.height-1,e];
aufschlussel(f,1);
sr:=rot[1];
sg:=grun[1];
sb:=blau[1];

f:=bild.canvas.pixels[bild.height-2,e];
aufschlussel(f,2);

f:=bild.canvas.pixels[bild.height-1,e-1];
aufschlussel(f,3);

f:=bild.canvas.pixels[bild.height-1,e+1];
aufschlussel(f,4);

f:=bild.canvas.pixels[bild.height-2,e-1];
aufschlussel(f,5);

f:=bild.canvas.pixels[bild.height-2,e+1];
aufschlussel(f,6);

for a:=2 to 6 do
begin
blau[1]:=blau[1]+round(blau[a]/3);
grun[1]:=grun[1]+round(grun[a]/3);
rot[1]:=rot[1]+round(rot[a]/3);
end;


if round(blau[1]/(2+2/3))<>sb
then
blau[1]:=round((255-(blau[1]/(2+2/3))+sb)/2)
else
blau[1]:=sb;

if round(grun[1]/(2+2/3))<>sg
then
grun[1]:=round((255-(grun[1]/(2+2/3))+sg)/2)
else
grun[1]:=sg;

if round(rot[1]/(2+2/3))<>sr
then
rot[1]:=round((255-(rot[1]/(2+2/3))+sr)/2)
else
rot[1]:=sr;


f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[bild.width-1,e]:=f;
end;



for i:=1 to bild.width-2 do
for e:=1 to bild.height-2 do
begin
z:=1;


f:=bild.canvas.pixels[i,e];
aufschlussel(f,z);
sr:=rot[1];
sg:=grun[1];
sb:=blau[1];
     {
if i>0
then
begin }
inc(z);
f:=bild.canvas.pixels[i-1,e];
aufschlussel(f,z); {
end;

if e>0
then
begin   }
inc(z);
f:=bild.canvas.pixels[i,e-1];
aufschlussel(f,z); {
end;

if (i>0) and (e>0)
then
begin     }
inc(z);
f:=bild.canvas.pixels[i-1,e-1];
aufschlussel(f,z);  {
end;

if i<bild.width-1
then
begin   }
inc(z);
f:=bild.canvas.pixels[i+1,e];
aufschlussel(f,z);  {
end;


if e<bild.height-1
then
begin     }
inc(z);
f:=bild.canvas.pixels[i,e+1];
aufschlussel(f,z);  {
end;

if (i<bild.width-1) and (e<bild.height-1)
then
begin  }
inc(z);
f:=bild.canvas.pixels[i+1,e+1];
aufschlussel(f,z);  {
end;

if (i<bild.width-1) and (e>0)
then
begin   }
inc(z);
f:=bild.canvas.pixels[i+1,e-1];
aufschlussel(f,z);   {
end;

if (i>0) and (e<bild.height-1)
then
begin    }
inc(z);
f:=bild.canvas.pixels[i-1,e+1];
aufschlussel(f,z);




for a:=2 to 9 do
begin
blau[1]:=blau[1]+round(blau[a]/3);
grun[1]:=grun[1]+round(grun[a]/3);
rot[1]:=rot[1]+round(rot[a]/3);
end;


if round(blau[1]/(3+2/3))<>sb
then
blau[1]:=round((255-(blau[1]/(3+2/3))+sb)/2)
else
blau[1]:=sb;

if round(grun[1]/(3+2/3))<>sg
then
grun[1]:=round((255-(grun[1]/(3+2/3))+sg)/2)
else
grun[1]:=sg;

if round(rot[1]/(3+2/3))<>sr
then
rot[1]:=round((255-(rot[1]/(3+2/3))+sr)/2)
else
rot[1]:=sr;




f:= (blau[1] shl 16)+ (grun[1] shl 8 )+ (rot[1]) ;
puffer.canvas.pixels[i,e]:=f;


end;

    Paintbox1.canvas.draw(-varx,-vary,puffer);

end;

procedure TForm1.mitanderemBildkombinieren1Click(Sender: TObject);
begin
form37.visible:=true;
end;

procedure Tform1.kombibilder;
begin
if form37.Label1.caption<>'--- noch kein Bild geladen ---'
then
begin
backspeicher;

if form37.radiobutton2.checked=true
then
begin
klein.LoadFromFile(form37.Label1.caption);
kombpic.width:=spinedit1.value;
kombpic.height:=spinedit2.value;
kombpic.Canvas.stretchdraw(rect(0,0,spinedit1.value,spinedit2.value),klein);
end
else
kombpic.LoadFromFile(form37.Label1.caption);

if form37.radiobutton3.checked=true
then
begin
for i:=0 to kombpic.width do
for e:=0 to kombpic.height do
begin
f:=bild.Canvas.Pixels[i,e];
aufschlussel(f,1);

f:=kombpic.canvas.pixels[i,e];
aufschlussel(f,2);

rot[1]:=round((rot[1]*(100-form37.SpinEdit1.value)+rot[2]*form37.SpinEdit1.value)/200);
grun[1]:=round((grun[1]*(100-form37.SpinEdit1.value)+grun[2]*form37.SpinEdit1.value)/200);
blau[1]:=round((blau[1]*(100-form37.SpinEdit1.value)+blau[2]*form37.SpinEdit1.value)/200);

f:=rot[1] + grun[1] shl 8 + blau[1] shl 16;
 puffer.Canvas.Pixels[i,e]:=f;
end;

end
else
if form37.radiobutton4.checked=true
then
begin
for i:=0 to trunc(kombpic.width/4) do
for e:=0 to trunc(kombpic.height/4) do
begin
if form37.panel1.color=clred
then
puffer.canvas.Pixels[i*4,e*4]:=kombpic.canvas.pixels[i*4,e*4];

if form37.panel2.color=clred
then
puffer.canvas.Pixels[i*4+1,e*4]:=kombpic.canvas.pixels[i*4+1,e*4];

if form37.panel3.color=clred
then
puffer.canvas.Pixels[i*4+2,e*4]:=kombpic.canvas.pixels[i*4+2,e*4];

if form37.panel4.color=clred
then
puffer.canvas.Pixels[i*4+3,e*4]:=kombpic.canvas.pixels[i*4+3,e*4] ;


if form37.panel5.color=clred
then
puffer.canvas.Pixels[i*4,e*4+1]:=kombpic.canvas.pixels[i*4,e*4+1]  ;

if form37.panel6.color=clred
then
puffer.canvas.Pixels[i*4+1,e*4+1]:=kombpic.canvas.pixels[i*4+1,e*4+1]  ;

if form37.panel7.color=clred
then
puffer.canvas.Pixels[i*4+2,e*4+1]:=kombpic.canvas.pixels[i*4+2,e*4+1]  ;

if form37.panel8.color=clred
then
puffer.canvas.Pixels[i*4+3,e*4+1]:=kombpic.canvas.pixels[i*4+3,e*4+1]   ;


if form37.panel9.color=clred
then
puffer.canvas.Pixels[i*4,e*4+2]:=kombpic.canvas.pixels[i*4,e*4+2]     ;

if form37.panel10.color=clred
then
puffer.canvas.Pixels[i*4+1,e*4+2]:=kombpic.canvas.pixels[i*4+1,e*4+2]  ;

if form37.panel11.color=clred
then
puffer.canvas.Pixels[i*4+2,e*4+2]:=kombpic.canvas.pixels[i*4+2,e*4+2]  ;

if form37.panel12.color=clred
then
puffer.canvas.Pixels[i*4+3,e*4+2]:=kombpic.canvas.pixels[i*4+3,e*4+2]  ;


if form37.panel13.color=clred
then
puffer.canvas.Pixels[i*4,e*4+3]:=kombpic.canvas.pixels[i*4,e*4+3]     ;

if form37.panel14.color=clred
then
puffer.canvas.Pixels[i*4+1,e*4+3]:=kombpic.canvas.pixels[i*4+1,e*4+3]   ;

if form37.panel15.color=clred
then
puffer.canvas.Pixels[i*4+2,e*4+3]:=kombpic.canvas.pixels[i*4+2,e*4+3]  ;

if form37.panel16.color=clred
then
puffer.canvas.Pixels[i*4+3,e*4+3]:=kombpic.canvas.pixels[i*4+3,e*4+3]     ;


end;

end;



end;

end;


procedure TForm1.Hilfe3Click(Sender: TObject);
begin
form39.starTthema(1);
form39.visible:=true;
end;

procedure TForm1.Info1Click(Sender: TObject);
begin
form40.visible:=true;
end;

end.



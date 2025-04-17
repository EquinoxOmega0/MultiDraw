unit picwav;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, MPlayer, ComCtrls, OleCtrls, chartfx3, StdCtrls, Buttons,
  Spin, bildein, neupwd, gleichgr, editgro, mainhilfe, pwneud;

type
  TForm24 = class(TForm)
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    Bilder1: TMenuItem;
    Sound1: TMenuItem;
    Hilfe1: TMenuItem;
    Neu1: TMenuItem;
    ffnen1: TMenuItem;
    Speichern1: TMenuItem;
    Speichernunter1: TMenuItem;
    Aktualisieren1: TMenuItem;
    Beenden1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ColorDialog1: TColorDialog;
    Timer1: TTimer;
    Panel1: TPanel;
    MediaPlayer1: TMediaPlayer;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    Abspielen1: TMenuItem;
    Stoppen1: TMenuItem;
    Zurck1: TMenuItem;
    vor1: TMenuItem;
    Zurck2: TMenuItem;
    Durchlaufen1: TMenuItem;
    PaintBox1: TPaintBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    Shape1: TShape;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit2: TSpinEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit3: TSpinEdit;
    Label11: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button7: TButton;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Bearbeiten1: TMenuItem;
    Rckgngig1: TMenuItem;
    BitBtn11: TBitBtn;
    FontDialog1: TFontDialog;
    AlleaufgleicheGre1: TMenuItem;
    GredesderzeitigenBildesndern1: TMenuItem;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    MediaPlayer2: TMediaPlayer;
    Button8: TButton;
    Image1: TImage;
    Button13: TButton;
    Timer2: TTimer;
    SpinEdit4: TSpinEdit;
    Timer3: TTimer;
    EditierungdesBildesspeichern1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Beenden1Click(Sender: TObject);
    procedure ffnen1Click(Sender: TObject);
    procedure Speichern1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Speichernunter1Click(Sender: TObject);
    procedure Aktualisieren1Click(Sender: TObject);
    procedure MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
      var DoDefault: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure MPanzeige;
    procedure neu;
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
      procedure klick;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure farbh(x,y:integer);
    procedure lin1(x,y:integer);
    procedure lin2(x,y:integer);
    procedure lin3(x,y:integer);
    procedure pin1(x,y:integer);
    procedure pin2(x,y:integer);
    procedure full(x,y:integer);
    procedure schreib(x,y:integer);
    procedure BitBtn11Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Rckgngig1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bildein(dn:string);
    procedure Button2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ListBox2Click(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure vor1Click(Sender: TObject);
    procedure Zurck2Click(Sender: TObject);
    procedure Durchlaufen1Click(Sender: TObject);
    procedure pwdneu;
    procedure pwdauf(dname:string);
    procedure pwdsave;
    procedure AlleaufgleicheGre1Click(Sender: TObject);
    procedure abspeichern;
    procedure GredesderzeitigenBildesndern1Click(Sender: TObject);
    procedure changegross;
    procedure EditierungdesBildesspeichern1Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Abspielen1Click(Sender: TObject);
    procedure Stoppen1Click(Sender: TObject);
    procedure Zurck1Click(Sender: TObject);
    procedure Hilfe1Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Neu1Click(Sender: TObject);
    procedure ndatei;

  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;
  type   TpwdData=record
  bilderanzahl,soundanzahl,bpms:integer;
  audiolang:extended;
  end;


var
  Form24: TForm24;
  dateiname,s:string;
  schrift:Tfont;
  l:longint;
  P,d,order,lx,ly,i,e:integer;
  bild,puf,laufbild:Tbitmap;
  mal,t:boolean;
  litem:Tlistitem;
  poi:^integer;
  geslang:extended;
  banz,sanz:integer;
  gestartet:boolean;
  pwddatei1:file of TpwdData;
  pwddata1:TpwdData;

implementation

uses controll;
{$R *.DFM}

procedure TForm24.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form22.visible:=true;
timer2.enabled:=false;
timer3.enabled:=false;
end;

procedure TForm24.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form22.visible:=true;
timer2.enabled:=false;
timer3.enabled:=false;
end;

procedure TForm24.Beenden1Click(Sender: TObject);
begin
if p=1
then
mediaplayer1.stop;
form24.visible:=false;
form22.visible:=true;
timer2.enabled:=false;
timer3.enabled:=false;
end;

procedure TForm24.ffnen1Click(Sender: TObject);

begin

if button13.caption='Modus  PWD ist ein'
then
begin
if MessageDlg('Möchten Sie die Änderungen in der PWD-Datei speichern?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    pwdsave;
  end;


button13.caption:='Modus  PWD ist aus'  ;
panel3.enabled:=false;
groupbox2.enabled:=false;
groupbox3.enabled:=false;
end;


opendialog1.filter:='brauchbare Dateien|*.jpg;*.bmp;*.avi;*.wav;*.mid;*.pwd';

if opendialog1.execute
then
begin
dateiname:=LowerCase(opendialog1.filename);
form24.caption:='Picwave - '+dateiname;
neu;


if (ExtractFileExt(dateiname))='.avi'
then
begin

With MediaPlayer1 do begin
     Filename := dateiname;
     DeviceType := dtAVIVideo;
     Open;

end;

l:=MediaPlayer1.length;
Trackbar1.position:=0;
trackbar1.min:=0;
trackbar1.max:=l;
p:=1;
d:=20;
mpanzeige;
end
else
if  (ExtractFileExt(dateiname))='.wav'
then
begin
With MediaPlayer1 do begin
     Filename := dateiname;
     DeviceType := dtWaveaudio;
     Open;

end;
l:=MediaPlayer1.length;
Trackbar1.position:=0;
trackbar1.min:=0;
trackbar1.max:=l;
p:=1;
d:=1000;
mpanzeige;

end
else
if (ExtractFileExt(dateiname))='.bmp'
then
begin
paintbox1.visible:=true;
bild.loadfromfile(dateiname);
puf.loadfromfile(dateiname);
Paintbox1.width:=puf.width;
paintbox1.height:=puf.height;
paintbox1.Canvas.draw(0,0,bild);
p:=2;
end

else

if (ExtractFileExt(dateiname))='.jpg'
then
begin
image1.picture.LoadFromFile(dateiname);
paintbox1.visible:=true;
bild.width:=image1.picture.width;
bild.height:=image1.picture.height;
puf.width:=image1.picture.width;
puf.height:=image1.picture.height;
bild.canvas.draw(0,0,image1.picture.graphic);
puf.canvas.draw(0,0,image1.picture.graphic);

Paintbox1.width:=puf.width;
paintbox1.height:=puf.height;

paintbox1.Canvas.draw(0,0,bild);
p:=2;
end

else

if (ExtractFileExt(dateiname))='.mid'
then
begin
With MediaPlayer1 do begin
     Filename := dateiname;
     DeviceType := dtAutoSelect;
     Open;

end;
l:=MediaPlayer1.length;
Trackbar1.position:=0;
trackbar1.min:=0;
trackbar1.max:=l;
p:=1;
d:=5;
mpanzeige;
end
else
if (ExtractFileExt(dateiname))='.pwd'
then
begin
button13.caption:='Modus  PWD ist ein';
panel3.enabled:=true;
groupbox2.enabled:=true;
groupbox3.enabled:=true;
pwdauf(dateiname);
end
else
begin
MessageDlg('Dieses Programm ist nicht für diesen Dateityp ausgelegt!', mtInformation,
      [mbOk], 0);
form24.caption:='Picwave - unbennant';
end;


end;

end;

procedure TForm24.Speichern1Click(Sender: TObject);
begin
savedialog1.filter:='Bitmaps|*.bmp|JPG-Bilder|*.jpg|Wave-Dateien|*.wav|Midi-Datein|*.mid|PWD-Dateien|*.pwd|';



if dateiname='unbennant'
then
begin
abspeichern;
end
else
begin
form24.caption:='Picwave - '+dateiname;


if  (ExtractFileExt(dateiname))='.wav'
then
begin

MediaPlayer1.Filename := dateiname;
MediaPlayer1.save;

end
else
if (ExtractFileExt(dateiname))='.bmp'
then
begin
bild.canvas.draw(0,0,puf);
bild.SaveToFile(dateiname);
end

else

if (ExtractFileExt(dateiname))='.jpg'
then
begin
bild.canvas.draw(0,0,puf);
image1.width:=bild.width;
image1.height:=bild.height;
image1.Canvas.Draw(0,0,bild);
image1.picture.SaveToFile(dateiname);
end

else

if (ExtractFileExt(dateiname))='.mid'
then
begin

MediaPlayer1.Filename := dateiname;
MediaPlayer1.save;

end
else
if (ExtractFileExt(dateiname))='.pwd'
then
begin
pwdsave;
end;

end;



end;

procedure TForm24.FormCreate(Sender: TObject);
begin
gestartet:=false;
t:=false;
mal:=false;
bild:=Tbitmap.create;
puf:=Tbitmap.create;
laufbild:=Tbitmap.create;
order:=0;
d:=1000;
l:=0;
p:=0;
dateiname:='unbennant';
schrift:=Paintbox1.Font;
geslang:=0;
end;

procedure TForm24.Speichernunter1Click(Sender: TObject);
begin
savedialog1.filter:='Bitmaps|*.bmp|JPG-Bilder|*.jpg|Avi-Datein|*.avi|Wave-Dateien|*.wav|Midi-Datein|*.mid|PWD-Dateien|*.pwd|';

abspeichern;

end;

procedure TForm24.Aktualisieren1Click(Sender: TObject);
begin
if dateiname<>'unbennant'
then
begin

end;
end;

procedure TForm24.MediaPlayer1Click(Sender: TObject; Button: TMPBtnType;
  var DoDefault: Boolean);
begin
if Button=btPlay
then
mediaplayer1.play;
end;

procedure TForm24.Timer1Timer(Sender: TObject);
begin
case p of
1:begin

trackbar1.position:=MediaPlayer1.position;
label2.caption:='Position : '+floattostr(MediaPlayer1.position/d)+' sec';
end;
2:begin  {
paintbox1.Canvas.draw(0,0,puf);    }
end;
end;




end;

procedure TForm24.TrackBar1Change(Sender: TObject);
begin

l:=trackbar1.position;
MediaPlayer1.position:=l;
end;


    procedure Tform24.MPanzeige;
    begin
    label2.caption:='Position : '+floattostr(MediaPlayer1.position/d)+' sec';
    label1.caption:='Länge : '+floattostr(l/d)+' sec';
    end;

    procedure Tform24.neu;
    begin
 
    paintbox1.visible:=false;
    image1.visible:=false;
    p:=0;

    end;

procedure TForm24.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
colordialog1.color:=shape1.brush.color;
if colordialog1.execute
then
shape1.brush.color:=colordialog1.color;
end;

procedure TForm24.PaintBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 case order of
 1:pin1(x,y);
 2:lin1(x,y);
 3:full(x,y);
 4:farbh(x,y);
 5:schreib(x,y);
 end;
 if paintbox1.visible=true
 then
  paintbox1.canvas.draw(0,0,puf);
      mal:=true;
end;

procedure TForm24.PaintBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 case order of
 1:pin2(x,y);
 2:lin2(x,y);
  end;
   if paintbox1.visible=true
 then
  paintbox1.canvas.draw(0,0,puf);
end;

procedure TForm24.PaintBox1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 case order of
 2:lin3(x,y);
  end;
   if paintbox1.visible=true
 then
 paintbox1.canvas.draw(0,0,puf);
     mal:=false;
end;

procedure Tform24.klick;
begin
BitBtn1.enabled:=true;
BitBtn2.enabled:=true;
BitBtn3.enabled:=true;
BitBtn4.enabled:=true;
BitBtn5.enabled:=true;
mal:=false;
end;

procedure TForm24.BitBtn1Click(Sender: TObject);
begin
order:=1;
klick;
bitbtn1.enabled:=false;
end;

procedure TForm24.BitBtn3Click(Sender: TObject);
begin
order:=2;
klick;
bitbtn3.enabled:=false;
end;

procedure TForm24.BitBtn4Click(Sender: TObject);
begin
order:=3;
klick;
bitbtn4.enabled:=false;
end;

procedure TForm24.BitBtn5Click(Sender: TObject);
begin
order:=4;
klick;
bitbtn5.enabled:=false;
end;

procedure TForm24.BitBtn2Click(Sender: TObject);
begin
t:=false;
order:=5;
klick;
bitbtn2.enabled:=false;
end;


    procedure Tform24.farbh(x,y:integer);
    begin
    bild.canvas.draw(0,0,puf);
    shape1.Brush.color:=puf.canvas.pixels[x,y];
    end;



    procedure Tform24.lin1(x,y:integer);
    begin
    bild.canvas.draw(0,0,puf);
    lx:=x;
    ly:=y;
    puf.canvas.pen.color:=shape1.brush.color;
    puf.canvas.pen.width:=spinedit1.value;

    end;


    procedure Tform24.lin2(x,y:integer);
    begin
    if mal=true
    then
    begin
    puf.canvas.draw(0,0,bild);
puf.canvas.moveto(lx,ly);
puf.canvas.lineto(x,y);
end;
    end;


    procedure Tform24.lin3(x,y:integer);
    begin
    puf.canvas.draw(0,0,bild);
puf.canvas.moveto(lx,ly);
puf.canvas.lineto(x,y);

    end;



    procedure Tform24.pin1(x,y:integer);
    begin
    bild.canvas.draw(0,0,puf);

    puf.Canvas.pen.width:=1;

    puf.canvas.pen.color:=shape1.brush.color;
      puf.canvas.brush.color:=shape1.brush.color;
    if spinedit1.value>1
    then
    puf.canvas.Ellipse(x-trunc(spinedit1.value / 2),y-trunc(spinedit1.value / 2),x+trunc(spinedit1.value / 2)+1,y+trunc(spinedit1.value / 2)+1)
    else
    puf.canvas.pixels[x,y]:=shape1.brush.color;

    puf.canvas.pen.width:=spinedit1.value;
   puf.canvas.moveto(x,y);
    end;


    procedure Tform24.pin2(x,y:integer);
    begin
 if mal=true
    then
    puf.canvas.lineto(x,y);
    end;


    procedure Tform24.full(x,y:integer);
 var local:integer;
begin
 bild.canvas.draw(0,0,puf);
puf.canvas.Brush.color:=shape1.brush.color;
local:=puf.canvas.pixels[x,y];
puf.canvas.FloodFill(x, y, local,fsSurface);
end;

  procedure Tform24.schreib(x,y:integer);
 begin
if t=false
then
begin
t:=true;
bild.canvas.Draw(0,0,puf);
s:='';
lx:=x;
ly:=y;
end
else
t:=false;
end;


procedure TForm24.BitBtn11Click(Sender: TObject);
begin
 FontDialog1.Font := schrift;
 if FontDialog1.Execute
 then
 schrift := FontDialog1.Font;
end;

procedure TForm24.FormKeyPress(Sender: TObject; var Key: Char);
begin
if t=true
then
begin

puf.canvas.brush.color:=shape1.brush.color;
puf.canvas.pen.width:=spinedit1.value;
puf.canvas.font:=schrift;
puf.canvas.Draw(0,0,bild);
s:=s+key;
puf.canvas.TextOut(lx,ly,s);
Paintbox1.canvas.draw(0,0,puf);
end;
end;

procedure TForm24.Rckgngig1Click(Sender: TObject);
begin
puf.canvas.draw(0,0,bild);
Paintbox1.canvas.draw(0,0,puf);
end;

procedure TForm24.Button1Click(Sender: TObject);
begin
form29.visible:=true;
end;

procedure Tform24.bildein(dn:string);
begin
bild.canvas.Draw(0,0,puf);
 if dn='hier'
 then
 begin
 bild.canvas.draw(0,0,puf);
 puf.savetofile(dateiname);
 Listbox1.Items.add(dateiname);
 end
 else
 begin
 Listbox1.Items.add(dn);
 end;  

label5.caption:=inttostr(listbox1.items.count)+' Stück';
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000);
end;

procedure TForm24.Button2Click(Sender: TObject);
begin
listbox1.Items.Delete(listbox1.ItemIndex);
label5.caption:=inttostr(listbox1.items.count)+' Stück';
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000);
end;

procedure TForm24.Button10Click(Sender: TObject);

var txtdat:textfile;
    zwisch:string;
begin
opendialog1.filter:='Diashowliste(.dsl) |*.dsl';
if opendialog1.execute
then
begin
assignfile(txtdat,opendialog1.filename);
reset(txtdat);
while EOF(txtdat)=false do
begin
readln(txtdat,zwisch);
listbox1.Items.Add(zwisch);
end;
closefile(txtdat);
label5.caption:=inttostr(listbox1.items.count)+' Stück';
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000);
end;
end;

procedure TForm24.Button3Click(Sender: TObject);
begin
form24.caption:='Picwave - '+listbox1.Items.Strings[listbox1.ItemIndex];
neu;
paintbox1.visible:=true;
bild.loadfromfile(listbox1.Items.Strings[listbox1.ItemIndex]);
puf.loadfromfile(listbox1.Items.Strings[listbox1.ItemIndex]);
Paintbox1.width:=puf.width;
paintbox1.height:=puf.height;
paintbox1.Canvas.draw(0,0,bild);
p:=2;
label5.caption:=inttostr(listbox1.items.count)+' Stück';
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000);
end;

procedure TForm24.Button9Click(Sender: TObject);
begin
if (listbox1.Items.count-1<>listbox1.itemindex) and (listbox1.items.count>0)
then
listbox1.items.Exchange(listbox1.itemindex,listbox1.itemindex+1);
label5.caption:=inttostr(listbox1.items.count)+' Stück';
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000);
end;

procedure TForm24.Button8Click(Sender: TObject);
begin
if (0<>listbox1.itemindex) and (listbox1.items.count>0)
then
listbox1.items.Exchange(listbox1.itemindex,listbox1.itemindex-1);
label5.caption:=inttostr(listbox1.items.count)+' Stück';
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000);


end;

procedure TForm24.Button4Click(Sender: TObject);
begin
opendialog1.filter:='Wave-Dateien|*.wav';
if opendialog1.execute
then
Listbox2.Items.add(opendialog1.filename);

With MediaPlayer2 do begin
     Filename := opendialog1.filename;
     DeviceType := dtWaveaudio;
     Open;

end;
Label13.caption:='Länge: '+floattostr(mediaplayer2.length/1000);


geslang:=geslang+mediaplayer2.length/1000;
label12.caption:='Dauer: '+floattostr(geslang);

label8.caption:=inttostr(listbox2.items.count)+' Stück';
spinedit3.value:=listbox2.items.count-1;
mediaplayer2.close;
end;

procedure TForm24.Button5Click(Sender: TObject);
begin

With MediaPlayer2 do begin
     Filename := listbox2.Items.Strings[listbox2.itemindex];
     DeviceType := dtWaveaudio;
     Open;

end;
Label13.caption:='Länge: 0';

geslang:=geslang-mediaplayer2.length/1000;
label12.caption:='Dauer: '+floattostr(geslang);

listbox2.Items.Delete(listbox2.ItemIndex);
label8.caption:=inttostr(listbox2.items.count)+' Stück';
mediaplayer2.close;
end;

procedure TForm24.Button11Click(Sender: TObject);
begin
if (listbox2.Items.count-1<>listbox2.itemindex) and (listbox2.items.count>0)
then
listbox2.items.Exchange(listbox2.itemindex,listbox2.itemindex+1);
label8.caption:=inttostr(listbox2.items.count)+' Stück';

end;

procedure TForm24.Button12Click(Sender: TObject);
begin
if (0<>listbox2.itemindex) and (listbox2.items.count>0)
then
listbox2.items.Exchange(listbox2.itemindex,listbox2.itemindex-1);
label8.caption:=inttostr(listbox2.items.count)+' Stück';
end;

procedure TForm24.Button6Click(Sender: TObject);
begin

neu;


With MediaPlayer1 do begin
     Filename := listbox2.Items.Strings[listbox2.ItemIndex];
     DeviceType := dtAutoSelect;
     Open;

end;
l:=MediaPlayer1.length;
Trackbar1.position:=0;
trackbar1.min:=0;
trackbar1.max:=l;
p:=1;
d:=1000;
mpanzeige;
label8.caption:=inttostr(listbox2.items.count)+' Stück';
end;

procedure TForm24.Edit1Change(Sender: TObject);
begin
label5.caption:=inttostr(listbox1.items.count)+' Stück';
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000);
end;

procedure TForm24.Button7Click(Sender: TObject);
begin
gestartet:=false;
paintbox1.visible:=true;

timer2.enabled:=false;
timer3.enabled:=false;
spinedit4.value:=round(geslang*1000/listbox1.items.count);
label11.caption:='Dauer : '+floattostr(listbox1.items.count*spinedit4.value/1000);
mediaplayer2.close;
end;

procedure TForm24.ListBox2Click(Sender: TObject);
begin

spinedit3.value:=listbox2.itemindex;


end;

procedure TForm24.BitBtn6Click(Sender: TObject);
begin

    paintbox1.visible:=false;
    image1.visible:=true;
gestartet:=true;
sanz:=0;
banz:=0;
timer2.interval:=spinedit4.value;
timer3.interval:=1;
timer2.enabled:=true;
timer3.enabled:=true;
if listbox2.items.count>0
then
begin
mediaplayer1.close;
mediaplayer2.filename:=listbox2.Items.Strings[sanz];
mediaplayer2.open;
mediaplayer2.play;
end
else
timer3.enabled:=false;




end;

procedure TForm24.SpinEdit3Change(Sender: TObject);
begin
Mediaplayer1.close;
With MediaPlayer2 do begin
     Filename := listbox2.Items.strings[spinedit3.value];
     DeviceType := dtWaveaudio;
     open;
end;
Label13.caption:='Länge: '+floattostr(mediaplayer2.length/1000);
mediaplayer2.close;
end;

procedure TForm24.Button13Click(Sender: TObject);
begin
if button13.caption='Modus  PWD ist ein'
then
begin
if MessageDlg('Möchten Sie die Änderungen in der PWD-Datei speichern?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    pwdsave;
    button13.caption:='Modus  PWD ist aus'  ;
panel3.enabled:=false;
groupbox2.enabled:=false;
groupbox3.enabled:=false;
end;
end                         
else
begin
button13.caption:='Modus  PWD ist ein';
panel3.enabled:=true;
groupbox2.enabled:=true;
groupbox3.enabled:=true;
form35.visible:=true;
end;

  end;

procedure TForm24.BitBtn7Click(Sender: TObject);
begin
gestartet:=false;
timer2.enabled:=false;
timer3.enabled:=false;
paintbox1.visible:=true;

mediaplayer2.close;
end;

procedure TForm24.BitBtn8Click(Sender: TObject);
begin
if gestartet=true
then
begin
if timer2.enabled=true
then
begin
timer2.enabled:=false;
timer3.enabled:=false;
mediaplayer2.Pause;
end
else
begin
timer2.enabled:=true;
timer3.enabled:=true;
mediaplayer2.Pause;
paintbox1.visible:=false;

    image1.visible:=true;
end;
end;
end;

procedure TForm24.SpinEdit4Change(Sender: TObject);
begin
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000)+' sec';
end;

procedure TForm24.SpinEdit2Change(Sender: TObject);
begin
paintbox1.visible:=true;



neu;


image1.picture.LoadFromFile(listbox1.Items.Strings[spinedit2.value-1]);
paintbox1.visible:=true;
bild.width:=image1.picture.width;
bild.height:=image1.picture.height;
puf.width:=image1.picture.width;
puf.height:=image1.picture.height;
bild.canvas.draw(0,0,image1.picture.graphic);
puf.canvas.draw(0,0,image1.picture.graphic);

Paintbox1.width:=puf.width;
paintbox1.height:=puf.height;
paintbox1.Canvas.draw(0,0,bild);
p:=2;
end;

procedure TForm24.ListBox1Click(Sender: TObject);
begin
spinedit2.value:=listbox1.itemindex+1;

end;

procedure TForm24.Timer2Timer(Sender: TObject);
begin
if banz<listbox1.items.count
then
begin
    image1.picture.LoadFromFile(listbox1.items.strings[banz]);




inc(banz);


end
else
timer2.enabled:=false;


end;

procedure TForm24.vor1Click(Sender: TObject);
begin
if button13.caption='Modus  PWD ist ein'
then
spinedit2.value:=spinedit2.value+1;
end;

procedure TForm24.Zurck2Click(Sender: TObject);
begin
if button13.caption='Modus  PWD ist ein'
then
spinedit2.value:=spinedit2.value-1;
end;

procedure TForm24.Durchlaufen1Click(Sender: TObject);
begin
if button13.caption='Modus  PWD ist ein'
then
begin


    paintbox1.visible:=false;
    image1.visible:=true;


gestartet:=true;
banz:=0;
timer2.interval:=spinedit4.value;
timer2.enabled:=true;
end;
end;

    procedure Tform24.pwdneu;

    begin
    dateiname:=form35.DirectoryListBox1.directory+'/'+form35.edit1.Text;
    mkdir(dateiname);
    dateiname:=dateiname+'.pwd';
   assignfile(pwddatei1,dateiname);
   rewrite(pwddatei1);
   write(pwddatei1,pwddata1);
   closefile(pwddatei1);
    form24.caption:='Picwave - '+dateiname;
neu;
    end;

        procedure Tform24.pwdauf(dname:string);
        var l:integer;
    begin

       dateiname:=dname;
       form24.caption:='Picwave - '+dateiname;
neu;

    l:=length(dname);
    setlength(dname,l-4);

    assignfile(pwddatei1,dateiname);
   reset(pwddatei1);
   read(pwddatei1,pwddata1);
   closefile(pwddatei1);


   listbox1.clear;
   listbox2.Clear;
    for i:=0 to pwddata1.soundanzahl-1 do
    begin
   listbox2.Items.add(dname+'/sound'+inttostr(i)+'.wav');
    end;

    for i:=0 to pwddata1.bilderanzahl-1 do
    begin
    listbox1.Items.add(dname+'/bild'+inttostr(i)+'.bmp');
    end;

    geslang:=pwddata1.audiolang;
    spinedit4.value:=pwddata1.bpms;

    label5.caption:=inttostr(pwddata1.bilderanzahl)+' Stück';
label11.caption:='Dauer : '+floattostr(listbox1.items.count*(spinedit4.value)/1000)+' sec';
 label8.caption:=inttostr(listbox2.items.count)+' Stück';
 label12.caption:='Dauer: '+floattostr(geslang);
    end;

            procedure Tform24.pwdsave;
           var l:integer;
    begin

    pwddata1.bilderanzahl:=listbox1.items.count;
    pwddata1.soundanzahl:=listbox2.Items.Count;
    pwddata1.bpms:=spinedit4.value;
    pwddata1.audiolang:=geslang ;

     assignfile(pwddatei1,dateiname);
   rewrite(pwddatei1);
   write(pwddatei1,pwddata1);
   closefile(pwddatei1);

   l:=length(dateiname);
   setlength(dateiname,l-4);
    for i:=0 to listbox2.Items.count-1 do
    begin
    copyfile(pChar(listbox2.Items.strings[i]),PChar(dateiname+'/sound'+inttostr(i)+'.wav'),true);
    listbox2.Items.strings[i]:=(dateiname+'/sound'+inttostr(i)+'.wav');
    end;

    for i:=0 to listbox1.items.count-1 do
    begin
    image1.Picture.LoadFromFile(listbox1.items.strings[i]);
    laufbild.width:=image1.width;
    laufbild.height:=image1.height;
    laufbild.canvas.draw(0,0,image1.picture.graphic);
    laufbild.SaveToFile(dateiname+'/bild'+inttostr(i)+'.bmp');
    listbox1.Items.strings[i]:=(dateiname+'/bild'+inttostr(i)+'.bmp');
    end;

     dateiname:=dateiname+'.pwd';
    end;
procedure TForm24.AlleaufgleicheGre1Click(Sender: TObject);
begin
if button13.caption='Modus  PWD ist ein'
then
form36.visible:=true;
end;


 procedure Tform24.abspeichern;
 begin

if savedialog1.execute
then
begin
dateiname:=lowercase(savedialog1.filename);
case savedialog1.FilterIndex of
1:dateiname:=dateiname+'.bmp';
2:dateiname:=dateiname+'.jpg';
3:dateiname:=dateiname+'.wav';
4:dateiname:=dateiname+'.mid';
5:dateiname:=dateiname+'.pwd';
end;

form24.caption:='Picwave - '+dateiname;


if  (ExtractFileExt(dateiname))='.wav'
then
begin

MediaPlayer1.Filename := dateiname;
MediaPlayer1.save;

end
else
if (ExtractFileExt(dateiname))='.bmp'
then
begin
bild.canvas.draw(0,0,puf);
bild.SaveToFile(dateiname);
end

else

if (ExtractFileExt(dateiname))='.jpg'
then
begin
bild.canvas.draw(0,0,puf);
image1.width:=bild.width;
image1.height:=bild.height;
image1.Canvas.Draw(0,0,bild);
image1.picture.SaveToFile(dateiname);
end

else

if (ExtractFileExt(dateiname))='.mid'
then
begin

MediaPlayer1.Filename := dateiname;
MediaPlayer1.save;

end
else
if (ExtractFileExt(dateiname))='.pwd'
then
begin
pwdsave;
end;

end;

end;

procedure TForm24.GredesderzeitigenBildesndern1Click(Sender: TObject);
begin


form38.visible:=true;
form38.label1.caption:=inttostr(puf.width);
form38.label2.caption:=inttostr(puf.height);

end;


  procedure Tform24.changegross;
  begin
bild.canvas.draw(0,0,puf);
if form38.radiobutton1.checked=true
then
begin
puf.width:=form38.SpinEdit1.Value;
puf.height:=form38.SpinEdit2.Value;


end
else
begin

puf.width:=round(form38.spinedit1.value*puf.Width/100);
puf.height:=round(form38.spinedit2.value*puf.height/100);

end;


if form38.radiobutton3.checked=true
then
puf.canvas.stretchdraw(rect(0,0,puf.width,puf.height),bild);


bild.width:=puf.width;
bild.height:=puf.height;
bild.canvas.draw(0,0,puf);

Paintbox1.width:=puf.width;
paintbox1.height:=puf.height;
Paintbox1.canvas.draw(0,0,puf);
  end;

procedure TForm24.EditierungdesBildesspeichern1Click(Sender: TObject);
var l:integer;
begin
if button13.caption='Modus  PWD ist ein'
then
begin
   l:=length(dateiname);
   setlength(dateiname,l-4);
bild.canvas.draw(0,0,puf);
puf.savetofile(dateiname+'/bild'+inttostr(spinedit2.value-1)+'.bmp');
listbox1.Items.Strings[spinedit2.value-1]:=dateiname+'/bild'+inttostr(spinedit2.value-1)+'.bmp';


    dateiname:=dateiname+'.pwd';

        

end;

end;

procedure TForm24.Timer3Timer(Sender: TObject);
begin
if listbox2.items.count>sanz+1
then
begin

if mediaplayer2.position=mediaplayer2.Length
then
begin
inc(sanz);
mediaplayer2.filename:=listbox2.items.strings[sanz];
mediaplayer2.open;
mediaplayer2.Play;
end;



end
else
timer3.enabled:=false;

end;

procedure TForm24.Abspielen1Click(Sender: TObject);
begin
if button13.caption='Modus  PWD ist ein'
then
begin
gestartet:=true;
sanz:=0;
timer3.interval:=1;
timer3.enabled:=true;
if listbox2.items.count>0
then
begin
mediaplayer1.filename:='';
mediaplayer1.close;
mediaplayer2.filename:=listbox2.Items.Strings[sanz];
mediaplayer2.open;
mediaplayer2.play;
end
else
timer3.enabled:=false;
end;
end;

procedure TForm24.Stoppen1Click(Sender: TObject);
begin
if button13.caption='Modus  PWD ist ein'
then
begin
gestartet:=false;
timer3.enabled:=false;
mediaplayer2.stop;
end;
end;

procedure TForm24.Zurck1Click(Sender: TObject);
begin
if button13.caption='Modus  PWD ist ein'
then
begin
if gestartet=true
then
begin
if timer3.enabled=true
then
begin

timer3.enabled:=false;
mediaplayer2.Pause;
end
else
begin

timer3.enabled:=true;
mediaplayer2.Pause;
end;
end;
end;
end;

procedure TForm24.Hilfe1Click(Sender: TObject);
begin
form39.starTthema(3);
form39.visible:=true;
end;

procedure TForm24.BitBtn10Click(Sender: TObject);
begin
gestartet:=false;
timer2.enabled:=false;
timer3.enabled:=false;
paintbox1.visible:=true;

mediaplayer2.close;

    paintbox1.visible:=false;
    image1.visible:=true;
gestartet:=true;
sanz:=0;
banz:=0;
timer2.interval:=spinedit4.value;
timer3.interval:=1;
timer2.enabled:=true;
timer3.enabled:=true;
if listbox2.items.count>0
then
begin
mediaplayer1.close;
mediaplayer2.filename:=listbox2.Items.Strings[sanz];
mediaplayer2.open;
mediaplayer2.play;
end
else
timer3.enabled:=false;

end;

procedure TForm24.BitBtn9Click(Sender: TObject);
begin
gestartet:=false;
timer2.enabled:=false;
timer3.enabled:=false;
image1.picture.LoadFromFile(listbox1.items.strings[listbox1.Items.count-1]);
paintbox1.visible:=true;

mediaplayer2.close;
end;

procedure TForm24.Neu1Click(Sender: TObject);
begin
  form41.visible:=true;
end;

Procedure TForm24.ndatei;
begin
if form41.radiobutton1.checked=true
then
begin
paintbox1.visible:=true;
bild.width:=500;
bild.height:=500;
bild.canvas.fillrect(rect(0,0,500,500));
puf.width:=500;
puf.height:=500;
puf.canvas.fillrect(rect(0,0,500,500));
Paintbox1.width:=500;
paintbox1.height:=500;
paintbox1.Canvas.draw(0,0,bild);
p:=2;
dateiname:='unbenannt.bmp';
form24.caption:='Picwave - '+dateiname;
end
else
if form41.radiobutton2.checked=true
then
begin
image1.width:=500;
image1.height:=500;
image1.canvas.fillrect(rect(0,0,500,500));
paintbox1.visible:=true;
bild.width:=image1.picture.width;
bild.height:=image1.picture.height;
puf.width:=image1.picture.width;
puf.height:=image1.picture.height;
bild.canvas.draw(0,0,image1.picture.graphic);
puf.canvas.draw(0,0,image1.picture.graphic);

Paintbox1.width:=puf.width;
paintbox1.height:=puf.height;

paintbox1.Canvas.draw(0,0,bild);
p:=2;
            dateiname:='unbenannt.jpg';
form24.caption:='Picwave - '+dateiname;
end
else
if form41.radiobutton3.checked=true
then
begin
With MediaPlayer1 do begin
     Filename := '';
     DeviceType := dtWaveaudio;
     Open;

end;

l:=0;
Trackbar1.position:=0;
trackbar1.min:=0;
trackbar1.max:=l;
p:=1;
d:=1000;
mpanzeige;

dateiname:='unbenannt.wav';
form24.caption:='Picwave - '+dateiname;
end
else
if form41.radiobutton4.checked=true
then
begin
button13.caption:='Modus  PWD ist ein';
panel3.enabled:=true;
groupbox2.enabled:=true;
groupbox3.enabled:=true;
form35.visible:=true;
end;

end;

end.

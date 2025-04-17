unit obsimg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, diash, editdia, Dialogs,
  Menus, StdCtrls, FileCtrl, ExtCtrls,  jpeg,   ComCtrls, mainhilfe;

type
  TForm31 = class(TForm)
    MainMenu1: TMainMenu;
    Datei1: TMenuItem;
    ffnen1: TMenuItem;
    Beenden1: TMenuItem;
    Diashow1: TMenuItem;
    Hilfe1: TMenuItem;
    DirectoryListBox1: TDirectoryListBox;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DriveComboBox1: TDriveComboBox;
    Speichern1: TMenuItem;
    SaveDialog1: TSaveDialog;
    OpenDialog1: TOpenDialog;
    Neu1: TMenuItem;
    Einstellungen1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Diashow1Click(Sender: TObject);
    procedure Beenden1Click(Sender: TObject);
    procedure diav;
    procedure diaz;
    procedure dias;
    procedure diae;
    procedure DriveComboBox1Change(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Speichern1Click(Sender: TObject);
    procedure ffnen1Click(Sender: TObject);
    procedure Neu1Click(Sender: TObject);
    procedure Einstellungen1Click(Sender: TObject);
    procedure diaed;
    procedure diawechs;
    procedure uebergang;
    procedure Hilfe1Click(Sender: TObject);


  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form31: TForm31;
  i,e,u,di,x,y,m,n:integer;
  AspectRatio,OutputWidth,OutputHeight:extended;
  ort:string;
  anzeigimg,uberpuf,altb:Tbitmap;
  ko,bi,an:byte;
  pc:array[0..1600,0..1200] of boolean;
  anz:longint;
  vecx,vecy:integer;

implementation

uses controll;
{$R *.DFM}

procedure TForm31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form31.visible:=false;
form22.visible:=true;
end;

procedure TForm31.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form31.visible:=false;
form22.visible:=true;
end;



procedure TForm31.Diashow1Click(Sender: TObject);
begin

if listbox2.items.count<>0
then
begin
form32.visible:=true;
form32.timer1.enabled:=true;
form32.timer1.interval:=form25.SpinEdit1.Value;
di:=0;



Form32.Image1.Picture.loadfromfile(listbox2.items.strings[di]);
anzeigimg.width:=Form32.Image1.Picture.Width;
anzeigimg.height:=Form32.Image1.Picture.height;
anzeigimg.canvas.draw(0,0,Tbitmap(Form32.Image1.Picture.Graphic));


    uberpuf.canvas.fillrect(rect(0,0,screen.width,screen.height));
x:=(screen.width div 2 );
y:=(screen.height div 2 );



case an of
1:uberpuf.Canvas.draw(x- anzeigimg.width div 2,y- anzeigimg.height div 2,anzeigimg);
2:begin
 OutputWidth := anzeigimg.Width;
    OutputHeight := anzeigimg.Height;

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

    uberpuf.Canvas.StretchDraw(Rect(x-Trunc(OutputWidth/2), y-Trunc(OutputHeight/2),x+Trunc(OutputWidth/2), y+Trunc(OutputHeight/2)),anzeigimg);
end;
3:uberpuf.canvas.stretchdraw(Rect(0,0,screen.width,screen.height),anzeigimg);
4:uberpuf.canvas.stretchdraw(rect(x-form25.SpinEdit2.Value div 2,y-form25.spinedit3.value div 2, x+form25.SpinEdit2.Value div 2,y+form25.spinedit3.value div 2),anzeigimg);
end;
form32.canvas.draw(0,0,uberpuf);
altb.Canvas.Draw(0,0,uberpuf);
end;
end;

procedure TForm31.Beenden1Click(Sender: TObject);
begin
form31.visible:=false;
form22.visible:=true;
end;

   procedure Tform31.diav;
   begin
   if di<listbox2.items.count-1
   then
inc(di);

Form32.Image1.Picture.loadfromfile(listbox2.items.strings[di]);
anzeigimg.width:=Form32.Image1.Picture.Width;
anzeigimg.height:=Form32.Image1.Picture.height;
anzeigimg.canvas.draw(0,0,Tbitmap(Form32.Image1.Picture.Graphic));
x:=(screen.width div 2 );
y:=(screen.height div 2 );
uberpuf.canvas.fillrect(rect(0,0,screen.width,screen.height));

case an of
1:uberpuf.Canvas.draw(x- anzeigimg.width div 2,y- anzeigimg.height div 2,anzeigimg);
2:begin
 OutputWidth := anzeigimg.Width;
    OutputHeight := anzeigimg.Height;

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


    uberpuf.Canvas.StretchDraw(Rect(x-Trunc(OutputWidth/2), y-Trunc(OutputHeight/2),x+Trunc(OutputWidth/2), y+Trunc(OutputHeight/2)),anzeigimg);

end;
3:uberpuf.canvas.stretchdraw(Rect(0,0,screen.width,screen.height),anzeigimg);
4:uberpuf.canvas.stretchdraw(rect(x-form25.SpinEdit2.Value div 2,y-form25.spinedit3.value div 2, x+form25.SpinEdit2.Value div 2,y+form25.spinedit3.value div 2),anzeigimg);
end;
uebergang;
form32.canvas.draw(0,0,uberpuf);
altb.Canvas.Draw(0,0,uberpuf);
   end;

    procedure Tform31.diaz;
     begin
   if di>0
   then
dec(di);
Form32.Image1.Picture.loadfromfile(listbox2.items.strings[di]);
anzeigimg.width:=Form32.Image1.Picture.Width;
anzeigimg.height:=Form32.Image1.Picture.height;
anzeigimg.canvas.draw(0,0,Tbitmap(Form32.Image1.Picture.Graphic));
x:=(screen.width div 2 );
y:=(screen.height div 2 );
uberpuf.canvas.fillrect(rect(0,0,screen.width,screen.height));

case an of
1:uberpuf.Canvas.draw(x- anzeigimg.width div 2,y- anzeigimg.height div 2,anzeigimg);
2:begin
 OutputWidth := anzeigimg.Width;
    OutputHeight := anzeigimg.Height;

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

    uberpuf.Canvas.StretchDraw(Rect(x-Trunc(OutputWidth/2), y-Trunc(OutputHeight/2),x+Trunc(OutputWidth/2), y+Trunc(OutputHeight/2)),anzeigimg);

end;
3:uberpuf.canvas.stretchdraw(Rect(0,0,screen.width,screen.height),anzeigimg);
4:uberpuf.canvas.stretchdraw(rect(x-form25.SpinEdit2.Value div 2,y-form25.spinedit3.value div 2, x+form25.SpinEdit2.Value div 2,y+form25.spinedit3.value div 2),anzeigimg);
end;
uebergang;
form32.canvas.draw(0,0,uberpuf);
altb.Canvas.Draw(0,0,uberpuf);
   end;

   procedure Tform31.dias;
    begin
di:=0;
Form32.Image1.Picture.loadfromfile(listbox2.items.strings[di]);
anzeigimg.width:=Form32.Image1.Picture.Width;
anzeigimg.height:=Form32.Image1.Picture.height;
anzeigimg.canvas.draw(0,0,Tbitmap(Form32.Image1.Picture.Graphic));
x:=(screen.width div 2 );
y:=(screen.height div 2 );
uberpuf.canvas.fillrect(rect(0,0,screen.width,screen.height));

case an of
1:uberpuf.Canvas.draw(x- anzeigimg.width div 2,y- anzeigimg.height div 2,anzeigimg);
2:begin
 OutputWidth := anzeigimg.Width;
    OutputHeight := anzeigimg.Height;

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


    uberpuf.Canvas.StretchDraw(Rect(x-Trunc(OutputWidth/2), y-Trunc(OutputHeight/2),x+Trunc(OutputWidth/2), y+Trunc(OutputHeight/2)),anzeigimg);

end;
3:uberpuf.canvas.stretchdraw(Rect(0,0,screen.width,screen.height),anzeigimg);
4:uberpuf.canvas.stretchdraw(rect(x-form25.SpinEdit2.Value div 2,y-form25.spinedit3.value div 2, x+form25.SpinEdit2.Value div 2,y+form25.spinedit3.value div 2),anzeigimg);
end;
uebergang;
form32.canvas.draw(0,0,uberpuf);
altb.Canvas.Draw(0,0,uberpuf);
   end;

    procedure Tform31.diae;
     begin
    di:=listbox2.items.count-1;
Form32.Image1.Picture.loadfromfile(listbox2.items.strings[di]);
anzeigimg.width:=Form32.Image1.Picture.Width;
anzeigimg.height:=Form32.Image1.Picture.height;
anzeigimg.canvas.draw(0,0,Tbitmap(Form32.Image1.Picture.Graphic));
x:=(screen.width div 2 );
y:=(screen.height div 2 );
uberpuf.canvas.fillrect(rect(0,0,screen.width,screen.height));

case an of
1:uberpuf.Canvas.draw(x- anzeigimg.width div 2,y- anzeigimg.height div 2,anzeigimg);
2:begin
 OutputWidth := anzeigimg.Width;
    OutputHeight := anzeigimg.Height;

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

    uberpuf.Canvas.StretchDraw(Rect(x-Trunc(OutputWidth/2), y-Trunc(OutputHeight/2),x+Trunc(OutputWidth/2), y+Trunc(OutputHeight/2)),anzeigimg);

end;
3:uberpuf.canvas.stretchdraw(Rect(0,0,screen.width,screen.height),anzeigimg);
4:uberpuf.canvas.stretchdraw(rect(x-form25.SpinEdit2.Value div 2,y-form25.spinedit3.value div 2, x+form25.SpinEdit2.Value div 2,y+form25.spinedit3.value div 2),anzeigimg);
end;
uebergang;
form32.canvas.draw(0,0,uberpuf);
altb.Canvas.Draw(0,0,uberpuf);
   end;
   
procedure TForm31.DriveComboBox1Change(Sender: TObject);
begin
DirectoryListBox1.drive:=drivecombobox1.drive;
end;

procedure TForm31.DirectoryListBox1Change(Sender: TObject);
var f:TSearchRec;
Error:integer;
begin
if length(DirectoryListBox1.directory)=3
then
ort:=DirectoryListBox1.directory
else
ort:=DirectoryListBox1.directory+'\';
Listbox1.Clear;
Error:=FindFirst(ort+'*.bmp',faAnyFile,f);
while (Error =0 ) do
begin

listbox1.items.Add(F.Name);

Error:=Findnext(F);
end;


Error:=FindFirst(ort+'*.ico',faAnyFile,f);
while (Error =0 ) do
begin

listbox1.items.Add(F.Name);

Error:=Findnext(F);
end;

Error:=FindFirst(ort+'*.jpg',faAnyFile,f);
while (Error =0 ) do
begin

listbox1.items.Add(F.Name);

Error:=Findnext(F);
end;



Error:=FindFirst(ort+'*.wmf',faAnyFile,f);
while (Error =0 ) do
begin

listbox1.items.Add(F.Name);

Error:=Findnext(F);
end;

end;

procedure TForm31.FormCreate(Sender: TObject);
begin
randomize;
ort:='';
anzeigimg:=tbitmap.create;
uberpuf:=TBitmap.create;
uberpuf.width:=screen.width;
uberpuf.height:=screen.height;
uberpuf.canvas.brush.color:=clblack;
uberpuf.canvas.pen.color:=clblack;
uberpuf.canvas.fillrect(rect(0,0,screen.width,screen.height));

altb:=Tbitmap.create;
altb.width:=screen.width;
altb.height:=screen.height;
altb.canvas.brush.color:=clblack;
altb.canvas.pen.color:=clblack;
altb.canvas.fillrect(rect(0,0,screen.width,screen.height));

ko:=1;
an:=1;
bi:=1;

end;

procedure TForm31.Button1Click(Sender: TObject);
begin
if listbox1.items.count>0
then
Listbox2.Items.add(ort+listbox1.items.strings[listbox1.itemindex]);
end;

procedure TForm31.Button5Click(Sender: TObject);
begin
listbox2.Items.Delete(listbox2.ItemIndex);
end;

procedure TForm31.Button2Click(Sender: TObject);
begin
for i:=0 to listbox1.Items.Count-1 do
listbox2.Items.Add(ort+listbox1.items.Strings[i]);
end;

procedure TForm31.Button3Click(Sender: TObject);
begin
if (listbox2.Items.count-1<>listbox2.itemindex) and (listbox2.items.count>0)
then
listbox2.items.Exchange(listbox2.itemindex,listbox2.itemindex+1);
end;

procedure TForm31.Button4Click(Sender: TObject);
begin
if (0<>listbox2.itemindex) and (listbox2.items.count>0)
then
listbox2.items.Exchange(listbox2.itemindex,listbox2.itemindex-1);
end;

procedure TForm31.Speichern1Click(Sender: TObject);
begin
Savedialog1.filter:='Diashowliste(.dsl) |*.dsl';
if Savedialog1.execute
then
listbox2.Items.SaveToFile(Savedialog1.filename+'.dsl');
end;

procedure TForm31.ffnen1Click(Sender: TObject);
begin
opendialog1.filter:='Diashowliste(.dsl) |*.dsl';

if Opendialog1.execute
then
begin
listbox2.Clear;
listbox2.Items.loadfromfile(opendialog1.filename);
end;

end;

procedure TForm31.Neu1Click(Sender: TObject);
begin
listbox2.Clear;
end;

procedure TForm31.Einstellungen1Click(Sender: TObject);
begin
form25.visible:=true;
end;

procedure Tform31.diaed;
begin
form25.visible:=false;

if form25.radiobutton1.checked=true
then
ko:=1;
if form25.radiobutton2.checked=true
then
ko:=2;

if form25.radiobutton12.checked=true
then
an:=1;
if form25.radiobutton13.checked=true
then
an:=2;
if form25.radiobutton14.checked=true
then
an:=3;
if form25.radiobutton15.checked=true
then
an:=4;

if form25.radiobutton3.checked=true
then
bi:=1;
if form25.radiobutton4.checked=true
then
bi:=2;
if form25.radiobutton5.checked=true
then
bi:=3;
if form25.radiobutton6.checked=true
then
bi:=4;
if form25.radiobutton7.checked=true
then
bi:=5;
if form25.radiobutton8.checked=true
then
bi:=6;
if form25.radiobutton9.checked=true
then
bi:=7;
if form25.radiobutton10.checked=true
then
bi:=8;
if form25.radiobutton11.checked=true
then
bi:=9;
if form25.radiobutton19.checked=true
then
bi:=10;
if form25.radiobutton18.checked=true
then
bi:=11;
if form25.radiobutton16.checked=true
then
bi:=12;
if form25.radiobutton17.checked=true
then
bi:=13;
if form25.radiobutton20.checked=true
then
bi:=14;
if form25.radiobutton21.checked=true
then
bi:=15;
if form25.radiobutton22.checked=true
then
bi:=16;
if form25.radiobutton23.checked=true
then
bi:=17;
if form25.radiobutton24.checked=true
then
bi:=18;

end;

procedure Tform31.diawechs;
begin
    if ko=1
    then
    form32.timer1.enabled:=false
    else
    begin

        if di=listbox2.items.count-1
    then
    begin
     uberpuf.canvas.Brush.color:=clblack;
     uberpuf.canvas.fillrect(rect(0,0,screen.width,screen.height));
  form32.canvas.draw(0,0,uberpuf);
  end
  else
     diav;
        


  end;



    

end;



procedure Tform31.uebergang;
begin
    case bi of
    1:begin
    {nix, einfach Bild einfügen}
    end;
    2:begin
    for i:=0 to screen.width do
    form32.Canvas.copyrect(rect(i,0,i+1,screen.height),uberpuf.canvas,rect(i,0,i+1,screen.height));
    end;
    3:begin
    for i:=screen.width downto 0 do
    form32.Canvas.copyrect(rect(i,0,i+1,screen.height),uberpuf.canvas,rect(i,0,i+1,screen.height));
    end;
    4:begin
    for i:=0 to screen.height do
    form32.Canvas.copyrect(rect(0,i,screen.width,i+1),uberpuf.canvas,rect(0,i,screen.width,i+1));
    end;
    5:begin
    for i:=screen.height downto 0 do
    form32.Canvas.copyrect(rect(0,i,screen.width,i+1),uberpuf.canvas,rect(0,i,screen.width,i+1));
    end;
    6:begin

    for i:=0 to screen.height do
    for e:=1 to i+1 do
    form32.canvas.pixels[e-1,i-e+1]:=uberpuf.canvas.pixels[e-1,i-e+1];

   for i:=0 to screen.width do
   begin
   vecy:=screen.height;
  repeat
                          vecx:=screen.height-vecy;
    form32.canvas.pixels[i+vecx,vecy]:=uberpuf.canvas.pixels[i+vecx,vecy];
    dec(vecy);
  until  vecy<0;
    end;

    end;
    7:begin


   for i:=screen.width downto 0 do
   begin
   vecy:=screen.height;
  repeat
                          vecx:=screen.height-vecy;
    form32.canvas.pixels[i+vecx,vecy]:=uberpuf.canvas.pixels[i+vecx,vecy];
    dec(vecy);
  until  vecy<0;
    end;

        for i:=screen.height downto 0 do
    for e:=1 to i+1 do
    form32.canvas.pixels[e-1,i-e+1]:=uberpuf.canvas.pixels[e-1,i-e+1];


    end;
    8:begin

    anz:=0;

    for i:=0 to screen.width do
    for e:=0 to screen.height do
    begin
    pc[i,e]:=false;

    end;



    repeat
    m:=random(screen.width);
    n:=random(screen.height);
    if pc[m,n]=false
    then
    begin
    form32.canvas.Pixels[m,n]:=uberpuf.canvas.pixels[m,n];
    pc[m,n]:=true;
    inc(anz);
    end;
    until anz>(screen.width*screen.height)-1000;
    end;  


    9:begin
    anz:=0;

    for i:=0 to round(screen.width/3)+1 do
    for e:=0 to round(screen.height/3)+1 do
    begin
    pc[i,e]:=false;

    end;



    repeat
    m:=random(round(screen.width/3)+1);
    n:=random(round(screen.height/3)+1);
    if pc[m,n]=false
    then
    begin
   form32.canvas.copyrect(rect(m*3,n*3,(m+1)*3,(n+1)*3),uberpuf.canvas,rect(m*3,n*3,(m+1)*3,(n+1)*3));
    pc[m,n]:=true;
    inc(anz);
    end;
    until anz>round(screen.width/3*screen.height/3)-50;
    end;

    10:begin
     anz:=0;

    for i:=0 to round(screen.width/7)+1 do
    for e:=0 to round(screen.height/7)+1 do
    begin
    pc[i,e]:=false;

    end;



    repeat
    m:=random(round(screen.width/7)+1);
    n:=random(round(screen.height/7)+1);
    if pc[m,n]=false
    then
    begin
   form32.canvas.copyrect(rect(m*7,n*7,(m+1)*7,(n+1)*7),uberpuf.canvas,rect(m*7,n*7,(m+1)*7,(n+1)*7));
    pc[m,n]:=true;
    inc(anz);
    end;
    until anz>round(screen.width/7*screen.height/7)-10;
    end;
    11:begin
         anz:=0;

    for i:=0 to round(screen.width/15)+1 do
    for e:=0 to round(screen.height/15)+1 do
    begin
    pc[i,e]:=false;

    end;



    repeat
    m:=random(round(screen.width/15)+1);
    n:=random(round(screen.height/15)+1);
    if pc[m,n]=false
    then
    begin
   form32.canvas.copyrect(rect(m*15,n*15,(m+1)*15,(n+1)*15),uberpuf.canvas,rect(m*15,n*15,(m+1)*15,(n+1)*15));
    pc[m,n]:=true;
    inc(anz);
    end;
    until anz>round(screen.width/15*screen.height/15)-5;
    end;

    12:begin
    
x:=(screen.width div 2 );
y:=(screen.height div 2 );
vecx:=1;
vecy:=1;


repeat

x:=x-1;
y:=y-1;
vecx:=vecx+2;
vecy:=vecy+2;

for i:=0 to vecx do
form32.Canvas.pixels[x+i,y]:=uberpuf.canvas.pixels[x+i,y];
for i:=1 to vecy do
form32.Canvas.pixels[x,y+i]:=uberpuf.canvas.pixels[x,y+i];

for i:=0 to vecx do
form32.Canvas.pixels[x+i,y+vecy]:=uberpuf.canvas.pixels[x+i,y+vecy];
for i:=1 to vecy do
form32.Canvas.pixels[x+vecx,y+i]:=uberpuf.canvas.pixels[x+vecx,y+i];
      
until (x<=0);


    end;
    13:begin
      x:=0;
y:=0;
vecx:=screen.width;
vecy:=screen.height;


repeat

x:=x+1;
y:=y+1;
vecx:=vecx-2;
vecy:=vecy-2;

for i:=0 to vecx do
form32.Canvas.pixels[x+i,y]:=uberpuf.canvas.pixels[x+i,y];
for i:=1 to vecy do
form32.Canvas.pixels[x,y+i]:=uberpuf.canvas.pixels[x,y+i];

for i:=0 to vecx do
form32.Canvas.pixels[x+i,y+vecy]:=uberpuf.canvas.pixels[x+i,y+vecy];
for i:=1 to vecy do
form32.Canvas.pixels[x+vecx,y+i]:=uberpuf.canvas.pixels[x+vecx,y+i];

until (x>=(screen.width div 2 ));
    end;

 14:begin
  for i:=0 to (screen.width div 10) do
  begin
  form32.canvas.draw(i*10,0,altb);
  form32.canvas.draw(i*10-screen.width,0,uberpuf);
  end;

 end;


  15:begin
   for i:=(screen.width div 10) downto 0 do
  begin
  form32.canvas.draw(i*10-screen.width,0,altb);
  form32.canvas.draw(i*10,0,uberpuf);
  end;

 end;

  16:begin
   for i:=(screen.height div 10) downto 0 do
  begin
  form32.canvas.draw(0,i*10-screen.height,altb);
  form32.canvas.draw(0,i*10,uberpuf);
  end;


 end;

  17:begin
       for i:=0 to (screen.height div 10) do
  begin
  form32.canvas.draw(0,i*10,altb);
  form32.canvas.draw(0,i*10-screen.height,uberpuf);
  end;

 end;
 18:begin
 form32.canvas.pen.color:=form25.shape1.brush.color;
 form32.canvas.brush.color:=form25.shape1.brush.color;
 form32.canvas.fillrect(rect(0,0,screen.width,screen.height));
 sleep(50);
 end;


    end;
end;
procedure TForm31.Hilfe1Click(Sender: TObject);
begin
form39.starTthema(4);
form39.visible:=true;
end;

end.

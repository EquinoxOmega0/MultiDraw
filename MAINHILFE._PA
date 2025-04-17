unit mainhilfe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm39 = class(TForm)
    Memo1: TMemo;
    ListBox1: TListBox;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure startthema(nummer:byte);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form39: TForm39;
  ebene:integer;
  hier:string;

implementation

uses controll;
{$R *.DFM}

procedure TForm39.Button3Click(Sender: TObject);
begin
form39.visible:=false;
end;

    procedure Tform39.startthema(nummer:byte);
    var s:string;
    begin
    ebene:=1;
    hier:=form22.startverz;
    case nummer of
    1:begin
    s:='hilfe/multidraw.txt';
    edit1.text:='Multidraw';
    listbox1.Clear;
    listbox1.items.add('Allgemein');
    listbox1.items.add('Werkzeug');
    listbox1.items.add('Effekte');
    listbox1.items.add('Einstellungen');
    listbox1.items.add('Filter');
    listbox1.items.add('Rest');
    edit1.text:='Hilfe zu Multidraw';
    end;
    2:begin
    s:='hilfe/fantasticscreen.txt';
    edit1.text:='FantasticScreen';
       listbox1.Clear;
    listbox1.items.add('Allgemein');
    listbox1.items.add('Bilder');
    listbox1.items.add('Formen');
    listbox1.items.add('Pixels');
    listbox1.items.add('Fraktale');
    listbox1.items.add('Text');
    listbox1.items.add('Rest');
 
    edit1.text:='Hilfe zu FantasticScreen';
    end;
    3:begin
    s:='hilfe/picwave.txt';
    edit1.text:='Picwave';
    listbox1.Clear;
    listbox1.items.add('Allgemein');
    listbox1.items.add('Editieren');
    listbox1.items.add('Formate');
    listbox1.items.add('PWD');
    listbox1.items.add('Rest');
    edit1.text:='Hilfe zu Picwave';
    end;
    4:begin
    s:='hilfe/dianimate.txt';
    edit1.text:='Dianimate';
    listbox1.Clear;
       listbox1.items.add('Allgemein');
    listbox1.items.add('Menü');
    listbox1.items.add('Übergang');
    listbox1.items.add('Diashow');
    listbox1.items.add('Rest');
    edit1.text:='Hilfe zu Dianimate';
    end;
    end;
    memo1.Lines.LoadFromFile(hier+s);
    end;




procedure TForm39.Button2Click(Sender: TObject);
begin
if ebene<>0
then
begin
listbox1.Clear;
listbox1.Items.Add('Multidraw');
listbox1.Items.Add('FantasticScreen');
listbox1.Items.Add('Picwave');
listbox1.Items.Add('Dianimate');
memo1.Lines.loadfromfile(hier+'hilfe/haupt.txt');
edit1.text:='Hauptseite der Hilfe';
ebene:=0;
end;
end;

procedure TForm39.Button1Click(Sender: TObject);
begin
case ebene of
1:begin
listbox1.Clear;
listbox1.Items.Add('Multidraw');
listbox1.Items.Add('FantasticScreen');
listbox1.Items.Add('Picwave');
listbox1.Items.Add('Dianimate');
memo1.Lines.loadfromfile(hier+'hilfe/haupt.txt');
edit1.text:='Hauptseite der Hilfe';
ebene:=0;
end;
2:Begin
memo1.Lines.loadfromfile(hier+'hilfe/multidraw.txt');
edit1.text:='Hilfe zu Multidraw';
listbox1.clear;
listbox1.items.add('Allgemein');
listbox1.items.add('Werkzeug');
listbox1.items.add('Effekte');
listbox1.items.add('Einstellungen');
listbox1.items.add('Filter');
listbox1.items.add('Rest');
ebene:=1;
end;
3:Begin
memo1.Lines.loadfromfile(hier+'hilfe/fantasticscreen.txt');
edit1.text:='Hilfe zu FantasticScreen';
listbox1.clear;
    listbox1.items.add('Allgemein');
    listbox1.items.add('Bilder');
    listbox1.items.add('Formen');
    listbox1.items.add('Pixels');
    listbox1.items.add('Fraktale');
    listbox1.items.add('Text');
    listbox1.items.add('Rest');
ebene:=1;
end;
4:Begin
memo1.Lines.loadfromfile(hier+'hilfe/picwave.txt');
edit1.text:='Hilfe zu Picwave';
listbox1.clear;
   listbox1.items.add('Allgemein');
    listbox1.items.add('Editieren');
    listbox1.items.add('Formate');
    listbox1.items.add('PWD');
    listbox1.items.add('Rest');
ebene:=1;
end;
5:Begin
memo1.Lines.loadfromfile(hier+'hilfe/dianimate.txt');
edit1.text:='Hilfe zu Dianimate';
listbox1.clear;
       listbox1.items.add('Allgemein');
    listbox1.items.add('Menü');
    listbox1.items.add('Übergang');
    listbox1.items.add('Diashow');
    listbox1.items.add('Rest');
ebene:=1;
end;
end;

end;

procedure TForm39.ListBox1DblClick(Sender: TObject);
begin
if listbox1.items.strings[listbox1.Itemindex]='Multidraw'
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/multidraw.txt');
edit1.text:='Hilfe zu Multidraw';
listbox1.clear;
listbox1.items.add('Allgemein');
listbox1.items.add('Werkzeug');
listbox1.items.add('Effekte');
listbox1.items.add('Einstellungen');
listbox1.items.add('Filter');
listbox1.items.add('Rest');
ebene:=1;
end
else
if listbox1.items.strings[listbox1.Itemindex]='FantasticScreen'
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/fantasticscreen.txt');
edit1.text:='Hilfe zu FantasticScreen';
listbox1.clear;
    listbox1.items.add('Allgemein');
    listbox1.items.add('Bilder');
    listbox1.items.add('Formen');
    listbox1.items.add('Pixels');
    listbox1.items.add('Fraktale');
    listbox1.items.add('Text');
    listbox1.items.add('Rest');
ebene:=1;
end
else
if listbox1.items.strings[listbox1.Itemindex]='Picwave'
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/picwave.txt');
edit1.text:='Hilfe zu Picwave';
listbox1.clear;
   listbox1.items.add('Allgemein');
    listbox1.items.add('Editieren');
    listbox1.items.add('Formate');
    listbox1.items.add('PWD');
    listbox1.items.add('Rest');
ebene:=1;
end
else
if listbox1.items.strings[listbox1.Itemindex]='Dianimate'
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/dianimate.txt');
edit1.text:='Hilfe zu Dianimate';
listbox1.clear;
       listbox1.items.add('Allgemein');
    listbox1.items.add('Menü');
    listbox1.items.add('Übergang');
    listbox1.items.add('Diashow');
    listbox1.items.add('Rest');
ebene:=1;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Allgemein') and (edit1.text='Hilfe zu Multidraw')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/mallgemein.txt');
edit1.text:='Multidraw Allgemein';
listbox1.clear;
ebene:=2;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Werkzeug') and (edit1.text='Hilfe zu Multidraw')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/werkzeug.txt');
edit1.text:='Multidraw Werkzeug';
listbox1.clear;
ebene:=2;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Effekte') and (edit1.text='Hilfe zu Multidraw')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/effekte.txt');
edit1.text:='Multidraw Effekte';
listbox1.clear;
ebene:=2;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Einstellungen') and (edit1.text='Hilfe zu Multidraw')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/einstellungen.txt');
edit1.text:='Multidraw Einstellungen';
listbox1.clear;
ebene:=2;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Filter') and (edit1.text='Hilfe zu Multidraw')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/filter.txt');
edit1.text:='Multidraw Filter';
listbox1.clear;
ebene:=2;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Rest') and (edit1.text='Hilfe zu Multidraw')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/mrest.txt');
edit1.text:='Multidraw Rest';
listbox1.clear;
ebene:=2;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Allgemein') and (edit1.text='Hilfe zu FantasticScreen')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/fallgemein.txt');
edit1.text:='FantasticScreen Allgemein';
listbox1.clear;
ebene:=3;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Bilder') and (edit1.text='Hilfe zu FantasticScreen')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/fbilder.txt');
edit1.text:='FantasticScreen Allgemein';
listbox1.clear;
ebene:=3;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Formen') and (edit1.text='Hilfe zu FantasticScreen')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/fformen.txt');
edit1.text:='FantasticScreen Formen';
listbox1.clear;
ebene:=3;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Pixels') and (edit1.text='Hilfe zu FantasticScreen')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/fpixel.txt');
edit1.text:='FantasticScreen Pixels';
listbox1.clear;
ebene:=3;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Fraktale') and (edit1.text='Hilfe zu FantasticScreen')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/ffraktale.txt');
edit1.text:='FantasticScreen Fraktale';
listbox1.clear;
ebene:=3;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Text') and (edit1.text='Hilfe zu FantasticScreen')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/ftext.txt');
edit1.text:='FantasticScreen Text';
listbox1.clear;
ebene:=3;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Rest') and (edit1.text='Hilfe zu FantasticScreen')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/frest.txt');
edit1.text:='FantasticScreen Rest';
listbox1.clear;
ebene:=3;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Allgemein') and (edit1.text='Hilfe zu Picwave')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/pallgemein.txt');
edit1.text:='Picwave Allgemein';
listbox1.clear;
ebene:=4;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Editieren')  and (edit1.text='Hilfe zu Picwave')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/peditieren.txt');
edit1.text:='Picwave Editieren';
listbox1.clear;
ebene:=4;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Formate')  and (edit1.text='Hilfe zu Picwave')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/formate.txt');
edit1.text:='Picwave Formate';
listbox1.clear;
ebene:=4;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='PWD')  and (edit1.text='Hilfe zu Picwave')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/pwd.txt');
edit1.text:='Picwave PWD';
listbox1.clear;
ebene:=4;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Rest') and (edit1.text='Hilfe zu Picwave')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/prest.txt');
edit1.text:='Picwave Rest';
listbox1.clear;
ebene:=4;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Allgemein') and (edit1.text='Hilfe zu Dianimate')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/dallgemein.txt');
edit1.text:='Dianimate Allgemein';
listbox1.clear;
ebene:=5;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Menü') and (edit1.text='Hilfe zu Dianimate')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/dmenu.txt');
edit1.text:='Dianimate Menü';
listbox1.clear;
ebene:=5;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Übergang') and (edit1.text='Hilfe zu Dianimate')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/dubergang.txt');
edit1.text:='Dianimate Übergang';
listbox1.clear;
ebene:=5;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Diashow') and (edit1.text='Hilfe zu Dianimate')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/ddiashow.txt');
edit1.text:='Dianimate Diashow';
listbox1.clear;
ebene:=5;
end
else
if (listbox1.items.strings[listbox1.Itemindex]='Rest') and (edit1.text='Hilfe zu Dianimate')
then
begin
memo1.Lines.loadfromfile(hier+'hilfe/drest.txt');
edit1.text:='Dianimate Rest';
listbox1.clear;
ebene:=5;
end;


end;

end.

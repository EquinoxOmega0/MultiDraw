unit neuschon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TForm28 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure neuerst;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form28: TForm28;
  verz:string;

implementation

uses fantscr,controll;
{$R *.DFM}

procedure TForm28.Button2Click(Sender: TObject);
begin
form28.visible:=false;
end;

procedure TForm28.Button1Click(Sender: TObject);
begin
 neuerst;

form26.TabbedNotebook1.visible:=true;
form28.visible:=false;
end;

    procedure Tform28.neuerst;
   var iLength:integer;
    sWindir,hier:string;
    f:textfile;
    begin
hier:=form22.startverz;
iLength := 255;
setLength(sWinDir, iLength);
iLength := GetWindowsDirectory(PChar(sWinDir), iLength);
setLength(sWinDir, iLength);
verz:=sWinDir+'\SYSTEM\';
mkdir(verz+Edit1.text);
chdir(hier);
copyfile(pchar('bildschirmschoner/bildschirmschoner.exe'),pchar(verz+edit1.text+'.scr'),false);
assignfile(F,verz+edit1.text+'\data.dat');
rewrite(F);
closefile(F);
form26.transname(verz+edit1.text+'\',edit1.text);
    end;

end.

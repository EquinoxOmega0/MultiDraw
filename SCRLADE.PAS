unit scrlade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl;

type
  TForm34 = class(TForm)
    FileListBox1: TFileListBox;
    Button1: TButton;
    Button3: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form34: TForm34;

implementation

uses fantscr;
{$R *.DFM}

procedure TForm34.Button3Click(Sender: TObject);
begin
Form34.visible:=false;
end;

procedure TForm34.Button1Click(Sender: TObject);
begin
form26.TabbedNotebook1.visible:=true;
form26.ladeschoner;
form34.visible:=false;
end;

procedure TForm34.FormCreate(Sender: TObject);
   var iLength:integer;
    sWindir,hier:string;
    begin
getdir(0,hier);
iLength := 255;
setLength(sWinDir, iLength);
iLength := GetWindowsDirectory(PChar(sWinDir), iLength);
setLength(sWinDir, iLength);
hier:=sWinDir+'\SYSTEM\';
 FileListbox1.Directory:=hier;
end;

end.

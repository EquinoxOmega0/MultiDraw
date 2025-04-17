unit neupwd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl;

type
  TForm35 = class(TForm)
    Edit1: TEdit;
    DriveComboBox1: TDriveComboBox;
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DirectoryListBox1: TDirectoryListBox;
    procedure DriveComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form35: TForm35;
  ort:string;
  
implementation

uses picwav;
{$R *.DFM}

procedure TForm35.DriveComboBox1Change(Sender: TObject);
begin
DirectoryListBox1.drive:=drivecombobox1.Drive;
end;

procedure TForm35.Button3Click(Sender: TObject);
begin
form24.button13.caption:='Modus  PWD ist aus'  ;
form24.panel3.enabled:=false;
form24.groupbox2.enabled:=false;
form24.groupbox3.enabled:=false;
form35.visible:=false;
end;

procedure TForm35.DirectoryListBox1Change(Sender: TObject);
var f:TSearchRec;
Error:integer;
begin
if length(DirectoryListBox1.directory)=3
then
ort:=DirectoryListBox1.directory
else
ort:=DirectoryListBox1.directory+'\';
Listbox1.Clear;
Error:=FindFirst(ort+'*.pwd',faAnyFile,f);
while (Error =0 ) do
begin

listbox1.items.Add(F.Name);

Error:=Findnext(F);
end;
end;

procedure TForm35.Button1Click(Sender: TObject);
begin
form24.pwdneu;
form35.visible:=false;
end;

procedure TForm35.Button2Click(Sender: TObject);
begin
form24.pwdauf(DirectoryListBox1.directory+'/'+listbox1.Items.Strings[listbox1.itemindex]);
form35.visible:=false;
end;

end.

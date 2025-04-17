unit zerh;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl, Spin;

type
  TForm16 = class(TForm)
    GroupBox1: TGroupBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Edit1: TEdit;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form16: TForm16;

implementation

uses main;
{$R *.DFM}

procedure TForm16.Button2Click(Sender: TObject);
begin
form16.visible:=false;
end;

procedure TForm16.DriveComboBox1Change(Sender: TObject);
begin
DirectoryListBox1.drive:=DriveCombobox1.Drive;
end;

procedure TForm16.Button1Click(Sender: TObject);
begin
Form1.hack;
form16.visible:=false;
end;

procedure TForm16.Edit1Change(Sender: TObject);
begin
if edit1.text=''
then
edit1.text:='neu';
end;

end.

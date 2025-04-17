unit autod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl;

type
  TForm23 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    Edit4: TEdit;
    procedure DriveComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form23: TForm23;

implementation

uses main;
{$R *.DFM}

procedure TForm23.DriveComboBox1Change(Sender: TObject);
begin
DirectoryListBox1.drive:=drivecombobox1.drive;
end;

procedure TForm23.Button2Click(Sender: TObject);
begin
Form23.visible:=false;
end;

procedure TForm23.Button1Click(Sender: TObject);
begin
form1.adreh;
form23.visible:=false;
end;

end.

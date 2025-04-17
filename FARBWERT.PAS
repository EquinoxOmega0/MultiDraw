unit farbwert;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin;

type
  TForm8 = class(TForm)
    GroupBox1: TGroupBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    CheckBox1: TCheckBox;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    SpinEdit4: TSpinEdit;
    CheckBox2: TCheckBox;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form8: TForm8;

implementation

uses main;
{$R *.DFM}

procedure TForm8.Button2Click(Sender: TObject);
begin
Form8.visible:=false;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
if radiobutton3.checked=true
then
form1.fwganz;

if radiobutton4.checked=true
then
form1.fwbereich;

form8.visible:=false;
end;

end.

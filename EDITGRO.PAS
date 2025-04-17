unit editgro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin;

type
  TForm38 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox1: TCheckBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Breite: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox4: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form38: TForm38;
    v:boolean;

implementation

uses picwav;
{$R *.DFM}

procedure TForm38.RadioButton1Click(Sender: TObject);
begin
label4.caption:='Pixels';
label5.caption:='Pixels';
end;

procedure TForm38.RadioButton2Click(Sender: TObject);
begin
label4.caption:='%';
label5.caption:='%';
end;

procedure TForm38.FormCreate(Sender: TObject);
begin
v:=false;
end;

procedure TForm38.SpinEdit1Change(Sender: TObject);
begin
if v=true
then
begin  
if radiobutton1.checked=true
then
begin
spinedit1.value:=round(spinedit2.value*strtoint(label1.caption)/strtoint(label2.caption))

end
else
begin
spinedit1.value:=spinedit2.value;
end;
end;    

end;



procedure TForm38.SpinEdit2Change(Sender: TObject);
begin

if v=true
then
begin
if radiobutton1.checked=true
then
begin
spinedit2.value:=round(spinedit1.value*strtoint(label2.caption)/strtoint(label1.caption))

end
else
begin
spinedit2.value:=spinedit1.value;
end;


end;
end;

procedure TForm38.CheckBox1Click(Sender: TObject);
begin
if v=false
then
v:=true
else
v:=false;
end;

procedure TForm38.Button2Click(Sender: TObject);
begin
form38.visible:=false;
end;

procedure TForm38.Button1Click(Sender: TObject);
begin
form24.changegross;
form38.visible:=false;
end;

end.

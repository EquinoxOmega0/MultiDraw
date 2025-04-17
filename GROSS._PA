unit gross;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin;

type
  TForm14 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    Breite: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form14: TForm14;
  v:boolean;

implementation

uses main;
{$R *.DFM}

procedure TForm14.RadioButton1Click(Sender: TObject);
begin
label4.caption:='Pixels';
label5.caption:='Pixels';
end;

procedure TForm14.RadioButton2Click(Sender: TObject);
begin
label4.caption:='%';
label5.caption:='%';
end;

procedure TForm14.FormCreate(Sender: TObject);
begin
v:=false;
end;

procedure TForm14.CheckBox1Click(Sender: TObject);
begin
if v=false
then
v:=true
else
v:=false;
end;

procedure TForm14.Button2Click(Sender: TObject);
begin
form14.visible:=false;
end;

procedure TForm14.Button1Click(Sender: TObject);
begin
form1.grossander;
form14.visible:=false;
end;

procedure TForm14.SpinEdit1Change(Sender: TObject);
begin
     if v=true
then
begin
if radiobutton1.checked=true
then
begin
spinedit1.value:=round(spinedit2.value*form1.spinedit1.value/form1.spinedit2.value)

end
else
begin
spinedit1.value:=spinedit2.value;
end;
end;


end;

procedure TForm14.SpinEdit2Change(Sender: TObject);
begin  
if v=true
then
begin
if radiobutton1.checked=true
then
begin
spinedit2.value:=round(spinedit1.value*form1.spinedit2.value/form1.spinedit1.value)

end
else
begin
spinedit2.value:=spinedit1.value;
end;


end;

end;
end.

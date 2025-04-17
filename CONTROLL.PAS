unit controll;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, main, picwav,  fantscr, obsimg, Buttons;

type
  TForm22 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
        function startverz:string;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form22: TForm22;
 ortexe:string;
implementation

{$R *.DFM}

procedure TForm22.BitBtn5Click(Sender: TObject);
begin
close;
end;

procedure TForm22.BitBtn1Click(Sender: TObject);
begin 
form1.visible:=true;
form22.visible:=false;
end;

procedure TForm22.BitBtn3Click(Sender: TObject);
begin
form24.visible:=true;
form22.visible:=false;
end;

procedure TForm22.BitBtn2Click(Sender: TObject);
begin
Form26.visible:=true;
form22.visible:=false;
end;

procedure TForm22.BitBtn6Click(Sender: TObject);
begin
form31.visible:=true;
form22.visible:=false;
end;

procedure TForm22.FormCreate(Sender: TObject);

begin
getdir(0,ortexe);
ortexe:=ortexe+'/';
end;

    function Tform22.startverz:string;
    begin
    startverz:=ortexe;
    end;
    end.

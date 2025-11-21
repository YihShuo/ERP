unit SampleCopyChoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TSampleCopyChoice = class(TForm)
    GroupBox1: TGroupBox;
    Button2: TButton;
    Button1: TButton;
    RB1: TRadioButton;
    RB2: TRadioButton;
    RB3: TRadioButton;
    Panel1: TPanel;
    RB4: TRadioButton;
    RB5: TRadioButton;
    RB6: TRadioButton;
    RB7: TRadioButton;
    RB8: TRadioButton;
    RB9: TRadioButton;
    RB10: TRadioButton;
    RB11: TRadioButton;
    RB12: TRadioButton;
    RB13: TRadioButton;
    RB14: TRadioButton;
    RB15: TRadioButton;
    RB16: TRadioButton;
    RB17: TRadioButton;
    RB18: TRadioButton;
    RB19: TRadioButton;
    RB20: TRadioButton;
    RB21: TRadioButton;
    RB22: TRadioButton;
    RB23: TRadioButton;
    RB24: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleCopyChoice: TSampleCopyChoice;

implementation
  uses SampleOrder1;
{$R *.dfm}

procedure TSampleCopyChoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSampleCopyChoice.FormDestroy(Sender: TObject);
begin
  SampleCopyChoice:=nil;
end;

procedure TSampleCopyChoice.Button1Click(Sender: TObject);
var
  CopyYPDHStr:string;
begin
  SampleOrder.Copy_LKT_YPDHStr:='';
  if (RB1.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB1.Caption,1,4);
  if (RB2.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB2.Caption,1,4);
  if (RB3.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB3.Caption,1,4);
  if (RB4.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB4.Caption,1,4);
  if (RB5.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB5.Caption,1,4);
  if (RB6.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB6.Caption,1,4);
  if (RB7.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB7.Caption,1,4);
  if (RB8.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB8.Caption,1,4);
  if (RB9.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB9.Caption,1,4);
  if (RB10.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB10.Caption,1,4);
  if (RB11.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB11.Caption,1,4);
  if (RB12.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB12.Caption,1,4);
  if (RB13.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB13.Caption,1,4);
  if (RB14.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB14.Caption,1,4);
  if (RB15.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB15.Caption,1,4);
  if (RB16.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB16.Caption,1,4);
  if (RB17.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB17.Caption,1,4);
  if (RB18.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB18.Caption,1,4);
  if (RB19.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB19.Caption,1,4);
  if (RB20.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB20.Caption,1,4);
  if (RB21.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB21.Caption,1,4);
  if (RB22.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB22.Caption,1,4);
  if (RB23.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB23.Caption,1,4);
  if (RB24.Checked) then SampleOrder.Copy_LKT_YPDHStr := Copy(RB24.Caption,1,4);
  Close;
end;

procedure TSampleCopyChoice.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TSampleCopyChoice.FormCreate(Sender: TObject);
var tmpRadioButton:TRadioButton;
    i:integer;
begin
  //
  SampleOrder.Copy_LKT_YPDHStr:='';
  for i:=0 to High(SampleOrder.YPZL_YPDH) do
  begin
    tmpRadioButton:=TRadioButton(FindComponent('RB'+inttostr(i+1)));
    if tmpRadioButton<>nil then
    begin
       tmpRadioButton.Caption:=SampleOrder.YPZL_YPDH[i]+Copy(tmpRadioButton.Caption,5,length(tmpRadioButton.Caption));
       tmpRadioButton.Visible:=true;
    end;
  end;
  //
end;

end.

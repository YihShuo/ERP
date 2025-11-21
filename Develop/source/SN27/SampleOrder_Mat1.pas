unit SampleOrder_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Mask,
  DBCtrls;

type
  TSampleOrder_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    CLDHEdit: TEdit;
    Button1: TButton;
    YWPMEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    MatQry: TQuery;
    MatQrycldh: TStringField;
    MatQryzwpm: TStringField;
    MatQryywpm: TStringField;
    MatQrydwbh: TStringField;
    MatQryCQDH: TStringField;
    Panel2: TPanel;
    YWPMDBEdit: TDBEdit;
    ZWPMDBEdit: TDBEdit;
    MatQryTYJH: TStringField;
    StopCK: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure YWPMEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleOrder_Mat: TSampleOrder_Mat;

implementation
  uses SampleOrder1,FunUnit;
{$R *.dfm}

procedure TSampleOrder_Mat.Button1Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
begin
  //
  with MatQry do
  begin
    Active:=true;
    SQL.Clear;
    SQL.Add('select top 100 Cldh,zwpm,ywpm,dwbh,CQDH,TYJH from CLZL ');
    SQL.Add('where CLDH like ''%'+CLDHEdit.Text+'%'' and ((Substring(CLDH,1,4)=''V901'') or YN=1 ) ');//越南臨時料號或台灣建立材料
    if trim(YWPMEdit.Text)<>'' then
    begin
      tmpList:=FuncObj.SplitString(YWPMEdit.Text,'*');
      for i:=0 to tmpList.Count-1 do
      begin
        SQL.Add('and YWPM like ''%'+tmpList.Strings[i]+'%'' ');
      end;
      tmpList.Free;
    end;
    if StopCK.Checked=true then
      SQL.Add(' and (TYJH=''N'' or TYJH='''' or TYJH is null) ');
    SQL.Add('order by YWPM');
    Active:=true;
  end;
  //
end;

procedure TSampleOrder_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  if MatQry.Active=true then
  begin
    SampleOrder.YPZLS.Edit;
    SampleOrder.YPZLS.FieldByName('CLBH').AsString:=MatQry.FieldByName('CLDH').AsString;
    SampleOrder.YPZLS.FieldByName('CLMC').AsString:=MatQry.FieldByName('zwpm').AsString;
    SampleOrder.YPZLS.FieldByName('DWBH').AsString:=MatQry.FieldByName('DWBH').AsString;
    SampleOrder.YPZLS.FieldByName('CQDH').AsString:=MatQry.FieldByName('CQDH').AsString;
    if MatQry.FieldByName('CQDH').AsString='VN' then
      SampleOrder.YPZLS.FieldByName('Currency').AsString:='VND'
    else
      SampleOrder.YPZLS.FieldByName('Currency').AsString:='NTD';
    SampleOrder.YPZLS.Post;
    Close;
  end;
end;

procedure TSampleOrder_Mat.YWPMEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then Button1.Click;
end;

procedure TSampleOrder_Mat.FormDestroy(Sender: TObject);
begin
  SampleOrder_Mat:=nil;
end;

procedure TSampleOrder_Mat.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if MatQry.FieldByName('TYJH').AsString='Y' then
  begin
    DBGridEh1.canvas.font.color:=clGray;
  end;
end;

end.

unit SampleNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSampleNo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit5: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    PartQry: TQuery;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    PartQryypdh: TStringField;
    PartQryXieXing: TStringField;
    PartQrySheHao: TStringField;
    PartQryARTICLE: TStringField;
    PartQryDEVCODE: TStringField;
    PartQryKFJD: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleNo: TSampleNo;

implementation
  uses SampleOrder1,FunUnit, UsageCopy1;
{$R *.dfm}

procedure TSampleNo.Button1Click(Sender: TObject);
begin
  with PartQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('Select ypdh,ypzl.XieXing,ypzl.SheHao,ypzl.ARTICLE,DEVCODE,ypzl.KFJD ');
    sql.Add('from ypzl left join kfxxzl  ');
    sql.Add('ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
    SQL.Add('where 1=1 ');
    if edit1.Text <>'' then
      sql.Add(' and ypzl.ypdh like '''+edit1.Text+'%'' ');
    if  Edit2.Text<> '' then
      sql.Add('and DEVCODE like ''%'+Edit2.Text+'%'' ');
    if Edit5.Text<>'' then
      SQL.Add('and ypzl.XieXing like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('and ypzl.Shehao like ''%'+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
      SQL.Add('and ypzl.KFJD like '''+Edit4.Text+'%'' ');
    active:=true;
  end;
end;

procedure TSampleNo.DBGridEh1DblClick(Sender: TObject);
begin
  if PartQry.Active=true then
  begin
    UsageCopy.EditYPDH.Text:= PartQry.FieldByName('ypdh').Value;
    Close;
  end;
end;

procedure TSampleNo.FormCreate(Sender: TObject);
begin
  with PartQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('Select ypdh,ypzl.XieXing,ypzl.SheHao,ypzl.ARTICLE,DEVCODE,ypzl.KFJD ');
    sql.Add('from ypzl left join kfxxzl  ');
    sql.Add('ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
    SQL.Add('where ypzl.ypdh like '''+edit1.Text+''' ');
    if  Edit2.Text<> '' then
      sql.Add('and DEVCODE like ''%'+Edit2.Text+'%'' ');
    if Edit5.Text<>'' then
      SQL.Add('and ypzl.XieXing like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('and ypzl.Shehao like ''%'+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
      SQL.Add('and ypzl.KFJD like '''+Edit4.Text+'%'' ');
    active:=true;
  end;
end;


procedure TSampleNo.FormDestroy(Sender: TObject);
begin
  SampleNo:=nil;
end;

end.

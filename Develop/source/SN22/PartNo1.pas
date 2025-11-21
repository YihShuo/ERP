unit PartNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TPartNo = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    bwdhEdit: TEdit;
    Button1: TButton;
    YWSMEdit1: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    PartQry: TQuery;
    PartQrybwdh: TStringField;
    PartQryzwsm: TStringField;
    PartQryywsm: TStringField;
    PartQrybwlb: TStringField;
    Label2: TLabel;
    Edit1: TEdit;
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
  PartNo: TPartNo;

implementation
  uses SampleOrder1,FunUnit, UsageCopy1;
{$R *.dfm}

procedure TPartNo.Button1Click(Sender: TObject);
begin
  with PartQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('select bwdh,zwsm,ywsm,bwzl.bwlb ');
    sql.Add('from ypzls left join bwzl ');
    sql.Add('on ypzls.bwbh=bwzl.bwdh');
    SQL.Add('where ypzls.ypdh='''+edit1.Text+''' ');
    if  bwdhEdit.Text<> '' then
      sql.Add('and bwdh like ''%'+bwdhEdit.Text+'%'' ');
    if YWSMEdit1.Text<>'' then
      SQL.Add('and YWSM like ''%'+YWSMEdit1.Text+'%'' ');
    active:=true;
  end;
end;

procedure TPartNo.DBGridEh1DblClick(Sender: TObject);
begin
  if PartQry.Active=true then
  begin
    UsageCopy.Edit1.Text:= PartQry.FieldByName('bwdh').Value;
    Close;
  end;
end;

procedure TPartNo.FormCreate(Sender: TObject);
begin
  Edit1.Text:=UsageCopy.EditYPDH.text;
  with PartQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('select bwdh,zwsm,ywsm,bwzl.bwlb ');
    sql.Add('from ypzls left join bwzl ');
    sql.Add('on ypzls.bwbh=bwzl.bwdh');
    SQL.Add('where ypzls.ypdh='''+edit1.Text+''' ');
    if  bwdhEdit.Text<> '' then
      sql.Add('and bwdh like ''%'+bwdhEdit.Text+'%'' ');
    if YWSMEdit1.Text<>'' then
      SQL.Add('and YWSM like ''%'+YWSMEdit1.Text+'%'' ');
    active:=true;
  end;
end;


procedure TPartNo.FormDestroy(Sender: TObject);
begin
  PartNo:=nil;
end;

end.

unit SampleOrder_Part1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSampleOrder_Part = class(TForm)
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
    YWSMEdit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ZWSMEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleOrder_Part: TSampleOrder_Part;

implementation
  uses SampleOrder1,FunUnit;
{$R *.dfm}

procedure TSampleOrder_Part.Button1Click(Sender: TObject);
begin
  with PartQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('select bwdh,zwsm,ywsm,bwlb from bwzl ');
    SQL.Add('where bwdh like ''%'+bwdhEdit.Text+'%'' ');
    if YWSMEdit1.Text<>'' then
      SQL.Add('and YWSM like ''%'+YWSMEdit1.Text+'%'' ');
    if YWSMEdit2.Text<>'' then
      SQL.Add('and YWSM like ''%'+YWSMEdit2.Text+'%'' ');
    active:=true;
  end;
end;

procedure TSampleOrder_Part.DBGridEh1DblClick(Sender: TObject);
begin
  if PartQry.Active=true then
  begin
    SampleOrder.YPZLS.Edit;
    SampleOrder.YPZLS.FieldByName('BWBH').Value:=PartQry.FieldByName('bwdh').Value;
    SampleOrder.YPZLS.FieldByName('BWLB').Value:=PartQry.FieldByName('BWLB').Value;
    SampleOrder.YPZLS.FieldByName('BWMC').Value:=PartQry.FieldByName('zwsm').Value;
    SampleOrder.YPZLS.Post;
    Close;
  end;
end;

procedure TSampleOrder_Part.FormCreate(Sender: TObject);
begin
  with PartQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('select bwdh,zwsm,ywsm,bwlb from bwzl ');
    SQL.Add('where BWDH like ''%'+bwdhEdit.Text+'%'' ');
    if YWSMEdit1.Text<>'' then
      SQL.Add('and YWSM like ''%'+YWSMEdit1.Text+'%'' ');
    if YWSMEdit1.Text<>'' then
      SQL.Add('and YWSM like ''%'+YWSMEdit2.Text+'%'' ');
    active:=true;
  end;
end;

procedure TSampleOrder_Part.ZWSMEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then Button1.Click;
end;

procedure TSampleOrder_Part.FormDestroy(Sender: TObject);
begin
  SampleOrder_Part:=nil;
end;

end.

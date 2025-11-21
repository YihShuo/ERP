unit PurSample_BJ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TPurSample_BJ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BJNO: TStringField;
    Query1USERDate: TDateTimeField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_BJ: TPurSample_BJ;

implementation

uses PurNoSize1, main1, PurSample1;

{$R *.dfm}

procedure TPurSample_BJ.Button1Click(Sender: TObject);
begin
  query1.Params.Items[0].AsString :=edit1.Text;
  query1.Params.Items[1].AsString :=main.edit2.Text;
  query1.active:=true;
end;

procedure TPurSample_BJ.FormDestroy(Sender: TObject);
begin
  PurSample_BJ:=nil;
end;

procedure TPurSample_BJ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurSample_BJ.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with PurSample.CGDet do
  begin
    edit;
    fieldbyname('BJNO').value:=query1.fieldbyname('BJNO').value;
    fieldbyname('USPrice').value:=query1.fieldbyname('USPrice').value;
    fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value;
  end;
  close;
end;

procedure TPurSample_BJ.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

end.

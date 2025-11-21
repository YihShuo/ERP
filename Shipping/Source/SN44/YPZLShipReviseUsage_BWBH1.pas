unit YPZLShipReviseUsage_BWBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TYPZLShipReviseUsage_BWBH = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BWDH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  YPZLShipReviseUsage_BWBH: TYPZLShipReviseUsage_BWBH;

implementation
  uses YPZLShipReviseUsage1;
{$R *.dfm}

procedure TYPZLShipReviseUsage_BWBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TYPZLShipReviseUsage_BWBH.FormDestroy(Sender: TObject);
begin
  YPZLShipReviseUsage_BWBH:=nil;
end;

procedure TYPZLShipReviseUsage_BWBH.Button1Click(Sender: TObject);
begin

   with Query1 do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select BWDH,YWSM,ZWSM ');
     SQL.Add('from BWZL where 1=1 ');
     if Edit1.Text<>'' then
       SQL.Add(' and BWDH like '''+Edit1.Text+'%'' ');
     if Edit1.Text<>'' then
       SQL.Add(' and YWSM like '''+Edit2.Text+'%'' ');
     if Edit1.Text<>'' then
       SQL.Add(' and ZWSM like '''+Edit3.Text+'%'' ');
     Active:=true;
   end;

end;

procedure TYPZLShipReviseUsage_BWBH.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with YPZLShipReviseUsage.Query1 do
  begin
    Edit;
    fieldbyname('BWBH').value:=query1.fieldbyname('BWDH').value;
    fieldbyname('BWMC').value:=query1.fieldbyname('YWSM').value;
    post;
  end;
  Close;
end;

end.

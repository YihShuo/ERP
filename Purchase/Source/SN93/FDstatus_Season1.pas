unit FDstatus_Season1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDstatus_Season = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Edit1: TEdit;
    Query1JiJie: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDstatus_Season: TFDstatus_Season;

implementation

uses Season_Set1 ;

{$R *.dfm}

procedure TFDstatus_Season.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select JiJie  from kfxxzl where 1=1 ');
    if edit1.Text <> '' then
      sql.Add('and JiJie like '''+edit1.Text+'%'' ');
    sql.Add(' group by JiJie ');  
    sql.Add(' order by JiJie ');
    active:=true;
  end;
end;

procedure TFDstatus_Season.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  // edit2.setfocus
end;

procedure TFDstatus_Season.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TFDstatus_Season.FormDestroy(Sender: TObject);
begin
  FDstatus_Season:=nil;
end;

procedure TFDstatus_Season.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFDstatus_Season.FormCreate(Sender: TObject);
begin
   Edit1.Text:=FormatDateTime('YY',Date());
   Button1.Click();
end;

procedure TFDstatus_Season.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Season_Set.Query1 do
    begin
        edit;
        fieldbyname('Season').value:=query1.fieldbyname('JiJie').value;
    end;
    query1.Active:=false;
    close;
  end;
end;

procedure TFDstatus_Season.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.

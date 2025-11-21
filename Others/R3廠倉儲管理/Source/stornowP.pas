unit stornowP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, GridsEh,
  DBGridEh;

type
  Tstornow = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    MJCB: TComboBox;
    Label4: TLabel;
    CLCB: TComboBox;
    Query1: TQuery;
    Query1mjbh: TStringField;
    Query2: TQuery;
    Query2ColorNo: TStringField;
    Query2EnglishName: TStringField;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    WSMQ: TQuery;
    WSDQ: TQuery;
    sizeq: TQuery;
    DataSource1: TDataSource;
    wsm: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CLCBChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  stornow: Tstornow;

implementation

{$R *.dfm}

procedure Tstornow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  stornow:=nil;
end;

procedure Tstornow.FormCreate(Sender: TObject);
var i:integer;
begin
query1.Active:=true;
query2.Active:=true;
with Query1 do
  begin
    query1.First;
    mjcb.Items.Clear;
    MJCB.Items.Add('ALL');

    for i:=1 to recordcount do
      begin
        MJCB.Items.Add(fieldbyname('mjbh').asstring);
        next;
      end;
  end;

with Query2 do
  begin
    query2.First;
    CLCB.Items.Clear;
    CLCB.Items.Add('ALL');

    for i:=1 to recordcount do
      begin
        CLCB.Items.Add(fieldbyname('EnglishName').asstring);
        next;
      end;
  end;

end;

procedure Tstornow.CLCBChange(Sender: TObject);
begin
  query2.locate('englishname',clcb.Text,[]);
  edit1.Text:=query2.fieldbyname('colorno').Value;
end;

procedure Tstornow.Button1Click(Sender: TObject);
var i:integer;
begin
  with sizeq do
  begin
    active:=false;
    sql.Clear;
    sql.add('select size from workplans');
    sql.add('left join workplan on workplan.workid=workplans.workid');
    sql.Add('where workplan.workqty is not null');
    if mjcb.Text<>'ALL' then
      sql.Add(' and workplan.mjbh='+''''+mjcb.Text+'''');
    if CLCB.Text<>'ALL' then
      sql.Add(' and workplan.colorno='+''''+edit1.Text+'''');
    sql.Add('group by size');
    active:=true;

    wsmq.Active:=false;
    wsmq.SQL.Clear;
    wsmq.SQL.Add('select workid,mjbh,colorno');
    for i:=1 to recordcount do
    begin
      wsmq.SQL.add(' ,isnull(sum(case  when size='+''''+fieldbyname('Size').asstring+''''+'and inout='+''''+'I'+''''+' then totQty end),0)');
      wsmq.SQL.add(' - isnull(sum(case  when size='+''''+fieldbyname('Size').asstring+''''+'and inout='+''''+'O'+''''+' then totQty end),0)');
      wsmq.SQL.add('   as '+''''+fieldbyname('Size').asstring+'''');
      next;
    end;
    wsmq.SQL.Add('from ');
    wsmq.SQL.Add('(select workwhsds.workid ,workplan.mjbh,workplan.colorno ');
    wsmq.SQL.Add('	,workwhsds.size,workwhsds.inout,sum(workwhsds.qty) as totqty ');
    wsmq.SQL.Add('  from workwhsds');
    wsmq.SQL.Add('  left join workplan on workplan.workid=workwhsds.workid');
    wsmq.SQL.Add('  where workplan.workqty is not null');
    if mjcb.Text<>'ALL' then
      wsmq.sql.Add(' and workplan.mjbh='+''''+mjcb.Text+'''');
    if CLCB.Text<>'ALL' then
      wsmq.sql.Add(' and workplan.colorno='+''''+edit1.Text+'''');
    wsmq.SQL.Add('group by  workwhsds.workid ,workplan.mjbh,workplan.colorno ');
    wsmq.SQL.Add('	,workwhsds.size,workwhsds.inout) as st');
    wsmq.SQL.Add('group by workid,mjbh,colorno');
    wsmq.SQL.Add('');
    //memo1.Text:=wsmq.SQL.Text;
    wsmq.Active:=true;
    wsdq.Active:=true;
  end;
end;

end.

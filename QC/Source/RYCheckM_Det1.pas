unit RYCheckM_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids, Menus,OleServer,
  dateutils,comobj, ExcelXP, GridsEh, DBGridEh;

type
  TRYCheckM_Det = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label8: TLabel;
    DBGridEh1: TDBGridEh;
    Query1SCBH: TStringField;
    Query1ProQty: TFloatField;
    Query1article: TStringField;
    Query1xieming: TStringField;
    Query1pairs: TIntegerField;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RYCheckM_Det: TRYCheckM_Det;
  var w:integer;

implementation

uses QCMonthlyReport1;

{$R *.dfm}

procedure TRYCheckM_Det.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TRYCheckM_Det.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TRYCheckM_Det.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
for i:=0 to DBGridEH1.Columns.Count-1 do
  begin
    if DBGridEH1.columns[i].fieldname='XieMing' then
      DBGridEH1.columns[i].Width:=160;
     if DBGridEH1.columns[i].fieldname='pairs' then
      DBGridEH1.columns[i].Width:=50;
    if DBGridEH1.columns[i].fieldname='article' then
      DBGridEH1.columns[i].Width:=80;
    if DBGridEH1.columns[i].fieldname='SCBH' then
      DBGridEH1.columns[i].Width:=90;
    if DBGridEH1.columns[i].fieldname='ProQty' then
      DBGridEH1.columns[i].Width:=50;
  end;
end;

procedure TRYCheckM_Det.FormDestroy(Sender: TObject);
begin
RYCheckM_Det:=nil;
end;

procedure TRYCheckM_Det.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
{if (query1.FieldByName('ProQty').value>query1.FieldByName('pairs').value)    then
  begin
    dbgridEH1.canvas.font.color:=clRed;
    dbgridEH1.defaultdrawcolumncell(rect,datacol,column,state);
  end
else
  begin
    dbgridEH1.canvas.font.color:=clLime;
    dbgridEH1.defaultdrawcolumncell(rect,datacol,column,state);
  end; }
end;

procedure TRYCheckM_Det.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select SCBBS.SCBH,sum(isnull(SCBBS.Qty,0)) as ProQty,ddzl.article,xxzl.xieming,max(ddzl.pairs) as pairs');
    sql.Add('from SCBB');
    sql.Add('left join SCBBS on SCBBS.ProNO=SCBB.ProNO');
    sql.Add('left join SCSJ on SCSJ.XH=SCBB.SJXH');
    sql.Add('left join zlzl on zlzl.zlbh=SCBBS.SCBH');
    sql.Add('left join ddzl on ddzl.ddbh=zlzl.ddbh');
    sql.Add('left join xxzl on xxzl.article=ddzl.article');
    if QCMonthlyReport.label2.Caption = 'A' then
      sql.Add('where ddzl.khbh = '+''''+'0038'+''''+' and (SCBBS.GXLB='+''''+'A'+''''+' or SCBBS.GXLB='+''''+'A+C+S'+''''+')')
    else
      sql.Add('where ddzl.khbh = '+''''+'0038'+''''+' and (SCBBS.GXLB='+''''+'C+S'+''''+' or SCBBS.GXLB='+''''+'A+C+S'+''''+')');
    sql.add(' and convert(smalldatetime,convert(varchar,SCBB.SCDATE)) = ');
    sql.add(''''+QCMonthlyReport.dbgrid1.Columns.Items[0].DisplayText+'''');
    sql.Add(' and SCBB.DepNo = '+''''+QCMonthlyReport.edit1.Text+'''');
    sql.Add('group by SCBBS.SCBH,ddzl.article,xxzl.xieming');
    active:=true;
  end;
end;

end.


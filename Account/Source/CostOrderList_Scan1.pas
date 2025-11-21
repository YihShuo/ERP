unit CostOrderList_Scan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables,ehlibbde, StdCtrls, ExtCtrls, Grids, DBGrids,
  GridsEh, DBGridEh,dateutils,math, PrnDbgeh, Menus,comobj;

type
  TCostOrderList_Scan = class(TForm)
    Query1: TQuery;
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CB1: TComboBox;
    DS1: TDataSource;
    Label2: TLabel;
    Edit2: TEdit;
    Query1DDBH: TStringField;
    Query1InQty: TIntegerField;
    Query1InACC: TFloatField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1GSBH: TStringField;
    Query1USACC: TFloatField;
    Query1Qty: TIntegerField;
    Query1Factory: TStringField;
    Query1okQty: TCurrencyField;
    Query1okACC: TCurrencyField;
    Query1YN: TStringField;
    Query1IPrice: TFloatField;
    UpdateSQL1: TUpdateSQL;
    Query1DZQty: TIntegerField;
    Qtemp: TQuery;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostOrderList_Scan: TCostOrderList_Scan;   
  sdate,edate:TDate;

implementation

uses CostOrderList1;

{$R *.dfm}

procedure TCostOrderList_Scan.FormDestroy(Sender: TObject);
begin
CostOrderList_Scan:=nil;
end;

procedure TCostOrderList_Scan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TCostOrderList_Scan.Button1Click(Sender: TObject);
var y,m:word;
sdate,edate:TDate;
begin
if (CostOrderList.CBX1.text='')or (CostOrderList.CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CostOrderList.CBX1.Text);
m:=strtoint(CostOrderList.CBX2.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);

with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select YWCP.YSBH as DDBH,sum(YWCP.okQty)  as InQty,sum(YWCP.okQty*YWCP.IPrice) as InACC,DDZL.Article');
    sql.add('       ,XXZL.XieMing,DDZL.GSBH ,sum(YWCP.IPrice*YWCP.Quantity) as USACC,sum(YWCP.Quantity) as Qty');
    sql.add('       ,isnull(sum(YWCP.DZQty),0) as DZQty,DDZL.YN');
    sql.add('       , YWCP.Factory ,isnull(CWDD.okQty,0) as okQty,isnull(CWDD.okACC,0) as okACC ');
    sql.add('from (select YWCP.DDBH,YWDD.YSBH,YWBZPOS.DDCC,sum(YWBZPOS.Qty-isnull(YWDDSDZ.Qty,0)) as okQty,');
    sql.add('             sum(isnull(YWDDSDZ.Qty,0)) as DZQty,YWDDS.IPrice,YWDDS.Qty-sum(isnull(YWDDSDZ.Qty,0)) as Quantity ');
    sql.add('             ,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                          then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end) as Factory');
    sql.add('      from YWCP ');
    sql.add('      left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH  and YWCP.XH=YWBZPOS.XH ');
    sql.add('      left join YWDDSDZ on YWDDSDZ.CARTONBAR=YWCP.CARTONBAR and YWDDSDZ.DDCC=YWBZPOS.DDCC ');
    sql.add('      left join YWDD on YWDD.DDBH=YWBZPOS.DDBH  ');
    sql.add('      left join YWDDS on YWDDS.DDBH=YWDD.DDBH and YWDDS.DDCC=YWBZPOS.DDCC  ');
    sql.add('      left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('      where convert(smalldatetime,convert(varchar,YWCP.INDate,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('            and YWDD.YSBH like '+''''+edit2.text+'%'+'''');
    sql.add('      group by YWCP.DDBH,YWBZPOS.DDCC,YWDD.YSBH,YWDDS.IPrice,YWDDS.Qty ');
    sql.add('               ,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                      then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end) ');
    sql.add('      ) YWCP  ');
    sql.add('left join DDZL on DDZL.DDBH=YWCP.YSBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join (select YSBH as DDBH,sum(Qty) as okQty,sum(USACC) as okACC from CWDD ');
    sql.add('           where YSBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and CWDD.CWYEAR='+''''+CostOrderList.CBX1.Text+'''');
    sql.add('                 and CWDD.CWMONTH='+''''+ CostOrderList.CBX2.Text+'''');
    sql.add('                 and CWDD.SB='+''''+'1'+'''');
    sql.add('           group by YSBH) CWDD on CWDD.DDBH=DDZL.DDBH ');
    sql.add('where KFZL.KFJC like '+''''+'%'+edit2.Text+'%'+'''');
    if CB1.itemindex<>0 then
      begin
        sql.add('       and DDZL.GSBH='+''''+CB1.Text+'''');
      end;
    sql.add('group by YWCP.YSBH,YWCP.Factory,DDZL.Article,XXZL.XieMing,DDZL.GSBH, YWCP.Factory,CWDD.okQty,CWDD.okACC,DDZL.YN');
    sql.add('order by DDZL.GSBH,YWCP.YSBH , YWCP.Factory');
    active:=true;
  end;

end;

procedure TCostOrderList_Scan.Query1CalcFields(DataSet: TDataSet);
begin

if query1.FieldByName('Qty').Value<>0 then
  begin
    query1.FieldByName('IPrice').Value:=roundto(query1.FieldByName('USACC').Value/query1.FieldByName('Qty').Value,-4);
  end
  else
    begin
      query1.FieldByName('IPrice').Value:=0;
    end;
end;

procedure TCostOrderList_Scan.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with CostOrderList.CWDD do
      begin
        append;
        fieldbyname('DDBH').value:=query1.fieldbyname('DDBH').value; 
        fieldbyname('YSBH').value:=query1.fieldbyname('DDBH').value;
        fieldbyname('GSBH').value:=query1.fieldbyname('GSBH').value;
        if  query1.fieldbyname('GSBH').value='VA12' then
          begin
            fieldbyname('MEMO').value:=query1.fieldbyname('Factory').value;
          end
          else
            begin
              fieldbyname('MEMO').value:=query1.fieldbyname('GSBH').value;
            end;
        fieldbyname('XieMing').value:=query1.fieldbyname('XieMing').value;
        fieldbyname('Article').value:=query1.fieldbyname('Article').value;
        fieldbyname('IPrice').value:=query1.fieldbyname('IPrice').value;
        fieldbyname('Qty').value:=query1.fieldbyname('InQty').value;
        fieldbyname('USACC').value:=query1.fieldbyname('InACC').value;   
        fieldbyname('SB').value:='1';
        FieldByName('zlQty').value:=Query1.FieldByName('Qty').value+Query1.FieldByName('DZQty').value;
        post;
        Query1.Edit;
        Query1.FieldByName('okQty').value:=Query1.FieldByName('InQty').value;
        Query1.FieldByName('okACC').value:=Query1.FieldByName('InACC').value;
        Query1.Post;
      end;
  end;
end;

procedure TCostOrderList_Scan.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
dbgrid1dblclick(nil);
end;

procedure TCostOrderList_Scan.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if query1.FieldByName('InQty').value=query1.FieldByName('okQty').value  then
  begin
    dbgrid1.canvas.font.color:=clRed;
  end;
end;

procedure TCostOrderList_Scan.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.itemindex:=0;
    active:=false;
  end;
end;

procedure TCostOrderList_Scan.Print1Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TCostOrderList_Scan.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

try
  WorkBook:=eclApp.workbooks.Add;
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      query1.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

end.

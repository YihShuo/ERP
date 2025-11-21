unit ScanOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,
  comobj;

type
  TScanOrder = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    NN3: TMenuItem;
    Qtemp: TQuery;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label4: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    Edit9: TEdit;
    Label13: TLabel;
    Edit10: TEdit;
    Label14: TLabel;
    Edit11: TEdit;
    Label15: TLabel;
    Edit12: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanOrder: TScanOrder;
  sdate,edate:Tdate;

implementation

{$R *.dfm}

procedure TScanOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanOrder.Button1Click(Sender: TObject);
var y,m,i:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
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
with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct ZLZLS.XXCC from ZLZLS ');
    sql.add('left join DDZL on DDZL.ZLBH=ZLZLS.ZLBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXIng and XXZL.SheHao=DDZL.SheHao ');
    sql.add('where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('and DDZL.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('and XXZL.Article like '+''''+edit3.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and ZLZLS.Qty<>0');
    sql.add('order by ZLZLS.XXCC ');
    active:=true;
  end;

with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select DDSMS.SMLX,DDSMS.DDBH,XXZL.Article,XXZL.XieMing,DDZL.ShipDate,convert(decimal(18,1),Tot.Pairs) as TotQty ')  ;
    while not QTemp.eof do
      begin
        sql.add(',max(case when DDSMS.XXCC='+''''+QTemp.fieldbyname('XXCC').Value+'''');
        sql.add(' then convert(decimal(18,1),DDSMS.Qty) end) as '+''''+QTemp.fieldbyname('XXCC').Value+'''');
        QTemp.Next;
      end;
    sql.add('from (select DDZL.DDBH,'+''''+' '+''''+' as SMLX,ZLZLS.XXCC,ZLZLS.Qty ');     //訂單號碼明細
    sql.add('      from ZLZLS ');
    sql.add('      left join DDZL on DDZL.ZLBH=ZLZLS.ZLBH ');
    sql.add('      left join XXZL on XXZL.XieXing=DDZL.XieXIng and XXZL.SheHao=DDZL.SheHao ');
    sql.add('      where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and DDZL.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('      and XXZL.Article like '+''''+edit3.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('      and ZLZLS.Qty<>0');
    sql.add('      union ');
    sql.add('      select SCSM.DDBH,SCSM.SMLX,SCSM.XXCC,sum(SCSM.Qty) as Qty  ');       //訂單完成掃描號碼明細
    sql.add('      from SCSM ');
    sql.add('      left join DDZL on SCSM.DDBH=DDZL.DDBH ');
    sql.add('      left join XXZL on XXZL.XieXing=DDZL.XieXIng and XXZL.SheHao=DDZL.SheHao ');
    sql.add('      where  convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and DDZL.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('      and XXZL.Article like '+''''+edit3.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('      group by SCSM.DDBH,SCSM.SMLX,SCSM.XXCC ');
    sql.add('      union ');
    sql.add('      select SCSMRKS.DDBH,'+''''+'7'+''''+' as SMLX,SCSMRKS.XXCC,sum(SCSMRKS.Qty) as Qty ');   //成品倉號碼明細
    sql.add('      from SCSMRKS ');
    sql.add('      left join DDZL on SCSMRKS.DDBH=DDZL.DDBH ');
    sql.add('      left join XXZL on XXZL.XieXing=DDZL.XieXIng and XXZL.SheHao=DDZL.SheHao ');
    sql.add('      where  convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and DDZL.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('      and XXZL.Article like '+''''+edit3.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('      group by SCSMRKS.DDBH,SCSMRKS.XXCC ) DDSMS');
    sql.add('left join DDZL on DDZL.DDBH=DDSMS.DDBH ');
    sql.add('left join (select DDZL.DDBH,sum(ZLZLS.Qty) as Pairs, '+''''+' '+''''+' as SMLX ');     //訂單SIZE總數
    sql.add('           from ZLZLS ');
    sql.add('           left join DDZL on DDZL.ZLBH=ZLZLS.ZLBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('           and DDZL.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('           group by DDZL.DDBH ');
    sql.add('             union  ');
    sql.add('           select SCSM.DDBH,sum(SCSM.Qty) as Pairs,SCSM.SMLX');       //訂單完成掃描總數
    sql.add('           from SCSM ');
    sql.add('           left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('           and DDZL.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('           group by  SCSM.DDBH,SCSM.SMLX');
    sql.add('            union ');
    sql.add('           select SCSMRKS.DDBH,sum(SCSMRKS.Qty) as Pairs,' +''''+'7'+''''+' as SMLX ');   //成品倉入庫總數
    sql.add('           from SCSMRKS ');
    sql.add('           left join DDZL on DDZL.DDBH=SCSMRKS.DDBH ');
    sql.add('           where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('           and DDZL.DDBH like '+''''+edit2.Text+'%'+'''');
    sql.add('            group by SCSMRKS.DDBH   ) Tot  ');
    sql.add('    on Tot.DDBH=DDSMS.DDBH and Tot.SMLX=DDSMS.SMLX ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('group by DDSMS.DDBH,XXZL.Article,XXZL.XieMing,DDZL.ShipDate,DDSMS.SMLX,Tot.Pairs ');
    sql.add('order by DDSMS.DDBH ,DDSMS.SMLX');
    active:=true;
  end;
with DBGrid1 do
  begin
    for i:=6 to query1.FieldCount-1 do
      begin
        columns[i].width:=35;
      end;
    for i:=0 to query1.FieldCount-1 do
      begin
        columns[i].Title.Alignment:=taCenter;
      end;
    columns[0].width:=20;
    columns[1].width:=75;
    columns[2].width:=80;
    columns[3].width:=180;
    columns[3].font.size:=8;
    columns[4].width:=75;
    columns[5].width:=50;
    columns[5].font.style:=[fsbold];
  end;

end;

procedure TScanOrder.Button2Click(Sender: TObject);
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

procedure TScanOrder.DBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
{if  query1.fieldbyname('SMLX').Value='' then
  begin
    dbgrid1.canvas.brush.Color:=clred;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end; }
if  query1.fieldbyname('SMLX').Value='0' then
  begin
    dbgrid1.canvas.brush.Color:=$00FFEEEE;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end;
if  query1.fieldbyname('SMLX').Value='1' then
  begin
    dbgrid1.canvas.brush.Color:=$00FFDFDF;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end;
if  query1.fieldbyname('SMLX').Value='2' then
  begin
    dbgrid1.canvas.brush.Color:=$00FFD2D2;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end;
if  query1.fieldbyname('SMLX').Value='3' then
  begin
    dbgrid1.canvas.brush.Color:=$00FFB5B5;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end;
if  query1.fieldbyname('SMLX').Value='4' then
  begin
    dbgrid1.canvas.brush.Color:=$00FF9D9D;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end;
if  query1.fieldbyname('SMLX').Value='5' then
  begin
    dbgrid1.canvas.brush.Color:=$00FF8888;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end;
if  query1.fieldbyname('SMLX').Value='6' then
  begin
    dbgrid1.canvas.brush.Color:=$00FF6262;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end;
if  query1.fieldbyname('SMLX').Value='7' then
  begin
    dbgrid1.canvas.brush.Color:=$00F00000;
    dbgrid1.defaultdrawdatacell(rect,field,state);
  end;

end;

procedure TScanOrder.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  query1.fieldbyname('SMLX').Value='5' then
  begin
    dbgrid1.canvas.font.color:=clwhite;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if  query1.fieldbyname('SMLX').Value='6' then
  begin
    dbgrid1.canvas.font.color:=clwhite;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if  query1.fieldbyname('SMLX').Value='7' then
  begin
    dbgrid1.canvas.font.color:=clwhite;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
//dbgrid1.Columns[0].color:=clyellow;
end;

procedure TScanOrder.FormDestroy(Sender: TObject);
begin
ScanOrder:=nil;
end;

end.

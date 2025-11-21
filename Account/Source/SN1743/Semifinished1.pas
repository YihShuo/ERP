unit Semifinished1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, ComCtrls,
  StdCtrls, ExtCtrls,dateutils,ehlibBDE,DBGridEhImpExp,fununit,comobj;

type
  TSemifinished = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    QTemp: TQuery;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    DBGridEh1: TDBGridEh;
    Button2: TButton;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1DaoMH: TStringField;
    Query1KFJC: TStringField;
    Query1Pairs: TIntegerField;
    Query1CSD: TDateTimeField;
    Query1C_Qty: TFloatField;
    Query1Lack_C: TFloatField;
    Query1S_Qty: TFloatField;
    Query1Lack_S: TFloatField;
    Query1A_Qty: TFloatField;
    Query1Lack_A: TFloatField;
    Query1F_Qty: TFloatField;
    Query1Lack_F: TFloatField;
    Query1A_Set: TFloatField;
    Query1C_Date: TDateTimeField;
    Query1S_Date: TDateTimeField;
    Query1A_Date: TDateTimeField;
    Query1F_Date: TDateTimeField;
    Query1ETD: TDateTimeField;
    Query1C_Name: TStringField;
    Query1S_Name: TStringField;
    Query1A_Name: TStringField;
    Query1F_Name: TStringField;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label12: TLabel;
    Label19: TLabel;
    CBX4: TComboBox;
    DTP3: TDateTimePicker;
    Label1: TLabel;
    Query1CLQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure NN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Semifinished: TSemifinished;

implementation

uses main1, Semifinished_Det1;

{$R *.dfm}

procedure TSemifinished.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#SCBBS'+''''+') is not null  ');
    sql.add('begin   drop table #SCBBS end   ');
    execsql;
  end;
  action:=cafree;
end;

procedure TSemifinished.FormCreate(Sender: TObject);
var i:integer;
    NDate:TDate;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX4.Items.Add(fieldbyname('GSDH').asstring);
      next;
    end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    DTP1.Date:=startofthemonth(NDate)+5;
    DTP2.Date:=endofthemonth(NDate)+5;
    DTP3.Date:=NDate;
    active:=false;
  end;
end;

procedure TSemifinished.Button1Click(Sender: TObject);
var i:integer;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#SCBBS'+''''+') is not null  ');
    sql.add('begin   drop table #SCBBS end   ');
    sql.add('select SCBBSS.SCBH as DDBH,SCBBSS.XXCC,sum(isnull(SCBBSS.Qty,0)) as Qty,SCGXDY.GX ,max(SCDate) as FinDate,max (Bdepartment.depname) as depname');
    sql.add('into #SCBBS from SCBBSS ');
    sql.add('left join SCBB on SCBB.ProNo=SCBBSS.ProNo ');
    sql.add(' left join Bdepartment on SCBB.depno = Bdepartment.id ');
    sql.add('left join SCGXDY on SCGXDY.GXLB=SCBBSS.GXLB ');
    sql.add('left join DDZL on DDZL.DDBH=SCBBSS.SCBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=SCBBSS.SCBH ');
    sql.add('where  1=1');
    sql.add('        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)) between ');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and SCBBSS.SCBH like '+''''+edit2.text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,SCBB.SCDate))<='''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' ');
    sql.add('and SCBBSS.GXLB in (''A'',''C'',''S'') ');
    sql.add('group by  SCBBSS.SCBH,SCBBSS.XXCC,SCGXDY.GX ');
    //funcobj.WriteErrorLog(sql.Text);
    execsql;

    active:=false;
    sql.clear;
    sql.add('insert #SCBBS ');
    sql.add('select YWDD.YSBH as DDBH,isnull(YWDDS.XXCC,'+''''+''+''''+') as XXCC,sum(isnull(YWBZPOS.Qty,0)) as Qty,'+''''+'F'+''''+' as GX,max(YWCP.InDate) as FinDate,max (Bdepartment.depname) as depname ');
    sql.add('from YWCP ');
    sql.add('left join YWBZPOS on YWCP.DDBH=YWBZPOS.DDBH and YWCP.XH=YWBZPOS.XH ');
    sql.add('left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBH and YWDDS.DDCC=YWBZPOS.DDCC ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join Bdepartment on YWCP.depno = Bdepartment.id ');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=YWDD.YSBH ');
    sql.add('where  YWCP.InDate is not null and YWCP.SB<>''2'' ');
    sql.add('        and convert(smalldatetime,convert(varchar,DDZL.ShipDate)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and YWDD.YSBH like '+''''+edit2.text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,YWCP.InDate,111)) <='''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' ');
    sql.add('group by YWDD.YSBH,YWDDS.XXCC');
    //funcobj.WriteErrorLog(sql.Text);
    execsql;
  end;

  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select DDZL.DDBH,DDZL.Article,XXZL.XieMing,XXZL.DaoMH ,KFZL.KFJC,DDZl.Pairs,DDZL.Shipdate as CSD,KCLL.CLQty,');
    sql.add('       SCBBC.C_Qty,DDZL.Pairs-isnull(SCBBC.C_Qty,0) as Lack_C,SCBBS.S_Qty,DDZL.Pairs-isnull(SCBBS.S_Qty,0) as Lack_S,');
    sql.add('       SCBBA.A_Qty,DDZL.Pairs-isnull(SCBBA.A_Qty,0) as Lack_A,');
    sql.add('       SCBBF.F_Qty,DDZL.Pairs-isnull(SCBBF.F_Qty,0) as Lack_F,');
    sql.add('       case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then 0 ');
    sql.add('            else (case when isnull(SCBBS.S_Qty,0)>isnull(SCBBA.A_Qty,0) then isnull(SCBBS.S_Qty,0)-isnull(SCBBA.A_Qty,0) else 0 end) end as A_Set');
    sql.add('       ,case when DDZL.Pairs<=isnull(SCBBC.C_Qty,0) then SCBBC.FinDate  end as C_Date  ');
    sql.add('       ,case when DDZL.Pairs<=isnull(SCBBS.S_Qty,0) then SCBBS.FinDate  end as S_Date  ');
    sql.add('       ,case when DDZL.Pairs<=isnull(SCBBA.A_Qty,0) then SCBBA.FinDate  end as A_Date  ');
    sql.add('       ,case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then SCBBF.FinDate  end as F_Date ,YWDD.ETD ');

    sql.add('       ,case when DDZL.Pairs<=isnull(SCBBC.C_Qty,0) then SCBBC.Depname  end as C_Name  ');
    sql.add('       ,case when DDZL.Pairs<=isnull(SCBBS.S_Qty,0) then SCBBS.Depname  end as S_Name   ');
    sql.add('       ,case when DDZL.Pairs<=isnull(SCBBA.A_Qty,0) then SCBBA.Depname  end as A_Name   ');
    sql.add('       ,case when DDZL.Pairs<=isnull(SCBBF.F_Qty,0) then SCBBF.Depname  end as F_Name   ');

    sql.add('from DDZL ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and DDZl.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
    sql.add('left join (select #SCBBS.DDBH,max (#SCBBS.Depname)as Depname,sum(#SCBBS.Qty) as C_Qty,max(#SCBBS.FinDate) as FinDate ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'C'+'''');
    sql.add('           group by #SCBBS.DDBH) SCBBC on SCBBC.DDBH=DDZL.DDBH ');
    sql.add('left join (select #SCBBS.DDBH,max (#SCBBS.Depname)as Depname,sum(#SCBBS.Qty) as S_Qty,max(#SCBBS.FinDate) as FinDate ');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'S'+'''');
    sql.add('           group by #SCBBS.DDBH) SCBBS on SCBBS.DDBH=DDZL.DDBH ');
    sql.add('left join (select #SCBBS.DDBH,max (#SCBBS.Depname)as Depname,sum(#SCBBS.Qty) as A_Qty ,max(#SCBBS.FinDate) as FinDate');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'A'+'''');
    sql.add('           group by #SCBBS.DDBH) SCBBA on SCBBA.DDBH=DDZL.DDBH ');
    sql.add('left join (select #SCBBS.DDBH,max (#SCBBS.Depname)as Depname,sum(#SCBBS.Qty) as F_Qty ,max(#SCBBS.FinDate) as FinDate');
    sql.add('           from #SCBBS ');
    sql.add('           where #SCBBS.GX='+''''+'F'+'''');
    sql.add('           group by #SCBBS.DDBH) SCBBF on SCBBF.DDBH=DDZL.DDBH ');
    sql.add('left join (select YSBH as DDBH,min(ETD) as ETD');
    sql.add('           from YWDD');
    sql.add('           group by YSBH) YWDD on YWDD.DDBH=DDZL.DDBH ');
    SQL.Add('left join (Select DDZL.DDBH,Count(CLBH) as CLQty from KCLLS');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('           where KCLL.CFMID<>''NO''');
    SQL.Add('                and convert(smalldatetime,convert(varchar,KCLL.CFMDate))<='''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' ');
    SQL.Add('                and convert(smalldatetime,convert(varchar,DDZL.Shipdate)) between ');
    SQL.Add('                    '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    SQL.Add('                and DDZL.DDBH like '''+edit2.text+'%''');
    SQL.Add('                and DDZL.DDLB=''N'' and DDZL.DDZT=''Y''  ');
    SQL.Add('                and KCLLS.CLBH not like ''W%''          ');
    SQL.Add('           Group by DDZL.DDBH ) KCLL on KCLL.DDBH=DDZL.DDBH ');
    sql.add('where 1=1');
    sql.add('        and convert(smalldatetime,convert(varchar,DDZL.Shipdate)) between ');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and DDZL.DDBH like '+''''+edit2.text+'%'+'''');
    sql.add('      and DDZL.DDLB=''N'' and DDZL.DDZT<>''C'' ');
    //不顯示以滿箱出貨
    //sql.add('      and DDZL.Pairs > isnull(SCBBF.F_Qty,0)');
    sql.add('      and DDZl.GSBH='+''''+CBX4.text+'''');
    sql.add('order by DDZL.DDBH ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TSemifinished.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((query1.FieldByName('Pairs').value>query1.FieldByName('F_Qty').value)
                and ((not query1.FieldByName('C_Qty').isnull)
                or (not query1.FieldByName('F_Qty').isnull)) )then
    DBGridEh1.Canvas.Font.Color:=clred;
  if query1.FieldByName('CLQty').value >0 then
    DBGridEh1.Canvas.Font.Color:=clblue;
end;

procedure TSemifinished.Button2Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin

  if Query1.Active then
  begin
    if Query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGridEh1.Columns[i].Title.Caption;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j,i+2].NumberFormatLocal:='@';
          eclApp.Cells(j,i+2):=DBGridEh1.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        Query1.Next;
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

procedure TSemifinished.NN1Click(Sender: TObject);
begin
  Semifinished_Det:=TSemifinished_Det.Create(self);
  Semifinished_Det.ShowModal();
end;

end.

unit ProduceUseStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls, DB, DBTables
  ,Dateutils ,Comobj, Menus;

type
  TProduceUseStock = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button4: TButton;
    Button5: TButton;
    EditRY1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    BuyNoEdit: TEdit;
    Edit_MatNo: TEdit;
    EditArticle: TEdit;
    Panel3: TPanel;
    Splitter3: TSplitter;
    DBGridEh1: TDBGridEh;
    STLCombo: TComboBox;
    RemQuery: TQuery;
    DetailQry: TQuery;
    DS2: TDataSource;
    DS1: TDataSource;
    RemQueryCLBH: TStringField;
    RemQueryYWPM: TStringField;
    RemQueryZWPM: TStringField;
    RemQueryDWBH: TStringField;
    RemQueryCQDH: TStringField;
    RemQueryQty: TCurrencyField;
    RemQueryUSPrice: TFloatField;
    RemQueryVNPrice: TFloatField;
    Label1: TLabel;
    DetailQrySCBH: TStringField;
    DetailQryCLBH: TStringField;
    DetailQryQty: TCurrencyField;
    DetailQryUseQty: TCurrencyField;
    Chk_Det: TCheckBox;
    DBGridEh2: TDBGridEh;
    RemQueryUSTotal: TFloatField;
    qrUsestock: TQuery;
    ExRateLB: TLabel;
    JGCK: TCheckBox;
    Label2: TLabel;
    DetailQryType: TStringField;
    RemQueryLBBH: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Chk_DetClick(Sender: TObject);
    procedure RemQueryCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    CWHL:Double;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProduceUseStock: TProduceUseStock;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TProduceUseStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TProduceUseStock.FormDestroy(Sender: TObject);
begin
  ProduceUseStock:=nil;
end;

procedure TProduceUseStock.Button4Click(Sender: TObject);
var 
   year,month,day:word;
   ayear,amonth:string;
begin

  decodedate(Date(),Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //Exchnage
  with qrUsestock do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CWHL from CWHLS order by HLYEAR desc,HLMONTH desc,HLDAY desc ');
    Active:=true;
    CWHL:=FieldByName('CWHL').AsFloat;
    ExRateLB.Caption:='美金越盾匯率:'+floattostr(CWHL);
    Active:=false;
  end;
  //
  with RemQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,Sum(Case when Qty<=UseQty then Qty else UseQty end) as Qty,Max(USPrice) as USPrice,Max(VNPrice) as VNPrice,Max(IsNull(LastKC.LBBH,CLLBFLS.LBBH)) as LBBH from (');
    SQL.Add('select KCLLS.SCBH,KCLLS.CLBH,KCLLS.Qty,CGKCUSE.QTY as UseQty,CGBJ.USPrice,CGBJ.VNPrice from (');
    SQL.Add('');
    SQL.Add('select GSBH,SCBH,CLBH,Sum(Qty) as Qty from (');
    SQL.Add('select KCLL.LLNO,KCLL.GSBH,KCLL.SCBH,KCLLS.CLBH,KCLLS.Qty,1 as YN from KCLL');
    SQL.Add('inner join KCLLS  on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('where KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMDATE Between Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''') and Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''')');
    SQL.Add('and KCLLS.Qty>0 and KCLL.SCBH<>''ZZZZZZZZZZ'' and KCLL.SCBH<>''XXXXXXXXXX'' and KCLL.SCBH<>''WWWWWWWWWW'' and KCLL.SCBH<>''DDDDDDDDDD'' ');
    SQL.Add('and KCLLS.CLBH like '''+Edit_MatNo.Text+'%'' and KCLLS.SCBH like '''+EditRY1.Text+'%'' ');
    SQL.Add('');
    if JGCK.Checked=true then
    begin
    SQL.Add('Union all');
    SQL.Add('');
    SQL.Add('select * from (');
    SQL.Add('select JGChi.JGNO,JGChi.GSBH,JGChi.ZLBH,JGChi.ZMLB,(JGChi.Qty*Case when JGMon.Qty<=JGMon.AllQty then JGMon.Qty else JGMon.allQty end) as Qty,2 as YN from (');
    SQL.Add('select JGZLS.JGNO,JGZL.GSBH,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty,JGZLSS.ZLBH from JGZLSS,JGZLS,JGZL ');
    SQL.Add('where  JGZL.JGNO=JGZLS.JGNO and JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH  and JGZLSS.ZLBH is not null and ZMLB<>''ZZZZZZZZZZ'' and ZMLB like '''+Edit_MatNo.Text+'%'' and  JGZLSS.ZLBH like '''+EditRY1.Text+'%'' ');
    SQL.Add('       and JGZL.GSBH='''+main.Edit2.Text+''' and JGZL.CFMDATE1 Between Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''') and Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''') and JGZL.CFMID1<>''NO'' ');
    SQL.Add(') JGChi');
    SQL.Add('inner join (');
    SQL.Add(' select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty as AllQty,JGZLSS.Qty,JGZLSS.ZLBH from JGZLSS,JGZLS,JGZL  ');
    SQL.Add(' where  JGZL.JGNO=JGZLS.JGNO and JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH  and JGZLSS.ZLBH is not null  and ZMLB=''ZZZZZZZZZZ''  and  JGZLSS.ZLBH like '''+EditRY1.Text+'%'' ');
    SQL.Add('      and JGZL.GSBH='''+main.Edit2.Text+''' and JGZL.CFMDATE1 Between Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''') and Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''')  and JGZLS.Qty>0 and JGZL.CFMID1<>''NO'' ');
    SQL.Add(') JGMon on JGChi.JGNO=JGMon.JGNO and JGChi.CLBH=JGMon.CLBH and JGChi.ZLBH=JGMon.ZLBH ) JGZL ');
    SQL.Add('where ZMLB like '''+Edit_MatNo.Text+'%'' and ZLBH like '''+EditRY1.Text+'%'' ');
    end;
    SQL.Add(' ) KCLLS Group by  GSBH,SCBH,CLBH');
    SQL.Add(') KCLLS');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('left join CGKCUSE on CGKCUSE.GSBH=KCLLS.GSBH and CGKCUSE.ZLBH=KCLLS.SCBH and KCLLS.CLBH=CGKCUSE.CLBH');
    SQL.Add('left join (select CGBJ.CLBH,CGBJ.USPrice,CGBJ.VNPrice from (');
    SQL.Add('select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJS.BJNO DESC) as  rn from CGBJS,CGBJ where CGBJS.BJNO=CGBJ.BJNO and CGBJ.GSBH='''+main.Edit2.Text+'''  and CGBJS.CLBH not like ''V%'' ');
    SQL.Add(') CGBJ where rn=1 ) CGBJ on CGBJ.CLBH=KCLLS.CLBH');
    SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH ');
    SQL.Add('where CGKCUSE.Qty>0 ');
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if EditArticle.Text<>'' then
       sql.add('         and DDZL.Article like '+''''+EditArticle.text+'%'+'''');
    if STLCombo.ItemIndex=1 then
       sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
    else if STLCombo.ItemIndex=2 then
       sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');

    SQL.Add(') KCLLS');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    //LBBH
    sql.add('left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as LastRem ');
    sql.add('           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add('           and KCMONTH='+''''+amonth+'''');
    sql.add('           and KCCLMONTH.CLBH like '+''''+Edit_MatNo.Text+'%'+'''');
    sql.Add('           and KCCLMONTH.CKBH='+''''+main.Edit1.Text+'''');
    sql.add('           ) LastKC on LastKC.CLBH=CLZL.CLDH ');
    sql.add('left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add(' Group by KCLLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;

  with DetailQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLLS.SCBH,KCLLS.CLBH,KCLLS.Qty,CGKCUSE.QTY as UseQty,Case when  KCLLS.YN=1 then ''LL'' else ''JGCK'' end as [Type] from (');
    SQL.Add('');
    SQL.Add('select GSBH,SCBH,CLBH,Sum(Qty) as Qty,YN  from (');
    SQL.Add('select KCLL.LLNO,KCLL.GSBH,KCLL.SCBH,KCLLS.CLBH,KCLLS.Qty,1 as YN from KCLL');
    SQL.Add('inner join KCLLS  on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('where KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMDATE Between Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''') and Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''')');
    SQL.Add('and KCLLS.Qty>0 and KCLL.SCBH<>''ZZZZZZZZZZ'' and KCLL.SCBH<>''XXXXXXXXXX'' and KCLL.SCBH<>''WWWWWWWWWW'' and KCLL.SCBH<>''DDDDDDDDDD'' ');
    SQL.Add('and KCLLS.CLBH=:CLBH and KCLLS.SCBH like '''+EditRY1.Text+'%'' ');
    SQL.Add('');
    if JGCK.Checked=true then
    begin
    SQL.Add('Union all');
    SQL.Add('');
    SQL.Add('select * from (');
    SQL.Add('select JGChi.JGNO,JGChi.GSBH,JGChi.ZLBH,JGChi.ZMLB,(JGChi.Qty* Case when JGMon.Qty<=JGMon.AllQty then JGMon.Qty else JGMon.allQty end) as Qty,2 as YN from (');
    SQL.Add('select JGZLS.JGNO,JGZL.GSBH,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty,JGZLSS.ZLBH from JGZLSS,JGZLS,JGZL ');
    SQL.Add('where  JGZL.JGNO=JGZLS.JGNO and JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH  and JGZLSS.ZLBH is not null and ZMLB<>''ZZZZZZZZZZ'' and ZMLB=:CLBH  and  JGZLSS.ZLBH like '''+EditRY1.Text+'%''');
    SQL.Add('       and JGZL.GSBH='''+main.Edit2.Text+''' and JGZL.CFMDATE1 Between Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''') and Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''') and JGZL.CFMID1<>''NO''');
    SQL.Add(') JGChi');
    SQL.Add('inner join (');
    SQL.Add(' select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty as AllQty,JGZLSS.Qty,JGZLSS.ZLBH from JGZLSS,JGZLS,JGZL  ');
    SQL.Add(' where  JGZL.JGNO=JGZLS.JGNO and JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH  and JGZLSS.ZLBH is not null  and ZMLB=''ZZZZZZZZZZ''   and     JGZLSS.ZLBH like '''+EditRY1.Text+'%''');
    SQL.Add('      and JGZL.GSBH='''+main.Edit2.Text+''' and JGZL.CFMDATE1 Between Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''') and Convert(datetime,'''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''') and JGZLS.Qty>0 and JGZL.CFMID1<>''NO''');
    SQL.Add(') JGMon on JGChi.JGNO=JGMon.JGNO and JGChi.CLBH=JGMon.CLBH and JGChi.ZLBH=JGMon.ZLBH ) JGZL ');
    SQL.Add('where ZMLB=:CLBH and ZLBH like '''+EditRY1.Text+'%''');
    end;
    SQL.Add(' ) KCLLS Group by  GSBH,SCBH,CLBH,YN ');
    SQL.Add(') KCLLS');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('left join CGKCUSE on CGKCUSE.GSBH=KCLLS.GSBH and CGKCUSE.ZLBH=KCLLS.SCBH and KCLLS.CLBH=CGKCUSE.CLBH');
    SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH ');
    SQL.Add('where CGKCUSE.Qty>0 ');
    if BuyNoEdit.Text <> '' then
      sql.add('       and DDZL.BuyNO like '''+BuyNoEdit.Text+'%'''); //20140102 增加BuyNO 欄位查詢
    if EditArticle.Text<>'' then
       sql.add('         and DDZL.Article like '+''''+EditArticle.text+'%'+'''');
    if STLCombo.ItemIndex=1 then
       sql.add('         and IsNull(DDZL.RYType,'''')<>''SLT'' ')
    else if STLCombo.ItemIndex=2 then
       sql.add('         and IsNull(DDZL.RYType,'''')=''SLT'' ');
    SQL.Add('order by KCLLS.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    if Chk_Det.Checked=true then Active:=true;
  end;
end;

procedure TProduceUseStock.Chk_DetClick(Sender: TObject);
begin
    //
    if Chk_Det.Checked then
    begin
      if RemQuery.Active=true then DetailQry.Active:=true;
      DBGridEh2.Visible:=true;
      Splitter3.Align:=alRight;
    end
    else
    begin
      DetailQry.Active:=false;
      DBGridEh2.Visible:=false;
      Splitter3.Align:=alNone;
    end;
end;

procedure TProduceUseStock.RemQueryCalcFields(DataSet: TDataSet);
begin
   if RemQuery.FieldByName('USPrice').IsNull=false then
     RemQuery.FieldByName('USTotal').AsString:=FormatFloat('###.##',RemQuery.FieldByName('USPrice').Value*RemQuery.FieldByName('Qty').Value);
   if RemQuery.FieldByName('VNPrice').IsNull=false then
     RemQuery.FieldByName('USTotal').AsString:=FormatFloat('###.###',RemQuery.FieldByName('VNPrice').Value*RemQuery.FieldByName('Qty').Value/CWHL);

end;

procedure TProduceUseStock.FormCreate(Sender: TObject);
begin
  DTP1.Datetime:=StartOfTheMonth(IncMonth(Date(),-1));
  DTP2.Datetime:=EndOfTheMonth(IncMonth(Date(),-1));
end;

procedure TProduceUseStock.Button5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    ClumnWidth:array [0..16] of integer;
    ClumnDesc:array [0..16] of string;
begin
    DetailQry.Active:=false;
    if  RemQuery.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
        ClumnDesc[0]:='材料編號/MatNo.';
        ClumnDesc[1]:='材料英文/MatName';
        ClumnDesc[2]:='材料中文/MatName';
        ClumnDesc[3]:='單位/Unit';
        ClumnDesc[4]:='採區/CQDH';
        ClumnDesc[5]:='使用庫存/Qty';
        ClumnDesc[6]:='美金單價/USPrice';
        ClumnDesc[7]:='越盾單價/VNPrice';
        ClumnDesc[8]:='美金總額/TotalUSPrice';
        ClumnDesc[9]:='分類/Class';

        ClumnWidth[0]:=10;
        ClumnWidth[1]:=20;
        ClumnWidth[2]:=20;
        ClumnWidth[3]:=5;
        ClumnWidth[4]:=5;
        ClumnWidth[5]:=10;
        ClumnWidth[6]:=10;
        ClumnWidth[7]:=10;
        ClumnWidth[8]:=10;
        ClumnWidth[9]:=10;

      try
          WorkBook:=eclApp.workbooks.Add;
          for i:=0 to High(ClumnWidth) do
          begin
            eclApp.ActiveSheet.Columns[i+1].ColumnWidth := ClumnWidth[i]; //欄位寬度
            eclApp.Cells[1,i+1].HorizontalAlignment := -4108; //文字水平置中
            eclApp.Cells(1,i+1):=ClumnDesc[i]; //抬頭名稱 YPZLZLS2.fields[i].FieldName;
          end;
          //抬頭顏色
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,i]].interior.color:=clYellow;
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,High(ClumnWidth)+1]].WrapText:=true;
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[RemQuery.RecordCount+1,High(ClumnWidth)+1]].Borders.weight:=2;
          //
          RemQuery.First;
          j:=2;
          while   not   RemQuery.Eof   do
          begin
            for   i:=0   to  RemQuery.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=RemQuery.Fields[i].Value;
            end;
            RemQuery.Next;
            inc(j);
          end;
         //eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
        on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
    if Chk_Det.Checked=true then DetailQry.Active:=true;
end;

procedure TProduceUseStock.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  DetailQry.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for  i:=0  to  DetailQry.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=DetailQry.fields[i].FieldName;
            end;

          DetailQry.First;
          j:=2;
          while   not   DetailQry.Eof   do
            begin
              for   i:=0   to  DetailQry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=DetailQry.Fields[i].Value;
              end;
            DetailQry.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;

end.

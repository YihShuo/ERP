unit Traceability_Warehouse1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,IniFiles;

type
  TTraceability_Warehouse = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    MatNameEdit: TEdit;
    Button3: TButton;
    BuyNoEdit: TEdit;
    RYEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BUYNO: TStringField;
    Query1KHPO: TStringField;
    Query1ZLBH: TStringField;
    Query1Article: TStringField;
    Query1SR: TStringField;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1QTYUSAGE: TFloatField;
    Query1QTYORDERED: TCurrencyField;
    Query1QTYINPUT: TCurrencyField;
    Query1UseStock: TCurrencyField;
    Query1CFMDate: TDateTimeField;
    Query1RKDate: TDateTimeField;
    Query1CGNO: TStringField;
    Query1RKNO: TStringField;
    Query1DOCNO: TStringField;
    Query1KCBH: TStringField;
    Query1FlexID: TStringField;
    Query1CLBH: TStringField;
    Query1LLQty: TCurrencyField;
    Query1release: TDateTimeField;
    Query1LotNo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Traceability_Warehouse: TTraceability_Warehouse;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TTraceability_Warehouse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTraceability_Warehouse.FormDestroy(Sender: TObject);
begin
  Traceability_Warehouse:=nil;
end;

procedure TTraceability_Warehouse.Button1Click(Sender: TObject);
var InputIsOk:boolean;
    DDZL_SubSQL:String;
begin
  InputIsOk:=false;
  if length(RYEdit.Text)>=5 then InputIsOk:=true;
  if length(BuyNoEdit.Text)>=4 then InputIsOk:=true;
  DDZL_SubSQL:='and DDZL.GSBH='''+main.Edit2.Text+''' ';
  if BuyNoEdit.Text<>'' then
    DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ';
  if RYEdit.Text<>'' then
    DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.DDBH like '''+RYEdit.Text+'%'' ';
  if InputIsOk=false then
  begin
    Showmessage('Input OrderNo(5) '+#13#10+'Input BuyNo(4)');
    abort;
  end;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('  Select  isnull(DDZL.BUYNO,0) as BUYNO,DDZL.KHPO,ZLZLS2.ZLBH,XXZL.Article,kfxxzl.DEVCODE as SR,XXZL.XieMing,DDZL.Pairs,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH   ');
    sql.Add('  ,case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsCGZLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as QTYUSAGE ,isnull(CGZL.CGQty,0) as QTYORDERED,RKZL.RKQty as QTYINPUT  ');
    sql.Add('  ,isnull(CGKCUSE.Qty,0) as UseStock,CGZL.CFMDate,RKZL.RKDate,CGZL.CGNO,RKZl.RKNO,RKZL.DOCNO,KCZLS.KCBH,cldhflex as FlexID,ZLZLS2.CLBH,LLQty,KCLL.CFMDate as release,KCRKSCan_RFSS.LotNO  ');
    sql.Add(' from ZLZLS2 with (nolock) ');
    sql.Add(' inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL );
    sql.Add(' left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH ');
    sql.Add(' left join SCZL with (nolock) on ZLZLS2.ZLBH = SCZL.SCBH  ');
    sql.Add(' left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH   ');
    sql.Add(' left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH   ');
    sql.Add(' left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH   ');
    sql.Add(' left join (  ');
    sql.Add('              Select CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH,Sum(CGKCUSES.Qty) as Qty  from CGKCUSES with (nolock) ');
    sql.Add('              where CGKCUSES.GSBH='''+main.edit2.Text+''' ');
    sql.Add('              Group by CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH) CGKCUSE  on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH=''VA12'' ');
    sql.Add(' left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
    sql.Add(' left join KFXXZL  with (nolock) on KFXXZL.XieXing=DDZLTW.XieXing and KFXXZL.SheHao=DDZLTW.SheHao  ');
    sql.Add(' left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH  ');
    sql.Add(' left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH  ');
    sql.Add(' left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
    sql.Add(' left join ( select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty, ');
    sql.Add('                    max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate, ');
    sql.Add('                    max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPrice  ');
    sql.Add('             from CGZLSS with (nolock)  ');
    sql.Add('             inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH '+DDZL_SubSQL);
    sql.Add('             left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH   ');
    sql.Add('             left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CGNO  ');
    sql.Add('             where CGZL.CGLX in (''1'',''2'',''5'') and  DDZL.GSBH='''+main.edit2.Text+''' ');
    if BuyNoEdit.Text <>'' then
      sql.Add('           and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add('           and CGZLSS.ZLBH  like '''+RYEdit.Text+'%'' ');
    if MatNoEdit.Text <> '' then
      sql.Add('           and CGZLSS.CLBH like '''+MatNoEdit.Text+'%'' ');
    sql.Add('             group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL  ');
    sql.Add('             on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH ');
    sql.Add(' left join ( select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,  ');
    sql.Add('                    max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    sql.Add('                    max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ,Declaretion,');
    sql.Add('                    case when ((left(KCRK.HGLB,2) in (''NK'',''TC'',''KD'')) or (KCRK.HGLB=''H11''))  then KCRK.DOCNO else KCRK.MEMO end as DOCNO,KCRK.ZSBH,zszl.yjdz,');
    sql.Add('         				   CGZL_Payment.FKBH,CGZL_Payment.USERDATE as PaymentDate,Busers.USERNAME,DepName ');
    sql.Add('             from  KCRKS with (nolock)  ');
    sql.Add('             inner join DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
    sql.Add('             left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO  ');
    sql.Add('        	    left join KCPK on kcrk.RKNO=kcpk.PKNO ');
    sql.Add('        	    left join zszl on kcrk.ZSBH=zszl.zsdh ');
    sql.Add('         	  left join CGZL_PaymentS on kcpk.Declaretion=CGZL_PaymentS.DECLARATION and kcrk.DOCNO=CGZL_PaymentS.DOCNO ');
    sql.Add('       	    left join CGZL_PaymentSS on CGZL_PaymentSS.VATNO=KCRK.DOCNO and CGZL_PaymentSS.ZSBH_MST=zszl.tybh  ');
    sql.Add('       	    left join CGZL_Payment on isnull(CGZL_PaymentS.FKBH,CGZL_PaymentSS.FKBH)=CGZL_Payment.FKBH  ');
    sql.Add('       	    left join BDepartment on CGZL_Payment.DEPID=BDepartment.ID  ');
    sql.Add('     		    left join Busers on CGZL_Payment.USERID=Busers.USERID ');
    sql.Add('             where DDZL.GSBH='''+main.edit2.Text+''' ');
    sql.Add('             and KCRK.SFL<>''THU HOI'' ');
    if BuyNoEdit.Text <>'' then
      sql.Add('           and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add('           and KCRKS.CGBH  like '''+RYEdit.Text+'%'' ');
    if MatNoEdit.Text <> '' then
      sql.Add('           and KCRKS.CLBH like '''+MatNoEdit.Text+'%'' ');
    sql.Add('             group by KCRKS.CGBH,KCRKS.CLBH,Declaretion,KCRK.DOCNO,KCRK.ZSBH,zszl.yjdz,CGZL_Payment.FKBH,CGZL_Payment.USERDATE,Busers.USERNAME,DepName,KCRK.HGLB,KCRK.MEMO ) RKZL  ');
    sql.Add('             on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
    sql.Add('  left join (select KCLLS.SCBH,KCLLS.CLBH,max(KCLL.CFMDate) CFMDate,sum(KCLLS.Qty) as LLQty,KCLL.CKBH  ');
    sql.Add('  	          from KCLLS with (nolock) left join KCLL with (nolock)  on KCLL.LLNO=KCLLS.LLNO   ');
    sql.Add('  		        inner join DDZL on DDZL.DDBH=KCLLS.SCBH '+DDZL_SubSQL );
    sql.Add('  		        where KCLL.GSBH='''+main.edit2.Text+''' and KCLL.CFMID<>''NO'' ');
    if BuyNoEdit.Text <>'' then
      sql.Add('  		      and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add('           and KCLLS.SCBH like '''+RYEdit.Text+'%'' ');
    if MatNoEdit.Text <> '' then
    sql.Add('             and KCLLS.CLBH like '''+MatNoEdit.Text+'%'' ');
    sql.Add('             group by  KCLLS.SCBH,KCLLS.CLBH,KCLL.CKBH ) KCLL  on KCLL.SCBH=ZLZLS2.ZLBH and KCLL.CLBH=ZLZLS2.CLBH   ');
    sql.Add(' left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
    sql.Add(' left join CLZL_Origin Origin on CLZL.CLDH=Origin.CLBH and Origin.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add(' left join CLZL_FLEX on CLZL.CLDH=CLZL_FLEX.CLDH ');
    sql.Add(' left join KCZLS on KCZLS.CLBH=ZLZLS2.CLBH and KCLL.CKBH=KCZLS.CKBH');
    sql.Add(' left join (	Select KCRKSCan_RFSSS.CLBH, KCRKSCan_RFSSS.ZLBH,max(KCRKSCan_RFSS.LotNO) as LotNo ');
    sql.Add('       				From KCRKSCan_RFSS  ');
    sql.Add('       			  Left join KCRKSCan_RFSSS on KCRKScan_RFSS.SCNO = KCRKScan_RFSSS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFSSS.CLBH and KCRKScan_RFSS.Pack = KCRKScan_RFSSS.Pack ');
    sql.Add('				        WHERE KCRKSCan_RFSS.USERID in ( select zsdh from  zszl_lot) ');
    sql.Add('       				Group by KCRKSCan_RFSSS.CLBH, KCRKSCan_RFSSS.ZLBH)KCRKSCan_RFSS on ZLZLS2.CLBH=KCRKSCan_RFSS.CLBH and ZLZLS2.ZLBH=KCRKSCan_RFSS.ZLBH ');
    sql.Add(' where DDZL.GSBH='''+main.edit2.Text+''' ');
    sql.Add(' and ZLZLS2.CLBH not like ''W%'' ');
    sql.Add(' and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH ) ');
    if BuyNoEdit.Text <>'' then
      sql.Add('           and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add(' and ZLZLS2.ZLBH  like '''+RYEdit.Text+'%'' ');
    if MatNoEdit.Text <> '' then
      sql.Add(' and ZLZLS2.CLBH  like '''+MatNoEdit.Text+'%'' ');
    if MatNameEdit.Text <> '' then
      sql.Add(' and CLZL.YWPM like ''%'+ MatNameEdit.Text+'%'' ');
    sql.Add(' and ZLZLS2.ZMLB=''N'' ');
    sql.Add(' and ZLZLS2.CLSL<>0 ');
    sql.Add(' and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null) ');
    sql.Add(' group by DDZL.BUYNO,DDZL.KHPO,ZLZLS2.ZLBH,XXZL.Article,kfxxzl.DEVCODE,XXZL.XieMing,DDZL.Pairs,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH ,DDZLTW.DDZT,SCZL.IsCGZLS,CGZL.CGQty,RKZL.RKQty');
    sql.Add('	,CGKCUSE.Qty,RKZL.RKDate,CGZL.CFMDate,CGZL.CGNO,RKZl.RKNO,RKZL.DOCNO,KCZLS.KCBH,cldhflex,ZLZLS2.CLBH,LLQty,KCLL.CFMDate,KCRKSCan_RFSS.LotNO ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TTraceability_Warehouse.Button3Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,l:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        if ((DBGridEh1.Fields[i].FieldName = 'DOCNO') or (DBGridEh1.Fields[i].FieldName = 'KHPO') or (DBGridEh1.Fields[i].FieldName = 'LotNo')) then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
        else
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        if DBGridEh1.Fields[i].FieldName = 'RKDate' then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
        if DBGridEh1.Fields[i].FieldName = 'release' then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
      // outline
      for l:=1 to 4 do
      begin
       eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
      end;
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;
end.

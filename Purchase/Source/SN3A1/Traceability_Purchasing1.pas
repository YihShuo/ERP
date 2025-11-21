unit Traceability_Purchasing1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,IniFiles,ShellApi;

type
  TTraceability_Purchasing = class(TForm)
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
    Query1: TQuery;
    DS1: TDataSource;
    Query1BUYNO: TStringField;
    Query1KHPO: TStringField;
    Query1ZLBH: TStringField;
    Query1Article: TStringField;
    Query1SR: TStringField;
    Query1Pairs: TIntegerField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CLSL: TFloatField;
    Query1CGQty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1UseStock: TCurrencyField;
    Query1zsywjc: TStringField;
    Query1Address_Of_Buy_Com: TStringField;
    Query1Address_Of_Sell_Com: TStringField;
    Query1usprice: TFloatField;
    Query1vnprice: TCurrencyField;
    Query1DOCNO: TStringField;
    Query1Declaretion: TStringField;
    Query1FKBH: TStringField;
    Query1PaymentDate: TDateTimeField;
    Query1USERNAME: TStringField;
    Query1DepName: TStringField;
    Query1RKDate: TDateTimeField;
    Query1RKNO: TStringField;
    Query1FlexID: TStringField;
    Query1Amount_VND: TCurrencyField;
    Query1BillNo: TStringField;
    Query1Amount_USD: TCurrencyField;
    Query1CountryOrigin: TStringField;
    Query1MaterialOrigin: TStringField;
    Query1CertificateOrigin: TStringField;
    Query1CGNO: TStringField;
    Splitter1: TSplitter;
    Panel17: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    DS2: TDataSource;
    Button2: TButton;
    DBGridEh2: TDBGridEh;
    QFile: TQuery;
    QFileCLBH: TStringField;
    QFileLotNO: TStringField;
    QFileLotFile: TStringField;
    QFileZLBH: TStringField;
    Query1CGDate: TDateTimeField;
    Query1PlaceDelivery: TStringField;
    Query1Carrier: TStringField;
    Query1Packinglocation: TStringField;
    Query1Packdate: TStringField;
    Query1LotFile: TIntegerField;
    Query1NewFile: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
  private
    Address:string;
    SQL_LinkServer,AccountN233_CheckLinkServer:string;
    DCTFilePath: string;
    OriginFilePath: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Traceability_Purchasing: TTraceability_Purchasing;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TTraceability_Purchasing.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  Address:='HOA PHU INDUSTRIAL ZONE, THANH HUNG HAMLET, HOA PHU VILLAGE, LONG HO DISTRICT, VINH LONG PROVINCE, VIETNAM';
  AppDir:=ExtractFilePath(Application.ExeName);
  AccountN233_CheckLinkServer:='Y';
  DCTFilePath := '\\192.168.123.112\origin\';
  OriginFilePath := '\\192.168.23.16\printlabel\uploadfile\';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Address:=MyIni.ReadString('ERP','Address','');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','');
      DCTFilePath:=MyIni.ReadString('DCT','Purchase_N2A_DCTFilePath','');
      OriginFilePath:=MyIni.ReadString('ERP','PurchaseN39_OriginFile','');
    finally
      MyIni.Free;
    end;
  end;
  If AccountN233_CheckLinkServer='Y' then
  begin
    SQL_LinkServer:='LacTyDB.LIY_ERP.dbo';
  end else
  begin
    SQL_LinkServer:='dbo';
  end;
end;
//

procedure TTraceability_Purchasing.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTraceability_Purchasing.FormDestroy(Sender: TObject);
begin
  Traceability_Purchasing:=nil;
end;

procedure TTraceability_Purchasing.Button1Click(Sender: TObject);
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
    //Close;
    sql.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    active:=false;
    sql.Clear;
    sql.Add(' Select  isnull(DDZL.BUYNO,0) as BUYNO,cldhflex as FlexID,DDZL.KHPO ,ZLZLS2.ZLBH,XXZL.Article,kfxxzl.DEVCODE as SR,DDZL.Pairs  ');
    sql.Add('     		,CGZL.CGNO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH ,case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsCGZLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL ');
    sql.Add('   		  ,isnull(CGZL.CGQty,0) as CGQty, RKZL.RKQty as RKQty,isnull(CGKCUSE.Qty,0) as UseStock,Max(zszl.zsywjc) as zsywjc,'''+Address+''' as Address_Of_Buy_Com,RKZL.yjdz as Address_Of_Sell_Com ');
    sql.Add('     		,isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnprice ');
    sql.Add('         ,RKZL.DOCNO,RKZL.Declaretion--,RKZL.BillNo  ');
    sql.Add('         ,case when CLZL.cqdh=''VN'' then RKZL.BillNo else Bill_Info.BillNo end as BillNo ');
    sql.Add('         ,case when CLZL.cqdh=''VN'' then ''VIET NAM'' else Bill_Info.Country end as CountryOrigin ');
    sql.Add('		      ,case when ISNULL(Bill_Info.Carrier,'''')='''' then ''Truck'' else Bill_Info.Carrier end as Carrier, KCRKScan_RF.MEMO as Packdate ');
    sql.Add('		      ,case when CLZL.cqdh=''VN'' then ''VIET NAM'' else Bill_Info.PlaceDelivery end as PlaceDelivery,case when CLZL.cqdh=''VN'' then ''VIET NAM'' else Bill_Info.PlaceDelivery end as Packinglocation ');
    sql.Add('         ,Origin.Country as MaterialOrigin,Origin.DocFile as CertificateOrigin,isnull (zszl_lot.LotFile,0) as LotFile,max (lot.LotFile) as NewFile,RKZL.FKBH,RKZL.PaymentDate');
    sql.Add('         ,RKZL.USERNAME,RKZL.DepName,RKZL.Amount_USD,RKZL.Amount_VND,RKZL.RKDate,RKZl.RKNO,CGZL.CGDate  ');
    sql.Add(' from ZLZLS2 with (nolock) ');
    sql.Add(' inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH ' +DDZL_SubSQL );
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
    sql.Add('                    CGZLSS.CFMDate as CFMDate,CGZL.CGDate as CGDate, ');
    sql.Add('                    CGZL.CGNO as CGNO,CGZLSS.YQDate as YQDate,CGZLS.QUSPrice as USPrice,CGZLS.QVNPrice as VNPrice  ');
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
    sql.Add('             group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.CFMDate,CGZL.CGDate,CGZL.CGNO,CGZLSS.YQDate,CGZLS.QUSPrice,CGZLS.QVNPrice ) CGZL  ');
    sql.Add('             on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH ');
    sql.Add(' left join ( select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,  ');
    sql.Add('                    KCRKS.RKNO as RKNO,KCRK.ZSNO,KCRK.USERDate as RKDate, ');
    sql.Add('                    kcrks.usprice as usprice,kcrks.vnprice as vnprice ,Declaretion,KCRK.DOCNO,KCRK.Memo as BillNo,KCRK.ZSBH,zszl.yjdz ');
    sql.Add('         				   ,CGZL_Payment.FKBH,CGZL_Payment.USERDATE as PaymentDate,Busers.USERNAME,DepName ');
    sql.Add('                    ,round(((CGZL_Declaration.TONGTRIGIA_HOADON)-(round((CGZL_Declaration.TONGTRIGIA_HOADON*(100-CGZL_PaymentS.Percent_TT)/100),2))),2)  as Amount_USD ');
    sql.Add('                    ,CGZL_VATNO.TONGTIEN_THANHTOAN as Amount_VND ');
    sql.Add('             from  KCRKS with (nolock)  ');
    sql.Add('             inner join DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
    sql.Add('             left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO  ');
    sql.Add('        	    left join KCPK on kcrk.RKNO=kcpk.PKNO ');
    sql.Add('        	    left join zszl on kcrk.ZSBH=zszl.zsdh ');
    sql.Add('         	  left join CGZL_PaymentS on kcpk.Declaretion=CGZL_PaymentS.DECLARATION and kcrk.DOCNO=CGZL_PaymentS.DOCNO ');
    sql.Add('       	    left join CGZL_PaymentSS on CGZL_PaymentSS.VATNO=KCRK.DOCNO and CGZL_PaymentSS.ZSBH_MST=zszl.tybh  ');
    sql.Add('       	    left join CGZL_Payment on isnull(CGZL_PaymentS.FKBH,CGZL_PaymentSS.FKBH)=CGZL_Payment.FKBH  ');
    sql.Add('             left join '+SQL_LinkServer+'.CGZL_Declaration CGZL_Declaration on CGZL_PaymentS.DECLARATION=CGZL_Declaration.DECLARATION ');
    sql.Add('       			left join '+SQL_LinkServer+'.CGZL_VATNO CGZL_VATNO on CGZL_VATNO.VATNO=CGZL_PaymentSS.VATNO and CGZL_PaymentSS.ZSBH_MST=CGZL_VATNO.ZSBH_MST ');
    sql.Add('             and CGZL_PaymentSS.KYHIEU_HOADON=CGZL_VATNO.KYHIEU_HOADON  ');
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
    sql.Add('             group by KCRKS.CGBH,KCRKS.CLBH,KCRKS.RKNO,KCRK.ZSNO,KCRK.USERDate,kcrks.vnprice, kcrks.usprice ,Declaretion,KCRK.DOCNO,KCRK.MEMO,KCRK.ZSBH,zszl.yjdz,CGZL_Payment.FKBH,CGZL_Payment.USERDATE,Busers.USERNAME,DepName ');
    sql.Add('                     ,CGZL_Declaration.TONGTRIGIA_HOADON,CGZL_PaymentS.Percent_TT,CGZL_VATNO.TONGTIEN_THANHTOAN  ) RKZL  ');
    sql.Add('             on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
    sql.Add('            and (( ISNULL(CGZL.CGNO,''ZZZZZZZZZZ'') = RKZL.ZSNO) OR (CGZL.CGNO=CASE WHEN RKZL.ZSNO<>''ZZZZZZZZZZ'' THEN RKZL.ZSNO ELSE CGZL.CGNO END)) ');
    sql.Add(' left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
    sql.Add(' left join (select CGNO, CLBH, ZLBH, MEMO FROM KCRKScan_RFSSS LEFT JOIN KCRKScan_RF ON KCRKScan_RFSSS.SCNO=KCRKScan_RF.SCNO  ');
    sql.Add('            WHERE LB=''02'' AND MEMO IS NOT NULL) KCRKScan_RF on KCRKScan_RF.ZLBH=ZLZLS2.ZLBH and KCRKScan_RF.CLBH=ZLZLS2.CLBH ');
    SQL.Add('   left join (select ZLBH,CLBH,count (LotFile) as LotFile,zszl_lot.USERID,zszl_lot.LotNO  from (select KCRKScan_RFSSS.CLBH, KCRKSCan_RFSSS.ZLBH,zszl_lot.LotFile,KCRKSCan_RFSS.USERID,KCRKSCan_RFSS.LotNO   ');
    SQL.Add('   from KCRKSCan_RFSS left join KCRKSCan_RFSSS on KCRKScan_RFSS.SCNO = KCRKScan_RFSSS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFSSS.CLBH and KCRKScan_RFSS.Pack = KCRKScan_RFSSS.Pack    ');
    SQL.Add('                      left join zszl_lot on zszl_lot.LotNO=KCRKSCan_RFSS.LotNO and zszl_lot.zsdh=KCRKSCan_RFSS.USERID   ');
    SQL.Add('  					where   zszl_lot.LotFile IS NOT NULL  ');
    SQL.Add('                      group by KCRKScan_RFSSS.CLBH, KCRKSCan_RFSSS.ZLBH,zszl_lot.LotFile,KCRKSCan_RFSS.USERID,KCRKSCan_RFSS.LotNO ) zszl_lot  group by ZLBH,CLBH,USERID,LotNO ) zszl_lot on zszl_lot.ZLBH=ZLZLS2.ZLBH and zszl_lot.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('   left join zszl_lot lot on lot.LotNO=zszl_lot.LotNO and lot.zsdh=zszl_lot.USERID  ');
    sql.Add(' left join CLZL_Origin Origin on CLZL.CLDH=Origin.CLBH and Origin.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add(' left join CLZL_FLEX on CLZL.CLDH=CLZL_FLEX.CLDH ');
    sql.Add(' left join Bill_Info on RKZL.DOCNO=Bill_Info.DocNo ');
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
    sql.Add(' group by DDZl.BUYNO,cldhflex,DDZL.KHPO,ZLZLS2.ZLBH,XXZL.Article,kfxxzl.DEVCODE,DDZL.Pairs,CGZL.CGNO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH ');
    sql.Add('		       ,CGZl.CGQty,RKZL.RKQty,CGKCUSE.Qty,rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice,RKZL.DOCNO,RKZL.BillNo, KCRKScan_RF.MEMO ');
    sql.Add('		       ,SCZL.IsCGZLS,DDZLTW.DDZT,RKZL.yjdz,RKZL.Declaretion,Origin.Country,Origin.DocFile,RKZL.FKBH,RKZL.PaymentDate,RKZL.USERNAME ');
    sql.Add('          ,RKZL.DepName,RKZL.Amount_USD,RKZL.Amount_VND,RKZL.RKDate,RKZl.RKNO,Bill_Info.Country,Bill_Info.BillNo,CGZL.CGDate,Bill_Info.Carrier, Bill_Info.PlaceDelivery,zszl_lot.LotFile ');
    sql.Add(' order by ZLZLS2.CLBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  QFile.Active:=true;
end;

procedure TTraceability_Purchasing.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TTraceability_Purchasing.Button3Click(Sender: TObject);
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
        if ((DBGridEh1.Fields[i].FieldName = 'DOCNO') or (DBGridEh1.Fields[i].FieldName = 'Declaretion')) then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
        else
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        if ((DBGridEh1.Fields[i].FieldName = 'PaymentDate') or (DBGridEh1.Fields[i].FieldName = 'RKDate') or (DBGridEh1.Fields[i].FieldName = 'CGDate')) then
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

procedure TTraceability_Purchasing.DBGridEh1DblClick(Sender: TObject);
begin
   if (DBGridEh1.SelectedField.FieldName = 'CertificateOrigin') and (Query1.FieldByName('CertificateOrigin').AsString <> '')  then
    ShellExecute(0, 'open', PChar(DCTFilePath + Query1.FieldByName('CertificateOrigin').AsString), nil, nil, SW_Normal);

   if (DBGridEh1.SelectedField.FieldName = 'NewFile') and (Query1.FieldByName('NewFile').AsString <> '')  then
    ShellExecute(0, 'open', PChar(OriginFilePath+ QFile.FieldByName('LotFile').AsString), nil, nil, SW_Normal);
end;

procedure TTraceability_Purchasing.Button2Click(Sender: TObject);
var a: string;
    eclApp, WorkBook: olevariant;
    i, j: integer;
begin
  if (QFile.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to QFile.FieldCount-1 do
      begin
        eclApp.Cells(1, i+1) := QFile.Fields[i].FieldName;
      end;

      QFile.First;
      j := 2;
      while not QFile.Eof do
      begin
        for i:=0 to QFile.FieldCount-1 do
        begin
          eclApp.Cells(j, i+1) := QFile.Fields[i].Value;
        end;
        QFile.Next;
        Inc(j);
      end;
      eclapp.columns.autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TTraceability_Purchasing.DBGridEh2DblClick(Sender: TObject);
begin
  if (DBGridEh2.SelectedField.FieldName = 'LotFile') AND (QFile.FieldByName('LotFile').AsString <> '') then
    ShellExecute(0, 'open', PChar(OriginFilePath+ QFile.FieldByName('LotFile').AsString), nil, nil, SW_Normal);
end;

end.

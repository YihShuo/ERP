unit GMS_RFT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ComCtrls,comobj,
  Buttons, ExcelXP;

type
  TGMS_RFT = class(TForm)
    Query1: TQuery;
    DataSource1: TDataSource;
    temp: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button2: TButton;
    CBX2: TComboBox;
    EXCEL1: TButton;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh2: TDBGridEh;
    LeadtimeQry: TQuery;
    Leadtime_data: TDataSource;
    Panel7: TPanel;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    UpdLeadtime: TUpdateSQL;
    LeadtimeQryclbhdef: TStringField;
    LeadtimeQryleadtime: TIntegerField;
    LeadtimeQrycsbh: TStringField;
    TIMEQRY: TQuery;
    LeadtimeQryUSERID: TStringField;
    LeadtimeQryUSERDate: TDateTimeField;
    CB1: TCheckBox;
    LeadtimeQryYN: TStringField;
    Query1cldh: TStringField;
    Query1leadtime: TIntegerField;
    Query1zsjc: TStringField;
    Query1PO_NO: TStringField;
    Query1PO_date: TDateTimeField;
    Query1Description: TStringField;
    Query1Quantity: TCurrencyField;
    Query1Invoice_No: TStringField;
    Query1RTA: TDateTimeField;
    Query1Arrival_Date: TDateTimeField;
    Query1ng_reason: TStringField;
    Query1ng_date: TDateTimeField;
    Query1P_result: TStringField;
    TabSheet3: TTabSheet;
    Panel8: TPanel;
    Panel9: TPanel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button4: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DEV_QRY: TQuery;
    DEV_DS: TDataSource;
    DBGridEh3: TDBGridEh;
    Label6: TLabel;
    Label7: TLabel;
    DEV_QRYseason: TStringField;
    DEV_QRYpurpose: TStringField;
    DEV_QRYcldh: TStringField;
    DEV_QRYleadtime: TIntegerField;
    DEV_QRYzsjc: TStringField;
    DEV_QRYPO_NO: TStringField;
    DEV_QRYPO_date: TDateTimeField;
    DEV_QRYDescription: TStringField;
    DEV_QRYQuantity: TCurrencyField;
    DEV_QRYInvoice_No: TStringField;
    DEV_QRYng_reason: TStringField;
    DEV_QRYng_Date: TDateTimeField;
    DEV_QRYP_result: TStringField;
    Button5: TButton;
    TabSheet4: TTabSheet;
    Panel10: TPanel;
    BD1: TBitBtn;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    Panel11: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Button6: TButton;
    DBGridEh4: TDBGridEh;
    DS2: TDataSource;
    GMS_QRY: TQuery;
    UpdateGMS: TUpdateSQL;
    Query2: TQuery;
    GMS_QRYzsdh: TStringField;
    GMS_QRYzsywjc: TStringField;
    BBTT1: TBitBtn;
    GMS_QRYUSERID: TStringField;
    GMS_QRYUSERDATE: TDateTimeField;
    DEV_QRYRTA: TDateTimeField;
    DEV_QRYArrival_Date: TDateTimeField;
    chk_Extra: TCheckBox;
    Query1DWBH: TStringField;
    Query1BUYNO: TStringField;
    Query1FlexID: TStringField;
    DEV_QRYFlexcode: TStringField;
    DEV_QRYDelayReason: TStringField;
    Query1DDBH: TStringField;
    Query1KHPO: TStringField;
    Query1Pairs: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD1Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GMS_RFT: TGMS_RFT;

implementation

uses main1, GMS_RFT21;

{$R *.dfm}

procedure TGMS_RFT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGMS_RFT.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select allin.*,MaterialNG.ng_reason as ng_reason,MaterialNG.ng_date as ng_Date,MaterialNG.P_result as P_result,clzl_flex.cldhflex as FlexID from  ( ');
    sql.add(' select clzl.cldh,MaterialMOQ.ProdLeadTime as leadtime,ZSZL.zsjc,CGZL.CGNO as PO_NO,CGZL.cgdate as PO_date,clzl.ywpm as Description, ');
    sql.add('        KCRKs.QTY as Quantity,KCRK.DOCNO as Invoice_No,MAX(CGZLS.YQDate) as RTA, ');
    sql.add('        kcrks.userdate as Arrival_Date,max(CLZL.DWBH) DWBH, isnull(max(DDZLTW.BUYNO),0) as BUYNO, DDZL.DDBH as DDBH, DDZL.KHPO as KHPO, DDZL.Pairs as Pairs from kcrkS ');
    sql.add(' left join kcrk on kcrk.RKNO=kcrks.RKNO ');
    sql.add(' left join CLZL on CLZL.CLDH=kcrks.CLBH ');
    sql.add(' left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH ');
    sql.add(' left join CGZLS on KCRK.ZSNO=CGZLS.CGNO ');
    sql.add(' left join CGZL on CGZLS.CGNO=CGZL.CGNO ');
    sql.add(' left join DDZLTW with (nolock) on DDZLTW.DDBH=kcrkS.CGBH ');
    sql.add(' left join DDZL on DDZL.DDBH=kcrkS.CGBH ');
    //sql.add(' left join clzl_GMS on clzl_GMS.clbhdef=left(kcrks.clbh,3) and clzl_GMS.csbh=cgzl.zsbh  ');
    SQL.Add(' left join (');
    SQL.Add('		   Select Season,CLBH,ProdLeadTime from (');
    SQL.Add('		   Select A.Season,A.CLBH,A.ProdLeadTime from (');
    SQL.Add('			   select Season,CLBH,ProdLeadTime,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,USERDATE desc) ');
    SQL.Add('			   as  rn from ');
    SQL.Add('			  (');
    SQL.Add('			  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH,ProdLeadTime,MaterialMOQ.USERDATE ');
    SQL.Add('			  from MaterialMOQ with (nolock)');
    SQL.Add('			  left join CLZL_LS with (nolock) on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ) MaterialMOQ');
    SQL.Add('		   ) A where A.rn=1 ');
    SQL.Add('    ) MatMOQ');
    SQL.Add('		) MaterialMOQ on MaterialMOQ.CLBH=kcrks.CLBH ');
    sql.add(' where convert(smalldatetime,convert(varchar,KCRK.userdate,111))  between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('       and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('       and ZSZL.yn=''2''');
    if cbx1.text<>'' then
    begin
       sql.add('   and ZSZL.zsdh like  ');
       sql.add('   '''+'%'+cbx2.text+'%'+'''');
    end;
    if CBx2.text='VO01' then
    begin
      sql.add('   and left (clzl.cldh,1) in (''C'',''D'') ');
    end;
    sql.add(' group by clzl.cldh,MaterialMOQ.ProdLeadTime,ZSZL.zsjc,CGZL.CGNO,CGZL.cgdate,clzl.ywpm,KCRKs.QTY,kcrks.userdate,KCRK.DOCNO, DDZL.DDBH, DDZL.KHPO, DDZL.Pairs ');
    sql.add(' union all');
    sql.add(' select clzl.cldh,MaterialMOQ.ProdLeadTime as leadtime,ZSZL.zsjc,CGZL.CGNO as PO_NO,CGZL.cgdate as PO_date,clzl.ywpm as Description,');
    sql.add('        HG_INVs.QTY as Quantity,HG_INV.DOCNO as Invoice_No,MAX(CGZLS.YQDate) as RTA,HG_INV.SHIPDATE as Arrival_Date, ');
    sql.add('        max(CLZL.DWBH) DWBH, isnull(max(DDZLTW.BUYNO),0) as BUYNO, DDZL.DDBH as DDBH, DDZL.KHPO as KHPO, DDZL.Pairs as Pairs  ');
    sql.add(' from  HG_INVS');
    sql.add(' left join HG_INV on HG_INVS.RKNO=HG_INV.RKNO');
    sql.add(' LEFT JOIN kcrks ON kcrks.RKNO=HG_INVS.RKNO AND kcrks.CLBH=HG_INVS.CLBH');
    sql.add(' left join CLZL on CLZL.CLDH=HG_INVS.CLBH');
    sql.add(' left join CGZLS on HG_INV.ZSNO=CGZLS.CGNO');
    sql.add(' left join CGZL on CGZLS.CGNO=CGZL.CGNO ');
    sql.add(' left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add(' left join DDZLTW with (nolock) on DDZLTW.DDBH=HG_INVS.CGBH ');
    sql.add(' left join DDZL on DDZL.DDBH = HG_INVS.CGBH ');
    //sql.add(' left join clzl_GMS on clzl_GMS.clbhdef=left(HG_INVS.clbh,3) and clzl_GMS.csbh=cgzl.zsbh ');
    SQL.Add(' left join (');
    SQL.Add('		   Select Season,CLBH,ProdLeadTime from (');
    SQL.Add('		   Select A.Season,A.CLBH,A.ProdLeadTime from (');
    SQL.Add('			   select Season,CLBH,ProdLeadTime,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,USERDATE desc) ');
    SQL.Add('			   as  rn from ');
    SQL.Add('			  (');
    SQL.Add('			  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH,ProdLeadTime,MaterialMOQ.USERDATE ');
    SQL.Add('			  from MaterialMOQ with (nolock)');
    SQL.Add('			  left join CLZL_LS with (nolock) on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ) MaterialMOQ');
    SQL.Add('		   ) A where A.rn=1 ');
    SQL.Add('    ) MatMOQ');
    SQL.Add('		) MaterialMOQ on MaterialMOQ.CLBH=HG_INVS.CLBH ');
    sql.add(' where convert(smalldatetime,convert(varchar,HG_INV.SHIPDATE,111))  between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    sql.add('       and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('       and ZSZL.yn=''1''');
    if cbx1.text<>'' then
    begin
       sql.add('   and cgzl.zsbh like  ');
       sql.add('   '''+'%'+cbx2.text+'%'+''' ');
    end;
    if CBx2.text='VO01' then
    begin
      sql.add('   and left (clzl.cldh,1) in (''C'',''D'') ');
    end;
    sql.add(' group by clzl.cldh,MaterialMOQ.ProdLeadTime,ZSZL.zsjc,CGZL.CGNO,CGZL.cgdate,clzl.ywpm,HG_INVs.QTY,kcrks.userdate,HG_INV.DOCNO,HG_INV.SHIPDATE,DDZL.DDBH,DDZL.KHPO,DDZL.Pairs  ');
    //20230605 add extra supplier
    if chk_Extra.Checked then
    begin
      sql.add(' union all');
      sql.Add(' select clzl.cldh,MaterialMOQ.ProdLeadTime as leadtime,ZSZL.zsjc,JGZL.JGNO as PO_NO,JGZL.JGDate as PO_date,clzl.ywpm as Description, ');
      sql.Add('        JGZLS.Qty as Quantity,'''' as Invoice_No,MAX(JGZLS.YQDate) as RTA,JGZL.CFMDate1 as Arrival_Date,   ');
      sql.add('        max(CLZL.DWBH) DWBH, isnull(max(DDZLTW.BUYNO),0) as BUYNO, DDZL.DDBH as DDBH, DDZL.KHPO as KHPO, DDZL.Pairs as Pairs   ');
      sql.Add(' from JGZLS ');
      sql.Add(' left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.Add(' left join CLZL on CLZL.CLDH=JGZLS.CLBH ');
      sql.Add(' left join ZSZL on JGZL.ZSBH=ZSZL.ZSDH  ');
      sql.add(' left join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
      sql.add(' left join DDZLTW with (nolock) on DDZLTW.DDBH=JGZLSS.ZLBH ');
      sql.add(' left join DDZL on DDZL.DDBH = JGZLSS.ZLBH ');
      //sql.Add(' left join clzl_GMS on clzl_GMS.clbhdef=left(JGZLS.clbh,3) and clzl_GMS.csbh=jgzl.zsbh ');
      SQL.Add(' left join (');
      SQL.Add('		   Select Season,CLBH,ProdLeadTime from (');
      SQL.Add('		   Select A.Season,A.CLBH,A.ProdLeadTime from (');
      SQL.Add('			   select Season,CLBH,ProdLeadTime,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,USERDATE desc) ');
      SQL.Add('			   as  rn from ');
      SQL.Add('			  (');
      SQL.Add('			  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH,ProdLeadTime,MaterialMOQ.USERDATE ');
      SQL.Add('			  from MaterialMOQ with (nolock)');
      SQL.Add('			  left join CLZL_LS with (nolock) on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ) MaterialMOQ');
      SQL.Add('		   ) A where A.rn=1 ');
      SQL.Add('    ) MatMOQ');
      SQL.Add('		) MaterialMOQ on MaterialMOQ.CLBH=JGZLS.CLBH ');
      sql.Add(' where JGZL.CFMID1<>''NO'' AND JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
      sql.Add('       AND	convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))  between  ');
      sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
      sql.Add('      and JGZL.GSBH='''+main.Edit2.Text+''' ' );
      if cbx1.text<>'' then
      begin
        sql.add('  and JGZL.zsbh like  ');
        sql.add('  ''%'+cbx2.text+'%'' ');
      end;
      sql.add('       and ZSZL.yn=''2'' ');
      sql.Add(' group by clzl.cldh,MaterialMOQ.ProdLeadTime,ZSZL.zsjc,JGZL.JGNO,JGZL.JGDate,clzl.ywpm,JGZLS.QTY,JGZL.CFMDate1,DDZL.DDBH,DDZL.KHPO, DDZL.Pairs  ');
    end;
    //
    sql.add(')allin');
    sql.add('left join MaterialNG on allin.PO_NO=MaterialNG.CGNO and allin.cldh=MaterialNG.clbh');
    sql.add('left join clzl_flex with (nolock) on clzl_flex.cldh=allin.cldh and clzl_flex.cldh not like ''V%'' and clzl_flex.cldhflex<>'''' ');
    sql.add('order by allin.cldh,allin.PO_NO,allin.Description');
    //showmessage(sql.Text);
    //memo2.text:=sql.text;
    active:=true;
  end;
  if query1.FieldByName('PO_NO').isnull  then
     showmessage('no data,beacuse '+datetostr(DTP1.date)+'~'+datetostr(DTP2.date)+' no Supplier send material');

end;

procedure TGMS_RFT.FormCreate(Sender: TObject);
var i:integer;
begin
  DTP1.Date:=date-30;
  DTP2.date:=date;
  if main.Edit2.Text='CDC' then
  begin
    panel7.Visible:=false; //限制只有量產能編輯資料
  end;
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select zszl_gms.zsdh,zszl.zsywjc,zszl_gms.userid,zszl_gms.userdate');
    sql.Add('from zszl_gms');
    sql.Add('left join zszl on zszl.zsdh=zszl_gms.zsdh');
    sql.Add('where zszl_gms.zsdh like '''+'%'+edit7.text+'%'+''' ');
    active:=true;
    CBX1.Items.Clear;
    CBX2.Items.Clear;
    ComboBox1.Items.Clear;
    ComboBox2.Items.Clear;
    for i:=1 to recordcount do
    begin
      CBX1.Items.Add(fieldbyname('zsywjc').asstring);
      CBX2.Items.Add(fieldbyname('zsdh').asstring);
      ComboBox1.Items.Add(fieldbyname('zsywjc').asstring);
      ComboBox2.Items.Add(fieldbyname('zsdh').asstring);
      next;
    end;
    active:=false;
  end;
end;

procedure TGMS_RFT.Button2Click(Sender: TObject);
var
eclApp,WorkBook:olevariant;
i,j,count:integer;
begin
   memo1.Visible:=true;
   count:=1;
   AppDir:=ExtractFilePath(Application.ExeName);
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\GMS_RFT.xls'),Pchar(AppDir+'Additional\GMS_RFT.xls'),false);
    begin
      if  Query1.active  then
      begin
      try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
      except
          Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\GMS_RFT.xls');
      while count<21 do              //如增加廠商這裡增加數字,EXCEL範本增加分頁,COMBOBOX增加廠商
      begin
         CBX2.ItemIndex:=count;
         CBX1.itemindex:=CBX2.ItemIndex;
         with temp do
         begin
           active:=false;
           sql.Clear;

           sql.add('select ZSZL.zsjc,CGZL.CGNO as PO_NO,CGZL.cgdate as PO_date,clzl.ywpm as Description,');
           sql.add('KCRKs.QTY as Quantity,CGZLS.YQDate as RTA,');
           if copy(CBX1.text,1,2)='VN' then
             sql.add('KCRK.DOCNO as Invoice_No,');
           if copy(CBX1.text,1,2)='TW' then
             sql.add('KCRK.ZSNO as Invoice_No,');
           sql.add('kcrks.userdate as Arrival_Date from kcrkS');
           sql.add('left join kcrk on kcrk.RKNO=kcrks.RKNO');
           sql.add('left join CLZL on CLZL.CLDH=kcrks.CLBH');
           sql.add('left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
           sql.add('left join CGZLS on KCRK.ZSNO=CGZLS.CGNO');
           sql.add('left join CGZL on CGZLS.CGNO=CGZL.CGNO ');
           sql.add('left join clzl_GMS on clzl_GMS.clbhdef=left(kcrks.clbh,3)');
           sql.add('where convert(smalldatetime,convert(varchar,KCRK.userdate,111))  between ');
           sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
           sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+'''');
           sql.add('and ZSZL.zsdh like  ');
           sql.add(''''+'%'+cbx2.text+'%'+'''');
           sql.add('group by ZSZL.zsjc,CGZL.CGNO,CGZL.cgdate,clzl.ywpm,');
           sql.add('KCRKs.QTY,CGZLS.YQDate,kcrks.userdate,');
           if copy(CBX1.text,1,2)='VN' then
             sql.add('KCRK.DOCNO');
           if copy(CBX1.text,1,2)='TW' then
             sql.add('KCRK.ZSNO');
             sql.add('order by CGZL.CGNO,clzl.ywpm');
           active:=true;
         end;
        inc(count);
        eclApp.WorkSheets[CBX2.ItemIndex].Activate;//迴圈跑CBX1
        temp.First;
        j:=4;
        while   not  temp.Eof   do
        begin
          //Memo1.Lines.:='Supplier:' + CBX1.text;
          Memo1.text:= CBX1.text+':Data Output:' + inttostr(j-3);
          //='Supplier'+CBX1.text+':'+'Data Output'+inttostr(j-3)+'data';
          eclApp.ActiveSheet.Rows[j+1].Insert;
          for   i:=1   to   temp.fieldcount-1 do
          begin
            eclApp.Cells(j,1):=temp.FieldByName('PO_Date').value;
            eclApp.Cells(j,2):=temp.FieldByName('PO_NO').value;
            eclApp.Cells(j,3):='';
            eclApp.Cells(j,4):='';
            eclApp.Cells(j,5):=temp.FieldByName('Description').value;
            eclApp.Cells(j,6):='35';
            eclApp.Cells(j,7):='';
            eclApp.Cells(j,8):=temp.FieldByName('Quantity').value;
            eclApp.Cells(j,9):=temp.FieldByName('RTA').value;
            eclApp.Cells(j,10):='=+I'+inttostr(j)+'-A'+inttostr(j);
            eclApp.Cells(j,11):='=+IF(F'+inttostr(j)+'>=J'+inttostr(j)+',"X","")';
            eclApp.Cells(j,12):=temp.FieldByName('Invoice_No').value;
            eclApp.Cells(j,13):=temp.FieldByName('Arrival_Date').value;
            eclApp.Cells(j,14):='=+M'+inttostr(j)+'-A'+inttostr(j);
            eclApp.Cells(j,15):='=IF(AND(P'+inttostr(j)+'<>"YES",P'+inttostr(j)+'<0),"X","")';
            eclApp.Cells(j,16):='=IF(AND(J'+inttostr(j)+'-N'+inttostr(j)+'<=3,N'+inttostr(j)+'<=MAX(F'+inttostr(j)+',J'+inttostr(j)+')),"Yes",IF(N'+inttostr(j)+'>MAX(F'+inttostr(j)+',J'+inttostr(j)+'),MAX(F'+inttostr(j)+',J'+inttostr(j)+')-N'+inttostr(j)+',J'+inttostr(j)+'-N'+inttostr(j)+'))';
            eclApp.Cells(j,18):='=IF(AND(P'+inttostr(j)+'<>"YES",P'+inttostr(j)+'>0),"X","")';
            eclApp.Cells(j,23):='=IF(AND(P'+inttostr(j)+'="YES", V'+inttostr(j)+'="YES"), "YES", "NO")';
            eclApp.Cells(j,25):='=+I'+inttostr(j)+'-M'+inttostr(j);
          end;
          temp.Next;
          inc(j);
        end;
        eclApp.ActiveSheet.Rows[j].delete;
      end;

        memo1.Visible:=false;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
               showmessage(F.Message);
        end;
    end;
    end;


end;

procedure TGMS_RFT.Button3Click(Sender: TObject);
begin
  with Leadtimeqry do
  begin
     active:=false;
     sql.Clear;
     sql.add('select *,yn=''1'' from CLZL_GMS ');
     sql.add('where CLZL_GMS.csbh IS NOT NULL');
     if edit1.text<>'' then
        sql.add('AND CLZL_GMS.csbh='''+edit1.text+''' ');
     if edit2.text<>'' then
        sql.add('AND CLZL_GMS.clbhdef='''+edit2.text+''' ');
     if CB1.Checked then
        sql.add('AND CLZL_GMS.userid='''+main.edit1.text+''' ');
    // memo2.text:=sql.text;
     active:=true;
  end;
  bb2.Enabled:=true;
  bb3.Enabled:=true;
  bb4.Enabled:=true;
  bb5.Enabled:=false;
  bb6.Enabled:=false;
end;

procedure TGMS_RFT.CBX1Change(Sender: TObject);
begin
   CBX2.itemindex:=CBX1.ItemIndex;

end;

procedure TGMS_RFT.EXCEL1Click(Sender: TObject);
var
eclApp,WorkBook:olevariant;
i,j,count:integer;

begin
   memo1.Visible:=true;
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\GMS_RFT_One_202405.xls'),Pchar(AppDir+'Additional\GMS_RFT_One_202405.xls'),false);
   if FileExists(AppDir+'Additional\GMS_RFT_One_202405.xls') then
   begin
      if  query1.active  then
      begin
      try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
      except
          Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\GMS_RFT_One_202405.xls');
        eclApp.Range['C4','C4'].Validation.Add(xlValidateList,  xlValidAlertStop, xlBetween, '=''Dropdown List''!$E:$E', emptyparam);
        j:=4;
        while   not  query1.Eof   do
        begin
          Memo1.text:= CBX1.text+':Data Output:' + inttostr(j-3);
          eclApp.ActiveSheet.Rows[j+1].Insert;
          for   i:=1   to   query1.fieldcount-1 do
          begin
            eclApp.Cells(j,4):='=VLOOKUP(C:C,''Dropdown List''!E:F,2,0)';
            eclApp.Cells(j,5):=query1.FieldByName('PO_Date').value;
            eclApp.Cells(j,6):=query1.FieldByName('PO_NO').value;
            eclApp.Cells(j,7):='';
            eclApp.Cells(j,8):=query1.FieldByName('FlexID').value;
            eclApp.Cells(j,9):=query1.FieldByName('Description').value;
            eclApp.Cells(j,10):=query1.FieldByName('leadtime').value;
            eclApp.Cells(j,11):='';
            eclApp.Cells(j,12):=query1.FieldByName('Quantity').Value;
            //eclApp.Cells(j,13):=query1.FieldByName('RTA').value;
            eclApp.Cells(j,13):=formatdatetime('yyyy/MM/dd',query1.FieldByName('Arrival_Date').Value);
            eclApp.Cells(j,14):='=+M'+inttostr(j)+'-E'+inttostr(j);
            eclApp.Cells(j,15):='=+IF(J'+inttostr(j)+'>=N'+inttostr(j)+',"X","")';
            eclApp.Cells(j,16):=query1.FieldByName('Invoice_No').value;
            eclApp.Cells(j,17):=formatdatetime('yyyy/MM/dd',query1.FieldByName('Arrival_Date').Value);
            eclApp.Cells(j,18):='=+Q'+inttostr(j)+'-E'+inttostr(j);
            eclApp.Cells(j,19):='=IF(AND(T'+inttostr(j)+'<>"YES",T'+inttostr(j)+'<0),"X","")';
            eclApp.Cells(j,20):='=IF(AND(N'+inttostr(j)+'-R'+inttostr(j)+'<=3,R'+inttostr(j)+'<=MAX(J'+inttostr(j)+',N'+inttostr(j)+')),"Yes",IF(R'+inttostr(j)+'>MAX(J'+inttostr(j)+',N'+inttostr(j)+'),MAX(J'+inttostr(j)+',N'+inttostr(j)+')-R'+inttostr(j)+',N'+inttostr(j)+'-R'+inttostr(j)+'))';
            eclApp.Cells(j,22):='=IF(AND(T'+inttostr(j)+'<>"YES",T'+inttostr(j)+'>0),"X","")';
            eclApp.Cells(j,23):=query1.FieldByName('NG_reason').value;
            eclApp.Cells(j,27):='=IF(AND(T'+inttostr(j)+'="YES", Z'+inttostr(j)+'="YES"), "YES", "NO")';
            eclApp.Cells(j,29):='=+M'+inttostr(j)+'-Q'+inttostr(j);
            eclApp.Cells(j,30):=query1.FieldByName('BUYNO').Value;
            eclApp.Cells(j,31):=query1.FieldByName('DWBH').Value;
            eclApp.Cells(j,32):=formatdatetime('yyyy/MM/dd',query1.FieldByName('Arrival_Date').Value);
            eclApp.Cells(j,33):=query1.FieldByName('cldh').Value;
            eclApp.Cells(j,34):=query1.FieldByName('khpo').Value;
            eclApp.Cells(j,35):=query1.FieldByName('Pairs').Value;
       {     if query1.FieldByName('reason').value ='ok' then
               eclApp.Cells(j,19):='Y'
            else
               eclApp.Cells(j,19):='N';   }
            eclApp.Cells(j,24):=query1.FieldByName('ng_Date').value;
            eclApp.Cells(j,26):=query1.FieldByName('P_result').value;
          end;
          query1.Next;
          inc(j);
        end;
          eclApp.ActiveSheet.Rows[j].delete;

          memo1.Visible:=false;
          showmessage('Succeed.');
          eclApp.Visible:=True;
      except
          on   F:Exception   do
                 showmessage(F.Message);
          end;
    end;
   end;
end;

procedure TGMS_RFT.BB4Click(Sender: TObject);
begin
   if Leadtimeqry.RequestLive then
   begin
     showmessage('Pls save Master data first.');
     abort;
   end;
   with Leadtimeqry do
   begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
   end;
   Button3.Enabled:=false;
   bb2.Enabled:=false;
   bb3.Enabled:=false;
   bb4.Enabled:=false;
   bb5.Enabled:=true;
   bb6.Enabled:=true;
end;

procedure TGMS_RFT.BB5Click(Sender: TObject);
var
 i:integer;
 NDate:TDate;
begin
  with TIMEQRY do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;

  try
    LeadtimeQry.cachedupdates:=true;
    LeadtimeQry.requestlive:=true;
    LeadtimeQry.first;
    for i:=1 to LeadtimeQry.RecordCount do
    begin
      case LeadtimeQry.updatestatus of
      usmodified:
         if  LeadtimeQry.FieldByName('userID').Value=main.Edit1.Text then
            begin
            if LeadtimeQry.fieldbyname('YN').value='0'then
                  begin
                    UpdLeadtime.apply(ukdelete);
                  end else
                  begin
                     LeadtimeQry.edit;
                     LeadtimeQry.FieldByName('userID').Value:=main.edit1.text;
                     LeadtimeQry.FieldByName('userdate').Value:=Ndate;
                     UpdLeadtime.apply(ukmodify);
                  end;
            end else
            begin
              showmessage('It is not yours, can not modify.');
            end;

      usinserted:
         begin
           LeadtimeQry.edit;
           LeadtimeQry.FieldByName('userID').Value:=main.edit1.text;
           LeadtimeQry.FieldByName('userdate').Value:=Ndate;
           UpdLeadtime.apply(ukinsert);
         end;
         end;

      LeadtimeQry.next;
    end;
    with LeadtimeQry do
    begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
    end;
    Button3.Enabled:=true;
    bb2.Enabled:=true;
    bb3.Enabled:=true;
    bb4.Enabled:=true;
    bb5.Enabled:=false;
    bb6.Enabled:=false;
    except
    Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);

  end;
end;

procedure TGMS_RFT.BB2Click(Sender: TObject);
begin
  with LeadtimeQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
     Button3.Enabled:=false;
     bb2.Enabled:=false;
     bb3.Enabled:=false;
     bb4.Enabled:=false;
     bb5.Enabled:=true;
     bb6.Enabled:=true;

end;
procedure TGMS_RFT.BB6Click(Sender: TObject);
begin
  with LeadtimeQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
   Button3.Enabled:=true;  
   bb2.Enabled:=true;
   bb3.Enabled:=true;
   bb4.Enabled:=true;
   bb5.Enabled:=false;
   bb6.Enabled:=false;
end;

procedure TGMS_RFT.BB3Click(Sender: TObject);
begin
  with LeadtimeQry do
  begin
    if fieldbyname('USERID').value=main.edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end
    else
      begin
        showmessage('It is not yours,can not delete.');
      end;
  end;
  Button3.Enabled:=false;
  bb2.Enabled:=false;
  bb3.Enabled:=false;
  bb4.Enabled:=false;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TGMS_RFT.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   if  (LeadtimeQry.FieldByName('YN').Value='0') then
     BEGIN
       DBGrideh2.Canvas.Font.Color := clred ;
     END;
     DBGrideh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TGMS_RFT.Button4Click(Sender: TObject);
begin
  if edit3.text='' then
  begin
    showmessage('no Season');
  end;
  if edit3.text<>'' then
  //if edit3.text='' then
  begin
      with DEV_QRY do
      begin
         active:=false;
         sql.Clear;
         sql.add('select allin.*,MaterialNG.ng_reason as ng_reason,MaterialNG.ng_date as ng_Date,MaterialNG.P_result as P_result,CGZLInvoice.eta Arrival_Date,clzl_flex.cldhflex as Flexcode from  (');
         sql.add('select cgzl.season,cgzl.purpose,clzl.cldh,materialmoq.sampleleadtime as leadtime,ZSZL.zsjc,CGZL.CGNO as PO_NO,CGZL.cgdate as PO_date,clzl.ywpm as Description,');
         sql.add('KCRKs.QTY as Quantity,KCRK.DOCNO as Invoice_No,MAX(CGZLS.CFMDate) as RTA,');
         sql.add('kcrks.userdate as Arrival_Date1,CGZLS.DelayReason from kcrkS');
         sql.add('left join (select * from kcrk where GSBH='''+main.Edit2.Text+''' )kcrk on kcrk.RKNO=kcrks.RKNO');
         sql.add('left join CLZL on CLZL.CLDH=kcrks.CLBH');
         sql.add('left join CGZLS on KCRK.ZSNO=CGZLS.CGNO and KCRKS.CLBH = CGZLS.CLBH');
         sql.add('left join (select * from CGZL where season='''+edit3.text+''' and GSBH='''+main.Edit2.Text+''' )CGZL on CGZLS.CGNO=CGZL.CGNO ');
         sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
         sql.add('left join(select * from materialmoq where season='''+edit3.text+''' )materialmoq on materialmoq.clbh=kcrks.clbh and materialmoq.zsbh=cgzl.zsbh and Materialmoq.season='''+edit3.text+''' ');
         sql.add('where CGZL.GSBH='''+main.Edit2.Text+'''');
         sql.add('and ZSZL.yn=''1''');
         if combobox1.text<>'' then
            begin
               sql.add('and ZSZL.zsdh like  ');
               sql.add(''''+'%'+combobox2.text+'%'+'''');
           end;
         if combobox2.text='VO01' then
            begin
              sql.add('and clzl.cldh like  ');
              sql.add(' ''C%'' ');
           end;
         if edit3.text<>'' then
            begin
              sql.add('and cgzl.season ='''+edit3.text+''' ');
           end;
         if edit4.text<>'' then
            begin
              sql.add('and cgzl.purpose ='''+edit4.text+''' ');
            end;
         sql.add('group by cgzl.season,cgzl.purpose,clzl.cldh,materialmoq.sampleleadtime,ZSZL.zsjc,CGZL.CGNO,CGZL.cgdate,clzl.ywpm,KCRKs.QTY,kcrks.userdate,KCRK.DOCNO,CGZLS.DelayReason');
         sql.add('union all');
         sql.add('select cgzl.season,cgzl.purpose,clzl.cldh,materialmoq.sampleleadtime as leadtime,ZSZL.zsjc,CGZL.CGNO as PO_NO,CGZL.cgdate as PO_date,clzl.ywpm as Description,');
         sql.add('HG_INVs.QTY as Quantity,HG_INV.DOCNO as Invoice_No,MAX(CGZLS.YQDate) as RTA,HG_INV.SHIPDATE as Arrival_Date,CGZLS.DelayReason ');
         sql.add('from  HG_INVS');
         sql.add('left join HG_INV on HG_INVS.RKNO=HG_INV.RKNO');
         sql.add('LEFT JOIN kcrks ON kcrks.RKNO=HG_INVS.RKNO AND kcrks.CLBH=HG_INVS.CLBH');
         sql.add('left join CLZL on CLZL.CLDH=HG_INVS.CLBH');
         sql.add('left join CGZLS on HG_INV.ZSNO=CGZLS.CGNO and HG_INVS.CLBH = CGZLS.CLBH');
         sql.add('left join CGZL on CGZLS.CGNO=CGZL.CGNO ');
         sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
         sql.add('left join materialmoq on materialmoq.clbh=kcrks.clbh and materialmoq.zsbh=cgzl.zsbh and Materialmoq.season='''+edit3.text+'''  ');
         sql.add('where CGZL.GSBH='+''''+main.Edit2.Text+'''');
         sql.add('and ZSZL.yn=''1''');
         if combobox1.text<>'' then
            begin
              sql.add('and cgzl.zsbh like  ');
              sql.add(''''+'%'+combobox2.text+'%'+'''');
           end;
         if combobox2.text='VO01' then
            begin
              sql.add('and clzl.cldh like  ');
              sql.add(' ''C%'' ');
           end;
         if edit3.text<>'' then
            begin
              sql.add('and cgzl.season ='''+edit3.text+'''');
            end;
         if edit4.text<>'' then
            begin
              sql.add('and cgzl.purpose= '''+edit4.text+''' ');
            end;
         sql.add('group by cgzl.season,cgzl.purpose,clzl.cldh,materialmoq.sampleleadtime,ZSZL.zsjc,CGZL.CGNO,CGZL.cgdate,clzl.ywpm,HG_INVs.QTY,kcrks.userdate,HG_INV.DOCNO,HG_INV.SHIPDATE,CGZLS.DelayReason');
         sql.add(')allin');
         sql.add('left join clzl_flex on clzl_flex.cldh = allin.cldh');
         sql.add('left join MaterialNG on allin.PO_NO=MaterialNG.CGNO and allin.cldh=MaterialNG.clbh');
         sql.add('left join CGZLInvoiceS on CGZLInvoiceS.cgno=allin.PO_NO and CGZLInvoiceS.clbh=allin.cldh');
         sql.add('          and CGZLInvoiceS.cino=(select isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS CGZLInvoiceS1');
         sql.add('                                 where CGZLInvoiceS1.cgno=CGZLInvoiceS.cgno and CGZLInvoiceS1.clbh=CGZLInvoiceS.clbh)');
         sql.add('left join CGZLInvoice on CGZLInvoice.CINO=CGZLInvoiceS.CINO');
         //sql.add('left join (select CGZLInvoices.cgno,CGZLInvoices.clbh,CGZLInvoice.eta from CGZLInvoices');
         //sql.add('left join CGZLInvoice on CGZLInvoices.cino=CGZLInvoice.cino)CGZLInvoice on CGZLInvoice.cgno=allin.PO_NO and CGZLInvoice.clbh=allin.cldh');
         sql.add('order by allin.PO_NO,allin.Description');
         //memo2.text:=sql.text;
         active:=true;
      end;
      if DEV_QRY.FieldByName('PO_NO').isnull  then
         showmessage('no data,beacuse '+edit3.text+' and '+edit4.text+' no Supplier send material');
  end;
end;

procedure TGMS_RFT.ComboBox1Change(Sender: TObject);
begin
   combobox2.itemindex:=combobox1.ItemIndex;
end;

procedure TGMS_RFT.Button5Click(Sender: TObject);
var
eclApp,WorkBook:olevariant;
i,j,count:integer;

begin
   dev_qry.first;
   memo1.Visible:=true;
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\GMS_RFT_Dev_202405.xls'),Pchar(AppDir+'Additional\GMS_RFT_Dev_202405.xls'),false);
   if FileExists(AppDir+'Additional\GMS_RFT_Dev_202405.xls') then
    begin
      if  dev_qry.active  then
      begin
      try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
      except
          Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\GMS_RFT_Dev_202405.xls');
        j:=4;
        while   not  dev_qry.Eof   do
        begin
          Memo1.text:= CBX1.text+':Data Output:' + inttostr(j-3);
          eclApp.ActiveSheet.Rows[j+1].Insert;
          for   i:=1   to   dev_qry.fieldcount-1 do
          begin
            eclApp.Cells(j,1):=dev_qry.FieldByName('PO_Date').value;
            eclApp.Cells(j,2):=dev_qry.FieldByName('PO_NO').value;
            eclApp.Cells(j,3):=dev_qry.FieldByName('Flexcode').value;;
            eclApp.Cells(j,4):=dev_qry.FieldByName('Description').value;
            eclApp.Cells(j,5):=dev_qry.FieldByName('zsjc').value;
            eclApp.Cells(j,6):='';
            eclApp.Cells(j,7):=dev_qry.FieldByName('Quantity').value;
            eclApp.Cells(j,8):=dev_qry.FieldByName('RTA').value;
            eclApp.Cells(j,9):='=+H'+inttostr(j)+'-A'+inttostr(j);
            eclApp.Cells(j,10):=dev_qry.FieldByName('Arrival_Date').value;
            eclApp.Cells(j,11):='=+IF(I'+inttostr(j)+'>M'+inttostr(j)+',"X","")';
            eclApp.Cells(j,12):=dev_qry.FieldByName('leadtime').value;
            eclApp.Cells(j,13):='=+J'+inttostr(j)+'-A'+inttostr(j);
            eclApp.Cells(j,14):='=+IF(M'+inttostr(j)+'>I'+inttostr(j)+',"X","")';
            eclApp.Cells(j,15):='=+IF(M'+inttostr(j)+'<=I'+inttostr(j)+',"YES","")';
            eclApp.Cells(j,16):=Copy(dev_qry.FieldByName('DelayReason').AsString,1,1);
            eclApp.Cells(j,17):='';
            eclApp.Cells(j,18):='';
            eclApp.Cells(j,19):='';
            eclApp.Cells(j,20):='=IF(AND(O'+inttostr(j)+'="YES", Q'+inttostr(j)+'="YES"), "YES", "NO")';
            eclApp.Cells(j,21):='=+H'+inttostr(j)+'-J'+inttostr(j);
            eclApp.Cells(j,22):=dev_qry.FieldByName('P_result').value;
          end;
          dev_qry.Next;
          inc(j);
          end;
          eclApp.ActiveSheet.Rows[j].delete;

          memo1.Visible:=false;
          showmessage('Succeed.');
          eclApp.Visible:=True;
      except
        on   F:Exception   do
               showmessage(F.Message);
        end;
    end;

    end;
end;
procedure TGMS_RFT.Button6Click(Sender: TObject);
begin
  with GMS_QRY do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select zszl_gms.zsdh,zszl.zsywjc,zszl_gms.userid,zszl_gms.userdate');
    sql.Add('from zszl_gms');
    sql.Add('left join zszl on zszl.zsdh=zszl_gms.zsdh');
    sql.Add('where zszl_gms.zsdh like '''+'%'+edit7.text+'%'+''' ');
    active:=true;
  end;
  BD2.Enabled:=true;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
end;

procedure TGMS_RFT.BD6Click(Sender: TObject);
begin
  with GMS_QRY do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
    BBTT1.Visible:=false;
    BD2.Enabled:=true;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
end;

procedure TGMS_RFT.BD5Click(Sender: TObject);
var i : integer;
NDate:TDate;
begin
   with query2 do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('Ndate').Value;
      active:=false;
   end;
   try
      GMS_QRY.first;
      for i:=1 to GMS_QRY.RecordCount do
      begin
        case GMS_QRY.updatestatus of
        usinserted:
          begin
            with Query2 do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select zszl_gms.zsdh,zszl.zsywjc,zszl_gms.USERID,zszl_gms.USERDATE from zszl_gms');
              sql.add('left join zszl on zszl.zsdh=zszl_gms.zsdh');
              sql.Add('where zszl_gms.zsdh = '+''''+GMS_QRY.FieldByName('zsdh').Value+''' ');
              active:=true;
              if Query2.RecordCount =0 then
              begin
                 GMS_QRY.edit;
                 GMS_QRY.FieldByName('userID').Value:=main.edit1.text;
                 GMS_QRY.FieldByName('userdate').Value:=Ndate;
                 UpdateGMS.apply(ukinsert);
              end else
                abort;
            end;
          end;
         end;
       GMS_QRY.next;
      end;
      with GMS_QRY do
      begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
      end;
      Button6.Enabled:=true;
      BBTT1.Visible:=false;
      BD2.Enabled:=true;
      BD5.Enabled:=false;
      BD6.Enabled:=false;
      except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
   end;
end;

procedure TGMS_RFT.BD1Click(Sender: TObject);
begin
  panel11.Visible:=true;
end;

procedure TGMS_RFT.BD2Click(Sender: TObject);
begin
  with gms_qry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BD2.Enabled:=false;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
end;

procedure TGMS_RFT.BD4Click(Sender: TObject);
begin
  if GMS_QRY.RequestLive then
     begin
        showmessage('Pls save Master data first.');
        abort;
     end;
  with GMS_QRY do
     begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
     end;
     Button6.Enabled:=false;
     BD2.Enabled:=false;
     BD5.Enabled:=true;
     BD6.Enabled:=true;
end;

procedure TGMS_RFT.BBTT1Click(Sender: TObject);
begin
  GMS_RFT2:=TGMS_RFT2.create(self);
  GMS_RFT2.show;
 
end;

procedure TGMS_RFT.FormDestroy(Sender: TObject);
begin
  GMS_RFT:=nil;
end;

procedure TGMS_RFT.CBX2Change(Sender: TObject);
begin
  CBX1.itemindex:=CBX2.ItemIndex;
end;

procedure TGMS_RFT.ComboBox2Change(Sender: TObject);
begin
   combobox1.itemindex:=combobox2.ItemIndex;
end;

end.

unit EntryMatRFIDCode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  DBTables, DB, ScktComp, Mask, DBCtrls, comobj,ShellApi, Printers,
   RpCon, RpConDS, RpConBDE, RpDefine, RpRave;

type
  TEntryMatRFIDCode = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    DS1: TDataSource;
    KCRKRF: TQuery;
    tmpQry: TQuery;
    KCRKRFS: TQuery;
    DS2: TDataSource;
    DS3: TDataSource;
    KCRKRFSS: TQuery;
    UpdKCRKFSS: TUpdateSQL;
    KCRKRFSSSCNO: TStringField;
    KCRKRFSSCLBH: TStringField;
    KCRKRFSSPack: TIntegerField;
    KCRKRFSSQty: TFloatField;
    KCRKRFSSUSERDATE: TDateTimeField;
    KCRKRFSSUSERID: TStringField;
    KCRKRFSSYN: TStringField;
    ServerSocket: TServerSocket;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    INVEdit: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    BitBtn2: TBitBtn;
    MemoEdit: TEdit;
    Panel5: TPanel;
    DBGridEh2: TDBGridEh;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    BDT5: TBitBtn;
    BDT6: TBitBtn;
    Label18: TLabel;
    DBGridEh1: TDBGridEh;
    UpdKCRKRF: TUpdateSQL;
    KCRKRFSCNO: TStringField;
    KCRKRFGSBH: TStringField;
    KCRKRFDOCNO: TStringField;
    KCRKRFMEMO: TStringField;
    KCRKRFUSERDATE: TDateTimeField;
    KCRKRFUSERID: TStringField;
    KCRKRFYN: TStringField;
    KCRKRFSSCNO: TStringField;
    KCRKRFSCLBH: TStringField;
    KCRKRFSQty: TFloatField;
    KCRKRFSUSERDATE: TDateTimeField;
    KCRKRFSUSERID: TStringField;
    KCRKRFSYN: TStringField;
    KCRKRFSYWPM: TStringField;
    KCRKRFSPackQty: TFloatField;
    KCRKRFCKBH: TStringField;
    BitBtn1: TBitBtn;
    Panel7: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    KCRKRFSSTAGID: TIntegerField;
    Label1: TLabel;
    SCNOEdit: TEdit;
    Query1: TQuery;
    KCRKRFSCGNO: TStringField;
    KCRKRFSSMemo_RY: TStringField;
    KCRKRFSSMemo_Article: TStringField;
    Query1SCNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZSYWJC: TStringField;
    Query1Memo_RY: TStringField;
    Query1Memo_Article: TStringField;
    Query1Qty: TFloatField;
    Query1PACK1: TStringField;
    Query1Pack: TIntegerField;
    Query1Memo: TStringField;
    Query1DWBH: TStringField;
    UpdKCRKRFS: TUpdateSQL;
    BitBtn5: TBitBtn;
    Query1CGNO: TStringField;
    KCRKRFLB: TStringField;
    KCRKRFSSFL: TStringField;
    KCRKRFSZSYWJC: TStringField;
    Panel8: TPanel;
    Panel4: TPanel;
    ImageNO: TImage;
    ImageOK: TImage;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    BO5: TBitBtn;
    BO6: TBitBtn;
    BO7: TBitBtn;
    BitBtn4: TBitBtn;
    BO8: TBitBtn;
    BitBtn3: TBitBtn;
    DBGridEh3: TDBGridEh;
    Panel9: TPanel;
    Panel10: TPanel;
    BE1: TBitBtn;
    BE2: TBitBtn;
    BE4: TBitBtn;
    BE5: TBitBtn;
    BE6: TBitBtn;
    BE7: TBitBtn;
    BE3: TBitBtn;
    DBGridEh4: TDBGridEh;
    DS4: TDataSource;
    KCRKRFSSS: TQuery;
    KCRKRFSSSSCNO: TStringField;
    KCRKRFSSSCLBH: TStringField;
    KCRKRFSSSPack: TIntegerField;
    KCRKRFSSSQty: TFloatField;
    KCRKRFSSSZLBH: TStringField;
    KCRKRFSSSXXCC: TStringField;
    KCRKRFSSSCGNO: TStringField;
    KCRKRFSSSUSERDATE: TDateTimeField;
    KCRKRFSSSUSERID: TStringField;
    KCRKRFSSSYN: TStringField;
    UpdKCRKFSSS: TUpdateSQL;
    Query1QRCode: TStringField;
    BDelRec: TQuery;
    KCRKRFSSbarcode: TStringField;
    qry_zlbh: TQuery;
    KCRKRFSSRemQty: TFloatField;
    KCRKRFSSCFMID: TStringField;
    KCRKRFSSCFMDate: TDateTimeField;
    KCRKRFSSLotNO: TStringField;
    Label5: TLabel;
    LBCombo: TComboBox;
    CheckBox1: TCheckBox;
    Query1FIFO: TStringField;
    Query1LotNO: TStringField;
    KCRKRFSIDCheck: TStringField;
    Query1IDCheck: TStringField;
    KCRKRFFIFO: TStringField;
    BE8: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure ServerSocketClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientError(Sender: TObject;
      Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
      var ErrorCode: Integer);
    procedure ServerSocketClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure BO6Click(Sender: TObject);
    procedure DBGridEh3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure KCRKRFSSAfterOpen(DataSet: TDataSet);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BO1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure KCRKRFSAfterOpen(DataSet: TDataSet);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure KCRKRFAfterOpen(DataSet: TDataSet);
    procedure KCRKRFSSAfterScroll(DataSet: TDataSet);
    procedure BB1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure BO7Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BO8Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BE1Click(Sender: TObject);
    procedure BE2Click(Sender: TObject);
    procedure BE3Click(Sender: TObject);
    procedure BE4Click(Sender: TObject);
    procedure BE5Click(Sender: TObject);
    procedure BE6Click(Sender: TObject);
    procedure BE7Click(Sender: TObject);
    procedure KCRKRFSSSAfterOpen(DataSet: TDataSet);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BE8Click(Sender: TObject);
  private
    iYear,iMonth:String;
    NDate:TDate;
    IsProcessRFID, Isdel:boolean;
    { Private declarations }
    procedure ExportDefaultExcel(Query:TQuery);
    procedure PrintBTW();
  public
    { Public declarations }
  end;

var
  EntryMatRFIDCode: TEntryMatRFIDCode;

implementation
  uses main1 , EntryMatRFIDCode_QT1, EntryMatRFIDCode_CT1, EntryMatRFIDCode_DLG1, FunUnit,EntryMatRFIDCode_CG1,EntryMatRFIDCode_JG1,PrintLabel1,
  PrintLabel_GC1;
{$R *.dfm}

procedure TEntryMatRFIDCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TEntryMatRFIDCode.FormDestroy(Sender: TObject);
begin
  EntryMatRFIDCode:=nil;
end;

procedure TEntryMatRFIDCode.BitBtn2Click(Sender: TObject);
begin
  //
  with KCRKRF do
  begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select SCNO,GSBH,CKBH,DOCNO,MEMO,FIFO,LB,USERID,USERDATE,YN from KCRKScan_RF ');
   SQL.Add('Where KCRKScan_RF.GSBH='''+main.Edit2.Text+''' ');
   SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDATE,111)) between ');
   SQL.add('          '''+Formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
   SQL.Add('   and KCRKScan_RF.SCNO like ''%'+SCNOEdit.Text+'%'' ');
   if CheckBox1.Checked=true then
     SQL.Add(' and Exists (Select SCNO from KCRKScan_RFSS where  KCRKScan_RFSS.SCNO=KCRKScan_RF.SCNO and len(KCRKScan_RFSS.USERID)<=4) ');
   if INVEdit.Text<>'' then
     SQL.Add('  and KCRKScan_RF.DOCNO like '''+INVEdit.Text+'%'' ');
   if MemoEdit.Text<>'' then
     SQl.Add('   and KCRKScan_RF.MEMO like '''+MemoEdit.Text+'%'' ');
   if Check.Checked then
   begin
      SQL.Add(' and KCRKScan_RF.USERID='''+main.Edit1.Text+'''');
   end;
   if LBCombo.Text<>'' then
   begin
     SQL.Add(' and KCRKScan_RF.LB='''+LBCombo.Text+''' ');
   end;
   SQL.Add('order by SCNO desc ');
   //funcObj.WriteErrorLog(sql.Text);
   Active:=true;
  end;
  Panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  bbt6.Enabled:=true;
  KCRKRFS.Active:=true;
  KCRKRFSS.Active:=true;
  KCRKRFSSS.Active:=true;
end;

procedure TEntryMatRFIDCode.BitBtn1Click(Sender: TObject);
var i,j,PackCount,Pack:integer;
    Qty,RemainQty,PackQty,TotalQty,tempQty:double;
    SCNO,RY,Article,barcode:String;
    CGNO,CGNO_Temp:String;
    tmpList:TStringlist;
    k:integer;
begin
  with KCRKRFSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //
  KCRKRFS.First;
  SCNO:=KCRKRFS.FieldByName('SCNO').AsString;
  for i:=0 to KCRKRFS.RecordCount-1 do
  begin
    RY:='';
    Article:= '';
    {with tmpQry do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select CGZLSS.ZLBH  ');
      SQL.Add('from CGZLSS  ');
      //SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH  ');
      SQL.Add('where CGZLSS.CGNO='''+KCRKRFS.FieldByName('CGNO').AsString+'''  ');
      SQL.Add('and CGZLSS.CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+'''  ');
      SQL.Add('group by CGZLSS.ZLBH  ');
      active:=true;
      while not tmpQry.eof do
      begin
        RY:=RY+tmpQry.fieldbyname('ZLBH').AsString+',';
        tmpQry.Next;
      end;
      sql.Clear;
      SQL.Add('select DDZL.Article,DDZL.BuyNo   ');
      SQL.Add('from CGZLSS  ');
      SQL.Add('left join DDZL on DDZL.DDBH = CGZLSS.ZLBH  ');
      SQL.Add('where CGZLSS.CGNO='''+KCRKRFS.FieldByName('CGNO').AsString+'''  ');
      SQL.Add('and CGZLSS.CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+'''  ');
      SQL.Add('group by DDZL.Article,DDZL.BuyNo  ');
      active:=true;
      while not tmpQry.eof do
      begin
        Article:=Article+tmpQry.fieldbyname('Article').AsString+'/'+tmpQry.fieldbyname('BuyNo').AsString+',';
        tmpQry.Next;
      end;
    end;
    RY:=Copy(RY,1,length(RY)-1);
    Article:=Copy(Article,1,length(Article)-1);}
    //
    if ((KCRKRFS.FieldByName('Qty').Value>0) and (KCRKRFS.FieldByName('PackQty').Value>0) and (KCRKRFSS.RecordCount=0) and (Isdel=false) ) then
    begin
      PackCount:=1;
      RemainQty:=KCRKRFS.FieldByName('Qty').Value;
      PackQty:=KCRKRFS.FieldByName('PackQty').Value;
      repeat
        barcode:=SCNO+KCRKRFS.FieldByName('CLBH').AsString+IntToStr(PackCount);
        KCRKRFSS.edit;
        KCRKRFSS.fieldbyname('SCNO').Value:=SCNO;
        KCRKRFSS.fieldbyname('CLBH').Value:=KCRKRFS.FieldByName('CLBH').Value;
        KCRKRFSS.fieldbyname('Pack').Value:=PackCount;
        KCRKRFSS.fieldbyname('Qty').Value:=formatfloat('#,##0.##',PackQty);
        KCRKRFSS.FieldByName('UserID').Value:=main.edit1.text;
        KCRKRFSS.FieldByName('UserDate').Value:=NDate;
        KCRKRFSS.FieldByName('YN').Value:='1';
        KCRKRFSS.FieldByName('Memo_RY').Value:=RY;
        KCRKRFSS.FieldByName('Memo_Article').Value:=Article;
        KCRKRFSS.FieldByName('barcode').Value:=barcode;
        if (RemainQty-PackQty)>0 then
        begin
          KCRKRFSS.fieldbyname('Qty').Value:=formatfloat('#,##0.##',PackQty);
        end else
        begin
          KCRKRFSS.fieldbyname('Qty').Value:=formatfloat('#,##0.##',RemainQty);
        end;
        UpdKCRKFSS.apply(ukinsert);
        //
        RemainQty:=RemainQty-PackQty;
        PackCount:=PackCount+1;
      until ((RemainQty<=0) or (PackCount>250)) ;
    end;
    KCRKRFS.Next;
  end;

  //====================================================================
  with KCRKRFSSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  //
  KCRKRFS.First;
  for i:=0 to KCRKRFS.RecordCount-1 do
  begin
    //
    CGNO_Temp:='';
    if Pos(',',KCRKRFS.FieldByName('CGNO').AsString)>0 then
    begin
      tmpList:=TStringlist.Create;
      tmpList:=FuncObj.SplitString(KCRKRFS.FieldByName('CGNO').AsString,',');
      for k:=0 to tmpList.Count-1 do
      begin
        CGNO_Temp:=CGNO_Temp+''''+tmpList.Strings[k]+''',';
      end;
      CGNO:=' in ('+Copy(CGNO_Temp,1,length(CGNO_Temp)-1)+')';
      tmpList.Free;
    end else
    begin
      CGNO:=' ='''+KCRKRFS.FieldByName('CGNO').AsString+''' ';
    end;
    //
    KCRKRFSS.First;
    for j:=0 to KCRKRFSS.RecordCount-1 do
    begin
      Pack:=KCRKRFSS.FieldByName('Pack').Value;
      TotalQty:=KCRKRFSS.FieldByName('Qty').Value;
      with tmpQry do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('  Select CGZLSS.CGNO,CGZLSS.ZLBH,CGZLSS.XXCC,Round(CGZLSS.Qty-IsNull(CGRK.okQty,0.0),2) as Qty ');
        SQL.Add('  from CGZLSS ');
        SQL.Add('  left join (select CGNO,CLBH,ZLBH,XXCC,sum(Qty) as okQty ');
        SQL.Add('  			from KCRKScan_RFSSS ');
        SQL.Add('  			left join KCRKScan_RF ON KCRKScan_RF.SCNO=KCRKScan_RFSSS.SCNO ');
        SQL.Add('  			where  KCRKScan_RFSSS.CGNO '+CGNO+' ');
        SQL.Add('  			and KCRKScan_RFSSS.CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+''' ');
        SQL.Add('  			and isnull(KCRKScan_RF.LB,''01'')=''01'' ');
        SQL.Add('  			Group by CGNO,CLBH,ZLBH,XXCC ');
        SQL.Add('  			) CGRK on CGRK.CGNO=CGZLSS.CGNO and CGRK.ZLBH=CGZLSS.ZLBH and CGRK.CLBH=CGZLSS.CLBH and CGRK.XXCC=CGZLSS.XXCC ');
        SQL.Add('  where CGZLSS.CGNO '+CGNO+' and CGZLSS.CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+''' ');
        SQL.Add('  and Round(CGZLSS.Qty-IsNull(CGRK.okQty,0.0),2)>0  ');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
        if (tmpQry.RecordCount>0) and (KCRKRFSSS.RecordCount=0) then
        begin
          tmpQry.First;
          Qty:=0;
          while not tmpQry.Eof do
          begin
            Qty:=Qty+tmpQry.FieldByName('Qty').Value;
            if (TotalQty >= Qty) then
            begin
              KCRKRFSSS.edit;
              KCRKRFSSS.fieldbyname('SCNO').Value:=KCRKRFSS.FieldByName('SCNO').Value;
              KCRKRFSSS.fieldbyname('CLBH').Value:=KCRKRFSS.FieldByName('CLBH').Value;
              KCRKRFSSS.fieldbyname('Pack').Value:=Pack;
              KCRKRFSSS.fieldbyname('Qty').Value:=formatfloat('#,##0.##',tmpQry.FieldByName('Qty').Value);
              KCRKRFSSS.FieldByName('ZLBH').Value:=tmpQry.FieldByName('ZLBH').Value;
              KCRKRFSSS.FieldByName('XXCC').Value:=tmpQry.FieldByName('XXCC').Value;
              KCRKRFSSS.FieldByName('CGNO').Value:=tmpQry.FieldByName('CGNO').Value;
              KCRKRFSSS.FieldByName('UserID').Value:=main.edit1.text;
              KCRKRFSSS.FieldByName('UserDate').Value:=NDate;
              KCRKRFSSS.FieldByName('YN').Value:='1';
              UpdKCRKFSSS.apply(ukinsert);
              tmpQry.Next;
            end else
            begin
              tempQty:=Qty-TotalQty;
              if tempQty < tmpQry.FieldByName('Qty').Value then
              begin
                KCRKRFSSS.edit;
                KCRKRFSSS.fieldbyname('SCNO').Value:=KCRKRFSS.FieldByName('SCNO').Value;
                KCRKRFSSS.fieldbyname('CLBH').Value:=KCRKRFSS.FieldByName('CLBH').Value;
                KCRKRFSSS.fieldbyname('Pack').Value:=Pack;
                KCRKRFSSS.fieldbyname('Qty').Value:=formatfloat('#,##0.##',tmpQry.FieldByName('Qty').Value-tempQty);
                KCRKRFSSS.FieldByName('ZLBH').Value:=tmpQry.FieldByName('ZLBH').Value;
                KCRKRFSSS.FieldByName('XXCC').Value:=tmpQry.FieldByName('XXCC').Value;
                KCRKRFSSS.FieldByName('CGNO').Value:=tmpQry.FieldByName('CGNO').Value;
                KCRKRFSSS.FieldByName('UserID').Value:=main.edit1.text;
                KCRKRFSSS.FieldByName('UserDate').Value:=NDate;
                KCRKRFSSS.FieldByName('YN').Value:='1';
                UpdKCRKFSSS.apply(ukinsert);
              end;
              break;
            end;
          end;
        end;
      end;
      KCRKRFSS.Next;
    end;
    with tmpQry do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('select * from KCRKScan_RFSS where SCNO ='''+SCNO+''' and CLBH ='''+KCRKRFS.FieldByName('CLBH').Value+''' ');
      active:=true;
      if tmpQry.RecordCount>0 then
      begin
        tmpQry.First;
        while not tmpQry.Eof do
        begin
          with qry_zlbh do
          begin
            active:=false;
            SQL.Clear;
            SQL.Add('Update KCRKScan_RFSS set Memo_RY = KCRKScan_RFSSS.ZLBH, memo_Article = KCRKScan_RFSSS.SKU  ');
            SQL.Add('from ( ');
            SQL.Add('select RFSSS.SCNO,RFSSS.CLBH,RFSSS.Pack,CAST(substring (( select '','' + KCRKScan_RFSSS.ZLBH ');
            SQL.Add('from KCRKScan_RFSSS where KCRKScan_RFSSS.SCNO=RFSSS.SCNO and KCRKScan_RFSSS.CLBH=RFSSS.CLBH and KCRKScan_RFSSS.Pack=RFSSS.Pack ');
            SQL.Add('for XML Path ('''')),2,1000) as varchar(1000)) as ZLBH ');
            SQL.Add(',CAST(substring (( select '','' + DDZL.Article + ''/'' + DDZL.BUYNO from KCRKScan_RFSSS ');
            SQL.Add('left join DDZL on DDZL.DDBH = KCRKScan_RFSSS.ZLBH ');
            SQL.Add('where KCRKScan_RFSSS.SCNO=RFSSS.SCNO and KCRKScan_RFSSS.CLBH=RFSSS.CLBH and KCRKScan_RFSSS.Pack=RFSSS.Pack ');
            sql.Add('group by DDZL.Article,DDZL.BUYNO for XML Path ('''')),2,1000) as varchar(1000)) as SKU ');
            SQL.Add('from KCRKScan_RFSSS RFSSS ');
            SQL.Add('where SCNO = '''+tmpQry.fieldbyname('SCNO').AsString+''' and CLBH = '''+tmpQry.fieldbyname('CLBH').AsString+''' and Pack = '''+tmpQry.fieldbyname('Pack').AsString+''' ');
            SQL.Add('group by RFSSS.SCNO,RFSSS.CLBH,RFSSS.Pack )KCRKScan_RFSSS ');
            SQL.Add('where KCRKScan_RFSS.SCNO=KCRKScan_RFSSS.SCNO and KCRKScan_RFSS.CLBH=KCRKScan_RFSSS.CLBH and KCRKScan_RFSS.Pack=KCRKScan_RFSSS.Pack ');
            ExecSQL();
          end;
          tmpQry.Next;
        end;
      end;
    end;
    KCRKRFS.Next;
  end;
  
  KCRKRFSS.active:=false;
  KCRKRFSS.cachedupdates:=false;
  KCRKRFSS.requestlive:=false;
  KCRKRFSS.active:=true;
  //KCRKRFSS.Active:=true;
  KCRKRFSSS.active:=false;
  KCRKRFSSS.cachedupdates:=false;
  KCRKRFSSS.requestlive:=false;
  KCRKRFSSS.active:=true;
end;

procedure TEntryMatRFIDCode.FormCreate(Sender: TObject);
begin
  //
  with tmpQry do //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    iYear:=fieldbyname('FY').asstring;
    iMonth:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(iMonth)<2 then
  iMonth:='0'+iMonth;
  //
  DTP1.Date:=Date()-3;
  DTP2.date:=Date();
  Isdel:=false;
  try
      ServerSocket.Active:=true;
  except
    on E:Exception do
    begin
      Showmessage('Van den:'+E.Message);
    end;
  end;
end;

procedure TEntryMatRFIDCode.BO3Click(Sender: TObject);
begin
  with KCRKRFSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BO2Click(Sender: TObject);
begin
  if (KCRKRFSSS.RecordCount=0) then
  begin
    with KCRKRFSS do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
        Isdel:=true;
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
  end else
  begin
    showmessage('Pls delete the Entry Detail first.')
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BO4Click(Sender: TObject);
var i,Pack:integer;
    barcode:String;
begin
  try
    KCRKRFSS.first;
    {with tmpQry do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('  select CGZLS.Qty as CGQty,isnull(CGRK.okQty,0.0) as okQty from CGZLS ');
      SQL.Add('  left join ( select CGNO,CLBH,sum(Qty) as okQty from KCRKScan_RFS  ');
      SQL.Add('  			       left join KCRKScan_RF ON KCRKScan_RF.SCNO=KCRKScan_RFS.SCNO  ');
      SQL.Add('  			       where isnull(KCRKScan_RF.LB,''01'')=''01'' and KCRKScan_RFS.SCNO<>'''+KCRKRFS.FieldByName('SCNO').Value+''' ');
      SQL.Add('  			       group by CGNO,CLBH   ');
      SQL.Add('  		        ) CGRK on CGRK.CGNO = CGZLS.CGNO and CGRK.CLBH=CGZLS.CLBH   ');
      SQL.Add('  where CGZLS.CGNO='''+KCRKRFS.FieldByName('CGNO').Value+''' and CGZLS.CLBH ='''+KCRKRFS.FieldByName('CLBH').Value+''' ');
      active:=true;
      if (tmpQry.FieldByName('okQty').Value<>0) and (StrToFloat(CurrToStr(DBGridEh3.Columns[0].Footer.SumValue))+tmpQry.FieldByName('okQty').Value > tmpQry.FieldByName('CGQty').Value) then
      begin
        showmessage('Qty in warehouses > Qty of Purchase order.');
        exit;
      end else if (tmpQry.FieldByName('okQty').Value=0) and (StrToFloat(CurrToStr(DBGridEh3.Columns[0].Footer.SumValue))>tmpQry.FieldByName('CGQty').Value) then
      begin
        showmessage('Qty in warehouses > Qty of Purchase order.');
        exit;
      end;
      active:=false;
    end;
    if StrToFloat(CurrToStr(DBGridEh3.Columns[0].Footer.SumValue))>KCRKRFS.fieldbyname('Qty').Value then
    begin
      showmessage('Qty in warehouses > Qty of Purchase order.');
      exit;
    end;}
    for i:=1 to KCRKRFSS.RecordCount do
    begin
      case KCRKRFSS.updatestatus of
        usinserted:
        begin
          if (KCRKRFSS.fieldbyname('Qty').isnull) or (KCRKRFSS.fieldbyname('Qty').Value=0) then
          begin
            KCRKRFSS.delete;
          end else
          begin
             with tmpQry do
             begin
               Active:=false;
               SQL.Clear;
               SQL.Add('Select top 1 Pack from KCRKScan_RFSS where SCNO='''+KCRKRFS.fieldbyname('SCNO').AsString+''' and CLBH='''+KCRKRFS.fieldbyname('CLBH').AsString+'''  order by Pack Desc');
               Active:=true;
               if RecordCount>0 then
                 Pack:=FieldByName('Pack').AsInteger+1
               else
                 Pack:=1;
               Active:=false;
             end;
             barcode:=KCRKRFS.FieldByName('SCNO').AsString+KCRKRFS.FieldByName('CLBH').AsString+IntToStr(Pack);
             KCRKRFSS.edit;
             KCRKRFSS.fieldbyname('SCNO').Value:=KCRKRFS.FieldByName('SCNO').Value;
             KCRKRFSS.fieldbyname('CLBH').Value:=KCRKRFS.FieldByName('CLBH').Value;
             KCRKRFSS.fieldbyname('Pack').Value:=Pack;
             KCRKRFSS.fieldbyname('barcode').Value:=barcode;
             KCRKRFSS.FieldByName('userID').Value:=main.edit1.text;
             KCRKRFSS.FieldByName('userdate').Value:=date;
             KCRKRFSS.FieldByName('YN').Value:='1';
             if (Pack<=250) then
             UpdKCRKFSS.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if NDate-KCRKRF.FieldByName('userdate').Value<=30  then
          begin
            if KCRKRF.FieldByName('userID').Value=main.Edit1.Text then
            begin
              if KCRKRFSS.fieldbyname('YN').value='0'then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''KCRKScan_RFSS'','''+KCRKRFSS.fieldbyname('SCNO').Value+'''');
                  sql.add(','''+KCRKRFSS.fieldbyname('CLBH').Value+''','''+KCRKRFSS.fieldbyname('USERID').Value+''',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  ExecSQL;
                  active:=false;
                end;
                UpdKCRKFSS.apply(ukdelete);
              end else
              begin
                KCRKRFSS.edit;
                KCRKRFSS.FieldByName('userID').Value:=main.edit1.text;
                KCRKRFSS.FieldByName('userdate').Value:=date;
                UpdKCRKFSS.apply(ukmodify);
                //
                if (KCRKRFSS.FieldByName('Qty').Value<>KCRKRFSS.FieldByName('Qty').OldValue) then
                begin
                  with tmpQry do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add('Delete from KCRKScan_RFSSS where SCNO='''+KCRKRFSS.FieldByName('SCNO').AsString+''' and CLBH='''+KCRKRFSS.FieldByName('CLBH').AsString+''' and Pack='''+KCRKRFSS.FieldByName('Pack').AsString+''' ');
                    ExecSQL();
                  end;
                  //BitBtn1.Click;
                end;
              end;
            end else
            begin
              showmessage('It is not yours, can not delete or modify.');
            end;
          end else
          begin
            showmessage('Date > 30, can not delete or modify.');
          end;
        end;
      end;
      KCRKRFSS.Next;
    end;
    BitBtn1.Click;
    Isdel:=false;
    //
    KCRKRFS.First;
    while not KCRKRFS.Eof do
    begin
      with tmpQry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update KCRKScan_RFS set Qty=KCRKScan_RFSS.Qty');
        SQL.Add('from ( ');
        SQL.Add('select SCNO,CLBH,Sum(Qty) as Qty from KCRKScan_RFSS ');
        SQL.Add('where SCNO='''+KCRKRFS.FieldByName('SCNO').AsString+''' and CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+''' Group by SCNO,CLBH ) KCRKScan_RFSS ');
        SQL.Add('where KCRKScan_RFSS.CLBH=KCRKScan_RFS.CLBH and KCRKScan_RFSS.SCNO=KCRKScan_RFS.SCNO ');
        ExecSQL();
        end;
        KCRKRFS.Next;
    end;
    KCRKRFS.Active:=false;
    KCRKRFS.Active:=true;
    //
    KCRKRFSS.active:=false;
    KCRKRFSS.cachedupdates:=false;
    KCRKRFSS.requestlive:=false;
    KCRKRFSS.active:=true;
    BO4.Enabled:=false;
    BO5.Enabled:=false;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
  
end;

procedure TEntryMatRFIDCode.BO5Click(Sender: TObject);
begin
  with KCRKRFSS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BO4.enabled:=false;
  BO5.enabled:=false;
  Isdel:=false;
end;

procedure TEntryMatRFIDCode.ServerSocketClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  FuncObj.WriteErrorLog(datetimetostr(now)+' Socket Client Connect');
  BO6.Enabled:=true;
  IsProcessRFID:=false;
end;

procedure TEntryMatRFIDCode.ServerSocketClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  FuncObj.WriteErrorLog(datetimetostr(now)+' Socket Client Disconnect');
  BO6.Enabled:=false;
end;

procedure TEntryMatRFIDCode.ServerSocketClientError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
  ErrorCode:=0;
end;

procedure TEntryMatRFIDCode.ServerSocketClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var Rece:String;
begin
  Rece:=Socket.ReceiveText;
  if Pos('<MATOK>',Rece)>=1 then
  begin
    ImageOK.Visible:=true;
    ImageNO.Visible:=false;
  end;
  if Pos('<MATNOK>',Rece)>=1 then
  begin
    ImageNO.Visible:=true;
    ImageOK.Visible:=false;
  end;
  IsProcessRFID:=false;
  FuncObj.WriteErrorLog(datetimetostr(now)+' Rece:'+Rece);
end;

procedure TEntryMatRFIDCode.BO6Click(Sender: TObject);
var i:integer;
   SendRFID:String;
begin
  if KCRKRFSS.Active=true then
  begin
    if KCRKRFSS.FieldByName('SCNO').AsString<>'' then
    begin
      if IsProcessRFID=false then
      begin
        SendRFID:='<MAT>'+Copy(KCRKRFSS.FieldByName('SCNO').AsString,3,8)+KCRKRFSS.FieldByName('CLBH').AsString+Format('%.3d',[strtoint(KCRKRFSS.FieldByName('Pack').AsString)])+KCRKRFSS.FieldByName('Qty').AsString;
        for i:=0 to ServerSocket.Socket.ActiveConnections-1 do
        begin
          ServerSocket.Socket.Connections[i].SendText(SendRFID);
        end;
        IsProcessRFID:=true;
      end;
    end;
  end;
end;

procedure TEntryMatRFIDCode.DBGridEh3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key=VK_DOWN then
    begin
      if KCRKRFSS.FieldByName('Pack').AsInteger<>KCRKRFSS.RecordCount then
      begin
      end else
      begin
        if KCRKRFSS.requestlive=false then
        begin
          KCRKRFS.Next;
        end;
      end;
    end;
    if Key=VK_UP then
    begin
      if KCRKRFSS.FieldByName('Pack').AsInteger<>1 then
      begin
      end else
      begin
       if KCRKRFSS.requestlive=false then
       begin
         KCRKRFS.Prior;
         KCRKRFSS.Last;
       end;
      end;
    end;
    if Key=VK_RETURN then
    begin
      if KCRKRFSS.requestlive=false then
      BO6.Click;
    end;

end;

procedure TEntryMatRFIDCode.KCRKRFSSAfterOpen(DataSet: TDataSet);
begin
  BO1.Enabled:=true;
  BO2.Enabled:=true;
  BO3.Enabled:=true;
  BO8.Enabled:=true;
  if (NDate-KCRKRF.FieldByName('USERDATE').value)>30 then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO8.Enabled:=false;
  end;
  if KCRKRF.FieldByName('USERID').value<>main.Edit1.text  then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO8.Enabled:=false;
  end;
  if KCRKRF.cachedupdates  then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO3.Enabled:=false;
    BO8.Enabled:=false;
  end;
end;

procedure TEntryMatRFIDCode.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCRKRFSS.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TEntryMatRFIDCode.BO1Click(Sender: TObject);
begin
  if KCRKRFS.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  with KCRKRFSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    fieldbyname('Qty').Value:='0';
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BB2Click(Sender: TObject);
begin
  with KCRKRF do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BB3Click(Sender: TObject);
begin
  if (KCRKRFS.recordcount=0) and (KCRKRFSS.RecordCount=0) and (KCRKRFSSS.RecordCount=0)then
  begin
    with KCRKRF do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
  end else
  begin
    showmessage('Pls delete the Entry Detail first.')
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BB4Click(Sender: TObject);
begin
  with KCRKRF do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BB6Click(Sender: TObject);
begin
  with KCRKRF do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TEntryMatRFIDCode.BB5Click(Sender: TObject);
var i:integer;
    SCNO:string;
begin
  //
  try
      KCRKRF.first;
      for i:=1 to KCRKRF.RecordCount do
      begin
        case KCRKRF.updatestatus of
          usinserted:
          begin
            if ((KCRKRF.fieldbyname('MEMO').isnull) and (KCRKRF.fieldbyname('DOCNO').isnull)) then
            begin
              //KCRKRF.delete;
            end else
            begin
             with tmpQry do    //計算領料單流水號
             begin
               active:=false;
               sql.Clear;
               sql.Add('select SCNO from KCRKScan_RF where SCNO like '+''''+iYear+iMonth+'%'+'''');
               sql.add('order by SCNO');
               active:=true;
               if recordcount >0 then
               begin
                 Last;
                 SCNO:=fieldbyname('SCNO').AsString;
                 SCNO:=copy(SCNO,7,4);
                 SCNO:=inttostr(strtoint(SCNO)+1);
                 while length(SCNO)<4 do
                 begin
                   SCNO:='0'+SCNO;
                 end;
               end else
               begin
                 SCNO:='0001';
               end;
               SCNO :=iYear+iMonth+SCNO;
               //
               KCRKRF.edit;
               KCRKRF.FieldByName('SCNO').Value:=SCNO;
               KCRKRF.FieldByName('CKBH').Value:=main.Edit2.Text;
               KCRKRF.FieldByName('GSBH').Value:=main.Edit2.Text;
               if KCRKRF.FieldByName('LB').IsNull then
                KCRKRF.FieldByName('LB').Value:='01';
               KCRKRF.FieldByName('userID').Value:=main.edit1.text;
               KCRKRF.FieldByName('userdate').Value:=date;
               KCRKRF.FieldByName('YN').Value:='1';
               UpdKCRKRF.apply(ukinsert);
             end;
            end;
          end;
          usmodified:
          begin
            if NDate-KCRKRF.FieldByName('userdate').Value<=30  then
            begin
             if KCRKRF.FieldByName('userID').Value=main.Edit1.Text then
             begin
                if KCRKRF.fieldbyname('YN').value='0' then
                begin
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values (''KCRKScan_RF'','''+KCRKRF.fieldbyname('SCNO').Value+'''');
                    sql.add(','' '','''+KCRKRF.fieldbyname('USERID').Value+''',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    ExecSQL;
                    active:=false;
                  end;
                  UpdKCRKRF.apply(ukdelete);
                end else
                begin
                  KCRKRF.edit;
                  KCRKRF.FieldByName('userID').Value:=main.edit1.text;
                  KCRKRF.FieldByName('userdate').Value:=date;
                  UpdKCRKRF.apply(ukmodify);
                end;
              end else
              begin
                showmessage('It is not yours, can not delete or modify.');
              end;
            end else
            begin
              showmessage('Date > 30, can not delete or modify.');
            end;
          end;
        end;
        KCRKRF.Next;
      end;
    KCRKRF.active:=false;
    KCRKRF.cachedupdates:=false;
    KCRKRF.requestlive:=false;
    KCRKRF.active:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TEntryMatRFIDCode.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS1 then
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end else
  begin
    panel6.visible:=true;
    panel1.visible:=false;
    bdt6.Enabled:=true;
    bo7.Enabled:=true;
  end;
end;

procedure TEntryMatRFIDCode.DBGridEh1DblClick(Sender: TObject);
begin
  if  KCRKRF.Active then
  begin
    if  (KCRKRF.recordcount>0) then
    begin
        PC1.ActivePage:=TS2;
        panel1.Visible:=false;
        panel6.Visible:=true;
    end;
  end;
end;

procedure TEntryMatRFIDCode.BD2Click(Sender: TObject);
begin
  if KCRKRF.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS1;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with KCRKRFS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryMatRFIDCode.BD3Click(Sender: TObject);
begin
  if (KCRKRFSS.RecordCount=0) and (KCRKRFSSS.RecordCount=0)  then
  begin
    with KCRKRFS do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
  end else
  begin
    showmessage('Pls delete the Entry Detail first.')
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryMatRFIDCode.BD4Click(Sender: TObject);
begin
  with KCRKRFS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh2.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryMatRFIDCode.BD6Click(Sender: TObject);
begin
  with KCRKRFS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BD5.enabled:=false;
  BD6.enabled:=false;
  DBGridEh2.columns[0].ButtonStyle:=cbsNone;
end;

procedure TEntryMatRFIDCode.BD5Click(Sender: TObject);
var i:integer;
begin
  Isdel:=false;
  try
    KCRKRFS.first;
    for i:=1 to KCRKRFS.RecordCount do
    begin
      case KCRKRFS.updatestatus of
        usinserted:
        begin
          if (KCRKRFS.fieldbyname('CLBH').isnull) then
          begin
            KCRKRFS.delete;
          end else
          begin
             KCRKRFS.edit;
             KCRKRFS.FieldByName('SCNO').Value:=KCRKRF.FieldByName('SCNO').AsString;
             KCRKRFS.FieldByName('userID').Value:=main.edit1.text;
             KCRKRFS.FieldByName('userdate').Value:=date;
             KCRKRFS.FieldByName('YN').Value:='1';
             //
             {with tmpQry do
             begin
               active:=false;
               SQL.Clear;
               SQL.Add('  select CGZLS.Qty as CGQty,isnull(CGRK.okQty,0.0) as okQty from CGZLS ');
               SQL.Add('  left join ( select CGNO,CLBH,sum(Qty) as okQty from KCRKScan_RFS  ');
               SQL.Add('  			       left join KCRKScan_RF ON KCRKScan_RF.SCNO=KCRKScan_RFS.SCNO  ');
               SQL.Add('  			       where isnull(KCRKScan_RF.LB,''01'')=''01''   ');
               SQL.Add('  			       group by CGNO,CLBH   ');
               SQL.Add('  		        ) CGRK on CGRK.CGNO = CGZLS.CGNO and CGRK.CLBH=CGZLS.CLBH   ');
               SQL.Add('  where CGZLS.CGNO='''+KCRKRFS.FieldByName('CGNO').Value+''' and CGZLS.CLBH ='''+KCRKRFS.FieldByName('CLBH').Value+''' ');
               active:=true;
               if KCRKRFS.FieldByName('Qty').Value+tmpQry.FieldByName('okQty').Value > tmpQry.FieldByName('CGQty').Value then
               begin
                  showmessage('Qty in warehouses > Qty of Purchase order.');
                  abort;
               end;
               active:=false;
             end;}
             UpdKCRKRFS.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if NDate-KCRKRF.FieldByName('userdate').Value<=30  then
          begin
            if KCRKRF.FieldByName('userID').Value=main.Edit1.Text then
            begin
              if KCRKRFS.fieldbyname('YN').value='0'then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''KCRKScan_RFS'','''+KCRKRFS.fieldbyname('SCNO').Value+'''');
                  sql.add(','''+KCRKRFS.fieldbyname('CLBH').Value+''','''+KCRKRFS.fieldbyname('USERID').Value+''',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  ExecSQL;
                  active:=false;
                end;
                UpdKCRKRFS.apply(ukdelete);
              end else
              begin
                KCRKRFS.edit;
                KCRKRFS.FieldByName('userID').Value:=main.edit1.text;
                KCRKRFS.FieldByName('userdate').Value:=date;
                //
                {with tmpQry do
                begin
                  active:=false;
                  SQL.Clear;
                  SQL.Add('  select CGZLS.Qty as CGQty,isnull(CGRK.okQty,0.0) as okQty from CGZLS ');
                  SQL.Add('  left join ( select CGNO,CLBH,sum(Qty) as okQty from KCRKScan_RFS  ');
                  SQL.Add('  			       left join KCRKScan_RF ON KCRKScan_RF.SCNO=KCRKScan_RFS.SCNO  ');
                  SQL.Add('  			       where isnull(KCRKScan_RF.LB,''01'')=''01''   ');
                  SQL.Add('  			       group by CGNO,CLBH   ');
                  SQL.Add('  		        ) CGRK on CGRK.CGNO = CGZLS.CGNO and CGRK.CLBH=CGZLS.CLBH   ');
                  SQL.Add('  where CGZLS.CGNO='''+KCRKRFS.FieldByName('CGNO').Value+''' and CGZLS.CLBH ='''+KCRKRFS.FieldByName('CLBH').Value+''' ');
                  active:=true;
                  if KCRKRFS.FieldByName('Qty').Value-KCRKRFS.FieldByName('Qty').OldValue+tmpQry.FieldByName('okQty').Value > tmpQry.FieldByName('CGQty').Value then
                  begin
                    showmessage('Qty in warehouses > Qty of Purchase order.');
                    abort;
                  end;
                  active:=false;
                end;}
                UpdKCRKRFS.apply(ukmodify);
                //
                if (KCRKRFS.FieldByName('Qty').Value<>KCRKRFS.FieldByName('Qty').OldValue) or (KCRKRFS.FieldByName('PackQty').Value<>KCRKRFS.FieldByName('PackQty').OldValue) then
                begin
                  with tmpQry do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add('Delete from KCRKScan_RFSS where SCNO='''+KCRKRFS.FieldByName('SCNO').AsString+''' and CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+''' ');
                    sql.Add('Delete from KCRKScan_RFSSS where SCNO='''+KCRKRFS.FieldByName('SCNO').AsString+''' and CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+''' ');
                    ExecSQL();
                  end;
                  //BitBtn1.Click;
                end;
              end;
            end else
            begin
              showmessage('It is not yours, can not delete or modify.');
            end;
          end else
          begin
            showmessage('Date > 30, can not delete or modify.');
          end;
        end;
      end;
      KCRKRFS.Next;
    end;
    KCRKRFS.active:=false;
    KCRKRFS.cachedupdates:=false;
    KCRKRFS.requestlive:=false;
    KCRKRFS.active:=true;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    DBGridEh2.columns[0].ButtonStyle:=cbsNone;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;

end;

procedure TEntryMatRFIDCode.KCRKRFSAfterOpen(DataSet: TDataSet);
begin
  //
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  if (NDate-KCRKRF.FieldByName('USERDATE').value)>30 then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if KCRKRF.FieldByName('USERID').value<>main.Edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if KCRKRF.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  //
end;

procedure TEntryMatRFIDCode.DBGridEh2EditButtonClick(Sender: TObject);
begin
 if (DBGridEh2.SelectedField.FieldName='CLBH') then
 begin
   EntryMatRFIDCode_DLG:=TEntryMatRFIDCode_DLG.create(self);
   EntryMatRFIDCode_DLG.Show;
 end;
end;

procedure TEntryMatRFIDCode.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCRKRF.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TEntryMatRFIDCode.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCRKRFS.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure TEntryMatRFIDCode.KCRKRFAfterOpen(DataSet: TDataSet);
begin
  if KCRKRF.RecordCount>0 then
  begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
  end;
  if ((NDate-KCRKRF.FieldByName('USERDATE').value)>60)  then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
  end;
  if KCRKRF.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BB2.Enabled:=false;
    BB3.Enabled:=false;
    BB4.Enabled:=false;
  end;
end;

procedure TEntryMatRFIDCode.KCRKRFSSAfterScroll(DataSet: TDataSet);
begin
  if BO6.Enabled=true then
  begin
    ImageOK.Visible:=false;
    ImageNO.Visible:=false;
  end;
end;

procedure TEntryMatRFIDCode.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TEntryMatRFIDCode.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
    if  Query.active  then
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
          for   i:=0   to   Query.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
          end;
          Query.First;
          j:=2;
          while   not   Query.Eof   do
            begin
              for   i:=0   to  Query.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Query.Fields[i].Value;
              end;
            Query.Next;
            inc(j);
            end;
          //for k:=1 to 4 do
          //begin
          //  eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,6]].borders[k].linestyle:=1;
          //end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;

procedure TEntryMatRFIDCode.bbt6Click(Sender: TObject);
begin
  ExportDefaultExcel(KCRKRF);
end;

procedure TEntryMatRFIDCode.BDT6Click(Sender: TObject);
begin
  ExportDefaultExcel(KCRKRFS);
end;

procedure TEntryMatRFIDCode.BO7Click(Sender: TObject);
begin
  ExportDefaultExcel(KCRKRFSS);
end;

procedure TEntryMatRFIDCode.BitBtn3Click(Sender: TObject);
begin
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCRKScan_RFSSS.SCNO,KCRKScan_RFSS.CLBH, KCRKScan_RFSS.Pack, KCRKScan_RFSS.Qty, sum(isnull(KCRKScan_RFSSS.Qty,0)) SQty from KCRKScan_RFSS ');
    sql.Add('left join KCRKScan_RFSSS on KCRKScan_RFSS.SCNO=KCRKScan_RFSSS.SCNO and KCRKScan_RFSS.CLBH=KCRKScan_RFSSS.CLBH and KCRKScan_RFSS.Pack=KCRKScan_RFSSS.Pack ');
    sql.Add('where KCRKScan_RFSS.SCNO='''+KCRKRF.FieldByName('SCNO').AsString+''' ');
    sql.Add('group by KCRKScan_RFSSS.SCNO,KCRKScan_RFSS.CLBH, KCRKScan_RFSS.Pack, KCRKScan_RFSS.Qty ');
    active:=true;
    while not eof do
    begin
      if (fieldbyname('SCNO').AsString='') then
      begin
        showmessage('Entry Detail '+fieldbyname('CLBH').AsString+'-'+fieldbyname('Pack').AsString+' can not empty.');
        exit;
      end;
      if (fieldbyname('Qty').AsString<>fieldbyname('SQty').AsString) then
      begin
        showmessage('Entry Detail '+fieldbyname('CLBH').AsString+'-'+fieldbyname('Pack').AsString+' wrong quantity.');
        exit;
      end;
      next;
    end;
  end;
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article  ');
    SQL.Add(',KCRKScan_RFSS.Qty,CONVERT(varchar, min(KCRKScan_RFSS.Pack),101)+'' of '' +CONVERT(varchar,TotalPack,101) as PACK1,KCRKScan_RFSS.Pack  ');
    SQL.Add(',KCRKScan_RF.Memo+'' - ''+KCRKScan_RF.DOCNO as Memo ,CONVERT(varchar,isnull(KCRKScan_RFSS.RemQty,KCRKScan_RFSS.Qty),101)+'' ''+CLZL.DWBH DWBH, KCRKScan_RFS.CGNO ');
    SQL.Add(',KCRKScan_RFSS.barcode as QRCode, isnull(KCRKScan_RF.FIFO,CONVERT(varchar,month(getdate()))) as FIFO, KCRKScan_RFSS.LotNO,KCRKScan_RFS.IDCheck ');
    SQL.Add('from KCRKScan_RFSS    ');
    SQL.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO    ');
    SQL.Add('left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH    ');
    SQL.Add('left join (select SCNO,CLBH,count (Pack) as TotalPack   ');
    SQL.Add('  			    from KCRKScan_RFSS   ');
    SQL.Add('  			    group by SCNO,CLBH) KCRKScan  on KCRKScan.SCNO = KCRKScan_RFS.SCNO and KCRKScan.CLBH = KCRKScan_RFS.CLBH   ');
    SQL.Add('left join CGZL on CGZL.CGNO = left(KCRKScan_RFS.CGNO,11)    ');
    SQL.Add('left join ZSZL on CGZL.ZSBH = ZSZL.ZSDH    ');
    SQL.Add('left join CLZL on KCRKScan_RFSS.CLBH = CLZL.CLDH    ');
    SQL.Add('where KCRKScan_RFSS.SCNO='''+KCRKRF.FieldByName('SCNO').AsString+'''  ');
    SQL.Add('group by KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,KCRKScan_RFS.CGNO,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article  ');
    SQL.Add(',KCRKScan_RFSS.Qty,KCRKScan_RFSS.Pack,KCRKScan.TotalPack,KCRKScan_RFSS.barcode,KCRKScan_RFS.IDCheck  ');
    SQL.Add(',KCRKScan_RF.Memo,KCRKScan_RF.DOCNO ,CLZL.DWBH, KCRKScan_RFSS.RemQty, KCRKScan_RFSS.LotNO,KCRKScan_RF.FIFO ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
    //PrintLabel:=TPrintLabel.Create(nil);
    //PrintLabel.quickrep1.prepare;
    //PrintLabel.quickrep1.preview;
    //PrintLabel.Free;
    PrintBTW();
end;

procedure TEntryMatRFIDCode.BO8Click(Sender: TObject);
begin
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from KCRKScan_RFSSS where SCNO = '''+KCRKRFSS.fieldbyname('SCNO').AsString+''' and CLBH = '''+KCRKRFSS.fieldbyname('CLBH').AsString+''' ');
    active:=true;
  end;
  //
  if (tmpQry.RecordCount=0) then
  begin
    with KCRKRFSS do
    begin
      if fieldbyname('USERID').value=main.edit1.Text then
      begin
        requestlive:=true;
        cachedupdates:=true;
        First;
        while not eof do
        begin
          edit;
          fieldbyname('YN').Value:='0';
          next;
        end;
        Isdel:=true;
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
  end else
  begin
    showmessage('Pls delete the Entry Detail first.')
  end;
  BO4.Enabled:=true;
  BO5.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BitBtn5Click(Sender: TObject);
var i,PackCount:integer;
    Qty,RemainQty,PackQty:double;
    SCNO,RY,Article,barcode:String;
begin
  with KCRKRFSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  KCRKRFS.First;
  //
  SCNO:=KCRKRFS.FieldByName('SCNO').AsString;
  for i:=0 to KCRKRFS.RecordCount-1 do
  begin
    RY:='';
    Article:= '';
    with tmpQry do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select JGZLSS.ZLBH  ');
      SQL.Add('from JGZLSS  ');
      //SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH  ');
      SQL.Add('where JGZLSS.JGNO='''+KCRKRFS.FieldByName('CGNO').AsString+'''  ');
      SQL.Add('and JGZLSS.CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+'''  ');
      SQL.Add('group by JGZLSS.ZLBH  ');
      active:=true;
      while not tmpQry.eof do
      begin
        RY:=RY+tmpQry.fieldbyname('ZLBH').AsString+',';
        tmpQry.Next;
      end;
      sql.Clear;
      SQL.Add('select DDZL.Article,DDZL.BuyNo   ');
      SQL.Add('from JGZLSS  ');
      SQL.Add('left join DDZL on DDZL.DDBH = JGZLSS.ZLBH  ');
      SQL.Add('where JGZLSS.JGNO='''+KCRKRFS.FieldByName('CGNO').AsString+'''  ');
      SQL.Add('and JGZLSS.CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+'''  ');
      SQL.Add('group by DDZL.Article,DDZL.BuyNo  ');
      active:=true;
      while not tmpQry.eof do
      begin
        Article:=Article+tmpQry.fieldbyname('Article').AsString+'/'+tmpQry.fieldbyname('BuyNo').AsString+',';
        tmpQry.Next;
      end;
    end;
    RY:=Copy(RY,1,length(RY)-1);
    Article:=Copy(Article,1,length(Article)-1);
  //
    if ((KCRKRFS.FieldByName('Qty').Value>0) and (KCRKRFS.FieldByName('PackQty').Value>0) and (KCRKRFSS.RecordCount=0) ) then
    begin
      //
      PackCount:=1;
      RemainQty:=KCRKRFS.FieldByName('Qty').Value;
      PackQty:=KCRKRFS.FieldByName('PackQty').Value;
      repeat
        barcode:=SCNO+KCRKRFS.FieldByName('CLBH').AsString+IntToStr(PackCount);
        KCRKRFSS.edit;
        KCRKRFSS.fieldbyname('SCNO').Value:=SCNO;
        KCRKRFSS.fieldbyname('CLBH').Value:=KCRKRFS.FieldByName('CLBH').Value;
        KCRKRFSS.fieldbyname('Pack').Value:=PackCount;
        KCRKRFSS.fieldbyname('Qty').Value:=formatfloat('#,##0.##',PackQty);
        KCRKRFSS.FieldByName('UserID').Value:=main.edit1.text;
        KCRKRFSS.FieldByName('UserDate').Value:=NDate;
        KCRKRFSS.FieldByName('YN').Value:='1';
        KCRKRFSS.FieldByName('Memo_RY').Value:=RY;
        KCRKRFSS.FieldByName('Memo_Article').Value:=Article;
        KCRKRFSS.FieldByName('barcode').Value:=barcode;
        if (RemainQty-PackQty)>0 then
        begin
          KCRKRFSS.fieldbyname('Qty').Value:=formatfloat('#,##0.##',PackQty);
        end else
        begin
          KCRKRFSS.fieldbyname('Qty').Value:=formatfloat('#,##0.##',RemainQty);
        end;
        UpdKCRKFSS.apply(ukinsert);
        //
        RemainQty:=RemainQty-PackQty;
        PackCount:=PackCount+1;
      until ((RemainQty<=0) or (PackCount>250)) ;
    end;
    KCRKRFS.Next;
  end;
  KCRKRFSS.active:=false;
  KCRKRFSS.cachedupdates:=false;
  KCRKRFSS.requestlive:=false;
  KCRKRFSS.active:=true;
  KCRKRFSS.Active:=true;

end;

procedure TEntryMatRFIDCode.BitBtn4Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article  ');
    SQL.Add(',KCRKScan_RFSS.Qty,CONVERT(varchar, min(KCRKScan_RFSS.Pack),101)+'' of '' +CONVERT(varchar,TotalPack,101) as PACK1,KCRKScan_RFSS.Pack  ');
    SQL.Add(',KCRKScan_RF.Memo+'' - ''+KCRKScan_RF.DOCNO as Memo ,CONVERT(varchar,isnull(KCRKScan_RFSS.RemQty,KCRKScan_RFSS.Qty),101)+'' ''+CLZL.DWBH DWBH, KCRKScan_RFS.CGNO ');
    SQL.Add(',KCRKScan_RFSS.barcode as QRCode, isnull(KCRKScan_RF.FIFO,CONVERT(varchar,month(getdate()))) as FIFO, KCRKScan_RFSS.LotNO,KCRKScan_RFS.IDCheck ');
    SQL.Add('from KCRKScan_RFSS    ');
    SQL.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO    ');
    SQL.Add('left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH    ');
    SQL.Add('left join (select SCNO,CLBH,count (Pack) as TotalPack   ');
    SQL.Add('  			    from KCRKScan_RFSS   ');
    SQL.Add('  			    group by SCNO,CLBH) KCRKScan  on KCRKScan.SCNO = KCRKScan_RFS.SCNO and KCRKScan.CLBH = KCRKScan_RFS.CLBH   ');
    SQL.Add('left join JGZL on KCRKScan_RFS.CGNO = JGZL.JGNO    ');
    SQL.Add('left join ZSZL on JGZL.ZSBH = ZSZL.ZSDH    ');
    SQL.Add('left join CLZL on KCRKScan_RFSS.CLBH = CLZL.CLDH    ');
    SQL.Add('where KCRKScan_RFSS.SCNO='''+KCRKRF.FieldByName('SCNO').AsString+'''  ');
    SQL.Add('group by KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,KCRKScan_RFS.CGNO,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article  ');
    SQL.Add(',KCRKScan_RFSS.Qty,KCRKScan_RFSS.Pack,KCRKScan.TotalPack,KCRKScan_RFSS.barcode,KCRKScan_RFS.IDCheck  ');
    SQL.Add(',KCRKScan_RF.Memo,KCRKScan_RF.DOCNO ,CLZL.DWBH, KCRKScan_RFSS.RemQty, KCRKScan_RFSS.LotNO,KCRKScan_RF.FIFO ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
    //PrintLabel_GC:=TPrintLabel_GC.Create(nil);
    //PrintLabel_GC.quickrep1.prepare;
    //PrintLabel_GC.quickrep1.preview;
    //PrintLabel_GC.Free;
    PrintBTW();
end;

procedure TEntryMatRFIDCode.BE1Click(Sender: TObject);
begin
  if KCRKRFS.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if KCRKRFSS.RequestLive  then
  begin
    showmessage('Pls save material detail data first.');
    abort;
  end;

  with KCRKRFSSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    fieldbyname('CLBH').Value:=KCRKRFSS.FieldByName('CLBH').Value;
    fieldbyname('Pack').Value:=KCRKRFSS.FieldByName('Pack').Value;
    fieldbyname('ZLBH').Value:='ZZZZZZZZZZ';
    fieldbyname('XXCC').Value:='ZZZZZZ';
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BE2Click(Sender: TObject);
begin
  with KCRKRFSSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BE3Click(Sender: TObject);
begin
  with KCRKRFSSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    First;
    while not eof do
    begin
     edit;
     fieldbyname('YN').Value:='0';
     next;
    end;
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BE4Click(Sender: TObject);
begin
  with KCRKRFSSS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BE5.Enabled:=true;
  BE6.Enabled:=true;
end;

procedure TEntryMatRFIDCode.BE5Click(Sender: TObject);
var i,Pack:integer;
begin
  try
    KCRKRFSSS.first;
    for i:=1 to KCRKRFSSS.RecordCount do
    begin
      case KCRKRFSSS.updatestatus of
        usinserted:
        begin
          if KCRKRFSSS.fieldbyname('Qty').isnull then
          begin
            KCRKRFSSS.delete;
          end else
          begin
            KCRKRFSSS.edit;
            KCRKRFSSS.fieldbyname('SCNO').Value:=KCRKRFS.FieldByName('SCNO').Value;
            KCRKRFSSS.fieldbyname('CGNO').Value:=KCRKRFS.FieldByName('CGNO').Value;
            KCRKRFSSS.FieldByName('userID').Value:=main.edit1.text;
            KCRKRFSSS.FieldByName('userdate').Value:=date;
            KCRKRFSSS.FieldByName('YN').Value:='1';
            UpdKCRKFSSS.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if NDate-KCRKRF.FieldByName('userdate').Value<=30  then
          begin
            if KCRKRF.FieldByName('userID').Value=main.Edit1.Text then
            begin
              if KCRKRFSSS.fieldbyname('YN').value='0'then
              begin
                with BDelRec do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('insert into BDelRec ');
                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.add('values (''KCRKScan_RFSSS'','''+KCRKRFSSS.fieldbyname('SCNO').Value+'''');
                  sql.add(','''+KCRKRFSSS.fieldbyname('CLBH').Value+''','''+KCRKRFSSS.fieldbyname('USERID').Value+''',');
                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                  ExecSQL;
                  active:=false;
                end;
                UpdKCRKFSSS.apply(ukdelete);
              end else
              begin
                KCRKRFSSS.edit;
                KCRKRFSSS.FieldByName('userID').Value:=main.edit1.text;
                KCRKRFSSS.FieldByName('userdate').Value:=date;
                UpdKCRKFSSS.apply(ukmodify);
              end;
            end else
            begin
              showmessage('It is not yours, can not delete or modify.');
            end;
          end else
          begin
            showmessage('Date > 30, can not delete or modify.');
          end;
        end;
      end;
      KCRKRFSSS.Next;
    end;
    //
    with tmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Update KCRKScan_RFSS set Qty=KCRKScan_RFSSS.Qty');
      SQL.Add('from ( ');
      SQL.Add('select SCNO,CLBH,Pack,Sum(Qty) as Qty from KCRKScan_RFSSS ');
      SQL.Add('where SCNO='''+KCRKRFSS.FieldByName('SCNO').AsString+''' ');
      SQL.Add('and CLBH='''+KCRKRFSS.FieldByName('CLBH').AsString+''' ');
      SQL.Add('and Pack='''+KCRKRFSS.FieldByName('Pack').AsString+''' Group by SCNO,CLBH,Pack ) KCRKScan_RFSSS ');
      SQL.Add('where KCRKScan_RFSS.CLBH=KCRKScan_RFSSS.CLBH and KCRKScan_RFSS.SCNO=KCRKScan_RFSSS.SCNO and KCRKScan_RFSS.Pack=KCRKScan_RFSSS.Pack ');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL();
      active:=false;
      SQL.Clear;
      SQL.Add('Update KCRKScan_RFS set Qty=KCRKScan_RFSS.Qty');
      SQL.Add('from ( ');
      SQL.Add('select SCNO,CLBH,Sum(Qty) as Qty from KCRKScan_RFSS ');
      SQL.Add('where SCNO='''+KCRKRFS.FieldByName('SCNO').AsString+''' and CLBH='''+KCRKRFS.FieldByName('CLBH').AsString+''' Group by SCNO,CLBH ) KCRKScan_RFSS ');
      SQL.Add('where KCRKScan_RFSS.CLBH=KCRKScan_RFS.CLBH and KCRKScan_RFSS.SCNO=KCRKScan_RFS.SCNO ');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    KCRKRFSS.Active:=false;
    KCRKRFSS.Active:=true;
    KCRKRFS.Active:=false;
    KCRKRFS.Active:=true;
    ///
    KCRKRFSSS.active:=false;
    KCRKRFSSS.cachedupdates:=false;
    KCRKRFSSS.requestlive:=false;
    KCRKRFSSS.active:=true;
    BE5.Enabled:=false;
    BE6.Enabled:=false;
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TEntryMatRFIDCode.BE6Click(Sender: TObject);
begin
  with KCRKRFSSS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BE5.enabled:=false;
  BE6.enabled:=false;
end;

procedure TEntryMatRFIDCode.BE7Click(Sender: TObject);
begin
  ExportDefaultExcel(KCRKRFSSS);
end;

procedure TEntryMatRFIDCode.KCRKRFSSSAfterOpen(DataSet: TDataSet);
begin
  BE1.Enabled:=true;
  BE2.Enabled:=true;
  BE3.Enabled:=true;
  BE4.Enabled:=true;
  BE7.Enabled:=true;
  BE8.Enabled:=true;
  if (NDate-KCRKRF.FieldByName('USERDATE').value)>30 then
  begin
    BE1.Enabled:=false;
    BE2.Enabled:=false;
    BE3.Enabled:=false;
    BE4.Enabled:=false;
    BE8.Enabled:=false;
  end;
  if KCRKRF.FieldByName('USERID').value<>main.Edit1.text  then
  begin
    BE1.Enabled:=false;
    BE2.Enabled:=false;
    BE3.Enabled:=false;
    BE4.Enabled:=false;
    BE8.Enabled:=false;
  end;
  if KCRKRFSS.cachedupdates  then
  begin
    BE1.Enabled:=false;
    BE2.Enabled:=false;
    BE3.Enabled:=false;
    BE4.Enabled:=false;
    BE8.Enabled:=false;
  end;
end;

procedure TEntryMatRFIDCode.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCRKRFSSS.FieldByName('YN').value='0' then
  begin
    DBGridEh4.canvas.font.color:=clred;
  end;
end;

procedure TEntryMatRFIDCode.PrintBTW();
var writeFile:textfile;
    LabelInfo:string;
    Size,Quantity:string;
    i:integer;
begin
  if Fileexists(extractfilepath(application.ExeName)+'\label_N8A.txt') then
  begin
    assignfile(writeFile,ExtractFilePath(Application.ExeName)+'label_N8A.txt');
    rewrite(writeFile);
    Query1.first;
    while not Query1.eof do
    begin
      LabelInfo:='';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('QRCode').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('CLBH').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('YWPM').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('ZSYWJC').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('CGNO').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('Memo_RY').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('Memo_Article').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('DWBH').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('PACK1').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('Memo').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('FIFO').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('LotNO').AsString)+'|';
      LabelInfo:=LabelInfo+trim(Query1.fieldByName('IDCheck').AsString)+'|';
      append(writeFile);
      writeln(writeFile, LabelInfo);
        //
      Query1.next;
    end;
    closefile(writeFile);
  end;
  //
  if fileexists(extractfilepath(application.ExeName)+'Label_N8A.btw') then
  begin
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Label_N8A.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
    //close;
  end
  else  begin
    Showmessage('Pls setup the program first. Abort');
  end;
  //
end;

procedure TEntryMatRFIDCode.BE8Click(Sender: TObject);
begin
  if KCRKRFS.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;

  if KCRKRFSS.RequestLive  then
  begin
    showmessage('Pls save material detail data first.');
    abort;
  end;

  KCRKRFSS.first;
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select KCRKScan_RFSSS.SCNO,KCRKScan_RFSS.CLBH, KCRKScan_RFSS.Pack, KCRKScan_RFSS.Qty, sum(isnull(KCRKScan_RFSSS.Qty,0)) SQty from KCRKScan_RFSS ');
    sql.Add('left join KCRKScan_RFSSS on KCRKScan_RFSS.SCNO=KCRKScan_RFSSS.SCNO and KCRKScan_RFSS.CLBH=KCRKScan_RFSSS.CLBH and KCRKScan_RFSS.Pack=KCRKScan_RFSSS.Pack ');
    sql.Add('where KCRKScan_RFSS.SCNO='''+KCRKRFSS.FieldByName('SCNO').AsString+''' and KCRKScan_RFSS.CLBH='''+KCRKRFSS.FieldByName('CLBH').AsString+''' ');
    sql.Add('group by KCRKScan_RFSSS.SCNO,KCRKScan_RFSS.CLBH, KCRKScan_RFSS.Pack, KCRKScan_RFSS.Qty ');
    active:=true;
    while not eof do
    begin
      if (fieldbyname('SCNO').AsString<>'') then
      begin
        showmessage('Entry Detail '+fieldbyname('CLBH').AsString+'-'+fieldbyname('Pack').AsString+' must be empty.');
        exit;
      end;
      next;
    end;
  end;
  while not KCRKRFSS.Eof do
  begin
    with tmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into KCRKScan_RFSSS (SCNO , CLBH, Pack, Qty , ZLBH, XXCC, CGNO, USERID, USERDATE, YN) ');
      SQL.Add('Values ( ');
      SQL.Add(' '''+KCRKRFSS.FieldByName('SCNO').AsString+''', ');
      SQL.Add(' '''+KCRKRFSS.FieldByName('CLBH').AsString+''', ');
      SQL.Add(' '''+KCRKRFSS.FieldByName('Pack').AsString+''', ');
      SQL.Add(' '''+KCRKRFSS.FieldByName('Qty').AsString+''', ');
      SQL.Add(' ''ZZZZZZZZZZ'', ');
      SQL.Add(' ''ZZZZZZ'', ');
      SQL.Add(' '''+KCRKRFS.FieldByName('CGNO').AsString+''', ');
      SQL.Add(' '''+main.edit1.text+''', ');
      SQL.Add(' getdate(), ');
      SQL.Add(' ''1'') ');
      ExecSQL();
    end;
    KCRKRFSS.Next;
  end;
end;

end.

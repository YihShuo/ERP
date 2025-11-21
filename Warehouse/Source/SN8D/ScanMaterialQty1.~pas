unit ScanMaterialQty1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, ScktComp, Menus, GridsEh, DBGridEh, ExtCtrls,pngimage,
  StdCtrls, Mask, DBCtrls, Buttons, ComCtrls, comobj, jpeg, Spin, DelphiZXIngQRCode,
  QRCtrls, QuickRpt,ShellApi, Printers, RpCon, RpConDS, RpConBDE, RpDefine, RpRave,
  GIFImage;

type
  TScanMaterialQty = class(TForm)
    Panel1: TPanel;
    CGEdit: TEdit;
    SCNOEdit: TEdit;
    DTP1: TDateTimePicker;
    ZSEdit: TEdit;
    DTP2: TDateTimePicker;
    KCRKRFSS: TQuery;
    KCRKRFSSSCNO: TStringField;
    KCRKRFSSCLBH: TStringField;
    KCRKRFSSYWPM: TStringField;
    KCRKRFSSDWBH: TStringField;
    KCRKRFSSQty: TFloatField;
    KCRKRFSSPack: TIntegerField;
    KCRKRFSSCFMID: TStringField;
    KCRKRFSSCFMDATE: TDateTimeField;
    DS1: TDataSource;
    DBGridEh2: TDBGridEh;
    KCRKRFSSCGNO: TStringField;
    KCRKRFSSGSBH: TStringField;
    KCRKRFSSZSBH: TStringField;
    KCRKRFSSZSYWJC: TStringField;
    KCRKRFSSCKBH: TStringField;
    KCRKRFSSRemQty: TFloatField;
    KCRKRFSSDQty: TFloatField;
    Image1: TImage;
    imgClose00: TImage;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    KCRKRFSSKCBH: TStringField;
    RB1: TRadioButton;
    RB2: TRadioButton;
    DTP3: TDateTimePicker;
    Label3: TLabel;
    DTP4: TDateTimePicker;
    Label5: TLabel;
    CLEdit: TEdit;
    Label7: TLabel;
    CLNOEdit: TEdit;
    Label8: TLabel;
    ZSNOEdit: TEdit;
    imgSave00: TImage;
    DataSource1: TDataSource;
    Query1: TQuery;
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
    Query1CGNO: TStringField;
    Query1QRCode: TStringField;
    Query1FIFO: TStringField;
    Query1LotNO: TStringField;
    Panel2: TPanel;
    KCLLScan_RFSS: TQuery;
    KCLLScan_RFSSCLBH: TStringField;
    KCLLScan_RFSSLLNO: TStringField;
    KCLLScan_RFSSSCBH: TStringField;
    KCLLScan_RFSSDFL: TStringField;
    KCLLScan_RFSSSCANUSERID: TStringField;
    KCLLScan_RFSSSCANUSERDATE: TDateTimeField;
    DS2: TDataSource;
    KCLLScan_RFSSSCANQty: TCurrencyField;
    Report: TImage;
    KCRKRFSSbarcode: TStringField;
    KCLLScan_RFSSbarcode: TStringField;
    UpdKCLLS: TUpdateSQL;
    tmpQry: TQuery;
    KCRKRFSSDOCNO: TStringField;
    KCRKRFSSMEMO: TStringField;
    BDelRec: TQuery;
    KCRKRFSSIDCheck: TStringField;
    Query1IDCheck: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    Image2: TImage;
    Save: TImage;
    DBGridEh1: TDBGridEh;
    Panel5: TPanel;
    DS3: TDataSource;
    KCLLSQry: TQuery;
    KCLLSQryLLNO_OWE: TStringField;
    KCLLSQryLLNO: TStringField;
    KCLLSQryCLBH: TStringField;
    KCLLSQryDFL: TStringField;
    KCLLSQrySCBH: TStringField;
    KCLLSQrySCANQty: TCurrencyField;
    KCLLSQrybarcode: TStringField;
    KCLLSQrySCANUSERID: TStringField;
    KCLLSQrySCANUSERDATE: TDateTimeField;
    UpdKCLLSS: TUpdateSQL;
    Panel7: TPanel;
    Image3: TImage;
    Save1: TImage;
    DBGridEh3: TDBGridEh;
    UpScan: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify: TMenuItem;
    SaveMake: TMenuItem;
    Cancel: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure imgClose00Click(Sender: TObject);
    procedure imgSave00Click(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure SaveMakeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanMaterialQty: TScanMaterialQty;

implementation

uses main1, ScanQR1, FunUnit;

{$R *.dfm}

procedure TScanMaterialQty.FormDestroy(Sender: TObject);
begin
  ScanMaterialQty:=nil;
end;

procedure TScanMaterialQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TScanMaterialQty.FormCreate(Sender: TObject);
var imout, imprint, imquery, imsave: TPNGObject;
begin
  imout := TPNGObject.Create;
  imout.LoadFromFile('btnlogout.png');
  imgClose00.Picture.Assign(imout);

  imprint := TPNGObject.Create;
  imprint.LoadFromFile('btnprint.png');
  imgSave00.Picture.Assign(imprint);

  imquery := TPNGObject.Create;
  imquery.LoadFromFile('btnquery.png');
  Report.Picture.Assign(imquery);

  imsave := TPNGObject.Create;
  imsave.LoadFromFile('btnsave.png');
  Save.Picture.Assign(imsave);
  Save1.Picture.Assign(imsave);

  DBGridEh2.Width:=Round(Screen.Width/3*2);

  imgClose00.Width:=Round(Screen.Width/28);
  imgClose00.Height:=Round(Screen.Width/28);
  imgClose00.Left:=Round(Screen.Width-imgClose00.Width);
  imgClose00.Top:=Round(Screen.DesktopTop+5);

  Panel3.Height:=Round((Screen.Height-Panel1.Height)/2);

  DTP1.Date:=Date()-3;
  DTP2.date:=Date();
  DTP3.Date:=Date()-3;
  DTP4.date:=Date();

  imprint.free;
  imout.free;
  imquery.free;
  imsave.free;
  //YS
  if ((main.edit1.Text ='328324') or (main.edit1.Text='316503')or (main.edit1.Text='339564')) then
  begin
    Modify.Enabled:=true;
  end;
  //
end;

procedure TScanMaterialQty.BitBtn2Click(Sender: TObject);
begin
  with KCRKRFSS do
  begin
   Active:=false;
   SQL.Clear;
   SQL.Add('Select distinct KCRKScan_RFSS.SCNO,KCRKScan_RFS.CGNO,CGZL.ZSBH,ZSZL.zsywjc,KCRKScan_RF.GSBH,KCRKScan_RF.CKBH,KCRKScan_RFSS.CLBH,CLZL.YWPM,CLZL.DWBH, ');
   SQL.Add('       KCRKScan_RFSS.Qty,isnull(KCRKScan_RFSS.RemQty,KCRKScan_RFSS.Qty) RemQty,Round(KCRKScan_RFSS.Qty-isnull(KCRKScan_RFSS.RemQty,KCRKScan_RFSS.Qty),4) as DQty,KCRKScan_RFSS.TAGID, ');
   SQL.Add('       KCRKScan_RFSS.Pack,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article, KCRKScan_RFSS.MAKE as KCBH, KCRKScan_RFSS.barcode,KCRKScan_RF.MEMO,KCRKScan_RF.DOCNO,KCRKScan_RFS.IDCheck ');
   if RB1.Checked=true then
   begin
    SQL.Add('   ,KCRKScan_RFSS.CFMID,KCRKScan_RFSS.CFMDATE ');
   end else begin
    SQL.Add('   ,KCRKScan_RFSS.CFMID1 CFMID,KCRKScan_RFSS.CFMDATE1 CFMDATE ');
   end;
   SQL.Add('from KCRKScan_RFSS ');
   SQL.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO ');
   SQL.Add('left join KCRKScan_RFS on KCRKScan_RFS.SCNO = KCRKScan_RFSS.SCNO and KCRKScan_RFS.CLBH = KCRKScan_RFSS.CLBH ');
   SQL.Add('left join CGZL on KCRKScan_RFS.CGNO = CGZL.CGNO ');
   SQL.Add('left join ZSZL on CGZL.ZSBH = ZSZL.ZSDH ');
   SQL.Add('left join CLZL on KCRKScan_RFS.CLBH = CLZL.CLDH ');
   SQL.Add('left join KCZLS on KCRKScan_RF.CKBH=KCZLS.CKBH and KCRKScan_RFSS.CLBH=KCZLS.CLBH ');
   SQL.Add('left join KCLLScan_RFSS on KCLLScan_RFSS.barcode=KCRKScan_RFSS.barcode and KCLLScan_RFSS.CLBH=KCRKScan_RFSS.CLBH ');
   SQL.Add('left join KCLLScan_RFSSS on KCLLScan_RFSSS.barcode=KCRKScan_RFSS.barcode and KCLLScan_RFSSS.CLBH=KCRKScan_RFSS.CLBH ');
   SQL.Add('Where KCRKScan_RF.GSBH='''+main.Edit2.Text+''' ');
   if RB1.Checked=true then
   begin
    SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RFSS.CFMDATE,111)) between ');
    SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
   end else begin
    SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RFSS.CFMDATE1,111)) between ');
    SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
   end;
   if SCNOEdit.Text<>'' then
    SQL.Add('   and (KCLLScan_RFSS.SCBH like '''+SCNOEdit.Text+'%'' or KCLLScan_RFSSS.SCBH like '''+SCNOEdit.Text+'%'') ');
   if CGEdit.Text<>'' then
     SQL.Add('   and KCRKScan_RFS.CGNO like '''+CGEdit.Text+'%'' ');
   if ZSNOEdit.Text<>'' then
     SQl.Add('   and ZSZL.ZSDH like '''+ZSNOEdit.Text+'%'' ');
   if ZSEdit.Text<>'' then
     SQl.Add('   and ZSZL.zsywjc like ''%'+ZSEdit.Text+'%'' ');
   if CLNOEdit.Text<>'' then
     SQl.Add('   and KCRKScan_RFS.CLBH like '''+CLNOEdit.Text+'%'' ');
   if CLEdit.Text<>'' then
     SQl.Add('   and CLZL.YWPM like ''%'+CLEdit.Text+'%'' ');
   SQL.Add('order by KCRKScan_RFSS.SCNO desc, KCRKScan_RFS.CGNO desc, KCRKScan_RFSS.CLBH desc, KCRKScan_RFSS.Pack asc ');
   //funcobj.WriteErrorLog(sql.Text);
   active:=true;
  end;
  KCLLScan_RFSS.Active:=false;
  KCLLScan_RFSS.Active:=true;
  KCLLSQry.Active:=false;
  KCLLSQry.Active:=true;
end;

procedure TScanMaterialQty.imgClose00Click(Sender: TObject);
begin
  if MessageDlg('Ban co muon dong khong?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Close;
  end;
end;

procedure TScanMaterialQty.imgSave00Click(Sender: TObject);
var writeFile:textfile;
    LabelInfo:string;
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article  ');
    SQL.Add(',KCRKScan_RFSS.Qty,CONVERT(varchar, KCRKScan_RFSS.Pack,101)+'' of '' +CONVERT(varchar,TotalPack,101) as PACK1,KCRKScan_RFSS.Pack  ');
    SQL.Add(',KCRKScan_RF.Memo+'' - ''+KCRKScan_RF.DOCNO as Memo,CONVERT(varchar,isnull(KCRKScan_RFSS.RemQty,KCRKScan_RFSS.Qty),101)+'' ''+CLZL.DWBH DWBH ');
    SQL.Add(',KCRKScan_RFS.CGNO, KCRKScan_RFSS.barcode as QRCode, CONVERT(varchar,month(getdate())) as FIFO, KCRKScan_RFSS.LotNO,KCRKScan_RFS.IDCheck ');
    SQL.Add('from KCRKScan_RFSS    ');
    SQL.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO    ');
    SQL.Add('left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH    ');
    SQL.Add('left join (select SCNO,CLBH,count (Pack) as TotalPack   ');
    SQL.Add('  			    from KCRKScan_RFSS   ');
    SQL.Add('  			    group by SCNO,CLBH) KCRKScan  on KCRKScan.SCNO = KCRKScan_RFS.SCNO and KCRKScan.CLBH = KCRKScan_RFS.CLBH   ');
    SQL.Add('left join CGZL on KCRKScan_RFS.CGNO = CGZL.CGNO    ');
    SQL.Add('left join ZSZL on CGZL.ZSBH = ZSZL.ZSDH    ');
    SQL.Add('left join CLZL on KCRKScan_RFSS.CLBH = CLZL.CLDH    ');
    SQL.Add('left join KCLLScan_RFSS on KCLLScan_RFSS.barcode=KCRKScan_RFSS.barcode and KCLLScan_RFSS.CLBH=KCRKScan_RFSS.CLBH ');
    SQL.Add('left join KCLLScan_RFSSS on KCLLScan_RFSSS.barcode=KCRKScan_RFSS.barcode and KCLLScan_RFSSS.CLBH=KCRKScan_RFSS.CLBH ');
    SQL.Add('Where KCRKScan_RF.GSBH='''+main.Edit2.Text+''' ');
    if RB1.Checked=true then
    begin
      SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RFSS.CFMDATE,111)) between ');
      SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end else begin
      SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RFSS.CFMDATE1,111)) between ');
      SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if SCNOEdit.Text<>'' then
      SQL.Add('   and (KCLLScan_RFSS.SCBH like '''+SCNOEdit.Text+'%'' or KCLLScan_RFSSS.SCBH like '''+SCNOEdit.Text+'%'') ');
    if CGEdit.Text<>'' then
      SQL.Add('   and KCRKScan_RFS.CGNO like '''+CGEdit.Text+'%'' ');
    if ZSNOEdit.Text<>'' then
      SQl.Add('   and ZSZL.ZSDH like '''+ZSNOEdit.Text+'%'' ');
    if ZSEdit.Text<>'' then
      SQl.Add('   and ZSZL.zsywjc like ''%'+ZSEdit.Text+'%'' ');
    if CLNOEdit.Text<>'' then
      SQl.Add('   and KCRKScan_RFS.CLBH like '''+CLNOEdit.Text+'%'' ');
    if CLEdit.Text<>'' then
      SQl.Add('   and CLZL.YWPM like ''%'+CLEdit.Text+'%'' ');
    SQL.Add('order by KCRKScan_RFSS.SCNO desc, KCRKScan_RFS.CGNO desc, KCRKScan_RFSS.CLBH desc, KCRKScan_RFSS.Pack asc ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
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
end;

procedure TScanMaterialQty.SaveClick(Sender: TObject);
var i:integer;
    qty:string;
begin
  qty:='0';
  try
    KCLLScan_RFSS.first;
    for i:=1 to KCLLScan_RFSS.RecordCount do
    begin
      if KCLLScan_RFSS.fieldbyname('SCANQty').AsString='0'then
      begin
        with BDelRec do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values (''KCLLScan_RFSS'','''+KCLLScan_RFSS.fieldbyname('LLNO').Value+'*'+KCLLScan_RFSS.fieldbyname('SCBH').Value+'''');
          sql.add(','''+KCLLScan_RFSS.fieldbyname('CLBH').Value+'*'+KCLLScan_RFSS.fieldbyname('barcode').Value+'*'+FloatToStr(KCLLScan_RFSS.fieldbyname('SCANQty').OldValue)+''',');
          sql.add(''''+KCLLScan_RFSS.fieldbyname('SCANUSERID').Value+''','''+main.Edit1.Text+''',getdate())');
          ExecSQL;
          active:=false;
        end;
        UpdKCLLS.apply(ukdelete);
      end else
      begin
        KCLLScan_RFSS.edit;
        KCLLScan_RFSS.FieldByName('SCANUSERID').Value:=main.edit1.text;
        KCLLScan_RFSS.FieldByName('SCANUSERDATE').Value:=date;
        UpdKCLLS.apply(ukmodify);
      end;
      qty:=FloatToStr(StrToFloat(qty)+StrToFloat(KCLLScan_RFSS.FieldByName('SCANQty').AsString));
      KCLLScan_RFSS.Next;
    end;
    with tmpQry do
    begin      Active:=false;      SQL.Clear;      sql.Add('Update KCRKScan_RFSS set RemQty=Qty-'+qty+' ');      SQL.Add('Where KCRKScan_RFSS.barcode='''+KCLLScan_RFSS.FieldByName('barcode').AsString+''' and CFMDATE is not null ');      ExecSQL;    end;   
    Showmessage('OK');
    BitBtn2Click(nil);
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TScanMaterialQty.Save1Click(Sender: TObject);
var i:integer;
begin
  try
    KCLLSQry.first;
    for i:=1 to KCLLSQry.RecordCount do
    begin
      if KCLLSQry.fieldbyname('SCANQty').AsString='0'then
      begin
        with BDelRec do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values (''KCLLScan_RFSSS'','''+KCLLSQry.fieldbyname('LLNO_OWE').Value+'*'+KCLLSQry.fieldbyname('LLNO').Value+'*'+KCLLSQry.fieldbyname('SCBH').Value+'''');
          sql.add(','''+KCLLSQry.fieldbyname('CLBH').Value+'*'+KCLLSQry.fieldbyname('barcode').Value+'*'+FloatToStr(KCLLSQry.fieldbyname('SCANQty').OldValue)+''',');
          sql.add(''''+KCLLSQry.fieldbyname('SCANUSERID').Value+''','''+main.Edit1.Text+''',getdate())');
          ExecSQL;
          active:=false;
        end;
        UpdKCLLSS.apply(ukdelete);
        with tmpQry do
        begin          Active:=false;          SQL.Clear;          SQL.Add('Update KCRKScan_RFSS set RemQty=RemQty+'+FloatToStr(KCLLSQry.fieldbyname('SCANQty').OldValue)+' ');          SQL.Add('Where KCRKScan_RFSS.barcode='''+KCLLSQry.FieldByName('barcode').AsString+''' and CFMDATE is not null ');          ExecSQL;        end;
      end;
      KCLLSQry.Next;
    end;
    Showmessage('OK');
    BitBtn2Click(nil);
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TScanMaterialQty.CancelClick(Sender: TObject);
begin
  with KCRKRFSS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  SaveMake.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TScanMaterialQty.ModifyClick(Sender: TObject);
begin
    with KCRKRFSS do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    SaveMake.Enabled:=true;
    Cancel.Enabled:=true;
end;

procedure TScanMaterialQty.SaveMakeClick(Sender: TObject);
var i:integer;
begin
  KCRKRFSS.First;
  for i:=0 to KCRKRFSS.RecordCount-1 do
  begin
    case KCRKRFSS.updatestatus of
      usmodified:
      begin
        KCRKRFSS.Edit;
        UpScan.apply(ukmodify);
      end;
    end;
    KCRKRFSS.Next;
  end;
  KCRKRFSS.active:=false;
  KCRKRFSS.cachedupdates:=false;
  KCRKRFSS.requestlive:=false;
  KCRKRFSS.active:=true;
  SaveMake.Enabled:=false;
  Cancel.Enabled:=false;
end;

end.

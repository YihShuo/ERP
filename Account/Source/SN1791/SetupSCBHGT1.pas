unit SetupSCBHGT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls, Menus,
  DBTables, DB, comobj, Dateutils, Winsock, ShellAPI;

type
  TSetupSCBHGT = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Panel3: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Button12: TButton;
    CBX1: TComboBox;
    Edit5: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    CBX6: TComboBox;
    CBX5: TComboBox;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Panel1: TPanel;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Panel8: TPanel;
    BD6: TBitBtn;
    BD5: TBitBtn;
    BD4: TBitBtn;
    BD3: TBitBtn;
    CopyD_Temp1: TBitBtn;
    DBGridEh2: TDBGridEh;
    Qry_Deliver: TQuery;
    Qry_DeliverGSBH: TStringField;
    Qry_DeliverCKBH: TStringField;
    Qry_DeliverHGLB: TStringField;
    Qry_DeliverCNO: TStringField;
    Qry_DeliverCLBH: TStringField;
    Qry_DeliverYWPM: TStringField;
    Qry_DeliverDWBH: TStringField;
    Qry_DeliverLLNO: TStringField;
    Qry_DeliverCFMDate: TDateTimeField;
    Qry_DeliverSCBH: TStringField;
    Qry_DeliverCWBH: TStringField;
    Qry_DeliverCostID: TStringField;
    Qry_DeliverQty: TCurrencyField;
    DS_Deliver: TDataSource;
    Qry_SCBHGT: TQuery;
    Qry_SCBHGTGSBH: TStringField;
    Qry_SCBHGTCKBH: TStringField;
    Qry_SCBHGTHGLB: TStringField;
    Qry_SCBHGTCNO: TStringField;
    Qry_SCBHGTCLBH: TStringField;
    Qry_SCBHGTLLNO: TStringField;
    Qry_SCBHGTCFMDate: TDateTimeField;
    Qry_SCBHGTSCBH_Cost: TStringField;
    Qry_SCBHGTCWBH: TStringField;
    Qry_SCBHGTCostID: TStringField;
    Qry_SCBHGTQty: TCurrencyField;
    Qry_SCBHGTSCBH: TStringField;
    Qry_SCBHGTMEMO: TStringField;
    Qry_SCBHGTUSERDATE: TDateTimeField;
    Qry_SCBHGTUSERID: TStringField;
    Qry_SCBHGTYN: TStringField;
    Qry_SCBHGTywpm: TStringField;
    Qry_SCBHGTdwbh: TStringField;
    DS_SCBHGT: TDataSource;
    Up_SCBHGT: TUpdateSQL;
    PopupMenu2: TPopupMenu;
    Excel1: TMenuItem;
    QTemp: TQuery;
    Qry_DeliverLLCB: TStringField;
    BD7: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    btn_Search: TButton;
    edt_RefNo: TEdit;
    edt_RY: TEdit;
    CHK_Date: TCheckBox;
    Date1: TDateTimePicker;
    Date2: TDateTimePicker;
    chk_Year: TCheckBox;
    cbYear: TComboBox;
    cbType: TComboBox;
    Panel12: TPanel;
    Panel4: TPanel;
    DB_RY: TDBGridEh;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    pop_Announce: TPopupMenu;
    mn_DownLoad: TMenuItem;
    Excel: TMenuItem;
    DS_Announce: TDataSource;
    Qry_Announce: TQuery;
    Qry_AnnounceAnnounceDate: TDateTimeField;
    Qry_AnnounceRefNo: TStringField;
    Qry_AnnounceTypes: TStringField;
    Qry_AnnounceFile_Name: TStringField;
    Qry_AnnounceRemark: TStringField;
    Qry_AnnounceUserDate: TDateTimeField;
    Qry_AnnounceUserID: TStringField;
    Qry_AnnounceYN: TStringField;
    Qry_AnnounceRevisionNo: TStringField;
    Qry_AnnounceRevisionDate: TDateTimeField;
    Qry_AnnounceS: TQuery;
    Qry_AnnounceSAnnounceDate: TDateTimeField;
    Qry_AnnounceSRefNo: TStringField;
    Qry_AnnounceSType_s: TStringField;
    Qry_AnnounceSRY: TStringField;
    Qry_AnnounceSRemark: TStringField;
    Qry_AnnounceSUserID: TStringField;
    Qry_AnnounceSUserDate: TDateTimeField;
    Qry_AnnounceSYN: TStringField;
    DS_AnnounceS: TDataSource;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Splitter2: TSplitter;
    Edit1: TEdit;
    Qry_DeliverVNPRICE: TCurrencyField;
    Qry_DeliverVNACC: TCurrencyField;
    Qry_SCBHGTVNPrice: TCurrencyField;
    Qry_SCBHGTVNACC: TCurrencyField;
    BDAll: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Qry_SCBHGTAfterOpen(DataSet: TDataSet);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure CopyD_Temp1Click(Sender: TObject);
    procedure CopyRY(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Qry_SCBHGTQtyChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BD7Click(Sender: TObject);
    procedure Qry_SCBHGTBeforeClose(DataSet: TDataSet);
    procedure btn_SearchClick(Sender: TObject);
    procedure Qry_AnnounceAfterOpen(DataSet: TDataSet);
    procedure Qry_AnnounceBeforeClose(DataSet: TDataSet);
    procedure mn_DownLoadClick(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure pop_AnnouncePopup(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure CBX5Change(Sender: TObject);
    procedure BDAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SetupSCBHGT: TSetupSCBHGT;
  sdate, edate, NDate: Tdate;
  IPFile,FileAddress,UserLog,PassLog:string;

implementation

uses main1,FunUnit;

{$R *.dfm}

function RoundCurrency(const Value: Currency): Currency;  ///  Only Currency 3.225=3.23
var
  V64: Int64 absolute Result;
  Decimals: Integer;
begin
  Result := Value;
  Decimals := V64 mod 100;
  Dec(V64, Decimals);
  case Decimals of
    -99..-50:
      Dec(V64, 100);
    50..99:
      Inc(V64, 100);
  end;
end;

Function PortTCP_IsOpen(dwPort:Word; ipAddressStr:AnsiString):boolean;
var
  client: sockaddr_in;
  sock: Integer;
  ret: Integer;
  wsdata: WSAData;
begin
 Result:=False;
 ret := WSAStartup($0002, wsdata);
  if ret<>0 then exit;
  try
    client.sin_family      := AF_INET;
    client.sin_port        := htons(dwPort);
    client.sin_addr.s_addr := inet_addr(PAnsiChar(ipAddressStr));
    sock  :=socket(AF_INET, SOCK_STREAM, 0);
    Result:=connect(sock,client,SizeOf(client))=0;
  finally
    WSACleanup;
  end;
end; 

procedure DisconnectShare(DriveLetter : String);
begin
   WNetCancelConnection2(PChar(DriveLetter), 0, false);
end;

function MakeDriveMapping(DriveLetter: string; DirectoryPath: string;
  Username: string; Password: string; RestoreAtLogon: Boolean): DWORD; 
var
  NetResource: TNetResource;
  dwFlags: DWORD;
begin
  with NetResource do
  begin
    dwType := RESOURCETYPE_DISK;
    lpLocalName := PChar(DriveLetter);
    lpRemoteName := PChar(DirectoryPath);
    lpProvider := nil;
  end;
  if (RestoreAtLogon) then
    dwFlags := CONNECT_UPDATE_PROFILE
  else
    dwFlags := 0;
  WNetAddConnection2(NetResource, PChar(Password), PChar(UserName), 0); //Connect first
  Result := WNetAddConnection2(NetResource, PChar(Password),PChar(Username), dwFlags); // check connect ok or no
end;  

procedure TSetupSCBHGT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TSetupSCBHGT.FormDestroy(Sender: TObject);
begin
  SetupSCBHGT:=Nil;
end;

procedure TSetupSCBHGT.Button12Click(Sender: TObject);
var y,m:word;
    HGLBSQL,HGLBSQL1:string;
    tmpList,tmpList1:TStringlist;
    i:integer;
begin
  y := strtoint(CBX2.Text);
  m := strtoint(CBX3.Text);
  sdate := encodedate(y, m, 1);
  edate := endofthemonth(sdate);
  //
  With Qry_Deliver do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLL.GSBH,KCLL.CKBH,KCLLS.HGLB,KCLLS.CNO,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH ');
    SQL.Add('       ,KCLL.LLNO,KCLL.CFMDate,KCLLS.SCBH,KCZLS.CWBH,KCLLS.CostID ');
    SQL.Add('  	    ,KCLLS.Qty,isnull(KCLLS.VNPrice_HG,0)VNPRICE,KCLLS.VNACC_HG VNACC,KCLLS_CB.LLNO LLCB ');
    SQL.Add('from KCLLS   ');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH  ');
    SQL.Add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH  ');
    SQL.Add('left join KCCK on KCCK.CKBH=KCLL.CKBH   ');
    SQL.Add('left join (select LLNO,CLBH,SCBH from KCLLS_CB)KCLLS_CB on KCLLS_CB.LLNO=KCLLS.LLNO and KCLLS_CB.CLBH=KCLLS.CLBH and KCLLS_CB.SCBH=KCLLS.SCBH');
    SQL.Add('where year(KCLL.CFMDate)='''+CBX2.Text+''' and month(KCLL.CFMDate)='''+CBX3.Text+''' ');
    SQL.Add('      and KCLL.YN=''5''  ');
    if Edit8.Text<>'' then
      SQL.Add('     and KCLLS.LLNO like'''+Edit8.Text+'%'' ');
    if Edit7.Text<>'' then
      SQL.Add(' and KCLLS.SCBH like '''+Edit7.Text+'%'' ');
    if CBX1.itemindex<>0 then
      SQL.Add('     and KCCK.CKBH ='+''''+CBX1.text+'''');
    if Edit1.Text<> '' then
      SQL.add('     and KCZLS.CWBH = '''+Edit1.Text+'''');
    if Edit4.Text<>'' then
      SQL.add('     and KCLLS.CLBH like '+''''+edit4.text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('     and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
    if Edit5.Text<>'' then
      SQL.add('     and CLZL.YWPM like '+''''+'%'+edit5.text+'%'+'''');
    if Edit6.Text<>'' then
      SQL.add('     and KCLLS.CostID like '+''''+edit6.text+'%'+'''');
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and KCLLS.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    if CBX5.ItemIndex<>0 then
      SQL.Add('     and KCCK.GSBH='+''''+CBX5.Text+'''')
    else
      SQL.add('     and KCCK.GSBH in ( Select GSDH from bgszl)');
    SQL.Add('group by KCLL.GSBH,KCLL.CKBH,KCLLS.HGLB,KCLLS.CNO,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH ');
    SQL.Add('         ,KCLL.LLNO,KCLL.CFMDate,KCLLS.SCBH,KCZLS.CWBH,KCLLS.CostID ,KCLLS.Qty,isnull(KCLLS.VNPrice_HG,0),KCLLS.VNACC_HG ,KCLLS_CB.LLNO');
    SQL.Add('order by KCLLS.CLBH,KCLLS.HGLB  ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with Qry_SCBHGT do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLLS_CB.*,clzl.ywpm,clzl.dwbh   ');
    SQL.Add('from KCLLS_CB  ');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS_CB.CLBH  ');
    SQL.Add('where year(CFMDate)='''+CBX2.Text+''' and month(CFMDate)='''+CBX3.Text+'''  ');
    if Edit8.Text<>'' then
      SQL.Add('     and LLNO like'''+Edit8.Text+'%'' ');
    if CBX1.itemindex<>0 then
      SQL.Add('     and CKBH ='+''''+CBX1.text+'''');
    if Edit1.Text<> '' then
      SQL.add('     and CWBH = '''+Edit1.Text+'''');
    if Edit4.Text<>'' then
      SQL.add('     and CLBH like '+''''+edit4.text+'%'+'''');
    if Edit3.Text<>'' then
      SQL.add('     and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
    if Edit5.Text<>'' then
      SQL.add('     and CLZL.YWPM like '+''''+'%'+edit5.text+'%'+'''');
    if Edit6.Text<>'' then
      SQL.add('     and CostID like '+''''+edit6.text+'%'+'''');
    if Edit7.Text<>'' then
      SQL.Add('     and (SCBH_Cost like ''%'+Edit7.Text+'%'' or SCBH like ''%'+Edit7.Text+'%'')  ');
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList1:=TStringlist.Create;
        tmpList1:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList1.Count-1 do
        begin
          HGLBSQL1:=HGLBSQL1+''''+tmpList1.Strings[i]+''',';
        end;
        HGLBSQL1:='('+Copy(HGLBSQL1,1,length(HGLBSQL1)-1)+')';
        sql.add('and HGLB in '+HGLBSQL1+' ');
        tmpList1.Free;
      end;
    end;
    if CBX5.ItemIndex<>0 then
      SQL.Add('     and GSBH='+''''+CBX5.Text+'''')
    else
      SQL.add('     and GSBH in ( Select GSDH from bgszl)');
    SQL.Add('order by CLBH,HGLB  ');
    Active:=true;
  end;
end;

procedure TSetupSCBHGT.Qry_SCBHGTAfterOpen(DataSet: TDataSet);
begin
  BD4.Enabled:=true;
  if Qry_SCBHGT.RecordCount>0 then
  begin
    BD3.Enabled:=true;
    BDAll.Enabled:=true;
    BD7.Enabled:=true;
  end;
end;

procedure TSetupSCBHGT.BD3Click(Sender: TObject);
begin
  if Qry_SCBHGT.recordcount>0 then
  begin
    with Qry_SCBHGT do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end;
    BD5.Enabled:=true;
    BD6.Enabled:=true;
    Panel3.Enabled:=false;
  end;
end;

procedure TSetupSCBHGT.BD4Click(Sender: TObject);
begin
  with Qry_SCBHGT do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BD3.Enabled:=false;
  BDAll.Enabled:=false;
  BD4.Enabled:=false;
  CopyD_Temp1.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  Panel3.Enabled:=false;
end;

procedure TSetupSCBHGT.BD5Click(Sender: TObject);
var i:integer;
begin
  try
    Qry_SCBHGT.first;
    for i:=1 to Qry_SCBHGT.RecordCount do
    begin
      case Qry_SCBHGT.updatestatus of
        usinserted:
        begin
          if Qry_SCBHGT.fieldbyname('SCBH_Cost').isnull then
          begin
            Qry_SCBHGT.delete;
          end
          else
          begin
              with QTemp do
              begin
                active:=false;
                sql.Clear;
                sql.Add('select* from KCLLS_CB ');
                sql.Add('where LLNO='''+Qry_SCBHGT.FieldByName('LLNO').AsString+''' ');
                sql.Add('     and CLBH='''+Qry_SCBHGT.FieldByName('CLBH').AsString+''' ');
                sql.Add('     and SCBH_Cost='''+Qry_SCBHGT.FieldByName('SCBH_Cost').AsString+''' ');
                sql.Add('     and SCBH='''+Qry_SCBHGT.FieldByName('SCBH').AsString+''' ');
                sql.Add('     and HGLB='''+Qry_SCBHGT.FieldByName('HGLB').AsString+''' ');
                active:=true;
              end;
              if QTemp.RecordCount>0 then
              begin
                showmessage('SCBH_GT: '+Qry_SCBHGT.FieldByName('SCBH_Cost').AsString+', LLNO: '+Qry_SCBHGT.FieldByName('LLNO').AsString+', CLBH: '+Qry_SCBHGT.FieldByName('CLBH').AsString+' already existed!');
                exit;
              end;
             //
             Qry_SCBHGT.edit;
             Qry_SCBHGT.FieldByName('userID').Value:=main.edit1.text;
             Qry_SCBHGT.FieldByName('YN').Value:='1';
             Up_SCBHGT.apply(ukinsert);
          end;
        end;
        usmodified:
         begin
          if Qry_SCBHGT.fieldbyname('YN').value='0'then
          begin
            with QTemp do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('+''''+'KCLLS_CB'+''''+','+''''+Qry_SCBHGT.fieldbyname('LLNO').Value+'''');
              sql.add(','''+Qry_SCBHGT.fieldbyname('SCBH_Cost').value+''','+''''+Qry_SCBHGT.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            Up_SCBHGT.apply(ukdelete);
          end
          else
          begin
            Qry_SCBHGT.edit;
            Qry_SCBHGT.FieldByName('userID').Value:=main.edit1.text;
            Up_SCBHGT.apply(ukmodify);
          end;
        end;
      end;
      Qry_SCBHGT.next;
    end;
    Qry_SCBHGT.active:=false;
    Qry_SCBHGT.cachedupdates:=false;
    Qry_SCBHGT.requestlive:=false;
    Qry_SCBHGT.active:=true;
    Qry_Deliver.Active:=false;
    Qry_Deliver.Active:=true;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;


procedure TSetupSCBHGT.BD6Click(Sender: TObject);
begin
  with Qry_SCBHGT do
  begin
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
  Qry_Deliver.active:=false;
  Qry_Deliver.active:=true;
  BD3.Enabled:=true;
  BDAll.Enabled:=true;
  BD4.Enabled:=true;
  CopyD_Temp1.Visible:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  Panel3.Enabled:=true;
end;

procedure TSetupSCBHGT.CopyD_Temp1Click(Sender: TObject);
var bm:Tbookmark;
  i:integer;
  bookmarklist:tbookmarklisteh;
begin
  if (not Qry_Deliver.Active)or (Qry_Deliver.recordcount=0) then
    abort;
  Qry_Deliver.disablecontrols;
  bm:=Qry_Deliver.getbookmark;
  bookmarklist:=DBGridEh1.selectedrows;
  if bookmarklist.count>0 then
  begin
    try
      for i:=0 to bookmarklist.count-1 do
      begin
        Qry_Deliver.gotobookmark(pointer(bookmarklist[i]));
        CopyRY(Nil);
      end;
    finally
      begin
        Qry_Deliver.gotobookmark(bm);
        Qry_Deliver.freebookmark(bm);
        Qry_Deliver.enablecontrols;
      end;
    end;
  end;
end;

procedure TSetupSCBHGT.CopyRY(Sender: TObject);
begin
  with Qry_SCBHGT do
  begin
    insert;
    fieldbyname('GSBH').AsString :=main.edit2.Text;
    fieldbyname('CKBH').AsString :=Qry_Deliver.fieldbyname('CKBH').AsString;
    fieldbyname('HGLB').AsString :=Qry_Deliver.fieldbyname('HGLB').AsString;
    fieldbyname('CNO').AsString  :=Qry_Deliver.fieldbyname('CNO').AsString;
    fieldbyname('CLBH').AsString :=Qry_Deliver.fieldbyname('CLBH').AsString;
    fieldbyname('YWPM').AsString :=Qry_Deliver.fieldbyname('YWPM').AsString;
    fieldbyname('dwbh').AsString :=Qry_Deliver.fieldbyname('dwbh').AsString;
    fieldbyname('LLNO').AsString :=Qry_Deliver.fieldbyname('LLNO').AsString;
    fieldbyname('CFMDate').Value :=formatdatetime('yyyy/MM/dd',Qry_Deliver.fieldbyname('CFMDate').Value);
    fieldbyname('SCBH_Cost').AsString :='ZZZZZZZZZZ';
    fieldbyname('CWBH').AsString   :=Qry_Deliver.fieldbyname('CWBH').AsString;;
    fieldbyname('CostID').AsString :=Qry_Deliver.fieldbyname('CostID').AsString;
    fieldbyname('Qty').Value     :=Qry_Deliver.fieldbyname('Qty').Value;
    fieldbyname('VNPrice').Value :=Qry_Deliver.fieldbyname('VNPrice').Value;
    fieldbyname('VNACC').Value   :=Qry_Deliver.fieldbyname('VNACC').Value;
    fieldbyname('SCBH').AsString :=Qry_Deliver.fieldbyname('SCBH').AsString;
    fieldbyname('USERID').Value  :=main.edit1.text;
    fieldbyname('USERDate').Value:=now;
    fieldbyname('YN').Value      :=1;
    post;
  end;
end;

procedure TSetupSCBHGT.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if Qry_SCBHGT.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure TSetupSCBHGT.DBGridEh1DblClick(Sender: TObject);
begin
  if Qry_Deliver.recordcount>0 then
  begin
    CopyRY(Nil);
  end;
end;

procedure TSetupSCBHGT.Qry_SCBHGTQtyChange(Sender: TField);
begin
  if (Qry_SCBHGT.FieldByName('Qty').Value>0) and (Qry_SCBHGT.FieldByName('Qty').Value<>Qry_Deliver.FieldByName('Qty').Value) then
  begin
    Qry_SCBHGT.Edit;
    Qry_SCBHGT.FieldByName('VNACC').Value := RoundCurrency(Qry_SCBHGT.FieldByName('VNPrice').Value * Qry_SCBHGT.FieldByName('Qty').Value);
  end else
  begin
    if Qry_SCBHGT.FieldByName('Qty').Value=0 then
    begin
      Qry_SCBHGT.Edit;
      Qry_SCBHGT.FieldByName('VNACC').Value :=0
    end;
  end;
end;

procedure TSetupSCBHGT.FormCreate(Sender: TObject);
var i,index : integer;
    Ndate:TDate;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select gsdh from bgszl ');
    sql.add('where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''') ');
    Active:=true;
    index:=0;
    CBX5.Items.Clear;
    CBX5.Items.Add('ALL');
    for i:=1 to recordCount do
    begin
      CBX5.items.add(fieldbyname('gsdh').AsString);
      if main.Edit2.Text=fieldbyname('gsdh').AsString then index:=i;
      Next;
    end;
    CBX5.ItemIndex:=index;
    //
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX1.Items.Clear;
    CBX1.Items.Add('ALL');
    while not eof do
    begin
      CBX1.Items.Add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CBX1.ItemIndex:=0;
    //
    active:=false;
    sql.Clear;
    sql.add('select GETDATE() NDate');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
  end;
  // Load year-month
  i:=strtoint(formatdatetime('yyyy',Ndate))-5;
  CBX2.Clear;
  while i<(strtoint(formatdatetime('yyyy',Ndate))+3) do
  begin
      CBX2.Items.Add(inttostr(i));
      cbYear.Items.Add(inttostr(i));
      i:=i+1;
  end;
  Date1.Date:=encodedate(yearof(NDate),monthof(NDate),1);
  Date2.Date:=NDate;
  CBX2.ItemIndex:=CBX2.Items.IndexOf(formatdatetime('yyyy',Ndate));
  CBX3.ItemIndex:=CBX3.Items.IndexOf(formatdatetime('mm',Ndate));
  cbYear.ItemIndex:=cbYear.Items.IndexOf(formatdatetime('yyyy',Ndate));
  PC1.ActivePage:=TS2;
  TS1.Destroy;
end;

procedure TSetupSCBHGT.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if Qry_Deliver.FieldByName('LLCB').AsString<>'' then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
end;

procedure TSetupSCBHGT.BD7Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  if Qry_SCBHGT.Active then
  begin
    if Qry_SCBHGT.recordcount=0 then
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
    for   i:=1   to   Qry_SCBHGT.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Qry_SCBHGT.fields[i-1].FieldName;
    end;
    Qry_SCBHGT.First;
    j:=2;
    while   not  Qry_SCBHGT.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Qry_SCBHGT.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Qry_SCBHGT.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        Qry_SCBHGT.Next;
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

procedure TSetupSCBHGT.Qry_SCBHGTBeforeClose(DataSet: TDataSet);
begin
  BD3.Enabled:=False;
  BDAll.Enabled:=false;
  BD4.Enabled:=False;
  BD5.Enabled:=False;
  BD6.Enabled:=False;
  BD7.Enabled:=False;
  CopyD_Temp1.Visible:=false;
  Panel3.Enabled:=true;
end;

procedure TSetupSCBHGT.btn_SearchClick(Sender: TObject);
begin
  Qry_Announce.Active:=False;
  if (not chk_Year.Checked)and(not CHK_Date.Checked)and (trim(cbType.Text)='')and(trim(edt_RefNo.Text)='')and(trim(edt_RY.Text)='')  then
  begin
    MessageDlg('Pls.You must to Choose key first!.',mtWarning,[mbOK],0);
    abort;
  end;
  with Qry_Announce do
  begin
      Active:=False;
      sql.Clear;
      sql.add('SELECT a.AnnounceDate, a.RefNo, a.Type_s, a.File_NameS, a.Remark, a.UserDate, a.UserID, a.YN ,a.RevisionNo, a.RevisionDate');
      sql.add('FROM Announcement a');
      sql.add('WHERE 1=1');
      if chk_Year.Checked then
         sql.add('AND YEAR(a.AnnounceDate)='''+cbYear.Text+'''');
      if CHK_Date.Checked then
      begin
        sql.add('and convert(varchar,a.AnnounceDate,111) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',Date1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',Date2.Date) +'''');
      end;
      if cbType.Text<>'' then
         sql.add('AND a.Type_s='''+cbType.Text+'''');
      if edt_RefNo.Text<>'' then
         sql.add('AND a.RefNo like ''%'+edt_RefNo.Text+'%'' ');
      if edt_RY.Text<>'' then
         sql.add('AND EXISTS(SELECT 1 FROM AnnouncementS as1 WHERE as1.AnnounceDate=a.AnnounceDate AND as1.RefNo=a.RefNo AND as1.Type_s=a.Type_s AND as1.RY like ''%'+edt_RY.Text+'%'' )');
      sql.Add('ORDER BY a.RefNo DESC');
      Active:=true;
  end;
end;

procedure TSetupSCBHGT.Qry_AnnounceAfterOpen(DataSet: TDataSet);
begin
  If Qry_Announce.RecordCount>0 Then
      Qry_AnnounceS.Active:=true;
end;

procedure TSetupSCBHGT.Qry_AnnounceBeforeClose(DataSet: TDataSet);
begin
  Qry_AnnounceS.Active:=False;
end;

procedure TSetupSCBHGT.mn_DownLoadClick(Sender: TObject);
begin
  SaveDialog1.FileName := Qry_Announce.FieldByName('File_NameS').AsString;
  if not SaveDialog1.Execute then
    abort;
  if trim(FileAddress)='' then
  begin
      ShowMessage('Pls, Call IT check FileAddress Announcement !');
      Abort;
  end;
  try
        DisconnectShare('W:');
        if (MakeDriveMapping('W:',Copy(FileAddress,0,Length(FileAddress)-1),UserLog,PassLog,False) = 0) then
        begin
            ShowMessage('Pls, Call IT check Folder "'+FileAddress+'" on server fisrt !');
            exit;
        end;
        if not FileExists(FileAddress+Qry_Announce.FieldByName('File_NameS').AsString) then
        begin
            showmessage('Can not Download ! file not exists , pls check !');
            DisconnectShare('W:');
            exit;
        end;
        if trim(SaveDialog1.FileName)='' then
           SaveDialog1.FileName:=Qry_Announce.FieldByName('File_NameS').AsString;
        CopyFile(PChar(FileAddress+Qry_Announce.FieldByName('File_NameS').AsString), PChar(SaveDialog1.FileName), False);
        if Application.MessageBox('DownLoad success ! Do you want to open the download file?','Open File',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
        DisconnectShare('W:');
  except
          DisconnectShare('W:');
          showmessage('Can not Download ! Try again !');
  end;
end;

procedure TSetupSCBHGT.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if(Qry_Announce.FieldByName('RevisionNo').AsString<>'') then
      DBGridEh3.canvas.font.color:=  $00FF06FF;
end;

procedure TSetupSCBHGT.DBGridEh3TitleBtnClick(Sender: TObject;
  ACol: Integer; Column: TColumnEh);
begin
  if (not Qry_Announce.Active) or (Qry_Announce.RecordCount<2) then
    Abort;
end;

procedure TSetupSCBHGT.pop_AnnouncePopup(Sender: TObject);
begin
  mn_DownLoad.Enabled:=False;
  Excel.Enabled:=false;
  if (Qry_Announce.RecordCount>0)   then
  begin
     Excel.Enabled:=true;
     if (Qry_Announce.FieldByName('File_NameS').AsString<>'')then
        mn_DownLoad.Enabled:=true;
  end;
end;

procedure TSetupSCBHGT.ExcelClick(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  if Qry_Announce.Active then
  begin
    if Qry_Announce.recordcount=0 then
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
    for   i:=1   to   Qry_Announce.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Qry_Announce.fields[i-1].FieldName;
    end;
    Qry_Announce.First;
    j:=2;
    while   not  Qry_Announce.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Qry_Announce.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Qry_Announce.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        Qry_Announce.Next;
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

procedure TSetupSCBHGT.CBX5Change(Sender: TObject);
begin
  if CBX5.Text<>'ALL' then
  begin
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CKBH from KCCK ');
      sql.add('where GSBH='+''''+CBX5.Text+'''');
      sql.add('order by CKBH');
      active:=true;
      CBX1.Items.Clear;
      CBX1.Items.Add('ALL');
      while not eof do
      begin
        CBX1.Items.Add(fieldbyname('CKBH').AsString);
        Next;
      end;
      CBX1.ItemIndex:=0;
      Active:=false;
    end;
  end;
end;

procedure TSetupSCBHGT.BDAllClick(Sender: TObject);
var i:integer;
begin
  if Qry_SCBHGT.recordcount>0 then
  begin
    with Qry_SCBHGT do
    begin
      Qry_SCBHGT.First;
      for i:=0 to  Qry_SCBHGT.RecordCount-1 do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        fieldbyname('YN').Value:='0';
        Qry_SCBHGT.Next;
      end;
    end;
    BD5.Enabled:=true;
    BD6.Enabled:=true;
    Panel3.Enabled:=false;
  end;
end;

end.

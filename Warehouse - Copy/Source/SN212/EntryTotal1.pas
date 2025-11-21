unit EntryTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls, FunUNit,
  Buttons, ExtCtrls,math,comobj, IniFiles, GridsEh, DBGridEh, StrUtils, Dateutils;

type
  TEntryTotal = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    DBX2: TDBComboBox;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit13: TDBEdit;
    BBTT2: TBitBtn;
    DBEdit14: TDBEdit;
    ENDet: TQuery;
    ENDetRKNO: TStringField;
    ENDetCGBH: TStringField;
    ENDetCLBH: TStringField;
    ENDetYWPM: TStringField;
    ENDetDWBH: TStringField;
    ENDetPaQty: TCurrencyField;
    ENDetQty: TCurrencyField;
    ENDetUSPrice: TCurrencyField;
    ENDetUSACC: TCurrencyField;
    ENDetCostID: TStringField;
    ENDetUSERID: TStringField;
    ENDetUSERDATE: TDateTimeField;
    ENDetYN: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    ENMas: TQuery;
    ENMasRKNO: TStringField;
    ENMasZSBH: TStringField;
    ENMasZSYWJC: TStringField;
    ENMasZSNO: TStringField;
    ENMasGSBH: TStringField;
    ENMasCKBH: TStringField;
    ENMasCFMID: TStringField;
    ENMasUSERDATE: TDateTimeField;
    ENMasUSERID: TStringField;
    ENMasCFMDATE: TDateTimeField;
    ENMasYN: TStringField;
    UpMas: TUpdateSQL;
    Qtemp: TQuery;
    ENDetZWPM: TStringField;
    ENMasSB: TStringField;
    Panel2: TPanel;
    BDelRec: TQuery;
    ENDetoldQty: TCurrencyField;
    ENDetDOCNO: TStringField;
    ENMasDOCNO: TStringField;
    ENDetinvno: TStringField;
    ENDetCNO: TStringField;
    Panel7: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO5: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    KCPK: TQuery;
    KCPKPKNO: TStringField;
    KCPKDeclaretion: TStringField;
    KCPKExport: TStringField;
    KCPKUserID: TStringField;
    KCPKUserDate: TDateTimeField;
    KCPKYN: TStringField;
    DSKCPK: TDataSource;
    UpKCPK: TUpdateSQL;
    ENMasHGLB: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    ENDetVNPrice: TCurrencyField;
    ENDetVNACC: TCurrencyField;
    ENDetCWHL: TCurrencyField;
    bbnInvoice: TBitBtn;
    ENMasMEMO: TStringField;
    ENMasSFL: TStringField;
    ENDetGSBH: TStringField;
    ENDetRKSB: TStringField;
    ENDetMEMO: TStringField;
    BDT7: TBitBtn;
    Edit4: TEdit;
    Label6: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    CKBHEdit: TEdit;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    HGLBEdit: TEdit;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    Check: TCheckBox;
    Button1: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Label5: TLabel;
    Label1: TLabel;
    Label22: TLabel;
    CGNOEdit: TEdit;
    Query1: TQuery;
    pnl4: TPanel;
    BE1: TBitBtn;
    BE2: TBitBtn;
    BE3: TBitBtn;
    BE4: TBitBtn;
    BE5: TBitBtn;
    DBGrid6: TDBGridEh;
    ENDetS: TQuery;
    strngfldKCLLSSCLBH: TStringField;
    dtmfldKCLLSSUSERDate: TDateTimeField;
    strngfldKCLLSSUSERID: TStringField;
    strngfldKCLLSSYN: TStringField;
    ENDetSRKNO: TStringField;
    ENDetSCGBH: TStringField;
    ENDetSRKSB: TStringField;
    ENDetSSIZE: TStringField;
    ENDetSBWBH: TStringField;
    ENDetSQty: TFloatField;
    ENDetSDepName: TStringField;
    DS6: TDataSource;
    UpDetS: TUpdateSQL;
    ENMasDOCDATE: TDateTimeField;
    ENMasInputDate: TDateTimeField;
    ENDetSOTT: TIntegerField;
    Query2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure ENDetAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure ENMasAfterOpen(DataSet: TDataSet);
    procedure ENMasAfterScroll(DataSet: TDataSet);
    procedure ENMasZSNOSetText(Sender: TField; const Text: String);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure bbnInvoiceClick(Sender: TObject);
    procedure BDT7Click(Sender: TObject);
    procedure KCPKAfterOpen(DataSet: TDataSet);
    procedure ENMasHGLBChange(Sender: TField);
    procedure BE1Click(Sender: TObject);
    procedure BE2Click(Sender: TObject);
    procedure BE3Click(Sender: TObject);
    procedure BE4Click(Sender: TObject);
    procedure BE5Click(Sender: TObject);
  private
    sYear,sMonth:String;
    IsHide_Warehouse_XT:String;
    IsHide_Warehouse_SFL:String;
    IsCheck_WH_CostID:string;
    //總務倉組別檢查
    WH_TXSQL:String;
    WH_TXSQL_Force_Check:string;
    AccountN233_CheckLinkServer, SQL_LinkServer: string;
    CheckSuppID,CheckCKBH,CheckCKBH_XT:string;
    IsAllowSuppID,IsAllowCKBH,IsAllowCKBH_XT:Boolean;
    { Private declarations }
    procedure Asset_TSCDUpdate();
    function CheckHGStock_IsNegative(CLBH:String;Qty:double):boolean;
    procedure ReadIni();
    procedure UpdateCGZL_YN(CGNOStr:String);
    procedure InsertKCRKSS(Flag:String);
    procedure Init_KCCLMONTH_BDep(RKNO:String);
    procedure CheckDocNo();
  public      
    CheckGSBH:string;
    IsAllowGSBH:Boolean;
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_CostID:string;
    WH_CostID_NK:string;
    WH_CostID_HD:string;
    WH_CostID_TV:string;
    WH_CostID_TV_HD:string;
    WH_CostID_TV_KD:string;
    WH_CostID_TV_XT:string;
    WH_DiplayFormat:String;
    { Public declarations }
    procedure CheckDeclaretion_Insert_Modify();
  end;

var
  EntryTotal: TEntryTotal;
  NDate:TDate;

implementation

uses main1, EntryTotal_Supp1, EntryT_PrintTW1,
     EntryT_Print1, EntryTotal_VN1, EntryTotal_Mat1, EntryList_InvoiceModify1,
     EntryTotal_TH1, EntryTotal_EntryTSCD1, EntryList_VATNO1,
     EntryList_Declaration1,Entrylist1, EntryList_STT_Hang1;

{$R *.dfm}
Function ERPTrunc(value:double;demical:integer):double;
var valueF:double;
begin
  valueF:=value*power(10,-1*demical)+0.5;
  valueF:=trunc(valueF);
  result:=valueF/power(10,-1*demical);
end;

procedure TEntryTotal.ReadIni();
var MyIni :Tinifile;
    AppDir:string;    
    tmpGSBHList:TStringlist;
    index:integer;
begin
  IsHide_Warehouse_XT:='N';
  IsHide_Warehouse_SFL:='N';
  IsCheck_WH_CostID:='N';
  WH_CostID:='3311';
  WH_CostID_TV:='331';
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  WH_DiplayFormat:='#,##0.00';
  AccountN233_CheckLinkServer:='Y';
  SQL_LinkServer:='';
  CheckSuppID:='VT01';
  CheckCKBH:='CDC,CDT,BYC,BYT,CBY,VA12,VTXW';
  CheckCKBH_XT:='CDC,CDT,BYC,BYT,CBY';        
  CheckGSBH:='VA12,CDC,VC1,VC2';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      WH_CostID:= MyIni.ReadString('ERP','WH_CostID','');
      WH_CostID_NK:= MyIni.ReadString('ERP','WH_CostID_NK','');
      WH_CostID_HD:= MyIni.ReadString('ERP','WH_CostID_HD','');
      WH_CostID_TV:= MyIni.ReadString('ERP','WH_CostID_TV','');
      WH_CostID_TV_HD:= MyIni.ReadString('ERP','WH_CostID_TV_HD','');
      WH_CostID_TV_KD:= MyIni.ReadString('ERP','WH_CostID_TV_KD','');
      WH_CostID_TV_XT:= MyIni.ReadString('ERP','WH_CostID_TV_XT','');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      IsHide_Warehouse_SFL:=MyIni.ReadString('ERP','IsHide_Warehouse_SFL','N');
      IsCheck_WH_CostID:= MyIni.ReadString('ERP','IsCheck_WH_CostID','N');
      //20230330總務倉組別檢查
      WH_TXSQL_Force_Check:=MyIni.ReadString('Warehouse','WarehouseN12_TXSQL_Force_Check','N');
      WH_TXSQL:=MyIni.ReadString('Warehouse','WarehouseN32_TXSQL',' (''VTXX'',''VTXY'',''VTXZ'') ');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','');
      CheckSuppID:=MyIni.ReadString('ERP','Warehouse_N212_CheckSuppID_'+main.Edit2.Text,'');
      CheckCKBH:=MyIni.ReadString('ERP','Warehouse_N211_CheckCKBH','CDC,CDT,BYC,BYT,CBY,VA12,VTXW');
      CheckCKBH_XT:=MyIni.ReadString('ERP','Warehouse_N211_CheckCKBH_XT','CDC,CDT,BYC,BYT,CBY');    
      CheckGSBH:=MyIni.ReadString('ERP','Warehouse_N211_CheckGSBH','VA12,CDC,VC1,VC2');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(ENDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(ENDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(ENDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    DBGridEh1.Columns[7].PickList.Clear;
    DBGridEh1.Columns[7].PickList.Add('NK');
    DBGridEh1.Columns[7].PickList.Add('TC');
    DBGridEh1.Columns[7].PickList.Add('HD');
    DBGridEh1.Columns[7].PickList.Add('KD');
    DBGridEh1.Columns[7].PickList.Add('GC');
    DBGridEh1.Columns[7].PickList.Add('NK1');
    DBGridEh1.Columns[7].PickList.Add('TC1');
    DBGridEh1.Columns[7].PickList.Add('HD1');
    DBGridEh1.Columns[7].PickList.Add('KD1');
    DBGridEh1.Columns[7].PickList.Add('H11');
    DBGridEh1.Columns[7].PickList.Add('NQ');
    DBGridEh1.Columns[7].PickList.Add('NKNQ');
  end;
  if IsHide_Warehouse_SFL='Y' then
  begin
    DBGridEh1.Columns[11].Visible:=false;
    DBGridEh3.Columns[10].Visible:=false;
  end;
  If AccountN233_CheckLinkServer='Y' then
  begin
    SQL_LinkServer:='LacTyDB.LIY_ERP.dbo';
  end else
  begin
    SQL_LinkServer:='dbo';
  end;
  
  IsAllowGSBH:=false;
  if  CheckGSBH <> '' then
  begin
    tmpGSBHList:=FuncObj.SplitString(CheckGSBH,',');
    index:=tmpGSBHList.IndexOf(Main.Edit2.Text);
    if index>=0 then IsAllowGSBH:=true;
    tmpGSBHList.Free;
  end else
  begin
    IsAllowGSBH:=false;
  end;
end;


procedure TEntryTotal.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    panel1.Visible:=true;
    panel6.Visible:=false;
    action:=canone;
  end else
  begin
      if BD5.enabled then
      begin
        messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
        PC1.ActivePage:=TS4;
        panel6.Visible:=true;
        panel1.Visible:=false;
        action:=canone;
      end else
      begin
        action:=Cafree;
      end;
    end;
end;

procedure TEntryTotal.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    sYear:=fieldbyname('FY').asstring;
    sMonth:=fieldbyname('FM').asstring;
    active:=false;
    //
    sql.Clear;
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
    begin
      DBX2.Items.add(fieldbyname('CKBH').asstring);
      Next;
    end;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from Bgszl where SFL in (''GC'',''DC'',''PD'',''RB'')');
    sql.add('order by GSDH ');
    active:=true;
    for i:=1 to recordcount do
    begin
      DBGridEh3.Columns[10].picklist.add(fieldbyname('GSDH').asstring);
      next;
    end;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-2;
  DTP2.date:=date;
  ReadIni();
end;

procedure TEntryTotal.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TEntryTotal.Button1Click(Sender: TObject);
begin
  with ENMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC  ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and KCRK.RKNO like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ZSZL.ZSYWJC like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    // 20160716 add filter Invoice
    if edit3.Text<>'' then
    begin
      sql.Add('and KCRK.DocNo like '''+edit3.Text+'%''');
    end;
    if Edit4.Text<>'' then
    sql.add('      and KCRK.MEMO like ''%'+Edit4.Text+'%'' ');
    //
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and KCRK.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('and KCRK.SB=''1'' ');    
    if Check.Checked then
    begin
        sql.Add('and KCRK.USERID='+''''+main.Edit1.Text+'''');
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      SQL.add('           and KCRK.HGLB<>''XT'' ');
    if CKBHEdit.Text<>'' then
      sql.add(' and KCRK.CKBH='''+CKBHEdit.Text+''' ');
    if HGLBEdit.Text<>'' then
      sql.add(' and KCRK.HGLB='''+HGLBEdit.Text+''' ');
    if CGNOEdit.Text<>'' then
      sql.add(' and KCRK.ZSNO='''+CGNOEdit.Text+''' ');
    sql.add('order by RKNO Desc');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  panel2.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
  BBT6.Enabled:=true;
  check.Checked:=true;
  ENDet.Active:=true;
  KCPK.Active:=true;
  ENDetS.Active:= true;
end;

procedure TEntryTotal.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryTotal.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryTotal.BB2Click(Sender: TObject);
begin
  with ENMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryTotal.BB3Click(Sender: TObject);
begin

  if (ENDet.recordcount=0) and (KCPK.RecordCount=0) then
  begin
    with ENMas do
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
  end
    else
      begin
        showmessage('Pls delete the Entry Detail first.')
      end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryTotal.BB4Click(Sender: TObject);
begin

 with ENMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.Columns[1].ButtonStyle:= cbsEllipsis;
  //DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
end;
//20211016 已入庫鎖採購單不能修改 CGZL.YN=5
procedure TEntryTotal.UpdateCGZL_YN(CGNOStr:String);
begin
  if CGNOStr<>'' then
  begin
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('');
      SQL.Add('update CGZL set YN=KCRK.YN from (');
      SQL.Add('	select CGZL.CGNO,KCRK.ZSNO,case when ZSNO is null then ''1'' else ''5'' end as YN');
      SQL.Add('	from CGZL ');
      SQL.Add('	left join (');
      SQL.Add('	select ZSNO');
      SQL.Add('	from KCRK ');
      SQL.Add('	where ZSNO in ('+Copy(CGNOStr,1,length(CGNOStr)-1)+') and ZSNO<>''ZZZZZZZZZZ'' ');
      SQL.Add('	Group by ZSNO ) KCRK on KCRK.ZSNO=CGZL.CGNO');
      SQL.Add('	where CGNO in ('+Copy(CGNOStr,1,length(CGNOStr)-1)+')  ) KCRK');
      SQL.Add('where CGZL.CGNO=KCRK.CGNO');
      ExecSQL();
    end;
  end;
end;

procedure TEntryTotal.BB5Click(Sender: TObject);
var RKNO, CGNOStr:string;
    i:integer;
    tmpCKBHList,tmpCKBHList_XT:TStringlist;
    index,index_XT:integer;
begin
    IsAllowCKBH:=false;
    //IsAllowCKBH_XT:=false;
    if  CheckCKBH <> '' then
    begin
      tmpCKBHList:=FuncObj.SplitString(CheckCKBH,',');
      index:=tmpCKBHList.IndexOf(ENMas.FieldByName('CKBH').AsString);
      if index>=0 then IsAllowCKBH:=true;
      tmpCKBHList.Free;
    end else
    begin
      IsAllowCKBH:=false;
    end;
    {if  CheckCKBH_XT <> '' then
    begin
      tmpCKBHList_XT:=FuncObj.SplitString(CheckCKBH_XT,',');
      index_XT:=tmpCKBHList_XT.IndexOf(ENMas.FieldByName('CKBH').AsString);
      if index_XT>=0 then IsAllowCKBH_XT:=true;
      tmpCKBHList_XT.Free;
    end else
    begin
      IsAllowCKBH_XT:=false;
    end; }
    if (((ENMas.FieldByName('HGLB').AsString='NK') or  (ENMas.FieldByName('HGLB').AsString='TC') or (ENMas.FieldByName('HGLB').AsString='HD')  or (ENMas.FieldByName('HGLB').AsString='KD' ))
        and  (IsAllowCKBH=true)) then
    begin
      showmessage('Do not allow choose NK/TC/HD/KD');
      abort;
    end;
    {if ((ENMas.FieldByName('HGLB').AsString='XT') and (IsAllowCKBH_XT=false)) then
    begin
      showmessage(''+ ENMas.FieldByName('CKBH').AsString +' do not allow choose XT');
      abort;
    end; } // tempory all CKBH can in warehouse HGLB=XT
    
  // Check if have already delivery at KCRKCX table
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from (');
    SQL.Add('select KCRKS.CLBH,KCRK.HGLB,KCZLS.NK,KCZLS.TC,KCZLS.KD,KCZLS.HD,KCZLS.XT,KCZLS.GC,Sum(KCRKS.Qty) as Qty from KCRKS');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join KCZLS on KCZLS.CKBH=KCRK.CKBH and KCZLS.CLBH=KCRKS.CLBH');
    SQL.Add('where KCRK.RKNO='''+ENMas.FieldByName('RKNO').AsString+''' ');
    SQL.Add('Group by KCRKS.CLBH,KCRK.HGLB,KCZLS.NK,KCZLS.TC,KCZLS.KD,KCZLS.HD,KCZLS.XT,KCZLS.GC) KCRKS');
    SQL.Add('where  Qty> case ');
    SQL.Add('               when (KCRKS.HGLB=''NK'' ) then NK ');
    SQL.Add('               when (KCRKS.HGLB=''TC'' ) then TC ');
    SQL.Add('               when (KCRKS.HGLB=''HD'' ) then HD ');
    SQL.Add('               when (KCRKS.HGLB=''KD'' ) then KD ');
    SQL.Add('               when (KCRKS.HGLB=''XT'' ) then XT ');
    SQL.Add('               when (KCRKS.HGLB=''GC'' ) then GC ');
    SQL.Add('            end');
    Active:=true;
    if RecordCount>0 then
    begin
      if (ENMas.fieldbyname('CKBH').Value<>ENMas.fieldbyname('CKBH').OldValue) or (ENMas.fieldbyname('HGLB').Value<>ENMas.fieldbyname('HGLB').OldValue) then
      begin
        showmessage('Ma vat tu:'+FieldByName('CLBH').AsString+' so luong phan loai vat tu nho hon so luong nhap kho');
        Abort;
      end;
    end;
    Active:=false;
  end;
  //
  with Qtemp do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    sYear:=fieldbyname('FY').asstring;
    sMonth:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(sMonth)<2 then
    sMonth:='0'+sMonth;

  try
    ENDet.Active:=false;
    ENMas.first;
    for i:=1 to ENMas.RecordCount do
      begin
        case ENMas.updatestatus of
          usinserted:
          begin
              if ENMas.fieldbyname('HGLB').AsString ='' then
              begin
                ENMas.edit;
                ENMas.fieldbyname('HGLB').AsString:='HD';
                ENMas.Post;
              end;
              if ENMas.fieldbyname('ZSBH').isnull then
              begin
                  ENMas.delete;
              end else
              begin
                     with Qtemp do    //計算領料單流水號
                     begin
                       active:=false;
                       sql.Clear;
                       sql.Add('select RKNO from KCRK where RKNO like '''+sYear+sMonth+'%''');
                       sql.add('order by RKNO');
                       active:=true;
                       if recordcount >0 then
                         begin
                           last;
                           RKNO:=fieldbyname('RKNO').AsString;
                           RKNO:=copy(RKNO,7,5);
                           RKNO:=inttostr(strtoint(RKNO)+1);
                           while length(RKNO)<5 do
                             begin
                               RKNO:='0'+RKNO;
                             end;
                         end
                           else
                             begin
                               RKNO:='00001';
                             end;
                       RKNO :=sYear+sMonth+RKNO;
                       active:=false;
                       sql.Clear;
                     end;
                     ENMas.edit;
                     ENMas.fieldbyname('RKNO').Value:=RKNO;
                     if EnMas.FieldByName('ZSNO').AsString='' then ENMas.fieldbyname('ZSNO').Value:='ZZZZZZZZZZ';
                     ENMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     ENMas.FieldByName('userID').Value:=main.edit1.text;
                     //ENMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);  // 20241101 UserDate lay theo ngay thong quan, ngay hoa don
                     if EnMas.FieldByName('Userdate').AsString='' then ENMas.fieldbyname('userdate').Value:=Ndate;
                     ENMas.FieldByName('InputDate').Value:=Ndate;
                     ENMas.FieldByName('CFMID').Value:='NO';
                     ENMas.FieldByName('YN').Value:='1';
                     ENMas.FieldByName('SB').Value:='1';
                     if EnMas.FieldByName('SFL').AsString='' then ENMas.fieldbyname('SFL').Value:='THU MUA';
                     CGNOStr:=CGNOStr+''''+ENMas.fieldbyname('ZSNO').Value+''',';
                     upMas.apply(ukinsert);
                     CheckDeclaretion_Insert_Modify();
              end;
          end;
          usmodified:
          begin
                if ENMas.fieldbyname('HGLB').AsString='' then
                begin
                  Showmessage('Xin Chon HGLB');
                  abort;
                end;
                if ENMas.fieldbyname('YN').value='0'then
                begin
                  with BDelRec do
                  begin
                      active:=false;
                      sql.Clear;
                      {sql.add('insert into BDelRec ');
                      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                      sql.add('values ('+''''+'KCRK'+''''+','+''''+EnMas.fieldbyname('RKNO').Value+'''');
                      sql.add(','+''''+''+''''+','+''''+EnMas.fieldbyname('USERID').Value+''''+',');
                      sql.add(''''+main.Edit1.Text+''''+',getdate())'); }
                      SQL.Add('UPDATE KCRK SET flowflag = ''X'',ZSNO=''ZZZZZZZZZZ'' WHERE RKNO =  ''' + ENMas.fieldbyname('RKNO').AsString+''' ');
                      execsql;
                      active:=false;
                  end;
                  CGNOStr:=CGNOStr+''''+ENMas.fieldbyname('ZSNO').Value+''',';
                  CGNOStr:=CGNOStr+''''+ENMas.fieldbyname('ZSNO').OldValue+''',';
                  //upMas.apply(ukdelete);
                end else
                begin
                    if (ENMas.FieldByName('CFMID').value='NO')   then
                    begin
                        if NDate-ENMas.FieldByName('InputDate').Value<=3  then
                        begin
                          if  ENMas.FieldByName('userID').Value=main.Edit1.Text then
                          begin
                              ENMas.edit;
                              ENMas.FieldByName('userID').Value:=main.edit1.text;
                              //ENMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                              if EnMas.FieldByName('Userdate').AsString='' then ENMas.fieldbyname('userdate').Value:=Ndate;
                              ENMas.FieldByName('InputDate').Value:=Ndate;
                              CGNOStr:=CGNOStr+''''+ENMas.fieldbyname('ZSNO').Value+''',';
                              CGNOStr:=CGNOStr+''''+ENMas.fieldbyname('ZSNO').OldValue+''',';
                              upMas.apply(ukmodify);
                              CheckDeclaretion_Insert_Modify();
                          end else
                          begin
                                showmessage('It is not yours, can not modify.');
                          end;
                        end else
                        begin
                          showmessage('Date > 3, can not modify.');
                        end;
                    end else
                    begin
                        showmessage('Already confirm. Can not modify.');
                    end;
                end;
          end;
       end;
       ENMas.next;
    end;
    //202110106 入庫不能修改採購單CGZL.YN=5
    UpdateCGZL_YN(CGNOStr);
    //    
    ENMas.active:=false;
    ENMas.cachedupdates:=false;
    ENMas.requestlive:=false;
    ENMas.active:=true;
    ENDet.Active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
    BBTT1.Visible:=false;
    DBGridEh1.columns[1].ButtonStyle:=cbsnone;
    DBGridEh1.columns[4].ButtonStyle:=cbsnone;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;
procedure TEntryTotal.CheckDeclaretion_Insert_Modify();
begin
  with bdelrec do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;
    sql.Add('select RKNO,isnull(KCPK.Declaretion,'''') as KCPK_Declaretion,isnull(CGZL_Declaration.Declaration,'''') as Declaration,CGZL_Declaration.MALOAIHINH');
    sql.Add('from kcrk left join kcpk on kcrk.RKNO=kcpk.PKNO');
    sql.Add('left join '+SQL_LinkServer+'.CGZL_Declaration CGZL_Declaration on kcrk.DOCNO=CGZL_Declaration.Docno');
    sql.Add('where HGLB in (''NK'',''TC'',''KD'',''NK1'',''TC1'',''KD1'',''H11'',''NQ'',''NKNQ'') and KCRK.RKNO='''+ENMas.FieldByName('RKNO').AsString+'''');
    sql.Add('group by RKNO,isnull(KCPK.Declaretion,''''),isnull(CGZL_Declaration.Declaration,''''),CGZL_Declaration.MALOAIHINH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if (bdelrec.RecordCount>0) and (bdelrec.FieldByName('KCPK_Declaretion').AsString='') then
  begin
    if bdelrec.FieldByName('Declaration').AsString<>'' then
    begin
      with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.Add('insert KCPK(PKNO,Declaretion,Export,UserID,UserDate,YN) values('''+ENMas.FieldByName('RKNO').AsString+''','''+bdelrec.FieldByName('Declaration').AsString+''','''+bdelrec.FieldByName('MALOAIHINH').AsString+''','''+main.edit1.text+''',getdate(),1)');
        execsql;
        active:=false;
      end;
    end;
  end;
  if (bdelrec.RecordCount>0) and (bdelrec.FieldByName('KCPK_Declaretion').AsString<>'') then
  begin
    if bdelrec.FieldByName('Declaration').AsString<>'' then
    begin
      with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update KCPK');
        sql.Add('set Declaretion='''+bdelrec.FieldByName('Declaration').AsString+''',Export='''+bdelrec.FieldByName('MALOAIHINH').AsString+''',userid='''+main.Edit1.Text+''' ,userdate=getdate()');
        sql.Add('where PKNO='''+ENMas.FieldByName('RKNO').AsString+'''');
        execsql;
        active:=false;
      end;
    end;
  end;
end;

procedure TEntryTotal.BD2Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh3.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh3.columns[8].ButtonStyle:=cbsEllipsis;
  DBGridEh3.columns[9].ButtonStyle:=cbsEllipsis;
  DBGridEh3.columns[11].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryTotal.BD3Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh3.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryTotal.BD4Click(Sender: TObject);
begin

  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;

  with ENDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BBTT2.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  DBGridEh3.columns[0].ButtonStyle:=cbsEllipsis;
  DBGridEh3.columns[8].ButtonStyle:=cbsEllipsis;
  DBGridEh3.columns[9].ButtonStyle:=cbsEllipsis;
  DBGridEh3.columns[11].ButtonStyle:=cbsEllipsis; 
end;
//20171227 檢查是否為入庫數量修改是否變成庫存數量負數
function TEntryTotal.CheckHGStock_IsNegative(CLBH:String;Qty:double):boolean;
var iRes:boolean;
begin
  if Qtemp.locate('CLBH',CLBH,[])=true then
  begin
    if (Qtemp.FieldByName('KCQty').Value+Qty)>=0 then iRes:=false else iRes:=true;
  end else
  begin
    if Qty>=0 then iRes:=false else iRes:=true;
  end;
  result:=iRes;
end;

//20210115 資產設備更新
procedure TEntryTotal.Asset_TSCDUpdate();
var i:integer;
begin
  if ENMas.FieldByName('SFL').AsString='THU MUA' then
  begin
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete TSCD where RKNO='''+ENMas.FieldByName('RKNO').AsString+''' and Status=''N'' and LB=''2'' ');
      ExecSQL();
    end;
    //
    EntryTotal_EntryTSCD:=TEntryTotal_EntryTSCD.Create(self);
    EntryTotal_EntryTSCD.Query1.First;
    for i:=0 to EntryTotal_EntryTSCD.Query1.RecordCount-1 do
    begin
      if EntryTotal_EntryTSCD.Query1.FieldByName('XHCL').AsString='N'  then //XHCL 消耗材料 N=資產
        if EntryTotal_EntryTSCD.DownBtnAsset()=false then
        begin
          Showmessage('Import Asset fail, Qty must be integer');
          break;
        end;
    end;
    EntryTotal_EntryTSCD.Close;
  end;
end;
//20230330總務倉組別檢查
procedure TEntryTotal.Init_KCCLMONTH_BDep(RKNO:String);
var y,m,d:word;
    sdate,edate:TDate;
begin
  decodedate(NDate,y,m,d);
  sdate:=startofthemonth(NDate);
  edate:=endofthemonth(NDate);
  decodedate(incmonth(NDate,-1),y,m,d);
  sYear:=inttostr(y);
  sMonth:=inttostr(m);
  if  length(sMonth)<2  then
  begin
    sMonth:='0'+sMonth;
  end;
  //
  if WH_TXSQL_Force_Check='Y' then
  begin
    with  Qtemp  do
    begin
      Active:=false;
      SQL.Clear;
      //計算後 #VTXKC
      SQL.add('if object_id(''tempdb..#VTXKC'') is not null  ');
      SQL.add('begin   drop table #VTXKC end   ');
      SQL.Add('Select KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Sum(KCCLMONTH_Dep.Qty) as Qty,IsNull(Bdepartment.DepName,''Stock'') as DepName,IsNull(Bdepartment.DepMemo,''庫存'') as DepMemo ');
      SQL.Add('into #VTXKC from (');
      SQL.Add('Select CKBH, CLBH, Case when Qty<0 then ''ZZZZZZZZZZ'' else DepID end as DepID, Qty from (	 ');
      SQL.Add('Select CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty  from (');
      SQL.Add('Select CKBH,CLBH,DepID,Qty,''1'' as SB');
      SQL.Add('from KCCLMONTH_BDepartment');
      SQL.Add('where KCYEAR='''+sYear+''' and KCMONTH='''+sMonth+''' ');
      SQL.Add('      and KCCLMONTH_BDepartment.CKBH in '+WH_TXSQL);
      SQL.Add('      and KCCLMONTH_BDepartment.CLBH in (select CLBH from KCRKS where RKNO='''+RKNO+''' Group by CLBH) ');
      SQL.Add('Union all');
      SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Qty,''2'' as SB');
      SQL.Add('from KCRK');
      SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO and KCRKSS.CLBH=KCRKS.CLBH and KCRKSS.CGBH=KCRKS.CGBH and KCRKSS.RKSB=KCRKS.RKSB');
      SQL.Add('left join SGDH on SGDH.SGNO=KCRKSS.CGBH');
      SQL.Add('left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE and CGZLSS.Stage=''TVu'' ');
      SQL.Add('where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      SQL.Add('	     	'''+Formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+Formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('        and KCRKS.CLBH is not null');
      SQL.Add('        and KCRK.CKBH in '+WH_TXSQL);
      SQL.Add('        and KCRKS.CLBH in (select CLBH from KCRKS where RKNO='''+RKNO+''' Group by CLBH) ');
      SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) ');
      SQL.Add('Union all');
      SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty ,''3'' as SB ');
      SQL.Add('from KCLL');
      SQL.Add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('where  KCLL.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      SQL.Add('	     	'''+Formatdatetime('yyyy/MM/dd',sdate)+''' and '''+Formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('        and KCLLS.CLBH is not null ');
      SQL.Add('        and KCLL.CKBH in '+WH_TXSQL);
      SQL.Add('        and KCLLS.CLBH in (select CLBH from KCRKS where RKNO='''+RKNO+''' Group by CLBH) ');
      SQL.Add('Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID  ');
      //調動單
      SQL.Add('Union all ');
      SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID,-1*Sum(KCLL_Dep_DBS.Qty) as Qty,''4'' as SB'); //轉出
      SQL.Add('from KCLL_Dep_DB');
      SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
      SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
      SQL.Add('	     	'''+Formatdatetime('yyyy/MM/dd',sdate)+''' and '''+Formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('        and KCLL_Dep_DBS.CLBH is not null');
      SQL.Add('        and KCLL_Dep_DB.CKBH in '+WH_TXSQL);
      SQL.Add('        and KCLL_Dep_DBS.CLBH in (select CLBH from KCRKS where RKNO='''+RKNO+''' Group by CLBH) ');
      SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID  ');
      SQL.Add('Union all ');
      SQL.Add('Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  as DepID,Sum(KCLL_Dep_DBS.Qty) as Qty,''5'' as SB');  //轉入
      SQL.Add('from KCLL_Dep_DB');
      SQL.Add('left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
      SQL.Add('where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
      SQL.Add('	     	'''+Formatdatetime('yyyy/MM/dd',sdate)+''' and '''+Formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('        and KCLL_Dep_DBS.CLBH is not null');
      SQL.Add('        and KCLL_Dep_DB.CKBH in '+WH_TXSQL);
      SQL.Add('        and KCLL_Dep_DBS.CLBH in (select CLBH from KCRKS where RKNO='''+RKNO+''' Group by CLBH) ');
      SQL.Add('Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  )  KCCLMONTH_Dep');
      SQL.Add('Group by CKBH, CLBH, DepID ) KCCLMONTH_Dep ) KCCLMONTH_Dep  ');
      SQL.Add('Left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID');
      SQL.Add('Group by KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,Bdepartment.DepName,Bdepartment.DepMemo ');
      //#VTXKC儲存暫存表格 KCCLDAY_BDepartment
      SQL.Add('Insert into KCCLDAY_BDepartment');
      SQL.Add('Select #VTXKC.CKBH,#VTXKC.CLBH,#VTXKC.DepID,#VTXKC.Qty,GetDate() as USERDATE,'''+main.Edit1.Text+''' as UserID,''1'' as YN ');
      SQL.Add('from #VTXKC ');
      SQL.Add('left join KCCLDAY_BDepartment on  KCCLDAY_BDepartment.CKBH=#VTXKC.CKBH and KCCLDAY_BDepartment.CLBH=#VTXKC.CLBH and KCCLDAY_BDepartment.DepID=#VTXKC.DepID');
      SQL.Add('where KCCLDAY_BDepartment.CKBH is null');
      SQL.Add('Update KCCLDAY_BDepartment Set Qty=A.Qty ,UserDate=GetDate(),UserID='''+main.Edit1.Text+'''');
      SQL.Add('from (');
      SQL.Add('Select #VTXKC.CKBH,#VTXKC.CLBH,#VTXKC.DepID,#VTXKC.Qty');
      SQL.Add('from #VTXKC ');
      SQL.Add('left join KCCLDAY_BDepartment on  KCCLDAY_BDepartment.CKBH=#VTXKC.CKBH and KCCLDAY_BDepartment.CLBH=#VTXKC.CLBH and KCCLDAY_BDepartment.DepID=#VTXKC.DepID');
      SQL.Add('where KCCLDAY_BDepartment.CKBH is not null )  A');
      SQL.Add('where KCCLDAY_BDepartment.CKBH=A.CKBH and KCCLDAY_BDepartment.CLBH=A.CLBH and KCCLDAY_BDepartment.DepID=A.DepID  ');
      ExecSQL();
      //funcObj.WriteErrorLog(sql.Text);
      Active:=false;
    end;
  end;
end;
//
procedure TEntryTotal.BD5Click(Sender: TObject);
var i:integer;
    IsUpdateTSCD:boolean;
begin

  //202204 Kevin 檢查允收比率  Check if Accept
  with ENDet do
  begin
    first;
    while not ENDet.Eof do
    begin
      if ENDet.FieldByName('YN').Value <> '0' then begin
        if (ENDet.FieldByName('Qty').IsNull) or (ENDet.FieldByName('Qty').Value <=0) then
        begin
          showmessage('The Qty can not be empty or <=0.');
          abort;
        end;
        if ENMas.FieldByName('ZSNO').AsString = 'ZZZZZZZZZZ' then
        else if copy(ENDet.FieldByName('CLBH').Value,1,1) <> 'U' then begin
          Qtemp.Active := false;
          Qtemp.SQL.Clear;
          Qtemp.SQL.Add('Select Acceptance from CLZL_Acceptance where CLBH = '''+ENDet.FieldByName('CLBH').Value+'''');
          Qtemp.SQL.Add('and LOW_QTY <= '+ENDet.FieldByName('Qty').AsString+' and HIGH_QTY >= '+ENDet.FieldByName('Qty').AsString+' and GSBH='''+main.edit2.text+'''');
          Qtemp.Active := true;
          if Qtemp.RecordCount > 0 then begin
            if strtofloat(formatfloat('0.00',(ENDet.FieldByName('Qty').Value / ENDet.FieldByName('PaQty').Value))) > Qtemp.FieldByName('Acceptance').Value then begin
              showmessage('The Qty can not > ' + ENDet.FieldByName('PaQty').AsString + ' * ' + Qtemp.FieldByName('Acceptance').AsString);
              abort;
            end;
          end
          else begin
            Qtemp.Active := false;
            Qtemp.SQL.Clear;
            Qtemp.SQL.Add('Select Acceptance from CLZL_Acceptance where Main_Category = '''+copy(ENDet.FieldByName('CLBH').Value,1,1)+'''');
            Qtemp.SQL.Add('and LOW_QTY <= '+ENDet.FieldByName('Qty').AsString+' and HIGH_QTY >= '+ENDet.FieldByName('Qty').AsString+' and GSBH='''+main.edit2.text+'''');
            Qtemp.Active := true;
            if strtofloat(formatfloat('0.00',(ENDet.FieldByName('Qty').Value / ENDet.FieldByName('PaQty').Value))) > Qtemp.FieldByName('Acceptance').Value then begin
              showmessage('The Qty can not > ' + ENDet.FieldByName('PaQty').AsString + ' * ' + Qtemp.FieldByName('Acceptance').AsString);
              abort;
            end;
          end;
        end;
      end;
      Next;
    end;
  end;
  // 20171227 檢查是否為入庫數量修改是否變成庫存數量負數
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CLBH,Qty,case ');
    SQL.Add('               when (KCRKS.HGLB=''NK'' ) then NK ');
    SQL.Add('               when (KCRKS.HGLB=''TC'' ) then TC ');
    SQL.Add('               when (KCRKS.HGLB=''HD'' ) then HD ');
    SQL.Add('               when (KCRKS.HGLB=''KD'' ) then KD ');
    SQL.Add('               when (KCRKS.HGLB=''XT'' ) then XT ');
    SQL.Add('               when (KCRKS.HGLB=''GC'' ) then GC ');
    SQL.Add('               when (KCRKS.HGLB=''NK1'' ) then NK1 ');
    SQL.Add('               when (KCRKS.HGLB=''TC1'' ) then TC1 ');
    SQL.Add('               when (KCRKS.HGLB=''HD1'' ) then HD1 ');
    SQL.Add('               when (KCRKS.HGLB=''KD1'' ) then KD1 ');
    SQL.Add('               when (KCRKS.HGLB=''H11'' ) then H11 ');
    SQL.Add('               when (KCRKS.HGLB=''NQ'' ) then NQ ');
    SQL.Add('               when (KCRKS.HGLB=''NKNQ'') then NKNQ ');
    SQL.Add('               end as KCQty');
    SQL.Add(' from (');
    SQL.Add('select KCRKS.CLBH,KCRK.HGLB,KCZLS.NK,KCZLS.TC,KCZLS.KD,KCZLS.HD,KCZLS.XT,KCZLS.GC,KCZLS.NK1,KCZLS.TC1,KCZLS.HD1,KCZLS.KD1,KCZLS.H11,KCZLS.NQ,KCZLS.NKNQ,Sum(KCRKS.Qty) as Qty from KCRKS');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join KCZLS on KCZLS.CKBH=KCRK.CKBH and KCZLS.CLBH=KCRKS.CLBH');
    SQL.Add('where KCRK.RKNO='''+ENMas.FieldByName('RKNO').AsString+''' ');
    SQL.Add('Group by KCRKS.CLBH,KCRK.HGLB,KCZLS.NK,KCZLS.TC,KCZLS.KD,KCZLS.HD,KCZLS.XT,KCZLS.GC,KCZLS.NK1,KCZLS.TC1,KCZLS.HD1,KCZLS.KD1,KCZLS.H11,KCZLS.NQ,KCZLS.NKNQ ) KCRKS');
    Active:=true;
  end;
  //
  try
    IsUpdateTSCD:=false;
    ENDet.first;
    for i:=1 to ENDet.RecordCount do
    begin
      case ENDet.updatestatus of
          usinserted:
          begin
                if ENDet.fieldbyname('CLBH').isnull then
                begin
                  ENDet.delete;
                end else
                begin
                    if IsAllowGSBH=true and (ENDet.FieldByName('CLBH').AsString <> 'V90A022601') then
                    begin
                      if (ENMas.FieldByName('HGLB').Value='HD') then
                      begin
                        with Qtemp do
                        begin
                          Active:=false;
                          SQL.Clear;
                          SQL.Add('select CWBH,clzl.cqdh,CLHD.HGBH from KCZLS');
                          SQL.Add('left join clzl  on clzl.cldh=KCZLS.CLBH');
                          SQL.Add('left join CLHD  on KCZLS.CLBH=CLHD.CLBH');
                          SQL.Add('where KCZLS.CKBH='''+ENMas.FieldByName('CKBH').AsString+''' AND KCZLS.CLBH='''+ENDet.FieldByName('CLBH').AsString+''' ');
                          Active:=true;
                        end;
                        if (Qtemp.FieldByName('CWBH').AsString <> '153') and (Qtemp.FieldByName('CWBH').AsString <> '1533') and (Qtemp.FieldByName('cqdh').AsString = 'VN') then
                        begin
                          if (Qtemp.FieldByName('HGBH').IsNull) or (Trim(Qtemp.FieldByName('HGBH').AsString) = '') then
                          begin
                            ShowMessage('Ma Hai Quan khong duoc trong!');
                            Abort;
                          end;

                          if Qtemp.FieldByName('HGBH').AsString <> ENDet.FieldByName('CNO').AsString then
                          begin
                            ShowMessage('Khac Ma Hai Quan!');
                            Abort;
                          end;
                        end;
                      end;
                      if (ENMas.FieldByName('HGLB').Value='HD1') then
                      begin
                        with Qtemp do
                        begin
                          Active:=false;
                          SQL.Clear;
                          SQL.Add('select CWBH,clzl.cqdh,CLHD1.HGBH from KCZLS');
                          SQL.Add('left join clzl  on clzl.cldh=KCZLS.CLBH');
                          SQL.Add('left join CLHD1  on KCZLS.CLBH=CLHD1.CLBH');
                          SQL.Add('where KCZLS.CKBH='''+ENMas.FieldByName('CKBH').AsString+''' AND KCZLS.CLBH='''+ENDet.FieldByName('CLBH').AsString+''' ');
                          Active:=true;
                        end;
                        if (Qtemp.FieldByName('CWBH').AsString <> '153') and (Qtemp.FieldByName('CWBH').AsString <> '1533') and (Qtemp.FieldByName('cqdh').AsString = 'VN') then
                        begin
                          if (Qtemp.FieldByName('HGBH').IsNull) or (Trim(Qtemp.FieldByName('HGBH').AsString) = '') then
                          begin
                            ShowMessage('Ma Hai Quan khong duoc trong!');
                            Abort;
                          end;

                          if Qtemp.FieldByName('HGBH').AsString <> ENDet.FieldByName('CNO').AsString then
                          begin
                            ShowMessage('Khac Ma Hai Quan!');
                            Abort;
                          end;
                        end;
                      end;
                    end;
                     //20241108 doi voi to khai bat buoc nhap STT hang
                    if (((copy(EnMas.FieldByName('HGLB').AsString,1,2)='NK') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='TC') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='NQ')
                          or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='KD')) and (Endet.FieldByName('SOTT').AsString='') and (IsAllowSuppID= false)) then
                    begin
                       if ((RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'X') and (RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'Y') and (RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'Z')) then
                       begin
                        showmessage('Chua nhap so thu tu hang');
                        abort;
                       end;
                    end;
                     ENDet.edit;
                     ENDet.fieldbyname('RKNO').Value:=ENMas.fieldbyname('RKNO').Value;
                     if ENDet.FieldByName('PaQty').IsNull then
                       begin
                         ENDet.fieldbyname('PaQty').Value:=ENDet.fieldbyname('Qty').Value ;
                       end;
                     if not ENDet.FieldByName('USPrice').isnull then
                       begin
                         ENDet.FieldByName('USACC').Value:=trunc(ENDet.FieldByName('USPrice').Value*ENDet.FieldByName('Qty').Value*100+0.5)/100;
                       end;
                     if not ENDet.FieldByName('VNPrice').isnull then
                       begin
                         ENDet.FieldByName('VNACC').Value:=trunc(ENDet.FieldByName('VNPrice').Value*ENDet.FieldByName('Qty').Value+0.5);
                       end;
                     if RightStr(Enmas.FieldByName('CKBH').AsString,1)='W' then
                     begin
                        //ENDet.FieldByName('CostID').Value:=WH_CostID;
                        if IsCheck_WH_CostID='Y' then
                        begin
                          if ((EnMas.FieldByName('HGLB').Value='NK') or (EnMas.FieldByName('HGLB').Value='TC') or (EnMas.FieldByName('HGLB').Value='KD') or (EnMas.FieldByName('HGLB').Value='NQ')
                                or (EnMas.FieldByName('HGLB').Value='NK1') or (EnMas.FieldByName('HGLB').Value='TC1') or (EnMas.FieldByName('HGLB').Value='KD1') or (ENMas.FieldByName('HGLB').Value='NKNQ')) then
                          begin
                            ENDet.FieldByName('CostID').Value:=WH_CostID_NK;
                          end else if ((EnMas.FieldByName('HGLB').Value='HD') or (EnMas.FieldByName('HGLB').Value='HD1')) then
                          begin
                            ENDet.FieldByName('CostID').Value:=WH_CostID_HD;
                          end else
                          begin
                            ENDet.FieldByName('CostID').Value:=WH_CostID;
                          end;
                        end else
                        begin
                          ENDet.FieldByName('CostID').Value:=WH_CostID;
                        end;
                     end else
                     begin
                        if IsCheck_WH_CostID='Y' then
                        begin
                          if ((EnMas.FieldByName('HGLB').Value='KD') or (EnMas.FieldByName('HGLB').Value='KD1'))  then
                          begin
                            ENDet.FieldByName('CostID').Value:=WH_CostID_TV_KD;
                          end else if ((EnMas.FieldByName('HGLB').Value='HD') or (EnMas.FieldByName('HGLB').Value='HD1')) then
                          begin
                            ENDet.FieldByName('CostID').Value:=WH_CostID_TV_HD;
                          end else if (EnMas.FieldByName('HGLB').Value='XT') then
                          begin
                            ENDet.FieldByName('CostID').Value:=WH_CostID_TV_XT;
                          end else
                          begin
                            ENDet.FieldByName('CostID').Value:=WH_CostID_TV;
                          end;
                        end else
                        begin
                          ENDet.FieldByName('CostID').Value:=WH_CostID_TV;
                        end;
                     end;
                     ENDet.FieldByName('userID').Value:=main.edit1.text;
                     ENDet.FieldByName('userdate').Value:=NDate;
                     ENDet.FieldByName('YN').Value:='1';
                     //
                     if ((enmas.FieldByName('ZSNO').IsNull) or  (enmas.FieldByName('ZSNO').AsString='')) then
                        endet.FieldByName('DocNo').Value:='ZZZZZZZZZZ'
                     else
                        endet.FieldByName('DocNo').Value:=enmas.FieldByName('ZSNO').Value;
                        //
                     with BDelRec do
                     begin
                        active:=false;
                        sql.clear;
                        sql.add('update KCZLS ');
                        sql.add('set KCQty=KCQty+'+EnDet.fieldbyname('Qty').asstring);
                        SQL.add('where CKBH='+''''+EnMas.fieldbyname('CKBH').Value+'''');
                        SQL.add('      and CLBH='+''''+EnDet.fieldbyname('CLBH').Value+'''');
                        execsql;
                        active:=false;
                      end;
                    //20170214 add insert CLZL_Dev.CNO
                    if not  Endet.FieldByName('CNO').IsNull then
                    begin
                      with BDelRec do
                      begin
                        active:=false;
                        sql.Clear;
                        // insert
                        if (EnMas.FieldByName('HGLB').Value='NK') then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLHG where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLHG (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;

                        if (EnMas.FieldByName('HGLB').Value='TC') then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLTC where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLTC (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;

                        {if EnMas.FieldByName('HGLB').Value='HD' then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLHD where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLHD (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;}
                        if (EnMas.FieldByName('HGLB').Value='NK1') then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLHG1 where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLHG1 (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;

                        if (EnMas.FieldByName('HGLB').Value='TC1') then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLTC1 where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLTC1 (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;

                        {if EnMas.FieldByName('HGLB').Value='HD1' then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLHD1 where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLHD1 (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end; }

                        if EnMas.FieldByName('HGLB').Value='NQ' then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLNQ where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLNQ (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;

                        if EnMas.FieldByName('HGLB').Value='NKNQ' then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLNKNQ where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLNKNQ (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;

                        if SQL.text<>'' then ExecSQL();
                      end;
                    end;
                    upDet.apply(ukinsert);
                    InsertKCRKSS('Insert');
                    //20230415 update kcrkss.qty
                    with BDelRec do
                    begin
                      active:=false;
                      sql.clear;
                      sql.add('update KCRKSS ');
                      sql.add('set Qty='''+EnDet.fieldbyname('Qty').asstring+''' ');
                      SQL.add('where  RKNO = '''+EnDet.fieldbyname('RKNO').asstring+''' and  CLBH = '''+EnDet.fieldbyname('CLBH').asstring+''' and CGBH = '''+EnDet.fieldbyname('CGBH').asstring+''' and RKSB =  '''+EnDet.fieldbyname('RKSB').asstring+''' and SIZE = ''ZZZZZZ'' ');
                      //funcobj.WriteErrorLog(sql.Text);
                      execsql;
                      active:=false;
                    end;
                    IsUpdateTSCD:=true;
                end;
          end;
          usmodified:
          begin
              if ENDet.fieldbyname('YN').value='0'then
              begin
                  with BDelRec do
                  begin
                      active:=false;
                      sql.clear;
                      sql.add('update KCZLS ');
                      sql.add('set KCQty=KCQty-'+EnDet.fieldbyname('Qty').asstring);
                      SQL.add('where CKBH='+''''+EnMas.fieldbyname('CKBH').Value+'''');
                      SQL.add('      and CLBH='+''''+EnDet.fieldbyname('CLBH').Value+'''');
                      execsql;
                      active:=false;
                  end;
                  with BDelRec do
                  begin
                      active:=false;
                      sql.Clear;
                      sql.add('insert into BDelRec ');
                      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                      sql.add('values ('+''''+'KCRKS'+''''+','+''''+EnDet.fieldbyname('RKNO').Value+'''');
                      sql.add(','+''''+Endet.fieldbyname('CLBH').Value+''''+','+''''+EnDet.fieldbyname('USERID').Value+''''+',');
                      sql.add(''''+main.Edit1.Text+''''+',getdate())');
                      execsql;
                      active:=false;
                  end;
                  //20171227檢查入庫數量修改是否影響庫存變負數
                  if  CheckHGStock_IsNegative(EnDet.FieldByName('CLBH').AsString,-1*EnDet.FieldByName('Qty').OldValue)=false then
                  begin
                    InsertKCRKSS('Delete');
                    UpDet.apply(ukdelete);
                    IsUpdateTSCD:=true;
                  end else
                  begin
                    showmessage('Ma vat tu:'+EnDet.FieldByName('CLBH').AsString+' so luong phan loai vat tu nho hon so luong nhap kho');
                    Abort;
                  end;
              end else
              begin              
                    if IsAllowGSBH=true and (ENDet.FieldByName('CLBH').AsString <> 'V90A022601') then
                    begin
                      if (ENMas.FieldByName('HGLB').Value='HD') then
                      begin
                        with Qtemp do
                        begin
                          Active:=false;
                          SQL.Clear;
                          SQL.Add('select CWBH,clzl.cqdh,CLHD.HGBH from KCZLS');
                          SQL.Add('left join clzl  on clzl.cldh=KCZLS.CLBH');
                          SQL.Add('left join CLHD  on KCZLS.CLBH=CLHD.CLBH');
                          SQL.Add('where KCZLS.CKBH='''+ENMas.FieldByName('CKBH').AsString+''' AND KCZLS.CLBH='''+ENDet.FieldByName('CLBH').AsString+''' ');
                          Active:=true;
                        end;
                        if (Qtemp.FieldByName('CWBH').AsString <> '153') and (Qtemp.FieldByName('CWBH').AsString <> '1533') and (Qtemp.FieldByName('cqdh').AsString = 'VN') then
                        begin
                          if (Qtemp.FieldByName('HGBH').IsNull) or (Trim(Qtemp.FieldByName('HGBH').AsString) = '') then
                          begin
                            ShowMessage('Ma Hai Quan khong duoc trong!');
                            Abort;
                          end;

                          if Qtemp.FieldByName('HGBH').AsString <> ENDet.FieldByName('CNO').AsString then
                          begin
                            ShowMessage('Khac Ma Hai Quan!');
                            Abort;
                          end;
                        end;
                      end;
                      if (ENMas.FieldByName('HGLB').Value='HD1') then
                      begin
                        with Qtemp do
                        begin
                          Active:=false;
                          SQL.Clear;
                          SQL.Add('select CWBH,clzl.cqdh,CLHD1.HGBH from KCZLS');
                          SQL.Add('left join clzl  on clzl.cldh=KCZLS.CLBH');
                          SQL.Add('left join CLHD1  on KCZLS.CLBH=CLHD1.CLBH');
                          SQL.Add('where KCZLS.CKBH='''+ENMas.FieldByName('CKBH').AsString+''' AND KCZLS.CLBH='''+ENDet.FieldByName('CLBH').AsString+''' ');
                          Active:=true;
                        end;
                        if (Qtemp.FieldByName('CWBH').AsString <> '153') and (Qtemp.FieldByName('CWBH').AsString <> '1533') and (Qtemp.FieldByName('cqdh').AsString = 'VN') then
                        begin
                          if (Qtemp.FieldByName('HGBH').IsNull) or (Trim(Qtemp.FieldByName('HGBH').AsString) = '') then
                          begin
                            ShowMessage('Ma Hai Quan khong duoc trong!');
                            Abort;
                          end;

                          if Qtemp.FieldByName('HGBH').AsString <> ENDet.FieldByName('CNO').AsString then
                          begin
                            ShowMessage('Khac Ma Hai Quan!');
                            Abort;
                          end;
                        end;
                      end;
                    end;
                    if (((copy(EnMas.FieldByName('HGLB').AsString,1,2)='NK') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='TC') or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='NQ')
                          or (copy(EnMas.FieldByName('HGLB').AsString,1,2)='KD')) and (Endet.FieldByName('SOTT').AsString='')  and (IsAllowSuppID= false)) then
                    begin
                       if ((RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'X') and (RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'Y') and (RightStr(Enmas.FieldByName('CKBH').AsString,1)<>'Z')) then
                       begin
                        showmessage('Chua nhap so thu tu hang');
                        abort;
                       end;
                    end;
                    ENDet.edit;
                    if not ENDet.FieldByName('USPrice').isnull then
                    begin
                      ENDet.FieldByName('USACC').Value:=roundto(ENDet.FieldByName('USPrice').Value*ENDet.FieldByName('Qty').Value,-2);
                    end;
                    if not ENDet.FieldByName('VNPrice').isnull then
                    begin
                      ENDet.FieldByName('VNACC').Value:=roundto(ENDet.FieldByName('VNPrice').Value*ENDet.FieldByName('Qty').Value,0);
                    end;
                    ENDet.FieldByName('userID').Value:=main.edit1.text;
                    ENDet.FieldByName('userdate').Value:=NDate;
                    //
                    if ((enmas.FieldByName('ZSNO').IsNull) or  (enmas.FieldByName('ZSNO').AsString='')) then
                      endet.FieldByName('DocNo').Value:='ZZZZZZZZZZ'
                    else
                      endet.FieldByName('DocNo').Value:=enmas.FieldByName('ZSNO').Value;
                    //
                    with BDelRec do
                    begin
                      active:=false;
                      sql.clear;
                      sql.add('update KCZLS ');
                      sql.add('set KCQty=KCQty+'+EnDet.fieldbyname('Qty').asstring+'-'+EnDet.fieldbyname('oldQty').asstring);
                      SQL.add('where CKBH='+''''+EnMas.fieldbyname('CKBH').Value+'''');
                      SQL.add('      and CLBH='+''''+EnDet.fieldbyname('CLBH').Value+'''');
                      execsql;
                      active:=false;
                    end;
                    //20170214 add insert CLZL_Dev.CNO
                    if not  Endet.FieldByName('CNO').IsNull then
                    begin
                      with BDelRec do
                      begin
                        active:=false;
                        sql.Clear;
                        // insert
                        if (EnMas.FieldByName('HGLB').Value='NK') then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLHG where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLHG (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;
                        if (EnMas.FieldByName('HGLB').Value='TC') then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLTC where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLTC (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;
                        {if EnMas.FieldByName('HGLB').Value='HD' then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLHD where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLHD (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;}
                        if (EnMas.FieldByName('HGLB').Value='NK1') then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLHG1 where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLHG1 (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;
                        if (EnMas.FieldByName('HGLB').Value='TC1') then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLTC1 where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLTC1 (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;
                        {if EnMas.FieldByName('HGLB').Value='HD1' then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLHD1 where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLHD1 (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end; }
                        if EnMas.FieldByName('HGLB').Value='NQ' then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLNQ where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLNQ (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;
                        if EnMas.FieldByName('HGLB').Value='NKNQ' then
                        begin
                          sql.Add('IF NOT EXISTS (Select * from CLNKNQ where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                          SQL.Add('Begin ');
                          SQL.Add('Insert into CLNKNQ (CLBH, HGBH, USERID, USERDATE, YN)');
                          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                          SQl.Add('End ');
                        end;
                        if SQL.text<>'' then ExecSQL();
                      end;
                    end;
                    //20171227檢查入庫數量修改是否影響庫存變負數
                    if  CheckHGStock_IsNegative(EnDet.FieldByName('CLBH').AsString,EnDet.FieldByName('Qty').Value-EnDet.FieldByName('Qty').OldValue)=false then
                    begin
                      if EnDetS.RecordCount>0 then
                      begin
                        if (EnDet.FieldByName('Qty').Value<> DBGrid6.getfootervalue(0,DBGrid6.columns[1])) then
                        begin
                          Showmessage('Qty is not the same');
                          abort();
                        end;
                      end;
                      upDet.apply(ukmodify);
                      IsUpdateTSCD:=true;
                    end else
                    begin
                      showmessage('Ma vat tu:'+EnDet.FieldByName('CLBH').AsString+' so luong phan loai vat tu nho hon so luong nhap kho');
                      Abort;
                    end;
              end;
          end;
      end;
      ENDet.next;
    end;
    // update KCRKS.GSBH 退庫廠區
    with Bdelrec do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select gsbh from kcrks where rkno='''+Endet.fieldbyname('RKNO').AsString+'''');
      active:=true;
      if (recordcount > 0) and (Bdelrec.fieldbyname('GSBH').AsString<>'') then
      begin
        with Qtemp do
        begin
          active:=false;
          sql.Clear;
          sql.Add('update kcrks set gsbh='''+Bdelrec.fieldbyname('GSBH').AsString+''' where rkno='''+Endet.fieldbyname('RKNO').AsString+'''');
          //funcobj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
      end;
    end;
    if IsUpdateTSCD=true then Asset_TSCDUpdate();//20210105 物料為資產設備(電腦),自動新增到TSCD資產表格
    //
    Qtemp.Active:=false;
    ENDet.active:=false;
    ENDet.cachedupdates:=false;
    ENDet.requestlive:=false;
    ENDet.active:=true;
    bb6.enabled:=false;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    DBGridEh3.columns[0].ButtonStyle:=cbsNone;
    DBGridEh3.columns[8].ButtonStyle:=cbsNone;
    DBGridEh3.columns[9].ButtonStyle:=cbsNone;
    DBGridEh3.columns[11].ButtonStyle:=cbsNone;
    //20230405 更新KCCLDAY_BDepartment
    Init_KCCLMONTH_BDep(ENMas.FieldByName('RKNO').AsString);
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;
//20230323
procedure TEntryTotal.InsertKCRKSS(Flag:String);
begin
  with bdelrec do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select top 1 Stage from cgzlss where cgno='''+ENMas.FieldByName('ZSNO').AsString+'''  and Stage=''TVu''');
    active:=true;
  end;
  if Flag='Insert' then
  begin
    if ((ENMas.FieldByName('ZSNO').AsString<>'ZZZZZZZZZZ') and (bdelrec.FieldByName('Stage').AsString='TVu')) then
    begin
      with BDelRec do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Insert into KCRKSS (RKNO, CLBH, CGBH, RKSB, SIZE, Qty, USERID, USERDATE, YN) ');
        SQL.Add('Select * from ( ');
        SQL.Add('Select RKNO,CLBH,CGBH,RKSB,XXCC,SUM(Qty) as Qty,UserID,GETDATE() as UserDate ,''1'' as YN from ( ');
        SQL.Add('Select '''+ENDet.FieldByName('RKNO').AsString+''' as RKNO,'''+ENDet.FieldByName('CLBH').AsString+''' as CLBH,'''+ENDet.FieldByName('CGBH').AsString+''' as CGBH,'''+ENDet.FieldByName('RKSB').AsString+''' as RKSB,CGZLSS.XXCC,CGZLSS.Qty-IsNull(CGRK.okQty,0.0) as Qty,'''+main.Edit1.Text+''' as UserID,GETDATE() as UserDate,''1'' as YN ');
        SQL.Add('from CGZLSS');
        SQL.Add('left join (select KCRKSS.CLBH,KCRKSS.CGBH,KCRKSS.SIZE,KCRKSS.BWBH,sum(KCRKSS.Qty) as okQty ');
        SQL.Add('           from KCRKSS          ');
        SQL.Add('           left join KCRKS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKSS.CLBH and KCRKS.CGBH=KCRKSS.CGBH  and KCRKS.RKSB=KCRKSS.RKSB   ');
        SQL.Add('           where  KCRKS.DOCNO= '''+ENDet.FieldByName('DOCNO').AsString+''' and KCRKSS.CLBH='''+ENDet.FieldByName('CLBH').AsString+''' and KCRKSS.CGBH='''+ENDet.FieldByName('CGBH').AsString+''' and KCRKSS.RKSB='''+ENDet.FieldByName('RKSB').AsString+''' ');
        SQL.Add('           Group by  KCRKSS.CLBH,KCRKSS.CGBH,KCRKSS.SIZE,KCRKSS.BWBH ) CGRK on CGRK.CGBH=CGZLSS.ZLBH and CGRK.CLBH=CGZLSS.CLBH and CGRK.SIZE=CGZLSS.XXCC ');
        SQL.Add('where CGZLSS.CGNO='''+ENDet.FieldByName('DOCNO').AsString+''' and CGZLSS.CLBH='''+ENDet.FieldByName('CLBH').AsString+'''  and CGZLSS.ZLBH='''+ENDet.FieldByName('CGBH').AsString+''' ');
        SQL.Add(') CGZLSS Group by RKNO,CLBH,CGBH,RKSB,XXCC,UserID ');
        SQL.Add(' ) CGZLSS where 1=1 ');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL();
      end;
    end;
  end else if Flag='Delete' then
  begin
    with BDelRec do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from KCRKSS where RKNO='''+ENDet.FieldByName('RKNO').AsString+''' and CLBH='''+ENDet.FieldByName('CLBH').AsString+''' and CGBH='''+ENDet.FieldByName('CGBH').AsString+''' and RKSB='''+ENDet.FieldByName('RKSB').AsString+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
  end;
end;
procedure TEntryTotal.BD6Click(Sender: TObject);
begin
  with ENDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
BBTT2.Visible:=false;
BD5.Enabled:=false;
BD6.Enabled:=false;
DBGridEh3.columns[0].ButtonStyle:=cbsNone;
DBGridEh3.columns[8].ButtonStyle:=cbsNone;
DBGridEh3.columns[9].ButtonStyle:=cbsNone;
DBGridEh3.columns[11].ButtonStyle:=cbsNone;
end;

procedure TEntryTotal.BBT1Click(Sender: TObject);
begin
  ENMas.First;
end;

procedure TEntryTotal.BBT2Click(Sender: TObject);
begin
  ENMas.Prior;
end;

procedure TEntryTotal.BBT3Click(Sender: TObject);
begin
  ENMas.Next;
end;

procedure TEntryTotal.BBT4Click(Sender: TObject);
begin
  ENMas.Last;
end;

procedure TEntryTotal.BDT1Click(Sender: TObject);
begin
  ENDet.First;
end;

procedure TEntryTotal.BDT2Click(Sender: TObject);
begin
  ENDet.Prior;
end;

procedure TEntryTotal.BDT3Click(Sender: TObject);
begin
  ENDet.Next;
end;

procedure TEntryTotal.BDT4Click(Sender: TObject);
begin
  ENDet.Last;
end;

procedure TEntryTotal.ENDetAfterOpen(DataSet: TDataSet);
begin

  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT1.Enabled:=true;
  BDT2.Enabled:=true;
  BDT3.Enabled:=true;
  BDT4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  BDT7.Enabled:=true;
  BE3.Enabled:=true;
  if (((NDate-ENMas.FieldByName('InputDate').value)>7) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01'))  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BE3.Enabled:=false;
  end;
  if ENMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BE3.Enabled:=false;
  end;  
  if ENMas.FieldByName('USERID').value<>main.edit1.text then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BE3.Enabled:=false;
  end;
  if ENMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    BE3.Enabled:=false;
  end;
end;

procedure TEntryTotal.PC1Change(Sender: TObject);
var tmpSuppIDList:TStringlist;
    index:integer;
begin

  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
    //20230506 Need to key in DOCNO first
    IsAllowSuppID:=false;
    if  CheckSuppID <> '' then
    begin
      tmpSuppIDList:=FuncObj.SplitString(CheckSuppID,',');
      index:=tmpSuppIDList.IndexOf(ENMas.FieldByName('ZSBH').AsString);
      if index>=0 then IsAllowSuppID:=true;
      tmpSuppIDList.Free;
    end else
    begin
      IsAllowSuppID:=false;
    end;
    if ENMas.FieldByName('SFL').Value='THU MUA' then
    begin
      if ((ENMas.FieldByName('HGLB').Value='NK') or (ENMas.FieldByName('HGLB').Value='TC') or (ENMas.FieldByName('HGLB').Value='KD') or (ENMas.FieldByName('HGLB').Value='HD') or (ENMas.FieldByName('HGLB').Value='NQ') or (ENMas.FieldByName('HGLB').Value='NKNQ')
          or (ENMas.FieldByName('HGLB').Value='NK1') or (ENMas.FieldByName('HGLB').Value='TC1') or (ENMas.FieldByName('HGLB').Value='KD1') or (ENMas.FieldByName('HGLB').Value='HD1') or (ENMas.FieldByName('HGLB').Value='H11'))then
      begin
        if ((ENMas.FieldByName('DocNo').Value = '') or ( ENMas.FieldByName('DocNo').IsNull)) then
        begin
          if IsAllowSuppID= false then
          begin
            BD2.Enabled:=false;
            BD3.Enabled:=false;
            BD4.Enabled:=false;
            showmessage('Chua nhap to khai / hoa don');
          end else
          begin
            BD2.Enabled:=true;
            BD3.Enabled:=true;
            BD4.Enabled:=true;
          end;
        end else
        begin
          BD2.Enabled:=true;
          BD3.Enabled:=true;
          BD4.Enabled:=true;
        end;
      end;
    end;
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;
  if (((NDate-ENMas.FieldByName('InputDate').value)>7) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01')) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if ENMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if ENMas.FieldByName('USERID').value<>main.Edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if ENMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
end;

procedure TEntryTotal.BB6Click(Sender: TObject);
begin
  with ENMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGridEh1.columns[1].ButtonStyle:=cbsnone;
  DBGridEh1.columns[4].ButtonStyle:=cbsnone;
end;

procedure TEntryTotal.BBTT1Click(Sender: TObject);
begin
  EntryTotal_Supp:=TEntryTotal_Supp.create(self);
  EntryTotal_Supp.show;
end;

procedure TEntryTotal.BBTT2Click(Sender: TObject);
begin
  if EntryTotal.EnMas.fieldbyname('SFL').value='THU MUA' then
  begin
      //edit by BillWeng 2011/6/8 更改為鎖定只能讀取採購單
      EntryTotal_VN:=TEntryTotal_VN.create(self);
      EntryTotal_VN.EDIT1.text:=EntryTotal.EnMas.fieldbyname('ZSBH').value;
      if not EnMas.fieldbyname('ZSNO').isnull then
        EntryTotal_VN.edit2.Text:=EnMas.fieldbyname('ZSNO').Value
      else
      begin
        showmessage('Pls input CGNO first.');
        abort;
      end;
      EntryTotal_VN.button1click(nil);
      EntryTotal_VN.show;
  end else if EntryTotal.EnMas.fieldbyname('SFL').value='THU HOI' then
  begin
    EntryTotal_TH :=TEntryTotal_TH.create(self);
    EntryTotal_TH.show;
  end;
end;

procedure TEntryTotal.BDT5Click(Sender: TObject);
begin

  if ENDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    if messagedlg('TW format or normal?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      EntryT_PrintTW:=TEntryT_PrintTW.create(self);
      EntryT_PrintTW.quickrep1.prepare;
      EntryT_PrintTW.quickrep1.preview;
      EntryT_PrintTW.free;
    end else
    begin
      EntryT_Print:=TEntryT_Print.Create(nil);
      EntryT_Print.quickrep1.prepare;
      EntryT_Print.Qpage1.caption:=inttostr(EntryT_Print.quickrep1.QRPrinter.pagecount);
      EntryT_Print.quickrep1.preview;
      EntryT_Print.Free;
    end;
  end;
end;

procedure TEntryTotal.FormDestroy(Sender: TObject);
begin
  EntryTotal:=nil;
end;

procedure TEntryTotal.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if EnMas.Active then
  begin
    if EnMas.recordcount=0 then
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
    EnDet.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   EnMas.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=EnMas.fields[i-1].FieldName;
    end;
    EnMas.First;
    j:=2;
    while   not  EnMas.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   EnMas.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=EnMas.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        EnMas.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    EnDet.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;


procedure TEntryTotal.BO1Click(Sender: TObject);
begin
  if EnMas.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with KCPK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
end;

procedure TEntryTotal.BO2Click(Sender: TObject);
begin
  if EnMas.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with KCPK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
end;

procedure TEntryTotal.BO5Click(Sender: TObject);
begin
  if EnMas.RequestLive  then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with KCPK do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BO3.Enabled:=true;
  BO4.Enabled:=true;
end;

procedure TEntryTotal.BO4Click(Sender: TObject);
begin
  with KCPK do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  bo3.enabled:=false;
  bo4.enabled:=false;
end;

procedure TEntryTotal.BO3Click(Sender: TObject);
var i: integer;
begin
  try
    KCPK.first;
    for i:=1 to KCPK.RecordCount do
    begin
      case KCPK.updatestatus of
        usinserted:
        begin
          if KCPK.fieldbyname('Declaretion').isnull then
            begin
              KCPK.delete;
            end else
            begin
             KCPK.edit;
             KCPK.fieldbyname('PKNO').Value:=ENMas.fieldbyname('RKNO').Value;
             KCPK.FieldByName('userID').Value:=main.edit1.text;
             KCPK.FieldByName('userdate').Value:=Ndate;
             KCPK.FieldByName('YN').Value:='1';
             upKCPK.apply(ukinsert);
           end;
        end;
        usmodified:
        begin
          if KCPK.fieldbyname('YN').value='0' then
          begin
             upKCPK.apply(ukdelete);
          end else
          begin
            if (NDate-KCPK.FieldByName('userdate').Value<=60)  then
            begin
              if  KCPK.FieldByName('userID').Value=main.Edit1.Text then
              begin
                KCPK.edit;
                KCPK.FieldByName('userID').Value:=main.edit1.text;
                KCPK.FieldByName('userdate').Value:=Ndate;
                upKCPK.apply(ukmodify);
              end else
              begin
                showmessage('It is not yours, can not modify.');
              end;
            end else
            begin
              showmessage('Date > 60, can not modify.');
            end;
          end;
        end;
      end;
      KCPK.next;
    end;
    KCPK.active:=false;
    KCPK.cachedupdates:=false;
    KCPK.requestlive:=false;
    KCPK.active:=true;
    bo3.enabled:=false;
    bo4.enabled:=false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;
procedure  TEntryTotal.CheckDocNo();
begin
  if ((EnMas.FieldByName('HGLB').AsString='NK') or (EnMas.FieldByName('HGLB').AsString='TC') or (EnMas.FieldByName('HGLB').AsString='KD') or (EnMas.FieldByName('HGLB').AsString='HD') or (EnMas.FieldByName('HGLB').AsString='NQ') or (ENMas.FieldByName('HGLB').Value='NKNQ')
      or (EnMas.FieldByName('HGLB').AsString='NK1') or (EnMas.FieldByName('HGLB').AsString='TC1') or (EnMas.FieldByName('HGLB').AsString='KD1') or (EnMas.FieldByName('HGLB').AsString='HD1') or (EnMas.FieldByName('HGLB').AsString='H11'))  then
     DBGridEh1.columns[4].ReadOnly:=true;
  //if  ((EnMas.FieldByName('HGLB').AsString<>'') and (EnMas.FieldByName('HGLB').AsString<>'NK') and (EnMas.FieldByName('HGLB').AsString<>'TC') and (EnMas.FieldByName('HGLB').AsString<>'KD')  and (EnMas.FieldByName('HGLB').AsString<>'HD'))  then
  if ((EnMas.FieldByName('HGLB').AsString<>'') and ((EnMas.FieldByName('HGLB').AsString='GC')  or (EnMas.FieldByName('HGLB').AsString='XT'))) then
     DBGridEh1.columns[4].ReadOnly:=false;
end;

procedure TEntryTotal.ENMasAfterOpen(DataSet: TDataSet);
begin
  if EnMas.RecordCount>0 then
  begin
    BO1.Enabled:=true;
    BO2.Enabled:=true;
    BO5.Enabled:=true;
  end;
  if ((NDate-EnMas.FieldByName('USERDATE').value)>60)  then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
  if EnMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
  CheckDocNo();
  KCPK.Active:=true;
end;

procedure TEntryTotal.ENMasAfterScroll(DataSet: TDataSet);
begin
  if EnMas.RecordCount>0 then
  begin
    BO1.Enabled:=true;
    BO2.Enabled:=true;
    BO5.Enabled:=true;
  end;
  if ((NDate-EnMas.FieldByName('USERDATE').value)>60)  then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
  if EnMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BO1.Enabled:=false;
    BO2.Enabled:=false;
    BO5.Enabled:=false;
  end;
  CheckDocNo();
  KCPK.Active:=true;
end;

procedure TEntryTotal.ENMasZSNOSetText(Sender: TField; const Text: String);
begin
  Sender.Value:=Text;
  //20150523修改區分開發採購入庫廠別
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Case when  IsNull(Pay.ZSDH,'''')='''' then ');
      SQL.Add('              Case when  ZSZL.YN=2 then ZSZL.ZSDH else null end ');
      SQL.Add('		    else Pay.ZSDH end as ZSDH');
      SQL.Add('           ,Case when  IsNull(Pay.ZSDH,'''')='''' then ');
      SQL.Add('              Case when  ZSZL.YN=2 then ZSZL.ZSYWJC else null end ');
      SQL.Add('		    else Pay.ZSYWJC end as ZSYWJC');
      SQL.Add('           , CGZL.HGLB ');
      SQL.Add('from CGZL  ');
      SQL.Add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH');
      SQL.Add('left join ZSZL_DEV on  ZSZL_DEV.ZSDH=CGZL.ZSBH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
      SQL.Add('left join ZSZL Pay on Pay.ZSDH=ZSZL_DEV.ZSDH_TW ');
      SQL.Add('where CGZL.CGNO='''+Sender.Value+''' and CGZL.GSBH='''+main.Edit2.Text+''' ');
      Active:=true;
      if RecordCount>0 then
      begin
        ENMas.Edit;
        ENMas.FieldByName('ZSBH').Value:=Qtemp.FieldByName('ZSDH').Value;
        ENMas.FieldByName('ZSYWJC').Value:=Qtemp.FieldByName('ZSYWJC').Value;
        ENMas.FieldByName('HGLB').Value:=Qtemp.FieldByName('HGLB').Value;
        ENMas.Post;
      end else
      begin
        //必須存在採購單號否則為ZZZZZZZZ
        Active:=false;
        SQL.Clear;
        SQL.Add('Select CGNO from CGZL ');
        SQL.Add('where CGZL.CGNO='''+Sender.Value+''' and CGZL.GSBH='''+main.Edit2.Text+'''  ');
        Active:=true;
        if RecordCount=0 then
        begin
          Sender.Value:='ZZZZZZZZZZ'; //無系統採購單號
        end;
      end;
      Active:=false;
    end;
end;

procedure TEntryTotal.DBGridEh1DblClick(Sender: TObject);
var tmpSuppIDList:TStringlist;
    index:integer;
begin
  if  ENMas.Active then
  begin
    if  (ENMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
      //20230506 Need to key in DOCNO first
      IsAllowSuppID:=false;
      if  CheckSuppID <> '' then
      begin
        tmpSuppIDList:=FuncObj.SplitString(CheckSuppID,',');
        index:=tmpSuppIDList.IndexOf(ENMas.FieldByName('ZSBH').AsString);
        if index>=0 then IsAllowSuppID:=true;
        tmpSuppIDList.Free;
      end else
      begin
        IsAllowSuppID:=false;
      end;
      if ENMas.FieldByName('SFL').Value='THU MUA' then
      begin
        if ((ENMas.FieldByName('HGLB').Value='NK') or (ENMas.FieldByName('HGLB').Value='TC') or (ENMas.FieldByName('HGLB').Value='KD') or (ENMas.FieldByName('HGLB').Value='HD') or (ENMas.FieldByName('HGLB').Value='NQ') or (ENMas.FieldByName('HGLB').Value='NKNQ')
            or (ENMas.FieldByName('HGLB').Value='NK1') or (ENMas.FieldByName('HGLB').Value='TC1') or (ENMas.FieldByName('HGLB').Value='KD1') or (ENMas.FieldByName('HGLB').Value='HD1') or (ENMas.FieldByName('HGLB').Value='H11'))then
        begin
          if ((ENMas.FieldByName('DocNo').Value = '') or ( ENMas.FieldByName('DocNo').IsNull)) then
          begin
            if IsAllowSuppID= false then
            begin
              BD2.Enabled:=false;
              BD3.Enabled:=false;
              BD4.Enabled:=false;
              showmessage('Chua nhap to khai / hoa don');
            end else
            begin
              BD2.Enabled:=true;
              BD3.Enabled:=true;
              BD4.Enabled:=true;
            end;
          end else
          begin
            BD2.Enabled:=true;
            BD3.Enabled:=true;
            BD4.Enabled:=true;
          end;
        end;
      end;
    end else
    begin
      panel6.visible:=false;
      panel1.visible:=true;
    end;
  end;
  //20191115 add condition by A.Son
  if (((NDate-ENMas.FieldByName('InputDate').value)>7) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01')) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if ENMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;   
  if ENMas.FieldByName('USERID').value<>main.Edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if ENMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
end;

procedure TEntryTotal.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if EnMas.cachedupdates then
  begin
    DBX2.BringToFront;
    if (gdfocused in state) then
      begin
        if (DBGridEh1.SelectedField.fieldname=DBX2.datafield) then
          begin
            DBX2.left:=rect.left+DBGridEh1.left;
            DBX2.top:=rect.top+DBGridEh1.Top;
            DBX2.width:=rect.right-rect.left+10;
            DBX2.height:=rect.bottom-rect.top;
            DBX2.visible:=true;
          end
          else
            DBX2.Visible:=false;
      end;
  end
  else
    DBX2.Visible:=false;
  if ENMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.DefaultDrawColumnCell(Rect,datacol,Column,state);
  end;
end;

procedure TEntryTotal.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if  DBGridEh1.SelectedField.FieldName='ZSBH' then
  begin
    BBTT1Click(nil);
  end;
  if  ((DBGridEh1.SelectedField.FieldName='DOCNO')  and ((EnMas.fieldbyname('HGLB').AsString='HD') or (EnMas.fieldbyname('HGLB').AsString='HD1')) ) then
  begin
    EntryList_VATNO1.Kind :='EntryTotal';
    EntryList_VATNO:=TEntryList_VATNO.create(self);
    EntryList_VATNO.Edit2.Text:=EnMas.fieldbyname('ZSBH').AsString;
    EntryList_VATNO.Edit2.Enabled:=false;
    EntryList_VATNO.Button1.Click;
    EntryList_VATNO.show;
  end;
  if  ((DBGridEh1.SelectedField.FieldName='DOCNO')  and ((EnMas.fieldbyname('HGLB').AsString='NK') or (EnMas.fieldbyname('HGLB').AsString='TC') or (EnMas.fieldbyname('HGLB').AsString='KD') or (EnMas.fieldbyname('HGLB').AsString='NQ')
      or (ENMas.FieldByName('HGLB').Value='NKNQ') or (EnMas.fieldbyname('HGLB').AsString='NK1') or (EnMas.fieldbyname('HGLB').AsString='TC1') or (EnMas.fieldbyname('HGLB').AsString='KD1') or (EnMas.fieldbyname('HGLB').AsString='H11'))) then
  begin
    EntryList_Declaration1.Kind :='EntryTotal';
    EntryList_Declaration:=TEntryList_Declaration.create(self);
    EntryList_Declaration.show;
  end;
end;

procedure TEntryTotal.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if KCPK.FieldByName('YN').value='0' then
  begin
    DBGridEh2.canvas.font.color:=clred;
    DBGridEh2.DefaultDrawColumnCell(Rect,datacol,Column,state);
  end;
end;

procedure TEntryTotal.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ENDet.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
    DBGridEh3.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if ENDet.FieldByName('RKNO').isnull then
  begin
    DBGridEh3.canvas.font.color:=clLime;
    DBGridEh3.DefaultDrawColumnCell(Rect,Datacol,Column,state);
  end;
end;

procedure TEntryTotal.DBGridEh3EditButtonClick(Sender: TObject);
var Style,CLBH:string;
begin
 if (DBGridEh3.SelectedField.FieldName='CLBH') then
 begin
    EntryTotal_VN:=TEntryTotal_VN.create(self);
    EntryTotal_VN.EDIT1.text:=EntryTotal.EnMas.fieldbyname('ZSBH').value;
    if not EnMas.fieldbyname('ZSNO').isnull then
      EntryTotal_VN.edit2.Text:=EnMas.fieldbyname('ZSNO').Value
    else
    begin
      showmessage('Pls input CGNO first.');
      abort;
    end;
    EntryTotal_VN.button1click(nil);
    EntryTotal_VN.show;
 end;
 //20241107 chon them STT Hang
 if  (DBGridEh3.SelectedField.FieldName='SOTT')  then
  begin
    EntryList_STT_Hang1.Kind :='EntryTotal';
    EntryList_STT_Hang:=TEntryList_STT_Hang.create(self);
    EntryList_STT_Hang.Edit2.Text:=KCPK.fieldbyname('Declaretion').AsString;
    EntryList_STT_Hang.Edit1.Text:=EnMas.fieldbyname('DOCNO').AsString;
    EntryList_STT_Hang.Button1.Click;
    EntryList_STT_Hang.show;
  end;
 //20170211 add input custom NO
 if ((DBGridEh3.SelectedField.FieldName='CNO') or (DBGridEh3.SelectedField.FieldName='invno')) then
  begin
    if DBGridEh3.SelectedField.FieldName='CNO' then Style:=inputbox('Please Input CNO','CNO:','');
    if DBGridEh3.SelectedField.FieldName='invno' then Style:=inputbox('Please Input invno','Invno:','');
    if Style<>'' then
    begin
      with EntryTotal.ENDet do
      begin
        while not Eof do
        begin
          Edit;
          if CLBH='' then CLBH:=FieldByName('CLBH').AsString;
          if CLBH=FieldByName('CLBH').AsString then
          begin
            if DBGridEh3.SelectedField.FieldName='CNO' then FieldByName('CNO').Value:=Style;
            if DBGridEh3.SelectedField.FieldName='invno' then FieldByName('invno').Value:=Style;
            Next;
          end else
          begin
           break;
          end;
         end;
      end;
    end;
  end;
end;

procedure TEntryTotal.bbnInvoiceClick(Sender: TObject);
begin
  if EntryList_InvoiceModify=nil then
  begin
    EntryList_InvoiceModify:=TEntryList_InvoiceModify.Create(self);
    EntryList_InvoiceModify.FORMID:='SN212';
    EntryList_InvoiceModify.Edit2.Text:=EntryTotal.ENMas.fieldbyname('ZSYWJC').AsString;
    EntryList_InvoiceModify.Button1.Click;
    EntryList_InvoiceModify.Show;
    EntryList_InvoiceModify.windowstate := wsmaximized;
  end else
  begin
    EntryList_InvoiceModify.Show;
  end;
end;

procedure TEntryTotal.BDT7Click(Sender: TObject);
begin
  EntryTotal_EntryTSCD:=TEntryTotal_EntryTSCD.Create(self);
  EntryTotal_EntryTSCD.Show;
end;
{procedure TEntryTotal.CheckDeclaretion();
begin
  with Bdelrec do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select top 1.* from  CGZL_Declaration');
    active:=true;
  end;
  if bdelrec.RecordCount>0 then
  begin
    DBGridEh2.Columns[0].ReadOnly:=true;
  end else
  begin
    DBGridEh2.Columns[0].ReadOnly:=false;
  end;
end;  }

procedure TEntryTotal.KCPKAfterOpen(DataSet: TDataSet);
var tmpSuppIDList:TStringlist;
    index:integer;
begin
  IsAllowSuppID:=false;
  if  CheckSuppID <> '' then
  begin
    tmpSuppIDList:=FuncObj.SplitString(CheckSuppID,',');
    index:=tmpSuppIDList.IndexOf(ENMas.FieldByName('ZSBH').AsString);
    if index>=0 then IsAllowSuppID:=true;
    tmpSuppIDList.Free;
  end else
  begin
    IsAllowSuppID:=false;
  end;
  if ((copy(ENMas.FieldByName('HGLB').AsString,1,2)='NK') or (copy(ENMas.FieldByName('HGLB').AsString,1,2)='TC') or (copy(ENMas.FieldByName('HGLB').AsString,1,2)='HD')
              or (copy(ENMas.FieldByName('HGLB').AsString,1,2)='NQ')  or  (copy(ENMas.FieldByName('HGLB').AsString,1,2)='KD')) then
  begin
     if IsAllowSuppID=false then
     begin
        DBGridEh2.columns[0].ReadOnly:=true;
     end else
     begin
        DBGridEh2.columns[0].ReadOnly:=false;
     end;
  end;
end;

procedure TEntryTotal.ENMasHGLBChange(Sender: TField);
begin
  CheckDocNo();
end;

procedure TEntryTotal.BE1Click(Sender: TObject);
begin
  if ENDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with ENDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BE4.Enabled:=true;
  BE5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TEntryTotal.BE2Click(Sender: TObject);
begin
  if ENDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with ENDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BE4.Enabled:=true;
  BE5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TEntryTotal.BE3Click(Sender: TObject);
begin
  if ENDet.RequestLive then
  begin
    showmessage('Pls save material data first.');
    abort;
  end;
  with ENDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BE4.Enabled:=true;
  BE5.Enabled:=true;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
end;

procedure TEntryTotal.BE4Click(Sender: TObject);
var i:integer;
    Qty:real;
begin
   // 20171227 檢查是否為入庫數量修改是否變成庫存數量負數
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CLBH,Qty,case ');
    SQL.Add('               when (KCRKS.HGLB=''NK'' ) then NK ');
    SQL.Add('               when (KCRKS.HGLB=''TC'' ) then TC ');
    SQL.Add('               when (KCRKS.HGLB=''HD'' ) then HD ');
    SQL.Add('               when (KCRKS.HGLB=''KD'' ) then KD ');
    SQL.Add('               when (KCRKS.HGLB=''XT'' ) then XT ');
    SQL.Add('               when (KCRKS.HGLB=''GC'' ) then GC ');
    SQL.Add('               end as KCQty');
    SQL.Add(' from (');
    SQL.Add('select KCRKS.CLBH,KCRK.HGLB,KCZLS.NK,KCZLS.TC,KCZLS.KD,KCZLS.HD,KCZLS.XT,KCZLS.GC,Sum(KCRKS.Qty) as Qty from KCRKS');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join KCZLS on KCZLS.CKBH=KCRK.CKBH and KCZLS.CLBH=KCRKS.CLBH');
    SQL.Add('where KCRK.RKNO='''+ENMas.FieldByName('RKNO').AsString+''' ');
    SQL.Add('Group by KCRKS.CLBH,KCRK.HGLB,KCZLS.NK,KCZLS.TC,KCZLS.KD,KCZLS.HD,KCZLS.XT,KCZLS.GC ) KCRKS');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  if  CheckHGStock_IsNegative(EnDet.FieldByName('CLBH').AsString,-1*EnDet.FieldByName('Qty').Value)=true then
  begin
    showmessage('Ma vat tu:'+EnDet.FieldByName('CLBH').AsString+' so luong phan loai vat tu nho hon so luong nhap kho');
    Abort;
  end;
  try
    ENDetS.first;
    for i:=1 to ENDetS.RecordCount do
    begin
      case ENDetS.updatestatus of
        usinserted:
        begin
           ENDetS.edit;
           ENDetS.fieldbyname('RKNO').Value:=ENDet.fieldbyname('RKNO').value;
           ENDetS.fieldbyname('CLBH').Value:=ENDet.fieldbyname('CLBH').value;
           ENDetS.fieldbyname('CGBH').Value:='ZZZZZZZZZZ';
           ENDetS.fieldbyname('RKSB').Value:=ENDet.fieldbyname('RKSB').value;
           ENDetS.fieldbyname('Size').Value:='ZZZZZZ';
           ENDetS.FieldByName('userID').Value:=main.edit1.text;
           ENDetS.FieldByName('userdate').Value:=date;
           ENDetS.FieldByName('YN').Value:='1';
           UPDetS.apply(ukinsert);
        end;
        usmodified:
        begin
          if ENDetS.fieldbyname('YN').value='0'then
          begin
            with BDelRec do
            begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('''+'KCRKSS'+''''+','+''''+ENDetS.fieldbyname('RKNO').Value+'''');
              sql.add(','+''''+ENDetS.fieldbyname('CLBH').Value+''''+','+''''+ENDetS.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
            end;
            UPDetS.apply(ukdelete);
          end else
          begin
            ENDetS.edit;
            ENDetS.FieldByName('userID').Value:=main.edit1.text;
            ENDetS.FieldByName('userdate').Value:=date;
            UPDetS.apply(ukmodify);
          end;
        end;
      end;
      ENDetS.next;
    end;
    Query1.Active:=false;
    ENDetS.active:=false;
    ENDetS.cachedupdates:=false;
    ENDetS.requestlive:=false;
    ENDetS.active:=true;
    ENDetS.First;
    Qty:=0;
    while not ENDetS.eof do
    begin
      Qty:=Qty+ENDetS.fieldbyname('Qty').Value;
      ENDetS.next;
    end;

    with ENDet do
    begin
      RequestLive:=true;
      CachedUpdates:=true;
      Edit;
      FieldByName('Qty').Value:=Qty;
      if not ENDet.FieldByName('USPrice').isnull then
      begin
        ENDet.FieldByName('USACC').Value:=ERPTrunc(ENDet.fieldbyname('USPrice').value*ENDet.fieldbyname('Qty').value,-VNPrice_Decimal);
      end;
      if not ENDet.FieldByName('VNPrice').isnull then
      begin
        ENDet.FieldByName('VNACC').Value:=ERPTrunc(ENDet.fieldbyname('VNPrice').value*ENDet.fieldbyname('Qty').value,-VNPrice_Decimal);
      end;
      UpDet.Apply(ukmodify);
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
    end;
    BE4.Enabled:=false;
    BE5.Enabled:=false;
    BD2.Enabled:=true;
    BD3.Enabled:=true;
    BD4.Enabled:=true;
    //20230405 更新KCCLDAY_BDepartment
    Init_KCCLMONTH_BDep(ENMas.FieldByName('RKNO').AsString);    
  except
    On E:Exception do
    begin
      Messagedlg('Have wrong, can not save data!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;
end;

procedure TEntryTotal.BE5Click(Sender: TObject);
begin
  with ENDetS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BE4.Enabled:=false;
  BE5.Enabled:=false;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
end;

end.

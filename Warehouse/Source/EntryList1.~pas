unit EntryList1;
                                                    
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls,math,comobj, Menus, GridsEh, DBGridEh,IniFiles;

type
  TEntryList = class(TForm)
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
    DBGrid3: TDBGridEh;
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
    DBGrid4: TDBGridEh;
    ENDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DS3: TDataSource;
    ENMas: TQuery;
    UpMas: TUpdateSQL;
    Query1: TQuery;
    ENMasRKNO: TStringField;
    ENMasZSBH: TStringField;
    ENMasUSERID: TStringField;
    ENMasUSERDATE: TDateTimeField;
    ENMasYN: TStringField;
    ENMasZSYWJC: TStringField;
    ENDetRKNO: TStringField;
    ENDetCLBH: TStringField;
    ENDetCGBH: TStringField;
    ENDetQty: TCurrencyField;
    ENDetUSPrice: TCurrencyField;
    ENDetCostID: TStringField;
    ENDetUSERID: TStringField;
    ENDetUSERDATE: TDateTimeField;
    ENDetYN: TStringField;
    ENDetYWPM: TStringField;
    ENDetDWBH: TStringField;
    ENDetPaQty: TCurrencyField;
    ENDetUSACC: TCurrencyField;
    ENMasZSNO: TStringField;
    ENMasGSBH: TStringField;
    ENMasCKBH: TStringField;
    ENMasCFMID: TStringField;
    ENMasCFMDATE: TDateTimeField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Check: TCheckBox;
    BDelRec: TQuery;
    ENDetoldQty: TCurrencyField;
    ENDetinvno: TStringField;
    ENMasDOCNO: TStringField;
    ENDetDOCNO: TStringField;
    ENMasMEMO: TStringField;
    ENDetCNO: TStringField;
    Panel5: TPanel;
    DBGridEh1: TDBGridEh;
    Panel7: TPanel;
    BO1: TBitBtn;
    BO2: TBitBtn;
    BO5: TBitBtn;
    BO3: TBitBtn;
    BO4: TBitBtn;
    KCPK: TQuery;
    UpKCPK: TUpdateSQL;
    DSKCPK: TDataSource;
    KCPKPKNO: TStringField;
    KCPKDeclaretion: TStringField;
    KCPKExport: TStringField;
    KCPKUserID: TStringField;
    KCPKUserDate: TDateTimeField;
    KCPKYN: TStringField;
    ENMasHGLB: TStringField;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    ENMasSCNO: TStringField;
    ENDetVNPrice: TCurrencyField;
    ENDetVNACC: TCurrencyField;
    ENDetCWHL: TCurrencyField;
    bbnInvoice: TBitBtn;
    ENMasSFL: TStringField;
    ENDetGSBH: TStringField;
    ENDetRKSB: TStringField;
    ENDetMEMO: TStringField;
    Label9: TLabel;
    CKBHEdit: TEdit;
    Label10: TLabel;
    HGLBEdit: TEdit;
    Label22: TLabel;
    CGNOEdit: TEdit;
    Splitter1: TSplitter;
    pnl4: TPanel;
    btnBE1: TBitBtn;
    btnBE2: TBitBtn;
    btnBE3: TBitBtn;
    btnBE4: TBitBtn;
    btnBE5: TBitBtn;
    DBGrid6: TDBGridEh;
    ENDetS: TQuery;
    strngfldKCLLSSCLBH: TStringField;
    dtmfldKCLLSSUSERDate: TDateTimeField;
    strngfldKCLLSSUSERID: TStringField;
    strngfldKCLLSSYN: TStringField;
    UpdateSQL1: TUpdateSQL;
    DS6: TDataSource;
    ENDetSRKNO: TStringField;
    ENDetSCGBH: TStringField;
    ENDetSRKSB: TStringField;
    ENDetSSIZE: TStringField;
    ENDetSBWBH: TStringField;
    ENDetSQty: TFloatField;
    ENDetRKMEMO: TStringField;
    btnImport: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    procedure DBGrid3DblClick(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
    procedure DBGrid4EditButtonClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ENMasZSNOSetText(Sender: TField; const Text: String);
    procedure ENMasAfterScroll(DataSet: TDataSet);
    procedure BDT6Click(Sender: TObject);
    procedure ENMasAfterOpen(DataSet: TDataSet);
    procedure BO1Click(Sender: TObject);
    procedure BO2Click(Sender: TObject);
    procedure BO5Click(Sender: TObject);
    procedure BO4Click(Sender: TObject);
    procedure BO3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbnInvoiceClick(Sender: TObject);
    procedure DBGrid4SelectionChanged(Sender: TObject);
    procedure btnBE1Click(Sender: TObject);
    procedure btnBE2Click(Sender: TObject);
    procedure btnBE3Click(Sender: TObject);
    procedure btnBE4Click(Sender: TObject);
    procedure btnBE5Click(Sender: TObject);
    procedure ENMasMEMOSetText(Sender: TField; const Text: String);
    procedure btnImportClick(Sender: TObject);
    procedure ENMasHGLBChange(Sender: TField);
    procedure KCPKAfterOpen(DataSet: TDataSet);
  private
    IsHide_Warehouse_XT:string;
    IsHide_Warehouse_SFL:string;
    IsCheck_WH_CostID:string;
    iYear:word;
    AppDir:string;
    { Private declarations }
    function CheckHGStock_IsNegative(CLBH:String;Qty:double):boolean;
    procedure ExportPlanFormatData();
    procedure ExportDefaultData();
    procedure ReadIni();
    procedure UpdateCGZL_YN(CGNOStr:String);
    procedure SetZSNOText(ZSNO:string);
    //procedure CheckDocNo();
    //procedure CheckDeclaretion();

  public
    UserDepID:string;
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_CostID:string;
    WH_CostID_NK:string;
    WH_CostID_HD:string;
    { Public declarations }
    procedure CheckDeclaretion_Insert_Modify();
  end;

var
  EntryList: TEntryList;
  NDate:TDate;

implementation

uses main1, EntryList_Dep1, EntryList_DLG1, Entry_Print1, Entry_PrintTW1,
     EntryList_InvoiceModify1,FunUnit, EntryList_QT1, EntryList_VATNO1,
  EntryList_Declaration1;

{$R *.dfm}

procedure TEntryList.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  IsHide_Warehouse_SFL:='N';
  IsCheck_WH_CostID:='N';
  WH_CostID:='3311';
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_CostID:= MyIni.ReadString('ERP','WH_CostID','');
      WH_CostID_NK:= MyIni.ReadString('ERP','WH_CostID_NK','');
      WH_CostID_HD:= MyIni.ReadString('ERP','WH_CostID_HD','');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      IsHide_Warehouse_SFL:=MyIni.ReadString('ERP','IsHide_Warehouse_SFL','N');
      IsCheck_WH_CostID:= MyIni.ReadString('ERP','IsCheck_WH_CostID','N');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(ENDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(ENDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    DBGrid3.Columns[8].PickList.Clear;
    DBGrid3.Columns[8].PickList.Add('NK');
    DBGrid3.Columns[8].PickList.Add('TC');
    DBGrid3.Columns[8].PickList.Add('HD');
    DBGrid3.Columns[8].PickList.Add('KD');
    DBGrid3.Columns[8].PickList.Add('GC');
  end;
  if IsHide_Warehouse_SFL='Y' then
  begin
    DBGrid3.Columns[9].Visible:=false;
    DBGrid4.Columns[9].Visible:=false;
  end;
end;
{procedure  TEntryList.CheckDocNo();
begin
  with Bdelrec do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select top 1 VATNO  from CGZL_VATNO ');
    sql.Add('union all');
    sql.Add('select top 1 Declaration from CGZL_Declaration');
    active:=true;
  end;
  if (Bdelrec.RecordCount>0) and ((EnMas.FieldByName('HGLB').AsString='NK') or (EnMas.FieldByName('HGLB').AsString='TC') or (EnMas.FieldByName('HGLB').AsString='KD') or (EnMas.FieldByName('HGLB').AsString='HD'))  then
     dbgrid3.columns[4].ReadOnly:=true;
  if  (Bdelrec.RecordCount=0) or ((EnMas.FieldByName('HGLB').AsString<>'') and (EnMas.FieldByName('HGLB').AsString<>'NK') and (EnMas.FieldByName('HGLB').AsString<>'TC') and (EnMas.FieldByName('HGLB').AsString<>'KD')  and (EnMas.FieldByName('HGLB').AsString<>'HD'))  then
     dbgrid3.columns[4].ReadOnly:=false;
end; }

procedure TEntryList.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TEntryList.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TEntryList.Button1Click(Sender: TObject);
begin
  with ENMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC  ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
    sql.add('where KCRK.RKNO like '+''''+edit1.Text+'%'+'''');
    sql.add('      and ZSZL.ZSYWJC like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('      and KCRK.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and ( (KCRK.SB<>''1'' and KCRK.SB<>''2'') or  KCRK.SB is null) ');
    if Edit3.Text<>'' then
      sql.add('      and KCRK.DOCNO like ''%'+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
      sql.add('      and KCRK.MEMO like ''%'+Edit4.Text+'%'' ');
    if Check.Checked then
      sql.Add('      and KCRK.USERID='+''''+main.Edit1.Text+'''');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      SQL.add('           and KCRK.HGLB<>''XT'' ');
    if CKBHEdit.Text<>'' then
      sql.add(' and KCRK.CKBH='''+CKBHEdit.Text+''' ');
    if HGLBEdit.Text<>'' then
      sql.add(' and KCRK.HGLB='''+HGLBEdit.Text+''' ');
    if CGNOEdit.Text<>'' then
      sql.add(' and KCRK.ZSNO='''+CGNOEdit.Text+''' ');
    sql.add('order by RKNO Desc');
//    showmessage(SQL.Text);
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

procedure TEntryList.FormCreate(Sender: TObject);
var i:integer;
    y,m,d:word;
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    decodedate(NDate,y,m,d);
    iYear:=y;
    sql.Clear;
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
    begin
        DBGrid3.Columns[7].picklist.add(fieldbyname('CKBH').asstring);
        next;
    end;
    active:=false;
    //
    sql.Clear;
    sql.add('select DepID from BUsers where UserID='''+main.Edit1.Text+''' ');
    Active:=true;
    UserDepID:=fieldbyname('DepID').AsString;
    active:=false;
    //
    sql.Clear;
    sql.add('select  GSDH from Bgszl where SFL in (''GC'',''DC'',''PD'',''RB'')');
    sql.add('order by GSDH ');
    active:=true;
    for i:=1 to recordcount do
    begin
      DBGrid4.Columns[9].picklist.add(fieldbyname('GSDH').asstring);
      next;
    end;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-2;
  DTP2.date:=date;
  //20150728 export excel
  AppDir:=ExtractFilePath(Application.ExeName);
  ReadIni();
end;

procedure TEntryList.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryList.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryList.BB2Click(Sender: TObject);
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
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryList.BB3Click(Sender: TObject);
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
      end else
      begin
          showmessage('It is not yours,can not delete.');
      end;
    end;
  end else
  begin
    showmessage('Pls delete the Entry Detail first.')
  end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryList.BB4Click(Sender: TObject);
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
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[6].ButtonStyle:=cbsEllipsis;
  dbgrid3.columns[4].ButtonStyle:=cbsEllipsis;
end;

//20211016 已入庫鎖採購單不能修改 CGZL.YN=5
procedure TEntryList.UpdateCGZL_YN(CGNOStr:String);
begin
  if CGNOStr<>'' then
  begin
    with Query1 do
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

procedure TEntryList.BB5Click(Sender: TObject);
var y,m,a,oldHGLB, CGNOStr:string;
    i:integer;
begin

    // Check if have already delivery at KCRKCX table
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select * from (');
      SQL.Add('select KCRKS.CLBH,KCRK.HGLB,KCZLS.NK,KCZLS.TC,KCZLS.KD,KCZLS.HD,KCZLS.XT,KCZLS.GC,Sum(KCRKS.Qty) as Qty from KCRKS');
      SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('left join KCZLS on KCZLS.CKBH=KCRK.CKBH and KCZLS.CLBH=KCRKS.CLBH');
      SQL.Add('where KCRK.RKNO='''+ENMas.FieldByName('RKNO').AsString+''' ');
      SQL.Add('Group by KCRKS.CLBH,KCRK.HGLB,KCZLS.NK,KCZLS.TC,KCZLS.KD,KCZLS.HD,KCZLS.XT,KCZLS.GC ) KCRKS');
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
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  if length(m)<2 then
    m:='0'+m;

  try
    CGNOStr:='';
    ENDet.Active:=false;
    ENMas.first;
    for i:=1 to ENMas.RecordCount do
      begin
        case ENMas.updatestatus of
          usinserted:
            begin
                if ENMas.fieldbyname('HGLB').AsString='' then
                begin
                  Showmessage('Xin Chon HGLB');
                  abort;
                end;
                if ENMas.fieldbyname('ZSBH').isnull then
                begin
                  ENMas.delete;
                end else
                begin
                       with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select RKNO from KCRK where RKNO like '+''''+y+m+'%'+'''');
                         sql.add('order by RKNO');
                         active:=true;
                         if recordcount >0 then
                         begin
                           last;
                           a:=fieldbyname('RKNO').AsString;
                           a:=copy(a,7,5);
                           a:=inttostr(strtoint(a)+1);
                           while length(a)<5 do
                           begin
                             a:='0'+a;
                           end;
                         end else
                         begin
                           a:='00001';
                         end;
                         a :=y+m+a;
                         active:=false;
                         sql.Clear;
                       end;
                     ENMas.edit;
                     ENMas.fieldbyname('RKNO').Value:=a;
                     if EnMas.FieldByName('ZSNO').AsString='' then ENMas.fieldbyname('ZSNO').Value:='ZZZZZZZZZZ';
                     ENMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     ENMas.FieldByName('userID').Value:=main.edit1.text;
                     ENMas.FieldByName('userdate').Value:=Ndate;
                     ENMas.FieldByName('CFMID').Value:='NO';
                     ENMas.FieldByName('YN').Value:='1';
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
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'KCRK'+''''+','+''''+EnMas.fieldbyname('RKNO').Value+'''');
                    sql.add(','+''''+''+''''+','+''''+EnMas.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  CGNOStr:=CGNOStr+''''+ENMas.fieldbyname('ZSNO').Value+''',';
                  CGNOStr:=CGNOStr+''''+ENMas.fieldbyname('ZSNO').OldValue+''',';
                  upMas.apply(ukdelete);
                end else
                begin
                    if (ENMas.FieldByName('CFMID').value='NO')   then
                    begin
                        if NDate-ENMas.FieldByName('userdate').Value<=3  then
                        begin
                            if  ENMas.FieldByName('userID').Value=main.Edit1.Text then
                            begin
                                ENMas.edit;
                                ENMas.FieldByName('userID').Value:=main.edit1.text;
                                ENMas.FieldByName('userdate').Value:=Ndate;
                                if EnMas.fieldbyname('HGLB').OldValue=NULL then OldHGLB:='' else OldHGLB:= EnMas.fieldbyname('HGLB').OldValue;
                                with BDelRec do
                                begin
                                  active:=false;
                                  sql.Clear;
                                  sql.add('insert into BDelRec ');
                                  sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                                  sql.add('values ('+''''+'KCRK_MOD'+''''+','+''''+EnMas.fieldbyname('RKNO').Value+'''');
                                  sql.add(','+''''+OldHGLB+'**'+EnMas.fieldbyname('HGLB').Value+''''+','+''''+EnMas.fieldbyname('USERID').Value+''''+',');
                                  sql.add(''''+main.Edit1.Text+''''+',getdate())');
                                  execsql;
                                  active:=false;
                                end;
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
    dbgrid3.columns[1].ButtonStyle:=cbsnone;
    dbgrid3.columns[6].ButtonStyle:=cbsnone;
    dbgrid3.columns[4].ButtonStyle:=cbsnone;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;
procedure TEntryList.CheckDeclaretion_Insert_Modify();
begin
  with bdelrec do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select RKNO,isnull(KCPK.Declaretion,'''') as KCPK_Declaretion,isnull(CGZL_Declaration.Declaration,'''') as Declaration');
    sql.Add('from kcrk left join kcpk on kcrk.RKNO=kcpk.PKNO');
    sql.Add('left join CGZL_Declaration on kcrk.DOCNO=CGZL_Declaration.Docno');
    sql.Add('where HGLB in (''NK'',''TC'',''KD'') and KCRK.RKNO='''+ENMas.FieldByName('RKNO').AsString+'''');
    sql.Add('group by RKNO,isnull(KCPK.Declaretion,''''),isnull(CGZL_Declaration.Declaration,'''')');
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
        sql.Add('insert KCPK(PKNO,Declaretion,UserID,UserDate,YN) values('''+ENMas.FieldByName('RKNO').AsString+''','''+bdelrec.FieldByName('Declaration').AsString+''','''+main.edit1.text+''',getdate(),1)');
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
        sql.Add('set Declaretion='''+bdelrec.FieldByName('Declaration').AsString+''',userid='''+main.Edit1.Text+''' ,userdate=getdate()');
        sql.Add('where PKNO='''+ENMas.FieldByName('RKNO').AsString+'''');
        execsql;
        active:=false;
      end;
    end;
  end;
end;

procedure TEntryList.BD2Click(Sender: TObject);
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
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[7].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[8].ButtonStyle:=cbsEllipsis;
  //20140418欄位為key允許新增
  dbgrid4.columns[5].ReadOnly:=false;
  dbgrid4.columns[6].ReadOnly:=false;
//
end;

procedure TEntryList.BD3Click(Sender: TObject);
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
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryList.BD4Click(Sender: TObject);
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
  dbgrid4.columns[0].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[7].ButtonStyle:=cbsEllipsis;
  dbgrid4.columns[8].ButtonStyle:=cbsEllipsis;
  //20140418欄位為key允許新增
  dbgrid4.columns[5].ReadOnly:=true;
  dbgrid4.columns[6].ReadOnly:=true;
  //
end;
//20171227 檢查是否為入庫數量修改是否變成庫存數量負數
function TEntryList.CheckHGStock_IsNegative(CLBH:String;Qty:double):boolean;
var iRes:boolean;
begin
  if Query1.locate('CLBH',CLBH,[])=true then
  begin
    if (Query1.FieldByName('KCQty').Value+Qty)>=0 then iRes:=false else iRes:=true;
  end else
  begin
    if Qty>=0 then iRes:=false else iRes:=true;
  end;
  result:=iRes;
end;
procedure TEntryList.BD5Click(Sender: TObject);
var i,j:integer;
    GSBH:string;
begin

  //202204 Kevin 檢查允收比率  Check if Accept
  with ENDet do
  begin
    first;
    while not ENDet.Eof do
    begin
      if ENDet.FieldByName('YN').Value <> '0' then begin
        if (ENDet.FieldByName('Qty').IsNull) or (ENDet.FieldByName('Qty').Value <=0) then begin
          showmessage('The Qty can not be empty or <=0.');
          abort;
        end;
        if ENMas.FieldByName('ZSNO').AsString = 'ZZZZZZZZZZ' then
        else if copy(ENDet.FieldByName('CLBH').Value,1,1) = 'V' then begin
          Query1.Active := false;
          Query1.SQL.Clear;
          Query1.SQL.Add('Select Acceptance from CLZL_Acceptance where Main_Category = '''+copy(ENDet.FieldByName('CLBH').Value,1,1)+'''');
          Query1.SQL.Add('and LOW_QTY <= '+ENDet.FieldByName('Qty').AsString+' and HIGH_QTY >= '+ENDet.FieldByName('Qty').AsString+'');
          Query1.SQL.Add('and Unit = '''+ENDet.FieldByName('DWBH').AsString+'''  and GSBH='''+main.Edit2.text+'''');
          Query1.Active := true;
          if Query1.RecordCount > 0 then begin
            if strtofloat(formatfloat('0.00',(ENDet.FieldByName('Qty').Value / ENDet.FieldByName('PaQty').Value))) > Query1.FieldByName('Acceptance').Value then begin
              showmessage('The Qty can not > ' + ENDet.FieldByName('PaQty').AsString + ' * ' + Query1.FieldByName('Acceptance').AsString);
              abort;
            end;
          end
          else begin
            Query1.Active := false;
            Query1.SQL.Clear;
            Query1.SQL.Add('Select Acceptance from CLZL_Acceptance where Main_Category = '''+copy(ENDet.FieldByName('CLBH').Value,1,1)+'''');
            Query1.SQL.Add('and LOW_QTY <= '+ENDet.FieldByName('Qty').AsString+' and HIGH_QTY >= '+ENDet.FieldByName('Qty').AsString+' and GSBH='''+main.Edit2.text+'''');
            Query1.Active := true;
            if strtofloat(formatfloat('0.00',(ENDet.FieldByName('Qty').Value / ENDet.FieldByName('PaQty').Value))) > Query1.FieldByName('Acceptance').Value then begin
              showmessage('The Qty can not > ' + ENDet.FieldByName('PaQty').AsString + ' * ' + Query1.FieldByName('Acceptance').AsString);
              abort;
            end;
          end;
        end
        else if copy(ENDet.FieldByName('CLBH').Value,1,1) <> 'U' then begin
          Query1.Active := false;
          Query1.SQL.Clear;
          Query1.SQL.Add('Select Acceptance from CLZL_Acceptance where CLBH = '''+ENDet.FieldByName('CLBH').Value+'''');
          Query1.SQL.Add('and LOW_QTY <= '+ENDet.FieldByName('Qty').AsString+' and HIGH_QTY >= '+ENDet.FieldByName('Qty').AsString+' and GSBH='''+main.Edit2.text+'''');
          Query1.Active := true;
          if Query1.RecordCount > 0 then begin
            if strtofloat(formatfloat('0.00',(ENDet.FieldByName('Qty').Value / ENDet.FieldByName('PaQty').Value))) > Query1.FieldByName('Acceptance').Value then begin
              showmessage('The Qty can not > ' + ENDet.FieldByName('PaQty').AsString + ' * ' + Query1.FieldByName('Acceptance').AsString);
              abort;
            end;
          end
          else begin
            Query1.Active := false;
            Query1.SQL.Clear;
            Query1.SQL.Add('Select Acceptance from CLZL_Acceptance where Main_Category = '''+copy(ENDet.FieldByName('CLBH').Value,1,1)+'''');
            Query1.SQL.Add('and LOW_QTY <= '+ENDet.FieldByName('Qty').AsString+' and HIGH_QTY >= '+ENDet.FieldByName('Qty').AsString+' and GSBH='''+main.Edit2.text+'''');
            Query1.Active := true;
            if strtofloat(formatfloat('0.00',(ENDet.FieldByName('Qty').Value / ENDet.FieldByName('PaQty').Value))) > Query1.FieldByName('Acceptance').Value then begin
              showmessage('The Qty can not > ' + ENDet.FieldByName('PaQty').AsString + ' * ' + Query1.FieldByName('Acceptance').AsString);
              abort;
            end;
          end;
        end;
      end;
      Next;
    end;
  end;
  // 20171227 檢查是否為入庫數量修改是否變成庫存數量負數
  with Query1 do
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
    Active:=true;
  end;
  //
  try
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
                    if EnMas.FieldByName('USERID').value=main.Edit1.Text then
                      begin
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
                        ENDet.fieldbyname('Qty').Value:=formatfloat('#,##0.##',ENDet.fieldbyname('Qty').Value);
                        //ENDet.FieldByName('CostID').Value:='331';
                        if IsCheck_WH_CostID='Y' then
                        begin
                          if ((EnMas.FieldByName('HGLB').Value='NK') or (EnMas.FieldByName('HGLB').Value='TC') or (EnMas.FieldByName('HGLB').Value='KD')) then
                          begin
                            ENDet.FieldByName('CostID').Value:=WH_CostID_NK;
                          end else if (EnMas.FieldByName('HGLB').Value='HD')then
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
                        ENDet.FieldByName('userID').Value:=main.edit1.text;
                        ENDet.FieldByName('userdate').Value:=NDate;
                        ENDet.FieldByName('YN').Value:='1';
                        //
                        if ((enmas.FieldByName('ZSNO').IsNull) or  (enmas.FieldByName('ZSNO').AsString='')) then
                          endet.FieldByName('DocNo').Value:='ZZZZZZZZZZ'
                        else
                          endet.FieldByName('DocNo').Value:=enmas.FieldByName('ZSNO').Value;
                        //
                        {等品保程式好了這一段要封起來}
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
                        {-------------------------}
                        //20170214 add insert CLZL_Dev.CNO
                         if not EnDet.FieldByName('CNO').IsNull then
                         begin
                          with BDelRec do
                          begin
                            active:=false;
                            sql.Clear;
                            // insert
                            if (EnMas.FieldByName('HGLB').Value='NK')  then
                            begin
                              sql.Add('IF NOT EXISTS (Select * from CLHG where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                              SQL.Add('Begin ');
                              SQL.Add('Insert into CLHG (CLBH, HGBH, USERID, USERDATE, YN)');
                              SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                              SQl.Add('End ');
                            end;

                            if (EnMas.FieldByName('HGLB').Value='TC')  then
                            begin
                              sql.Add('IF NOT EXISTS (Select * from CLTC where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                              SQL.Add('Begin ');
                              SQL.Add('Insert into CLTC (CLBH, HGBH, USERID, USERDATE, YN)');
                              SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                              SQl.Add('End ');
                            end;

                            if EnMas.FieldByName('HGLB').Value='HD' then
                            begin
                              sql.Add('IF NOT EXISTS (Select * from CLHD where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                              SQL.Add('Begin ');
                              SQL.Add('Insert into CLHD (CLBH, HGBH, USERID, USERDATE, YN)');
                              SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                              SQl.Add('End ');
                            end;

                            if EnMas.FieldByName('HGLB').Value='KD' then
                            begin
                              sql.Add('IF NOT EXISTS (Select * from CLKD where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                              SQL.Add('Begin ');
                              SQL.Add('Insert into CLKD (CLBH, HGBH, USERID, USERDATE, YN)');
                              SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                              SQl.Add('End ');
                            end;

                            if SQl.Text<>'' then ExecSQL();
                          end;
                         end;
                         upDet.apply(ukinsert);
                      end else
                      begin
                        showmessage('It is not yours, can not modify.');
                      end;
              end;
            end;
          usmodified:
             begin
               if EnMas.FieldByName('USERID').value=main.Edit1.Text then
                 begin
                  if ENDet.fieldbyname('YN').value='0'then
                    begin
                          {等品保程式好了這一段要封起來}
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
                          {---------------------------------}
                          with BDelRec do
                          begin
                              active:=false;
                              sql.Clear;
                              sql.add('insert into BDelRec ');
                              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                              sql.add('values ('''+'KCRKS'+''''+','+''''+EnDet.fieldbyname('RKNO').Value+'''');
                              sql.add(','''+Endet.fieldbyname('CLBH').Value+''''+','''+EnDet.fieldbyname('USERID').Value+''',');
                              sql.add(''''+main.Edit1.Text+''''+',getdate())');
                              execsql;
                              active:=false;
                          end;
                          if  CheckHGStock_IsNegative(EnDet.FieldByName('CLBH').AsString,-1*EnDet.FieldByName('Qty').OldValue)=false then
                              UpDet.apply(ukdelete)
                          else
                          begin
                              showmessage('Ma vat tu:'+EnDet.FieldByName('CLBH').AsString+' so luong phan loai vat tu nho hon so luong nhap kho');
                              Abort;
                          end;

                    end
                    else
                      begin
                        ENDet.edit;
                        if not ENDet.FieldByName('USPrice').isnull then
                          begin
                            ENDet.FieldByName('USACC').Value:=roundto(ENDet.FieldByName('USPrice').Value*ENDet.FieldByName('Qty').Value,-2);
                          end;
                        if not ENDet.FieldByName('VNPrice').isnull then
                          begin
                            ENDet.FieldByName('VNACC').Value:=roundto(ENDet.FieldByName('VNPrice').Value*ENDet.FieldByName('Qty').Value,0);
                          end;
                        ENDet.fieldbyname('Qty').Value:=formatfloat('#,##0.##',ENDet.fieldbyname('Qty').Value);
                        ENDet.FieldByName('userID').Value:=main.edit1.text;
                        ENDet.FieldByName('userdate').Value:=NDate;
                         //
                        if ((enmas.FieldByName('ZSNO').IsNull) or  (enmas.FieldByName('ZSNO').AsString='')) then
                          endet.FieldByName('DocNo').Value:='ZZZZZZZZZZ'
                        else
                           endet.FieldByName('DocNo').Value:=enmas.FieldByName('ZSNO').Value;
                        //
                        {等品保程式好了這一段要封起來}
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
                        {------------------------------------}
                        //20170214 add insert CLZL_Dev.CNO
                        if not EnDet.FieldByName('CNO').IsNull then
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
                            if EnMas.FieldByName('HGLB').Value='HD' then
                            begin
                              sql.Add('IF NOT EXISTS (Select * from CLHD where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                              SQL.Add('Begin ');
                              SQL.Add('Insert into CLHD (CLBH, HGBH, USERID, USERDATE, YN)');
                              SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                              SQl.Add('End ');
                            end;
                            if EnMas.FieldByName('HGLB').Value='KD' then
                            begin
                              sql.Add('IF NOT EXISTS (Select * from CLKD where CLBH='''+EnDet.FieldByName('CLBH').Value+''')');
                              SQL.Add('Begin ');
                              SQL.Add('Insert into CLKD (CLBH, HGBH, USERID, USERDATE, YN)');
                              SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+EnDet.FieldByName('CNO').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
                              SQl.Add('End ');
                            end;
                            if SQl.Text<>'' then ExecSQL();
                          end;
                        end;
                        //20171227檢查入庫數量修改是否影響庫存變負數
                        if  CheckHGStock_IsNegative(EnDet.FieldByName('CLBH').AsString,EnDet.FieldByName('Qty').Value-EnDet.FieldByName('Qty').OldValue)=false then
                        begin
                            if ENDetS.RecordCount>0 then
                            begin
                               if DBGrid6.getfootervalue(0,DBGrid6.columns[1])<>ENDet.FieldByName('Qty').Value then
                               begin
                                 Showmessage('Qty need to the same Size Qty');
                                 break;
                               end;
                            end;
                            upDet.apply(ukmodify)
                        end else
                        begin
                            showmessage('Ma vat tu:'+EnDet.FieldByName('CLBH').AsString+' so luong phan loai vat tu nho hon so luong nhap kho');
                            Abort;
                        end;
                    end;
                 end else
                 begin
                   showmessage(' It is not yours, can not modify.');
                 end;
             end;
        end;
        ENDet.next;
      end;
    // update GSBH
    with Bdelrec do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select GSBH from kcrks where rkno='''+Endet.fieldbyname('RKNO').AsString+'''');
      active:=true;
      if (recordcount > 0) and (Bdelrec.fieldbyname('GSBH').AsString<>'') then
      begin
        with query1 do
        begin
          active:=false;
          sql.Clear;
          sql.Add('update kcrks set GSBH='''+Bdelrec.fieldbyname('GSBH').AsString+''' where rkno='''+Endet.fieldbyname('RKNO').AsString+'''');
          //funcobj.WriteErrorLog(sql.Text);
          ExecSQL();
        end;
      end;
    end;
    //
    Query1.Active:=false;
    ENDet.active:=false;
    ENDet.cachedupdates:=false;
    ENDet.requestlive:=false;
    ENDet.active:=true;
    bb6.enabled:=false;
    BBTT2.Visible:=false;
    BD5.Enabled:=false;
    BD6.Enabled:=false;
    dbgrid4.columns[0].ButtonStyle:=cbsNone;
    dbgrid4.columns[7].ButtonStyle:=cbsNone;
    dbgrid4.columns[8].ButtonStyle:=cbsNone;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TEntryList.BD6Click(Sender: TObject);
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
  dbgrid4.columns[0].ButtonStyle:=cbsNone;
  dbgrid4.columns[7].ButtonStyle:=cbsNone;
  dbgrid4.columns[8].ButtonStyle:=cbsNone;
end;

procedure TEntryList.BBT1Click(Sender: TObject);
begin
  ENMas.First;
end;

procedure TEntryList.BBT2Click(Sender: TObject);
begin
  ENMas.Prior;
end;

procedure TEntryList.BBT3Click(Sender: TObject);
begin
  ENMas.Next;
end;

procedure TEntryList.BBT4Click(Sender: TObject);
begin
  ENMas.Last;
end;

procedure TEntryList.BDT1Click(Sender: TObject);
begin
  ENDet.First;
end;

procedure TEntryList.BDT2Click(Sender: TObject);
begin
  ENDet.Prior;
end;

procedure TEntryList.BDT3Click(Sender: TObject);
begin
  ENDet.Next;
end;

procedure TEntryList.BDT4Click(Sender: TObject);
begin
  ENDet.Last;
end;

procedure TEntryList.ENDetAfterOpen(DataSet: TDataSet);
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
  btnImport.Enabled:=true;
  btnBE1.Enabled:=true;
  btnBE2.Enabled:=true;
  btnBE3.Enabled:=true;
  if (((NDate-ENMas.FieldByName('USERDATE').value)>7) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01')) then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnImport.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
  end;
  if ENMas.FieldByName('CFMID').value<>'NO'  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnImport.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
  end;
  if ENMas.FieldByName('USERID').value<>main.Edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnImport.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
  end;
  if ENMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
    btnImport.Enabled:=false;
    btnBE1.Enabled:=false;
    btnBE2.Enabled:=false;
    btnBE3.Enabled:=false;
  end;
end;

procedure TEntryList.PC1Change(Sender: TObject);
begin
  if PC1.ActivePage=TS4 then
  begin
    panel6.visible:=true;
    panel1.visible:=false;
    if ((ENMas.FieldByName('HGLB').Value='NK') or (ENMas.FieldByName('HGLB').Value='TC') or (ENMas.FieldByName('HGLB').Value='KD'))then
    begin
      if ((ENMas.FieldByName('DocNo').Value <> '') and (not ENMas.FieldByName('DocNo').IsNull)) then
      begin
        if KCPK.RecordCount = 0 then
        begin
          BD2.Enabled:=false;
          BD3.Enabled:=false;
          BD4.Enabled:=false;
          showmessage('Chua nhap to khai.');
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
  end else
  begin
    panel6.visible:=false;
    panel1.visible:=true;
  end;

  if (((NDate-ENMas.FieldByName('USERDATE').value)>7) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01')) then
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

procedure TEntryList.DBGrid3DblClick(Sender: TObject);
begin
  if  ENMas.Active then
  begin
    if  (ENMas.recordcount>0) then
    begin
      PC1.ActivePage:=TS4;
      panel1.Visible:=false;
      panel6.Visible:=true;
      if ((ENMas.FieldByName('HGLB').Value='NK') or (ENMas.FieldByName('HGLB').Value='TC') or  (ENMas.FieldByName('HGLB').Value='KD'))then
      begin
        if ((ENMas.FieldByName('DocNo').Value <> '') and (not ENMas.FieldByName('DocNo').IsNull)) then
        begin
          if KCPK.RecordCount = 0 then
          begin
            BD2.Enabled:=false;
            BD3.Enabled:=false;
            BD4.Enabled:=false;
            showmessage('Chua nhap to khai.');
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
  end;
  //20191115 add condition by A.Son
  if (((NDate-ENMas.FieldByName('USERDATE').value)>7) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01')) then
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

procedure TEntryList.BB6Click(Sender: TObject);
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
  dbgrid3.columns[1].ButtonStyle:=cbsnone;
  dbgrid3.columns[6].ButtonStyle:=cbsnone;
  dbgrid3.columns[4].ButtonStyle:=cbsnone;
end;

procedure TEntryList.BBTT1Click(Sender: TObject);
begin
  EntryList_Dep:=TEntryList_Dep.create(self);
  EntryList_Dep.show;
end;

procedure TEntryList.DBGrid3EditButtonClick(Sender: TObject);
var SCNO:String;
    i:integer;
begin
  if  DBGrid3.SelectedField.FieldName='ZSBH' then
  begin
    BBTT1Click(nil);
  end;
  if  DBGrid3.SelectedField.FieldName='SCNO' then
  begin
    SCNO:=inputbox('Please Input MA NHAP KHO','MA NHAP KHO:','');
    if SCNO<>'' then
    begin
      with ENMas do
      begin
        for i:=0 to ENMas.RecordCount-1 do
        begin
          Edit;
          FieldByName('SCNO').AsString:=SCNO;
          Post;
          Next;
        end;
      end;
    end;
  end;
  if  ((DBGrid3.SelectedField.FieldName='DOCNO')  and (EnMas.fieldbyname('HGLB').AsString='HD')) then
  begin
    EntryList_VATNO1.Kind :='EntryList';
    EntryList_VATNO:=TEntryList_VATNO.create(self);
    EntryList_VATNO.Edit2.Text:=EnMas.fieldbyname('ZSBH').AsString;
    EntryList_VATNO.Edit2.Enabled:=false;
    EntryList_VATNO.Button1.Click;
    EntryList_VATNO.show;
  end;
  if  ((DBGrid3.SelectedField.FieldName='DOCNO')  and ((EnMas.fieldbyname('HGLB').AsString='NK') or (EnMas.fieldbyname('HGLB').AsString='TC') or (EnMas.fieldbyname('HGLB').AsString='KD'))  ) then
  begin
    EntryList_Declaration1.Kind :='EntryList';
    EntryList_Declaration:=TEntryList_Declaration.create(self);
    EntryList_Declaration.show;
  end;
end;

procedure TEntryList.BBTT2Click(Sender: TObject);
begin
  if  EnMas.FieldByName('SFL').Value='THU MUA' then
  begin
    EntryList_DLG:=TEntryList_DLG.create(self);
    EntryList_DLG.show;
  end else if  EnMas.FieldByName('SFL').Value='THU HOI' then
  begin
    EntryList_QT :=TEntryList_QT.create(self);
    EntryList_QT.TS1.TabVisible:=false;
    EntryList_QT.DBGridEh1.Visible:=false;
    EntryList_QT.show;
  end;
end;

procedure TEntryList.BDT5Click(Sender: TObject);
begin
  if ENDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    if messagedlg('TW format or normal?',mtinformation,[mbYes,mbNo],0)=mrYes then
    begin
      Entry_PrintTW:=TEntry_PrintTW.create(self);
      Entry_PrintTW.quickrep1.prepare;
      Entry_PrintTW.quickrep1.preview;
      Entry_PrintTW.free;
    end else
    begin
      Entry_Print:=TEntry_Print.Create(nil);
      Entry_Print.quickrep1.prepare;
      Entry_Print.Qpage1.caption:=inttostr(Entry_Print.quickrep1.QRPrinter.pagecount);
      Entry_Print.quickrep1.preview;
      Entry_Print.Free;
    end;
  end;
end;

procedure TEntryList.DBGrid4EditButtonClick(Sender: TObject);
var Style, CLBH:String;
    i:integer;
begin
 if (DBGrid4.SelectedField.FieldName='CLBH') then
 begin
   EntryList_DLG:=TEntryList_DLG.create(self);
   EntryList_DLG.show;
 end;
 //20170211 add input custom NO
 if ((DBGrid4.SelectedField.FieldName='CNO') or (DBGrid4.SelectedField.FieldName='invno')) then
  begin
    if DBGrid4.SelectedField.FieldName='CNO' then
    begin
      if EnMas.FieldByName('HGLB').Value='KD' then
      begin
        with Query1 do
        begin
          active:=false;
          sql.Clear;
          sql.add('select HGBH from CLKD');
          sql.add('where CLBH='''+ENDet.FieldByName('CLBH').AsString+''' ');
          sql.add('order by HGBH ');
          active:=true;
        end;
        if query1.RecordCount>0 then
        begin
          Style:=inputbox('Please Input CNO','CNO:',''+query1.fieldbyname('HGBH').asstring+'');
        end else
          Style:=inputbox('Please Input CNO','CNO:','');
      end else
        Style:=inputbox('Please Input CNO','CNO:','');
    end;

    if DBGrid4.SelectedField.FieldName='invno' then Style:=inputbox('Please Input invno','Invno:','');
    if Style<>'' then
    begin
      with EntryList.ENDet do
      begin
        while not Eof do
        begin
          Edit;
          if CLBH='' then CLBH:=FieldByName('CLBH').AsString;
          if CLBH=FieldByName('CLBH').AsString then
          begin
            if DBGrid4.SelectedField.FieldName='CNO' then FieldByName('CNO').Value:=Style;
            if DBGrid4.SelectedField.FieldName='invno' then FieldByName('invno').Value:=Style;
          end;
          Next;
      end;
    end;
  end;
 end;
end;

procedure TEntryList.FormDestroy(Sender: TObject);
begin
  EntryList:=nil;
end;

procedure TEntryList.bbt6Click(Sender: TObject);
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
    EnDet.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal:='@';
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

procedure TEntryList.DBGrid3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ENMas.FieldByName('YN').value='0' then
  begin
    dbgrid3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryList.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if ENDet.FieldByName('YN').value='0' then
  begin
    dbgrid4.canvas.font.color:=clred;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

 if ENDet.FieldByName('RKNO').isnull then
  begin
    dbgrid4.canvas.font.color:=clLime;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryList.SetZSNOText(ZSNO:string);
begin
  //20150523修改區分開發採購入庫廠別
  with Query1 do
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
      SQL.Add('where CGZL.CGNO='''+ZSNO+''' and CGZL.GSBH='''+main.Edit2.Text+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      if RecordCount>0 then
      begin
        ENMas.Edit;
        ENMas.FieldByName('ZSBH').Value:=Query1.FieldByName('ZSDH').Value;
        ENMas.FieldByName('ZSYWJC').Value:=Query1.FieldByName('ZSYWJC').Value;
        ENMas.FieldByName('hglb').Value:=Query1.FieldByName('hglb').Value;
        ENMas.Post;
      end else
      begin
        //必須存在採購單號否則為ZZZZZZZZ
        Active:=false;
        SQL.Clear;
        SQL.Add('Select CGNO from CGZL ');
        SQL.Add('where CGZL.CGNO='''+ZSNO+''' and CGZL.GSBH='''+main.Edit2.Text+'''  ');
        Active:=true;
        if RecordCount=0 then
        begin
          ENMas.Edit;
          ENMas.FieldByName('ZSNO').Value:='ZZZZZZZZZZ'; //無系統採購單號
          ENMas.Post;
        end;
      end;
      Active:=false;
    end;
end;
procedure TEntryList.ENMasMEMOSetText(Sender: TField; const Text: String);
begin
  Sender.Value:=Text;
  if length(Sender.Value)=11 then //領料單號
  begin
    with Query1 do
    begin
        Active:=false;
        SQL.Clear;
        Query1.SQL.Add('Select top 1 KCLLS.Memo from KCLLS,KCLL where KCLL.LLNO=KCLLS.LLNO and KCLLS.LLNO='''+Sender.Value+''' and KCLL.GSBH='''+main.Edit2.Text+''' ');
        funcObj.WriteErrorLog(sql.Text);
        Active:=true;
        if FieldByName('Memo').AsString<>'' then
        begin
          ENMas.Edit;
          ENMas.FieldByName('ZSNO').Value := FieldByName('Memo').AsString;
          ENMas.Post;
        end;
        Active:=false;
    end;
    if ENMas.FieldByName('ZSNO').AsString<>'' then
    SetZSNOText(ENMas.FieldByName('ZSNO').AsString);
  end;
end;
procedure TEntryList.ENMasZSNOSetText(Sender: TField; const Text: String);
begin
  Sender.Value:=Text;
  SetZSNOText(Sender.Value);
end;

procedure TEntryList.ENMasAfterScroll(DataSet: TDataSet);
var i:integer;
begin

  // check input to khai
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
  //CheckDocNo();
  KCPK.Active:=true;

end;

procedure TEntryList.BDT6Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Export Plan Department Format?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      ExportPlanFormatData();
    end else
    begin
      ExportDefaultData();
    end;
end;
procedure TEntryList.ExportDefaultData();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Endet.active  then
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
          for   i:=0   to   Endet.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=Endet.fields[i].FieldName;
            end;

          Endet.First;
          j:=2;
          while   not   Endet.Eof   do
            begin
              for   i:=0   to  Endet.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Endet.Fields[i].Value;
              end;
            Endet.Next;
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
procedure TEntryList.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    i,j,k,Voffset,Hoffset,index:integer;
begin
  if FileExists(AppDir+'Additional\phieunhapkho.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\phieunhapkho.xls'),Pchar(AppDir+'Additional\phieunhapkho.xls'),false);
   end;

   if FileExists(AppDir+'Additional\phieunhapkho.xls') then
   begin
   if  Endet.active  then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\phieunhapkho.xls');
          eclApp.WorkSheets[1].Activate;
          //
          eclApp.Cells(3,3):=EnMas.FieldByName('ZSYWJC').Value;
          eclApp.Cells(3,8):=EnMas.FieldByName('CKBH').Value;
          eclApp.Cells(1,11):=EnMas.FieldByName('GSBH').Value;
          eclApp.Cells(2,11):=EnMas.FieldByName('RKNO').Value;
          eclApp.Cells(3,11):=formatdatetime('YYYY/MM/DD',EnMas.FieldByName('USERDATE').Value);
          //
          index:=0;
          Hoffset:=1;
          Voffset:=7;
          Endet.First;
          for i:=1 to Endet.RecordCount do
          begin
            eclApp.Cells(Voffset+index,1):=inttostr(i);
            eclApp.Cells(Voffset+index,2):=Endet.FieldByName('CLBH').Value;
            eclApp.Cells(Voffset+index,3):=Endet.FieldByName('YWPM').Value;
            eclApp.Range[eclApp.Cells[Voffset+index,3],eclApp.Cells[Voffset+index,5]].merge;
            eclApp.Cells(Voffset+index,6):=Endet.FieldByName('DWBH').Value;
            eclApp.Cells(Voffset+index,7):=Endet.FieldByName('Qty').Value;
            eclApp.Cells(Voffset+index,8):=Endet.FieldByName('USPrice').Value;
            eclApp.Cells(Voffset+index,9):=Endet.FieldByName('USACC').Value;
            eclApp.Cells(Voffset+index,10):=Endet.FieldByName('VNPrice').Value;
            eclApp.Cells(Voffset+index,11):=Endet.FieldByName('VNACC').Value;
            Endet.Next;
            inc(index);
            // outline
            for k:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[7,1],eclApp.cells[(Voffset+index)-1,11]].borders[k].linestyle:=1;
            end;
            //
          end;
          //
          showmessage('Succeed');
          eclApp.Visible:=True;
         except
          on   F:Exception   do
            showmessage(F.Message);
        end;
      end;
   end;

end;

procedure TEntryList.ENMasAfterOpen(DataSet: TDataSet);
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
  //CheckDocNo();
  KCPK.Active:=true;
  
end;

procedure TEntryList.BO1Click(Sender: TObject);
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

procedure TEntryList.BO2Click(Sender: TObject);
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

procedure TEntryList.BO5Click(Sender: TObject);
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

procedure TEntryList.BO4Click(Sender: TObject);
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

procedure TEntryList.BO3Click(Sender: TObject);
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
          if KCPK.fieldbyname('YN').value='0'then
          begin
             with BDelRec do
             begin
              active:=false;
              sql.Clear;
              sql.add('insert into BDelRec ');
              sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
              sql.add('values ('+''''+'KCPK'+''''+','+''''+KCPK.fieldbyname('PKNO').Value+'''');
              sql.add(','+''''+KCPK.fieldbyname('Declaretion').Value+''''+','+''''+KCPK.fieldbyname('USERID').Value+''''+',');
              sql.add(''''+main.Edit1.Text+''''+',getdate())');
              execsql;
              active:=false;
             end;
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
procedure TEntryList.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCPK.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TEntryList.bbnInvoiceClick(Sender: TObject);
begin
  if EntryList_InvoiceModify=nil then
  begin
    EntryList_InvoiceModify:=TEntryList_InvoiceModify.Create(self);
    EntryList_InvoiceModify.FORMID:='SN211';
    EntryList_InvoiceModify.Show;
    EntryList_InvoiceModify.windowstate := wsmaximized;
  end else
  begin
    EntryList_InvoiceModify.Show;
  end;
end;

procedure TEntryList.DBGrid4SelectionChanged(Sender: TObject);
var GSBH:string;
begin

end;

procedure TEntryList.btnBE1Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;
  if ENDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;

  with ENDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BTNBE2.Enabled:=FALSE;
  BTNBE3.Enabled:=FALSE;
  BTNBE4.Enabled:=true;
  BTNBE5.Enabled:=true;
end;

procedure TEntryList.btnBE2Click(Sender: TObject);
begin
   if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  if ENDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrid4.Enabled:=false;

  with ENDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  btnImport.Enabled:=FALSE;
  btnBE1.Enabled:=FALSE;
  btnBE3.Enabled:=FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
end;

procedure TEntryList.btnBE3Click(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    abort;
  end;
  if ENDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;
  dbgrid4.Enabled:=false;
  with ENDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  btnImport.Enabled:=FALSE;
  btnBE1.Enabled:=FALSE;
  btnBE2.Enabled:=FALSE;
  btnBE4.Enabled:=true;
  btnBE5.Enabled:=true;
end;

procedure TEntryList.btnBE4Click(Sender: TObject);
var i:integer;
    Qty:real;
begin

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
               ENDetS.fieldbyname('CGBH').Value:=ENDet.fieldbyname('CGBH').value;
               ENDetS.fieldbyname('RKSB').Value:=ENDet.fieldbyname('RKSB').value;
               ENDetS.FieldByName('userID').Value:=main.edit1.text;
               ENDetS.FieldByName('userdate').Value:=date;
               ENDetS.FieldByName('YN').Value:='1';
               UpdateSQL1.apply(ukinsert);
          end;
          usmodified:
             begin
              if ENDetS.fieldbyname('YN').value='0'then
                begin
                  UpdateSQL1.apply(ukdelete);
                end else
                begin
                    if (NDate-ENMas.FieldByName('USERDATE').value)<60  then
                    begin
                      ENDetS.edit;
                      ENDetS.FieldByName('userID').Value:=main.edit1.text;
                      ENDetS.FieldByName('userdate').Value:=date;
                      UpdateSQL1.apply(ukmodify);
                    end else
                    begin
                        showmessage('Date>60, can not modify.');
                    end;
                end;
             end;
        end;
        ENDetS.next;
      end;
      ENDetS.active:=false;
      ENDetS.cachedupdates:=false;
      ENDetS.requestlive:=false;
      ENDetS.active:=true;
      //
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
        UpDet.Apply(ukmodify);
        active:=false;
        RequestLive:=false;
        CachedUpdates:=false;
        active:=true;
      end;
      btnImport.Enabled:=TRUE;
      btnBE1.Enabled:=TRUE;
      btnBE2.Enabled:=TRUE;
      btnBE3.Enabled:=TRUE;
      btnBE4.Enabled:=false;
      btnBE5.Enabled:=false;
      dbgrid4.Enabled:=true;

    except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    end;
end;

procedure TEntryList.btnBE5Click(Sender: TObject);
begin
  with ENDetS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  btnImport.Enabled:=TRUE;
  btnBE1.Enabled:=TRUE;
  btnBE2.Enabled:=TRUE;
  btnBE3.Enabled:=TRUE;
  btnBE4.Enabled:=false;
  btnBE5.Enabled:=false;
end;



procedure TEntryList.btnImportClick(Sender: TObject);
begin
  if ENMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    panel6.visible:=false;
    panel1.visible:=true;
    abort;
  end;
  if ENDet.RequestLive then
  begin
    showmessage('Pls save Detail data first.');
    abort;
  end;

  with ENDetS do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;

  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ZLBH from CGZLSS where CGNO ='''+ENMas.FieldByName('ZSNO').AsString+''' ');
    active:=true;
  end;
  if ((ENMas.FieldByName('ZSNO').AsString<>'ZZZZZZZZZZ') and (Query1.FieldByName('ZLBH').AsString='ZZZZZZZZZZ')) then
  begin
    with Query1 do
    begin
      Active:=false;
      sql.Clear;
      SQL.Add('  Select CGZLSS.XXCC,CGZLSS.Qty-IsNull(CGRK.okQty,0.0) as Qty  ');
      SQL.Add('  from CGZLSS  ');
      SQL.Add('  left join (select KCRKSS.CLBH,KCRKSS.CGBH,KCRKSS.SIZE,sum(KCRKSS.Qty) as okQty   ');
      SQL.Add('             from KCRKSS ');
      SQL.Add('             left join KCRKS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKSS.CLBH and KCRKS.CGBH=KCRKSS.CGBH  and KCRKS.RKSB=KCRKSS.RKSB     ');
      SQL.Add('             where  KCRKS.DOCNO= '''+ENDet.FieldByName('DOCNO').AsString+''' and KCRKSS.CLBH='''+ENDet.FieldByName('CLBH').AsString+''' and KCRKSS.CGBH='''+ENDet.FieldByName('CGBH').AsString+''' and KCRKSS.RKSB='''+ENDet.FieldByName('RKSB').AsString+''' ');
      SQL.Add('             Group by  KCRKSS.CLBH,KCRKSS.CGBH,KCRKSS.SIZE ) CGRK on CGRK.CGBH=CGZLSS.CGNO and CGRK.CLBH=CGZLSS.CLBH and CGRK.SIZE=CGZLSS.XXCC   ');
      SQL.Add('  where CGZLSS.CGNO='''+ENDet.FieldByName('DOCNO').AsString+''' and CGZLSS.CLBH='''+ENDet.FieldByName('CLBH').AsString+'''  and CGZLSS.ZLBH=''ZZZZZZZZZZ''   ');
      sql.Add(' and CGZLSS.Qty-IsNull(CGRK.okQty,0.0)>0');
      active:=true;
    end;
    if Query1.RecordCount > 0 then
    begin
      while not Query1.eof do
      begin
        ENDetS.insert;
        ENDetS.Edit;
        ENDetS.fieldbyname('SIZE').Value:=Query1.FieldByName('XXCC').AsString;
        ENDetS.fieldbyname('Qty').Value:=Query1.FieldByName('Qty').AsString;
        Query1.next;
      end;
    end;
  end else
  begin
    with Query1 do
    begin
      Active:=false;
      sql.Clear;
      SQL.Add('  Select CGZLSS.XXCC,CGZLSS.Qty-IsNull(CGRK.okQty,0.0) as Qty  ');
      SQL.Add('  from CGZLSS  ');
      SQL.Add('  left join (select KCRKSS.CLBH,KCRKSS.CGBH,KCRKSS.SIZE,sum(KCRKSS.Qty) as okQty   ');
      SQL.Add('             from KCRKSS            ');
      SQL.Add('             left join KCRKS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKSS.CLBH and KCRKS.CGBH=KCRKSS.CGBH  and KCRKS.RKSB=KCRKSS.RKSB     ');
      SQL.Add('             where  KCRKS.DOCNO= '''+ENDet.FieldByName('DOCNO').AsString+''' and KCRKSS.CLBH='''+ENDet.FieldByName('CLBH').AsString+''' and KCRKSS.CGBH='''+ENDet.FieldByName('CGBH').AsString+'''  and KCRKSS.RKSB='''+ENDet.FieldByName('RKSB').AsString+''' ');
      SQL.Add('             Group by  KCRKSS.CLBH,KCRKSS.CGBH,KCRKSS.SIZE ) CGRK on CGRK.CGBH=CGZLSS.ZLBH and CGRK.CLBH=CGZLSS.CLBH and CGRK.SIZE=CGZLSS.XXCC   ');
      SQL.Add('  where CGZLSS.CGNO='''+ENDet.FieldByName('DOCNO').AsString+''' and CGZLSS.CLBH='''+ENDet.FieldByName('CLBH').AsString+'''  and CGZLSS.ZLBH='''+ENDet.FieldByName('CGBH').AsString+'''   ');
      sql.Add(' and CGZLSS.Qty-IsNull(CGRK.okQty,0.0)>0');
      Active:=true;
    end;
    if Query1.RecordCount > 0 then
    begin
      while not Query1.eof do
      begin
        ENDetS.insert;
        ENDetS.Edit;
        ENDetS.fieldbyname('SIZE').Value:=Query1.FieldByName('XXCC').AsString;
        ENDetS.fieldbyname('Qty').Value:=Query1.FieldByName('Qty').AsString;
        Query1.next;
      end;
    end;
  end;
  BTNBE2.Enabled:=FALSE;
  BTNBE3.Enabled:=FALSE;
  BTNBE4.Enabled:=true;
  BTNBE5.Enabled:=true;
end;

procedure TEntryList.ENMasHGLBChange(Sender: TField);
begin
  //CheckDocNo();
end;

{procedure TEntrylist.CheckDeclaretion();
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
    DBGridEh1.Columns[0].ReadOnly:=true;
  end else
  begin
    DBGridEh1.Columns[0].ReadOnly:=false;
  end;
end; }

procedure TEntryList.KCPKAfterOpen(DataSet: TDataSet);
begin
  //CheckDeclaretion();
end;

end.




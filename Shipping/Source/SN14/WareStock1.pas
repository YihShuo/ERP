unit WareStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables,
  Menus, Comobj, DateUtils, iniFiles, ExcelXP;

type
  TWareStock = class(TForm)
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    KHOQry1: TQuery;
    DS1: TDataSource;
    KHOQry1CLDH: TStringField;
    KHOQry1CNO: TStringField;
    KHOQry1Qty: TCurrencyField;
    KHOQry1NK_Qty: TCurrencyField;
    KHOQry1ND_Qty: TCurrencyField;
    KHOQry1NKND_Qty: TCurrencyField;
    KHOQry1XT_Qty: TCurrencyField;
    KHOQry1GC_Qty: TCurrencyField;
    KHOQry1Null_Qty: TCurrencyField;
    KHOQry1YWPM: TStringField;
    KHOQry1ZWPM: TStringField;
    KHOQry1DWBH: TStringField;
    CBX1: TComboBox;
    Label3: TLabel;
    MatNoEdit: TEdit;
    Label2: TLabel;
    CNO1Edit: TEdit;
    TemQry: TQuery;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Button3: TButton;
    TNO2Edit: TEdit;
    CBX3: TComboBox;
    GridKhoMas: TDBGridEh;
    Splitter2: TSplitter;
    GridKhoDet: TDBGridEh;
    TK2MasQry: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    DS4: TDataSource;
    TK2DetQry: TQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    DS5: TDataSource;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    DTP2: TDateTimePicker;
    Label10: TLabel;
    KhoPopup: TPopupMenu;
    Excel1: TMenuItem;
    TK2DetPopup: TPopupMenu;
    MenuItem3: TMenuItem;
    TK2MasPopup: TPopupMenu;
    MenuItem4: TMenuItem;
    Label12: TLabel;
    Edit1: TEdit;
    StockDT1: TDateTimePicker;
    Label13: TLabel;
    CBox1: TCheckBox;
    TK2MasQryDOCNO: TStringField;
    Edit2: TEdit;
    KHOQry1TC: TCurrencyField;
    TK2MasQryTC: TCurrencyField;
    TK2DetQryTC: TCurrencyField;
    KHOQry1CKBH: TStringField;
    KHOQry1KCBH: TStringField;
    KHOQry1KCMC: TStringField;
    Label28: TLabel;
    KCBHEdit: TEdit;
    Label1: TLabel;
    NotInCKBHEdit: TEdit;
    Label9: TLabel;
    CKBHBox: TCheckBox;
    Button2: TButton;
    Label16: TLabel;
    HGLBCBX: TComboBox;
    N1: TMenuItem;
    Excel2: TMenuItem;
    Button4: TButton;
    KHOQry1LBBH: TStringField;
    Button5: TButton;
    KCBH1Edit: TEdit;
    Button6: TButton;
    CheckBox1: TCheckBox;
    KHOQry1JHDH: TStringField;
    TK2DetQryJHDH: TStringField;
    KHOQry1NK1: TCurrencyField;
    KHOQry1TC1: TCurrencyField;
    KHOQry1HD1: TCurrencyField;
    KHOQry1KD1: TCurrencyField;
    KHOQry1H11: TCurrencyField;
    KHOQry1NQ: TCurrencyField;
    KHOQry1NKNQ: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure Button3Click(Sender: TObject);
    procedure GridKhoDetCellClick(Column: TColumnEh);
    procedure Excel1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Label3DblClick(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    AppDir:string;
    { Private declarations }
    procedure readini();
    procedure CalCulate_KCCLMONTH_HGBH();
    procedure CalCulate_KCCLMONTH_HGBH_NK();
    procedure CalCulate_KCCLMONTH_HGBH_NKHD();
    procedure CalWarehouseDate(StockDT:TDateTimePicker);
    procedure ExportExcel(MasQry:TQuery;DetQry:TQuery);
  public
    sYear,sMonth,sSTDT,sEDDT:String;
    sDate,eDate,NDate:TDate;
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  WareStock: TWareStock;

implementation
  uses main1,WareStock_Det1,WareStock_MDet1, WareStock_Print1, FunUnit;
{$R *.dfm}

procedure TWareStock.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    IsHide_Warehouse_XT := 'N';
    DBGridEh1.Columns[15].Visible:=false;
    DBGridEh1.Columns[17].Visible:=false;
    GridKhoMas.Columns[9].Visible:=false;
    GridKhoMas.Columns[11].Visible:=false;
    GridKhoDet.Columns[13].Visible:=false;
    GridKhoDet.Columns[15].Visible:=false;
  end;

  TCurrencyField(KHOQry1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('NK')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('HD')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('KD')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('TC')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('GC')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('XT')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('ZZ')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('NK1')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('TC1')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('HD1')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('KD1')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('H11')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('NQ')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KHOQry1.FieldByName('NKNQ')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TWareStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TWareStock.FormDestroy(Sender: TObject);
begin
  WareStock:=nil;
end;

procedure TWareStock.Button1Click(Sender: TObject);
begin
   if StockDT1.Date<strtodate('2017/11/01') then
   begin
     Showmessage('Please select >2017/11/01');
     abort();
   end;
   CalCulate_KCCLMONTH_HGBH();
end;
//
procedure TWareStock.CalWarehouseDate(StockDT:TDateTimePicker);
var iYear,iMonth,iDay:word;
begin
    //
    decodedate(incmonth(StockDT.Date,-1),iYear,iMonth,iDay);
    sDate:=startofthemonth(StockDT1.Date);
    eDate:=StockDT1.Date;
    sYear:=inttostr(iYear);
    sMonth:=inttostr(iMonth);
    if  length(sMonth)<2  then
    begin
      sMonth:='0'+sMonth;
    end;
    sSTDT:=formatdatetime('yyyy/MM/dd',sDate);
    sEDDT:=formatdatetime('yyyy/MM/dd',eDate);
    //
end;
//
procedure TWareStock.FormCreate(Sender: TObject);
var iYear,iMonth,iDay:word;
begin
  with TemQry do
  begin
    //
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    DTP1.Date:=NDate;
    active:=false;
    //
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.items.clear;
    while not eof do
    begin
      CBX1.items.add(fieldbyname('CKBH').AsString);
      CBX3.items.add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CBX1.itemindex:=0;
    CBX3.itemindex:=0;
    CBX1.Items.add('ALL');
    active:=false;
  end;
  DTP1.Date:=Date()-30;
  DTP2.Date:=Date();
  StockDT1.Date:=Ndate;
  Readini();
  CheckBox1.OnClick(sender);
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TWareStock.DBGridEh1CellClick(Column: TColumnEh);
  procedure Show_WareStock_Det_Begin();
  begin
      WareStock_MDet:=TWareStock_MDet.Create(self);
      WareStock_MDet.CLBH:=KHOQry1.FieldByName('CLDH').AsString;
      WareStock_MDet.CKBH:=CBX1.Text;
      WareStock_MDet.CNO:=KHOQry1.FieldByName('CNO').AsString;
  end;
  procedure Show_WareStock_Det_End();
  begin
      WareStock_MDet.ShowDet();
      WareStock_MDet.ShowModal();
  end;
begin
 //
 if  Column.FieldName='Qty' then
 begin
   if ((KHOQry1.FieldByName('Qty').AsString<>'0') and (KHOQry1.FieldByName('Qty').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_MDet.HGLB:='All';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='NK' then
 begin
   if ((KHOQry1.FieldByName('NK').AsString<>'0') and (KHOQry1.FieldByName('NK').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_MDet.HGLB:='NK';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='TC' then
 begin
   if ((KHOQry1.FieldByName('TC').AsString<>'0') and (KHOQry1.FieldByName('TC').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_MDet.HGLB:='TC';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='HD' then
 begin
   if ((KHOQry1.FieldByName('HD').AsString<>'0') and (KHOQry1.FieldByName('HD').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_MDet.HGLB:='HD';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='KD' then
 begin
   if ((KHOQry1.FieldByName('KD').AsString<>'0') and (KHOQry1.FieldByName('KD').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_MDet.HGLB:='KD';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='XT' then
 begin
   if ((KHOQry1.FieldByName('XT').AsString<>'0') and (KHOQry1.FieldByName('XT').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_MDet.HGLB:='XT';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='GC' then
 begin
   if ((KHOQry1.FieldByName('GC').AsString<>'0') and (KHOQry1.FieldByName('GC').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_MDet.HGLB:='GC';
      Show_WareStock_Det_End();
   end;
 end;
 //
 if  Column.FieldName='ZZ' then
 begin
   if ((KHOQry1.FieldByName('ZZ').AsString<>'0') and (KHOQry1.FieldByName('ZZ').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_MDet.HGLB:='ZZ';
      Show_WareStock_Det_End();
   end;
 end;
end;

procedure TWareStock.Button3Click(Sender: TObject);
begin
  with TK2MasQry do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select KCRK.* from (');
     SQL.Add('select IsNull(DOCNO,'''') as DOCNO,IsNull(Declaretion,'''') as Declaretion,Export,CNO,Sum(RKQty) as Qty, ');
     SQL.Add('        Sum(Case when KCRK.HGLB=''NK'' then RKQty else 0 end ) as NK, ');
     SQL.Add('        Sum(Case when KCRK.HGLB=''TC'' then RKQty else 0 end ) as TC, ');
     SQL.Add('        Sum(Case when KCRK.HGLB=''HD'' then RKQty else 0 end ) as HD, ');
     SQL.Add('        Sum(Case when KCRK.HGLB=''KD'' then RKQty else 0 end ) as KD, ');
     SQL.Add('        Sum(Case when KCRK.HGLB=''XT'' then RKQty else 0 end ) as XT, ');
     SQL.Add('        Sum(Case when KCRK.HGLB=''GC'' then RKQty else 0 end ) as GC,');
     SQL.Add('        Sum(Case when KCRK.HGLB=''ZZZZ'' then RKQty else 0 end ) as ZZ  ');
     SQL.Add('from (');
     SQL.Add('select * from (');
     SQL.Add('Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,Max(KCRK.DOCNO) as DOCNO, Max(KCPK.Declaretion) as Declaretion,');
     SQL.Add('        Max(KCPK.Export) as Export,IsNull(KCRK.HGLB,''ZZZZ'') as HGLB,Sum(KCRKS.Qty) as RKQty ');
     SQL.Add('from KCRKS');
     SQL.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
     SQL.Add('left join KCPK  on KCPK.PKNO=KCRK.RKNO ');
     SQL.Add('where KCRK.USERDATE>=''2017/06/01'' and  KCRK.CKBH='''+CBX3.Text+'''  and KCPK.Declaretion is not null  and KCRKS.CLBH like ''%'' ');
     SQL.Add('and KCRK.USERDATE>='''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and KCRK.USERDATE<'''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
     SQL.Add('and KCRKS.CLBH like '''+Edit2.Text+'%'' ');
     if TNO2Edit.Text<>'' then
     SQL.Add(' and KCPK.Declaretion like '''+TNO2Edit.Text+'%'' ');
     SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB');
     SQL.Add(') KCRKS');
     SQL.Add('where KCRKS.CLDH like ''%''  ) KCRK');
     SQL.Add('Group by DOCNO,Declaretion,Export,CNO ) KCRK');
     SQL.Add('where KCRK.Declaretion<>''''  ');
     SQL.Add('order by KCRK.Declaretion');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
  end;

  with TK2DetQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRK.*,CLZL_LS.JHDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH from (');
    SQL.Add('select IsNull(DOCNO,'''') as DOCNO,IsNull(Declaretion,'''') as Declaretion,Export,CLDH,CNO,Sum(RKQty) as Qty, ');
    SQL.Add('        Sum(Case when KCRK.HGLB=''NK'' then RKQty else 0 end ) as NK, ');
    SQL.Add('        Sum(Case when KCRK.HGLB=''TC'' then RKQty else 0 end ) as TC, ');
    SQL.Add('        Sum(Case when KCRK.HGLB=''HD'' then RKQty else 0 end ) as HD, ');
    SQL.Add('        Sum(Case when KCRK.HGLB=''KD'' then RKQty else 0 end ) as KD, ');
    SQL.Add('        Sum(Case when KCRK.HGLB=''XT'' then RKQty else 0 end ) as XT, ');
    SQL.Add('        Sum(Case when KCRK.HGLB=''GC'' then RKQty else 0 end ) as GC, ');
    SQL.Add('        Sum(Case when KCRK.HGLB=''ZZZZ'' then RKQty else 0 end ) as ZZ  ');
    SQL.Add('from (');
    SQL.Add('select * from (');
    SQL.Add('Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,Max(KCRK.DOCNO) as DOCNO, Max(KCPK.Declaretion) as Declaretion,Max(KCPK.Export) as Export,IsNull(KCRK.HGLB,''ZZZZ'') as HGLB,Sum(KCRKS.Qty) as RKQty');
    SQL.Add('from KCRKS');
    SQL.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join KCPK  on KCPK.PKNO=KCRK.RKNO ');
    SQL.Add('where KCRK.USERDATE>=''2017/06/01'' and KCRK.CKBH='''+CBX3.Text+'''  and KCPK.Declaretion=:Declaretion and KCRKS.CLBH like ''%'' ');
    SQL.Add('and KCRK.USERDATE>='''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and KCRK.USERDATE<'''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
    SQL.Add('and KCRKS.CLBH like '''+Edit2.Text+'%'' ');
    SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB');
    SQL.Add(') KCRKS');
    SQL.Add('where KCRKS.CLDH like ''%''  ) KCRK');
    SQL.Add('Group by DOCNO,Declaretion,Export,CLDH,CNO ) KCRK');
    SQL.Add('Left join CLZL on CLZL.CLDH=KCRK.CLDH');
    SQL.Add('Left join CLZL_LS on CLZL_LS.CLDH=KCRK.CLDH');
    SQL.Add('where KCRK.Declaretion<>'''' and KCRK.DOCNO=:DOCNO  and KCRK.Declaretion=:Declaretion and KCRK.CNO=:CNO ');
    //ShowMessage(SQL.Text);
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TWareStock.GridKhoDetCellClick(Column: TColumnEh);
  procedure Show_WareStock_Det_Begin();
  begin
      WareStock_Det:=TWareStock_Det.Create(self);
      WareStock_Det.CLBH:=TK2DetQry.FieldByName('CLDH').AsString;
      WareStock_Det.CKBH:=CBX3.Text;
      WareStock_Det.CNO:=TK2DetQry.FieldByName('CNO').AsString;
      WareStock_Det.ToKHai:=TK2DetQry.FieldByName('Declaretion').AsString;
      WareStock_Det.SDT:=FormatDateTime('YYYY/MM/DD',DTP1.Date);
      WareStock_Det.EDT:=FormatDateTime('YYYY/MM/DD',DTP2.Date);
  end;
  procedure Show_WareStock_Det_End();
  begin
      WareStock_Det.ShowDetToKhaiList();
      WareStock_Det.ShowModal();
  end;
begin
 //
 if  Column.FieldName='Qty' then
 begin
   if ((TK2DetQry.FieldByName('Qty').AsString<>'0') and (TK2DetQry.FieldByName('Qty').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_Det.HGLB:='All';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='NK' then
 begin
   if ((TK2DetQry.FieldByName('NK').AsString<>'0') and (TK2DetQry.FieldByName('NK').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_Det.HGLB:='NK';
      Show_WareStock_Det_End();
   end;
 end;

 if  Column.FieldName='TC' then
 begin
   if ((TK2DetQry.FieldByName('TC').AsString<>'0') and (TK2DetQry.FieldByName('TC').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_Det.HGLB:='TC';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='ND' then
 begin
   if ((TK2DetQry.FieldByName('ND').AsString<>'0') and (TK2DetQry.FieldByName('ND').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_Det.HGLB:='ND';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='KD' then
 begin
   if ((TK2DetQry.FieldByName('KD').AsString<>'0') and (TK2DetQry.FieldByName('KD').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_Det.HGLB:='KD';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='XT' then
 begin
   if ((TK2DetQry.FieldByName('XT').AsString<>'0') and (TK2DetQry.FieldByName('XT').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_Det.HGLB:='XT';
      Show_WareStock_Det_End();
   end;
 end;
 if  Column.FieldName='GC' then
 begin
   if ((TK2DetQry.FieldByName('GC').AsString<>'0') and (TK2DetQry.FieldByName('GC').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_Det.HGLB:='GC';
      Show_WareStock_Det_End();
   end;
 end;
 //
 if  Column.FieldName='ZZ' then
 begin
   if ((TK2DetQry.FieldByName('ZZ').AsString<>'0') and (TK2DetQry.FieldByName('ZZ').AsString<>'')) then
   begin
      Show_WareStock_Det_Begin();
      WareStock_Det.HGLB:='ZZ';
      Show_WareStock_Det_End();
   end;
 end;

end;

procedure TWareStock.ExportExcel(MasQry:TQuery;DetQry:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if MasQry.Active then
  begin
    if MasQry.recordcount=0 then
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
    if DetQry<>nil then DetQry.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for  i:=1  to  MasQry.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=MasQry.fields[i-1].FieldName;
    end;
    MasQry.First;
    j:=2;
    while   not  MasQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   MasQry.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=MasQry.Fields[i-1].Value;
      end;
      MasQry.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    if DetQry<>nil then DetQry.Active:=true;
  except
    on  F:Exception   do
      showmessage(F.Message);
  end;

end;
//
procedure TWareStock.Excel1Click(Sender: TObject);
begin
   ExportExcel(KHOQry1,nil);
end;

procedure TWareStock.MenuItem4Click(Sender: TObject);
begin
   ExportExcel(TK2MasQry,TK2DetQry);
end;

procedure TWareStock.MenuItem3Click(Sender: TObject);
begin
   ExportExcel(TK2DetQry,nil);
end;
//
procedure TWareStock.CalCulate_KCCLMONTH_HGBH_NK();
begin
  with KHOQry1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#tmpKCCLMonthHG'') is not null ');
    SQL.Add('begin   drop table #tmpKCCLMonthHG end   ');
    SQL.Add('select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,');
    SQL.Add('       Round(isnull(round(Sum(LastRem),'+WH_Decimal+'),0)+isnull(round(Sum(RKQty),'+WH_Decimal+'),0)-isnull(round(Sum(LLQty),'+WH_Decimal+'),0)+isnull(round(Sum(JGRK),'+WH_Decimal+'),0)-isnull(round(Sum(JGCK),'+WH_Decimal+'),0),'+WH_Decimal+')  as Qty');
    SQL.Add('into #tmpKCCLMonthHG  from (');

    SQL.Add('select * from (');
    SQL.Add('select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CNO,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK');
    SQL.Add('           from KCCLMONTH_HGBH KCCLMONTH  where KCCLMONTH.KCYEAR='''+sYear+''' ');
    SQL.Add('                                 and KCMONTH='''+sMonth+''' and CLBH like '''+MatNoEdit.Text+'%''');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('                               and KCCLMONTH.HGLB '+HGLBCBX.Text);
    if CNO1Edit.Text<>'' then
    SQL.Add('                                 and CNO like '''+CNO1Edit.Text+'%'' ');
    if CBX1.text<>'ALL' then
      SQL.Add('                               and KCCLMONTH.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('                               and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('                                and KCCLMONTH.CKBH<>'''+NotInCKBHEdit.Text+'''');
    SQL.Add('                                 ) LastKC');
    SQL.Add('Union all   ');
    SQL.Add('select * from (');
    SQL.Add('select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB <>''NK'') then ''ZZZZ'' else KCRKS.CNO end  as CNO,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('           and KCRKS.CLBH like '''+MatNoEdit.Text+'%''    ');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('         and KCRK.HGLB '+HGLBCBX.Text );
    if CBX1.text<>'ALL' then
      SQL.Add('         and KCRK.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('         and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('         and KCRK.CKBH<>'''+NotInCKBHEdit.Text+'''');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB <>''NK'') then ''ZZZZ'' else KCRKS.CNO end ) RK        ');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB <>''NK'') then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like '''+MatNoEdit.Text+'%''');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('         and KCLLS.HGLB '+HGLBCBX.Text );
    if CBX1.text<>'ALL' then
      SQL.Add('         and KCLL.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('         and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('         and KCLL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB <>''NK'') then ''ZZZZ'' else KCLLS.CNO end ) LL    ');
    SQL.Add('union all ');
    SQL.Add('select * from (                                         ');
    SQL.Add('select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZ'' as CNO,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('                 and JGZL.CFMID1<>''NO'' and JGZLS.CLBH like '''+MatNoEdit.Text+'%'' ');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('               and ''GC'' '+HGLBCBX.Text);
    if CNO1Edit.Text<>'' then
    SQL.Add('                 and 1=2 ');
    SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0 ');
    if CBX1.text<>'ALL' then
      SQL.Add('               and JGZL.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('               and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('               and JGZL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB <>''NK'') then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,sum(KCLLS.Qty) as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+''' ');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMID<>''NO'' and KCLLS.CLBH like '''+MatNoEdit.Text+'%''');
    if HGLBCBX.ItemIndex>0 then
      SQL.Add('         and KCLLS.HGLB '+HGLBCBX.Text);
    if CBX1.text<>'ALL' then
      SQL.Add('         and KCLL.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('         and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('         and KCLL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB <>''NK'') then ''ZZZZ'' else KCLLS.CNO end ) JGCK');
    SQL.Add(') KCZLS');
    SQL.Add('where 1=1 and CLBH like '''+MatNoEdit.Text+'%''  ');
    SQL.Add('Group by CKBH,CLBH,HGLB,CNO     ');
    //-------------
    SQL.Add('Select * from (');
    if ((CBX1.Text='ALL') and (CKBHBox.Checked=true)) then
    begin
    SQL.Add('Select ''ALL'' as CKBH,KCRK.CLDH,'''' as CNO,Sum(KCRK.Qty) as Qty,Sum(KCRK.NK) as NK,Sum(KCRK.TC) as TC,Sum(KCRK.HD) as HD, Sum(KCRK.KD) as KD,Sum(KCRK.XT) as XT, ');
    SQL.Add('       Sum(KCRK.GC) as GC,Sum(KCRK.ZZ) as ZZ,KCRK.YWPM,KCRK.ZWPM,KCRK.DWBH,Max(KCRK.KCBH) as KCBH,Max(KCRK.KCMC)  as KCMC,Max(KCRK.LBBH) as LBBH from ( ');
    end else if ((CBX1.Text<>'ALL') and (CKBHBox.Checked=true)) then
    begin
    SQL.Add('Select KCRK.CKBH,KCRK.CLDH,'''' as CNO,Sum(KCRK.Qty) as Qty,Sum(KCRK.NK) as NK,Sum(KCRK.TC) as TC,Sum(KCRK.HD) as HD, Sum(KCRK.KD) as KD,Sum(KCRK.XT) as XT, ');
    SQL.Add('       Sum(KCRK.GC) as GC,Sum(KCRK.ZZ) as ZZ,KCRK.YWPM,KCRK.ZWPM,KCRK.DWBH,Max(KCRK.KCBH) as KCBH,Max(KCRK.KCMC)  as KCMC,Max(KCRK.LBBH) as LBBH from ( ');
    end;
    //
    SQL.Add('select KCRK.*,CLZL_LS.JHDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.KCBH,KCZL.KCMC,IsNull(CLLBFLS.LBBH,''A'') as LBBH from (');
    SQL.Add('select CKBH,CLBH as CLDH,case when CNO=''ZZZZ'' then '''' else CNO end as CNO,Sum(Qty) as Qty, ');
    SQL.Add('       Sum(Case when HGLB=''NK'' then Qty else 0 end ) as NK,');
    SQL.Add('       Sum(Case when HGLB=''TC'' then Qty else 0 end ) as TC,');
    SQL.Add('       Sum(Case when HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('       Sum(Case when HGLB=''KD'' then Qty else 0 end ) as KD,');
    SQL.Add('       Sum(Case when HGLB=''XT'' then Qty else 0 end ) as XT,');
    SQL.Add('       Sum(Case when HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('       Sum(Case when HGLB=''ZZ'' then Qty else 0 end ) as ZZ');
    SQL.Add('from (select * from #tmpKCCLMonthHG ) KCZLS');
    SQL.Add('where 1=1 and CLBH not like ''Adjusting%'' ');
    if CBox1.Checked=true then
    begin
      SQL.Add('  and Exists ( select CLBH from #tmpKCCLMonthHG  where Qty<0 and KCZLS.CKBH=#tmpKCCLMonthHG.CKBH and KCZLS.CLBH=#tmpKCCLMonthHG.CLBH )  ')
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('      and KCZLS.HGLB<>''XT'' ');
    SQL.Add('Group by CKBH,CLBH,CNO  ) KCRK');
    SQL.Add('Left join CLZL_LS on CLZL_LS.CLDH=KCRK.CLDH');
    SQL.Add('Left join CLZL on CLZL.CLDH=KCRK.CLDH');
    SQL.Add('left join KCZLS on KCZLS.CLBH=KCRK.CLDH and KCZLS.CKBH=KCRK.CKBH  ');
    SQL.Add('left join KCZL on KCZL.KCBH=KCZLS.KCBH and KCZLS.CKBH=KCZL.CKBH  ');
    SQL.Add('left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('where 1=1  and KCRK.Qty<>0 ');
    if ((KCBHEdit.Text<>'') and (KCBH1Edit.Text='')) then
     SQL.Add('   and KCZL.KCBH like '''+KCBHEdit.Text+'%'' ')
    else if ((KCBHEdit.Text='') and (KCBH1Edit.Text<>'')) then
     SQL.Add('   and KCZL.KCBH like '''+KCBH1Edit.Text+'%'' ')
    else if ((KCBHEdit.Text<>'') and (KCBH1Edit.Text<>'')) then
     SQL.Add('   and (KCZL.KCBH>= '''+KCBHEdit.Text+''' and KCZL.KCBH<= '''+KCBH1Edit.Text+''')   ');
    //Sum Total
    if ((CBX1.Text='ALL') and (CKBHBox.Checked=true)) then
    begin
    SQL.Add(' ) KCRK Group by KCRK.CLDH,KCRK.YWPM,KCRK.ZWPM,KCRK.DWBH ');
    end else  if ((CBX1.Text<>'ALL') and (CKBHBox.Checked=true)) then
    begin
    SQL.Add(' ) KCRK Group by KCRK.CKBH,KCRK.CLDH,KCRK.YWPM,KCRK.ZWPM,KCRK.DWBH ');
    end;
    //
    SQL.Add(') KCRK order by KCRK.KCBH,KCRK.CLDH,KCRK.CNO ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;
procedure TWareStock.CalCulate_KCCLMONTH_HGBH_NKHD();
begin
  with KHOQry1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#tmpKCCLMonthHG'') is not null ');
    SQL.Add('begin   drop table #tmpKCCLMonthHG end   ');
    SQL.Add('select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,');
    SQL.Add('       Round(isnull(round(Sum(LastRem),'+WH_Decimal+'),0)+isnull(round(Sum(RKQty),'+WH_Decimal+'),0)-isnull(round(Sum(LLQty),'+WH_Decimal+'),0)+isnull(round(Sum(JGRK),'+WH_Decimal+'),0)-isnull(round(Sum(JGCK),'+WH_Decimal+'),0),'+WH_Decimal+')  as Qty');
    SQL.Add('into #tmpKCCLMonthHG  from (');
    SQL.Add('select * from (');
    SQL.Add('select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CNO,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK');
    SQL.Add('           from KCCLMONTH_HGBH KCCLMONTH   ');
    SQL.Add('           where KCCLMONTH.KCYEAR='''+sYear+'''  and KCMONTH='''+sMonth+''' and CLBH like '''+MatNoEdit.Text+'%''  ');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('            and KCCLMONTH.HGLB '+HGLBCBX.Text);
    //全部庫別
    if CBX1.text<>'ALL' then
      SQL.Add('            and KCCLMONTH.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('            and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('             and KCCLMONTH.CKBH<>'''+NotInCKBHEdit.Text+'''');
    //
    if CNO1Edit.Text<>'' then
    SQL.Add('                 and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           ) LastKC');
    SQL.Add('Union all   ');
    SQL.Add('select * from (');
    SQL.Add('select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or left(KCRK.HGLB,2) not in (''NK'',''TC'',''HD'',''KD'',''NQ'')) then ''ZZZZ'' else KCRKS.CNO end  as CNO,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('           and KCRKS.CLBH like '''+MatNoEdit.Text+'%''    ');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('            and KCRK.HGLB '+HGLBCBX.Text );
    //全部庫別
    if CBX1.text<>'ALL' then
      SQL.Add('            and KCRK.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('            and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('             and KCRK.CKBH<>'''+NotInCKBHEdit.Text+'''');
    //
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or left(KCRK.HGLB,2) not in (''NK'',''TC'',''HD'',''KD'',''NQ'')) then ''ZZZZ'' else KCRKS.CNO end ) RK        ');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or left(KCLLS.HGLB,2) not in (''NK'',''TC'',''HD'',''KD'',''NQ'')) then ''ZZZZ'' else KCLLS.CNO end as CNO,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like '''+MatNoEdit.Text+'%''   ');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('            and KCLLS.HGLB '+HGLBCBX.Text );
    //全部庫別
    if CBX1.text<>'ALL' then
      SQL.Add('            and KCLL.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('            and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('            and KCLL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    //
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or left(KCLLS.HGLB,2) not in (''NK'',''TC'',''HD'',''KD'',''NQ'')) then ''ZZZZ'' else KCLLS.CNO end ) LL    ');
    SQL.Add('union all ');
    SQL.Add('select * from (                                         ');
    SQL.Add('select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZ'' as CNO,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+'''');
    SQL.Add('                 and JGZL.CFMID1<>''NO'' and JGZLS.CLBH like '''+MatNoEdit.Text+'%'' ');
    if CNO1Edit.Text<>'' then
    SQL.Add('                 and 1=2 ');
    SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0 ');
    if HGLBCBX.ItemIndex>0 then
      SQL.add('            and ''GC'' '+HGLBCBX.Text);
    //全部庫別
    if CBX1.text<>'ALL' then
      SQL.Add('            and JGZL.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('            and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('             and JGZL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    //
    SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or left(KCLLS.HGLB,2) not in (''NK'',''TC'',''HD'',''KD'',''NQ'')) then ''ZZZZ'' else KCLLS.CNO end as CNO ');
    SQL.Add('       ,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,sum(KCLLS.Qty) as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+sSTDT+''' and '''+sEDDT+''' ');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMID<>''NO'' and KCLLS.CLBH like '''+MatNoEdit.Text+'%'' ');
    if HGLBCBX.ItemIndex>0 then
      SQL.Add('            and KCLLS.HGLB '+HGLBCBX.Text);
    //全部庫別
    if CBX1.text<>'ALL' then
      SQL.Add('            and KCLL.CKBH='''+CBX1.Text+'''')
    else
      SQL.Add('            and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    if NotInCKBHEdit.Text<>'' then
      SQL.Add('            and KCLL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    //
    if CNO1Edit.Text<>'' then
    SQL.Add('           and CNO like '''+CNO1Edit.Text+'%'' ');
    SQL.Add('           Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or left(KCLLS.HGLB,2) not in (''NK'',''TC'',''HD'',''KD'',''NQ'')) then ''ZZZZ'' else KCLLS.CNO end ) JGCK');
    SQL.Add(') KCZLS');
    SQL.Add('where 1=1 and CLBH like '''+MatNoEdit.Text+'%''  ');
    SQL.Add('Group by CKBH,CLBH,HGLB,CNO     ');
    //主畫面查詢
    SQL.Add('Select * from (');
    if ((CBX1.Text='ALL') and (CKBHBox.Checked=true)) then
    begin
    SQL.Add('Select ''ALL'' as CKBH,KCRK.CLDH,'''' as CNO,Sum(KCRK.Qty) as Qty,Sum(KCRK.NK) as NK,Sum(KCRK.TC) as TC,Sum(KCRK.HD) as HD, Sum(KCRK.KD) as KD,Sum(KCRK.XT) as XT, ');
    SQL.Add('       Sum(KCRK.GC) as GC,Sum(KCRK.ZZ) as ZZ,Sum(KCRK.NK1) as NK1,Sum(KCRK.TC1) as TC1,Sum(KCRK.HD1) as HD1, Sum(KCRK.KD1) as KD1,Sum(KCRK.H11) as H11,Sum(KCRK.NQ) as NQ,Sum(KCRK.NKNQ) as NKNQ, ');
    SQL.Add('       KCRK.JHDH,KCRK.YWPM,KCRK.ZWPM,KCRK.DWBH,Max(KCRK.KCBH) as KCBH,Max(KCRK.KCMC)  as KCMC,Max(KCRK.LBBH) as LBBH from ( ');
    end else if ((CBX1.Text<>'ALL') and (CKBHBox.Checked=true)) then
    begin
    SQL.Add('Select KCRK.CKBH,KCRK.CLDH,'''' as CNO,Sum(KCRK.Qty) as Qty,Sum(KCRK.NK) as NK,Sum(KCRK.TC) as TC,Sum(KCRK.HD) as HD, Sum(KCRK.KD) as KD,Sum(KCRK.XT) as XT, ');
    SQL.Add('       Sum(KCRK.GC) as GC,Sum(KCRK.ZZ) as ZZ,Sum(KCRK.NK1) as NK1,Sum(KCRK.TC1) as TC1,Sum(KCRK.HD1) as HD1, Sum(KCRK.KD1) as KD1,Sum(KCRK.H11) as H11,Sum(KCRK.NQ) as NQ,Sum(KCRK.NKNQ) as NKNQ, ');
    SQL.Add('       KCRK.JHDH,KCRK.YWPM,KCRK.ZWPM,KCRK.DWBH,Max(KCRK.KCBH) as KCBH,Max(KCRK.KCMC)  as KCMC,Max(KCRK.LBBH) as LBBH from ( ');
    end;
    //
    SQL.Add('select KCRK.*,CLZL_LS.JHDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCZLS.KCBH,KCZL.KCMC,IsNull(CLLBFLS.LBBH,''A'') as LBBH from (');
    SQL.Add('select CKBH,CLBH as CLDH,case when CNO=''ZZZZ'' then '''' else CNO end as CNO,Sum(Qty) as Qty, ');
    SQL.Add('       Sum(Case when HGLB=''NK'' then Qty else 0 end ) as NK,');
    SQL.Add('       Sum(Case when HGLB=''TC'' then Qty else 0 end ) as TC,');
    SQL.Add('       Sum(Case when HGLB=''HD'' then Qty else 0 end ) as HD,');
    SQL.Add('       Sum(Case when HGLB=''KD'' then Qty else 0 end ) as KD,');
    SQL.Add('       Sum(Case when HGLB=''XT'' then Qty else 0 end ) as XT,');
    SQL.Add('       Sum(Case when HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('       Sum(Case when HGLB=''ZZ'' then Qty else 0 end ) as ZZ,');
    SQL.Add('       Sum(Case when HGLB=''NK1'' then Qty else 0 end ) as NK1,');
    SQL.Add('       Sum(Case when HGLB=''TC1'' then Qty else 0 end ) as TC1,');
    SQL.Add('       Sum(Case when HGLB=''HD1'' then Qty else 0 end ) as HD1,');
    SQL.Add('       Sum(Case when HGLB=''KD1'' then Qty else 0 end ) as KD1,');
    SQL.Add('       Sum(Case when HGLB=''H11'' then Qty else 0 end ) as H11,');
    SQL.Add('       Sum(Case when HGLB=''NQ'' then Qty else 0 end ) as NQ,');
    SQL.Add('       Sum(Case when HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ');
    SQL.Add('from (select * from #tmpKCCLMonthHG ) KCZLS');
    SQL.Add('where 1=1 and CLBH not like ''Adjusting%'' ');
    if CBox1.Checked=true then
    begin
      SQL.Add('  and Exists ( select CLBH from #tmpKCCLMonthHG  where Qty<0 and KCZLS.CKBH=#tmpKCCLMonthHG.CKBH and KCZLS.CLBH=#tmpKCCLMonthHG.CLBH )  ')
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('      and KCZLS.HGLB<>''XT'' ');
    SQL.Add('Group by CKBH,CLBH,CNO  ) KCRK');
    SQL.Add('Left join CLZL_LS on CLZL_LS.CLDH=KCRK.CLDH');
    SQL.Add('Left join CLZL on CLZL.CLDH=KCRK.CLDH');
    SQL.Add('left join KCZLS on KCZLS.CLBH=KCRK.CLDH and KCZLS.CKBH=KCRK.CKBH  ');
    SQL.Add('left join KCZL on KCZL.KCBH=KCZLS.KCBH and KCZLS.CKBH=KCZL.CKBH  ');
    SQL.Add('left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('where 1=1  and KCRK.Qty<>0 ');
    if ((KCBHEdit.Text<>'') and (KCBH1Edit.Text='')) then
     SQL.Add('   and KCZL.KCBH like '''+KCBHEdit.Text+'%'' ')
    else if ((KCBHEdit.Text='') and (KCBH1Edit.Text<>'')) then
     SQL.Add('   and KCZL.KCBH like '''+KCBH1Edit.Text+'%'' ')
    else if ((KCBHEdit.Text<>'') and (KCBH1Edit.Text<>'')) then
     SQL.Add('   and (KCZL.KCBH>= '''+KCBHEdit.Text+''' and KCZL.KCBH<= '''+KCBH1Edit.Text+''')   ');
    //Sum Total
    if ((CBX1.Text='ALL') and (CKBHBox.Checked=true)) then
    begin
    SQL.Add(' ) KCRK Group by KCRK.CLDH,KCRK.JHDH,KCRK.YWPM,KCRK.ZWPM,KCRK.DWBH ');
    end else  if ((CBX1.Text<>'ALL') and (CKBHBox.Checked=true)) then
    begin
    SQL.Add(' ) KCRK Group by KCRK.CKBH,KCRK.CLDH,KCRK.JHDH,KCRK.YWPM,KCRK.ZWPM,KCRK.DWBH ');
    end;
    //
    SQL.Add(') KCRK order by KCRK.KCBH,KCRK.CLDH,KCRK.CNO ');
    //funcObj.WriteErrorLog(sql.Text);
    //memo1.Text:=sql.Text;
    //showmessage(sql.text);
    Active:=true;
  end;
end;
procedure TWareStock.CalCulate_KCCLMONTH_HGBH();
begin
  //
  CalWarehouseDate(StockDT1);
  if StockDT1.Date<strtodate('2021/03/01') then
  begin
    CalCulate_KCCLMONTH_HGBH_NK();
  end else
  begin
    CalCulate_KCCLMONTH_HGBH_NKHD();
  end;

end;
//
procedure TWareStock.Button2Click(Sender: TObject);
begin
  Excel1.Click;
end;

procedure TWareStock.Excel2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,offset:integer;
    IsTilte:boolean;
begin
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    //
    IsTilte:=false;
    WorkBook:=eclApp.workbooks.Add;
    KHOQry1.First;
    while not KHOQry1.Eof do
    begin
      if KHOQry1.FieldByName('Qty').Value<0 then
      begin
        for j:=9 to 15 do
        begin
          if KHOQry1.Fields[j].Value<0 then
          begin
            with TemQry do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('select KCLL.CKBH,KCLLS.HGLB,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.CNO,KCLLS.Qty,KCLL.USERDATE,KCLL.USERID,KCLLS.LLMemo,A.HGBH  ');
              SQL.Add('from KCLLS ');
              SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
              //
              if KHOQry1.Fields[j].FieldName='NK' then
              SQL.Add('left join CLHG A on A.CLBH=KCLLS.CLBH ')
              else if KHOQry1.Fields[j].FieldName='HD' then
              SQL.Add('left join CLHG A on A.CLBH=KCLLS.CLBH ')
              else if KHOQry1.Fields[j].FieldName='TC' then
              SQL.Add('left join CLTC A on A.CLBH=KCLLS.CLBH ')
              else if KHOQry1.Fields[j].FieldName='KD' then
              SQL.Add('left join CLKD A on A.CLBH=KCLLS.CLBH ')
              else
              SQL.Add('left join CLKD A on A.CLBH=''ZZZZ'' ');
              //
              SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
              SQL.Add('       '''+WareStock.sSTDT+''' and '''+WareStock.sEDDT+'''  ');
              SQL.Add('       and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 ');
              SQL.Add('       and KCLLS.CLBH='''+KHOQry1.FieldByName('CLDH').AsString+''' ');
              SQL.Add('       and KCLL.CKBH='''+KHOQry1.FieldByName('CKBH').AsString+''' ');
              SQL.Add('       and IsNull(KCLLS.CNO,'''')='''+KHOQry1.FieldByName('CNO').AsString+'''  ');
              SQL.Add(' and (HGLB='''+KHOQry1.Fields[j].FieldName+''') ');
              //funcObj.WriteErrorLog(sql.Text);
              Active:=true;
            end;
            //欄位抬頭
            if IsTilte=false then
            begin
              offset:=2;
              for  i:=1  to  TemQry.fieldcount   do
              begin
                eclApp.Cells(1,i+1):=TemQry.fields[i-1].FieldName;
              end;
              IsTilte:=true;
            end;
            TemQry.First;
            while   not  TemQry.Eof   do
            begin
              eclApp.Cells(offset,1):=j-1;
              for   i:=1   to   TemQry.fieldcount   do
              begin
                eclApp.Cells(offset,i+1):=TemQry.Fields[i-1].Value;
              end;
              TemQry.Next;
              inc(offset);
            end;
          end;
        end;
      end;
      KHOQry1.Next;
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on  F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TWareStock.Button4Click(Sender: TObject);
begin
  WareStock_Print:=TWareStock_Print.Create(self);
  WareStock_Print.Quickrep1.prepare;
  WareStock_Print.PageN.caption:=inttostr(WareStock_Print.quickrep1.QRPrinter.pagecount);
  WareStock_Print.Quickrep1.preview;
  WareStock_Print.Free;
end;

procedure TWareStock.Button5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
    tmp: string;
    year,month,day:word;
    sYear,sMonth,sDay:String;
begin
  DecodeDate(StockDT1.Date,Year,Month,Day);
  sYear:=floattostr(year);
  sMonth:=floattostr(month);
  sDay:=floattostr(day);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  if length(sDay)=1 then
    sDay:='0'+sDay;
  //
  if (sMonth<>'06') and (sMonth<>'12') then
  begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Shipping_SN14_Monthly.xlsx'),Pchar(AppDir+'Additional\Shipping_SN14_Monthly.xlsx'),false);
     if FileExists(AppDir+'Additional\Shipping_SN14_Monthly.xlsx') then
     begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Shipping_SN14_Monthly.xlsx');
          eclApp.WorkSheets[1].Activate;
          eclApp.Cells(3,1):= sYear+'年'+sMonth+'月份原物料盤點表';
          eclApp.Cells(5,2):=main.Edit2.Text;
          //
          KHOQry1.First;
          j:=9;
          for i:=1 to KHOQry1.RecordCount do
          begin
            eclApp.ActiveSheet.Rows[j].Insert(-4121);
            eclApp.ActiveSheet.Rows[j].Font.Name:='Arial';
            eclApp.ActiveSheet.Rows[j].Font.Size := 10;
            eclApp.ActiveSheet.Rows[j].RowHeight:=35;
            //
            eclApp.Cells(j,1):=inttostr(i);
            eclApp.Cells(j,2):=KHOQry1.FieldByName('CLDH').Value;
            eclApp.Cells(j,3):=KHOQry1.FieldByName('KCMC').Value;
            eclApp.Cells(j,5):=KHOQry1.FieldByName('YWPM').Value;
            eclApp.Cells(j,6):=KHOQry1.FieldByName('DWBH').Value;
            eclApp.Cells(j,7):=KHOQry1.FieldByName('Qty').Value;
            eclApp.Cells(j,12):=KHOQry1.FieldByName('LBBH').Value;
            eclApp.Cells(j,14):=KHOQry1.FieldByName('KCBH').Value;
            //
            tmp := IntToStr(j);
            eclApp.Range['C' + tmp + ':D' + tmp].Merge;
            eclApp.Range['H' + tmp + ':I' + tmp].Merge;
            eclApp.Range['J' + tmp + ':K' + tmp].Merge;
            KHOQry1.Next;
            inc(j);
          end;
          // add outline
          for k:=1 to 4 do
          begin
             eclApp.range[eclApp.cells[9,1],eclApp.cells[j-1,14]].borders[k].linestyle:=1;
          end;
          //eclapp.columns.autofit;
          showmessage('Succeed.');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
     end;
  end else
  begin
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Shipping_SN14_Yearly.xlsx'),Pchar(AppDir+'Additional\Shipping_SN14_Yearly.xlsx'),false);
     if FileExists(AppDir+'Additional\Shipping_SN14_Yearly.xlsx') then
     begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Shipping_SN14_Yearly.xlsx');
          eclApp.WorkSheets[1].Activate;
          eclApp.Cells(4,6):='Ngay 日 '+sDay+' thang 月 '+sMonth+' nam 年 '+sYear;
          //
          KHOQry1.First;
          j:=8;
          for i:=1 to KHOQry1.RecordCount do
          begin
            eclApp.ActiveSheet.Rows[j].Insert(-4121);
            eclApp.ActiveSheet.Rows[j].Font.Name:='Arial';
            eclApp.ActiveSheet.Rows[j].Font.Size := 10;
            eclApp.ActiveSheet.Rows[j].RowHeight:=35;
            //
            eclApp.Cells(j,1):=inttostr(i);
            eclApp.Cells(j,2):=KHOQry1.FieldByName('CLDH').Value;
            eclApp.Cells(j,3):=KHOQry1.FieldByName('KCMC').Value;
            eclApp.Cells(j,5):=KHOQry1.FieldByName('YWPM').Value;
            eclApp.Cells(j,6):=KHOQry1.FieldByName('DWBH').Value;
            eclApp.Cells(j,7):=KHOQry1.FieldByName('Qty').Value;
            eclApp.Cells(j,11):=KHOQry1.FieldByName('LBBH').Value;
            eclApp.Cells(j,13):=KHOQry1.FieldByName('KCBH').Value;
            //
            tmp := IntToStr(j);
            eclApp.Range['C' + tmp + ':D' + tmp].Merge;
            KHOQry1.Next;
            inc(j);
          end;
          // add outline
          for k:=1 to 4 do
          begin
             eclApp.range[eclApp.cells[8,1],eclApp.cells[j-1,13]].borders[k].linestyle:=1;
          end;
          //eclapp.columns.autofit;
          showmessage('Succeed.');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
     end;
  end;
end;

procedure TWareStock.Button6Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row, Days, Counter: integer;
  TargetDate: TDate;
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
    eclApp.Rows[1].Font.Size := 10;
    eclApp.Cells[1, 1] := 'NO';
    eclapp.Columns[1].ColumnWidth := 3;
    eclApp.Cells[1, 2] := 'CLDH';   
    eclapp.Columns[2].ColumnWidth := 11.5;
    eclApp.Cells[1, 3] := 'KCBH';
    eclapp.Columns[3].ColumnWidth := 9;
    eclApp.Cells[1, 4] := 'Qty';
    eclapp.Columns[4].ColumnWidth := 6;
    eclApp.Cells[1, 5] := 'NK';
    eclapp.Columns[5].ColumnWidth := 6;
    eclApp.Cells[1, 6] := 'TC';
    eclapp.Columns[6].ColumnWidth := 6;
    eclApp.Cells[1, 7] := 'HD';
    eclapp.Columns[7].ColumnWidth := 6;
    eclApp.Cells[1, 8] := 'KD';
    eclapp.Columns[8].ColumnWidth := 6;
    eclApp.Cells[1, 9] := 'XT';
    eclapp.Columns[9].ColumnWidth := 6; 
    eclapp.Columns[10].ColumnWidth := 5.2;

    Days := DaysBetween(EndOfTheMonth(Date), StartOfTheMonth(Date)) + 1;
    TargetDate := StartOfTheMonth(Date);
    for Col := 11 to Days+10 do
    begin
      eclApp.Cells[1, Col] := FormatDateTime('M/d', TargetDate);
      eclApp.Cells[1, Col].NumberFormatLocal := 'm/d;@';
      eclapp.Columns[Col].ColumnWidth := 3.5;
      if (DayOfWeek(TargetDate) = 1) then
        eclApp.Cells[1, Col].Interior.Color := $00807CFF;
      TargetDate := IncDay(TargetDate);
    end;
    Col := Days+11;
    eclApp.Cells[1, Col] := 'SUM';
    eclApp.Cells[1, Col+1] := 'Total';

    KHOQry1.First;
    Row := 2;
    Counter := 1;
    while not KHOQry1.Eof do
    begin
      eclApp.Range[eclApp.Cells[Row, 1], eclApp.Cells[Row+1, 1]].Merge;
      eclApp.Cells[Row, 1] := Counter;
      eclApp.Range[eclApp.Cells[Row, 2], eclApp.Cells[Row+1, 2]].Merge;
      eclApp.Cells[Row, 2] := KHOQry1.FieldByName('CLDH').Value;
      eclApp.Range[eclApp.Cells[Row, 3], eclApp.Cells[Row+1, 3]].Merge;
      eclApp.Cells[Row, 3] := KHOQry1.FieldByName('KCBH').Value;
      eclApp.Range[eclApp.Cells[Row, 4], eclApp.Cells[Row+1, 4]].Merge;
      eclApp.Cells[Row, 4] := KHOQry1.FieldByName('Qty').Value;
      eclApp.Cells[Row, 4].Interior.Color := $0099E6FF;
      eclApp.Range[eclApp.Cells[Row, 5], eclApp.Cells[Row+1, 5]].Merge;
      eclApp.Cells[Row, 5] := KHOQry1.FieldByName('NK').Value;
      eclApp.Range[eclApp.Cells[Row, 6], eclApp.Cells[Row+1, 6]].Merge;
      eclApp.Cells[Row, 6] := KHOQry1.FieldByName('TC').Value;
      eclApp.Range[eclApp.Cells[Row, 7], eclApp.Cells[Row+1, 7]].Merge;
      eclApp.Cells[Row, 7] := KHOQry1.FieldByName('HD').Value;
      eclApp.Range[eclApp.Cells[Row, 8], eclApp.Cells[Row+1, 8]].Merge;
      eclApp.Cells[Row, 8] := KHOQry1.FieldByName('KD').Value;
      eclApp.Range[eclApp.Cells[Row, 9], eclApp.Cells[Row+1, 9]].Merge;
      eclApp.Cells[Row, 9] := KHOQry1.FieldByName('XT').Value;
      eclApp.Cells[Row, 10] := 'Nhap';
      eclApp.Cells[Row+1, 10] := 'Xuat';
      eclApp.Range[eclApp.Cells[Row, Col+1], eclApp.Cells[Row+1, Col+1]].Merge;

      Inc(Row, 2);
      Inc(Counter);
      KHOQry1.Next;
    end;

    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row-1, Col+1]].HorizontalAlignment := xlHAlignCenter;
    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row-1, Col+1]].Borders[1].LineStyle := xlContinuous;
    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row-1, Col+1]].Borders[2].LineStyle := xlContinuous;
    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row-1, Col+1]].Borders[3].LineStyle := xlContinuous;
    eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[Row-1, Col+1]].Borders[4].LineStyle := xlContinuous;

    ShowMessage('Succeed.');
    eclApp.Visible := true;
  except on F:Exception do
    ShowMessage(F.Message);
  end;
end;

procedure TWareStock.CheckBox1Click(Sender: TObject);
begin
  if IsHide_Warehouse_XT='Y' then
  begin
    IsHide_Warehouse_XT := 'N';
    DBGridEh1.Columns[15].Visible:=true;
    DBGridEh1.Columns[17].Visible:=true;
    GridKhoMas.Columns[9].Visible:=true;
    GridKhoMas.Columns[11].Visible:=true;
    GridKhoDet.Columns[13].Visible:=true;
    GridKhoDet.Columns[15].Visible:=true;
  end
  else begin
    IsHide_Warehouse_XT := 'Y';
    DBGridEh1.Columns[15].Visible:=false;
    DBGridEh1.Columns[17].Visible:=false;
    GridKhoMas.Columns[9].Visible:=false;
    GridKhoMas.Columns[11].Visible:=false;
    GridKhoDet.Columns[13].Visible:=false;
    GridKhoDet.Columns[15].Visible:=false;
  end;
end;

procedure TWareStock.Label3DblClick(Sender: TObject);
begin
  CheckBox1.Visible := not CheckBox1.Visible;
end;

end.

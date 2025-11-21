unit DetailInVNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  ComCtrls, Comobj, iniFiles,ShellApi, DateUtils, Buttons;


type
  TDetailInVNo = class(TForm)
    PC1: TPageControl;
    Qtemp: TQuery;
    TabSheet1: TTabSheet;
    Panel6: TPanel;
    Label7: TLabel;
    RYEdit: TEdit;
    DBGridEh4: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh5: TDBGridEh;
    Button4: TButton;
    Button5: TButton;
    RYDS: TDataSource;
    RYQuery: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    FloatField2: TFloatField;
    StringField10: TStringField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    StringField11: TStringField;
    FloatField3: TFloatField;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    HGDS: TDataSource;
    HGQuery: TQuery;
    FloatField4: TFloatField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    CurrencyField14: TCurrencyField;
    CurrencyField15: TCurrencyField;
    Button6: TButton;
    MatEdit: TEdit;
    Label8: TLabel;
    N1: TMenuItem;
    MAHG1: TMenuItem;
    Label9: TLabel;
    HGEdit: TEdit;
    GroupBox1: TGroupBox;
    RB2: TRadioButton;
    RB1: TRadioButton;
    CK2: TCheckBox;
    DDBH_MLab: TLabel;
    CK1: TCheckBox;
    RYQueryRate_HG: TFloatField;
    RYQueryHG_NO: TStringField;
    RYQueryRate_HD: TFloatField;
    RYQueryHD_NO: TStringField;
    RYQueryTHQty: TCurrencyField;
    Label1: TLabel;
    HDEdit: TEdit;
    HGQueryTC: TFloatField;
    RYQueryTC: TCurrencyField;
    RYQueryTC_NO: TStringField;
    RYQueryRate_TC: TFloatField;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGridEh;
    DS2: TDataSource;
    KCLL: TQuery;
    KCLLLLNO: TStringField;
    KCLLSCBH: TStringField;
    KCLLCFMDATE: TDateTimeField;
    KCLLQty: TCurrencyField;
    KCLLCFMID: TStringField;
    KCLLMemo: TStringField;
    Panel1: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CBX1: TComboBox;
    CB3: TCheckBox;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    KCRK: TQuery;
    KCRKRKNO: TStringField;
    KCRKUSERDATE: TDateTimeField;
    KCRKQty: TCurrencyField;
    KCRKZSBH: TStringField;
    KCRKCFMID: TStringField;
    KCRKMemo: TStringField;
    KCRKInvoice: TStringField;
    KCRKPaperNo: TStringField;
    KCRKZLBH: TStringField;
    Splitter1: TSplitter;
    Button2: TButton;
    RYQueryPKNO: TStringField;
    RYQueryRate_KD: TFloatField;
    RYQueryKD_NO: TStringField;
    RYQueryCLSL_KT: TFloatField;
    HGQueryCLSL_KT: TFloatField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    HGQueryZLBH: TStringField;
    OpenDialog1: TOpenDialog;
    B_ImportP3: TBitBtn;
    HGQueryUsage: TFloatField;
    HGQueryCNO: TStringField;
    HGQueryHGPM: TStringField;
    HGQueryUnitC: TStringField;
    HGQueryRate: TFloatField;
    HGQueryRateNK: TFloatField;
    HGQueryRateTC: TFloatField;
    RYQueryHG1_NO: TStringField;
    RYQueryRate_HG1: TFloatField;
    RYQueryTC1_NO: TStringField;
    RYQueryRate_TC1: TFloatField;
    RYQueryHD1_NO: TStringField;
    RYQueryRate_HD1: TFloatField;
    RYQueryKD1_NO: TStringField;
    RYQueryRate_KD1: TFloatField;
    RYQueryNK1: TCurrencyField;
    RYQueryTC1: TCurrencyField;
    RYQueryHD1: TCurrencyField;
    RYQueryKD1: TCurrencyField;
    RYQueryH11: TCurrencyField;
    HGQueryNK1: TCurrencyField;
    HGQueryTC1: TCurrencyField;
    HGQueryHD1: TCurrencyField;
    HGQueryKD1: TCurrencyField;
    HGQueryH11: TCurrencyField;
    RYQueryRate_NQ: TFloatField;
    RYQueryNQ_NO: TStringField;
    RYQueryNQ: TCurrencyField;
    RYQueryRate_NKNQ: TFloatField;
    RYQueryNKNQ_NO: TStringField;
    RYQueryNKNQ: TCurrencyField;
    HGQueryNQ: TCurrencyField;
    HGQueryNKNQ: TCurrencyField;
    Button3: TButton;
    Button7: TButton;
    Edit2: TEdit;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RYQueryCalcFields(DataSet: TDataSet);
    procedure DBGridEh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure MAHG1Click(Sender: TObject);
    procedure DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure RYEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure HGQueryCalcFields(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure B_ImportP3Click(Sender: TObject);
    procedure DBGridEh5DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private

    GSBH_VGC:String;
    GSBH_XuongR_2Ma:String;
    RubberGSBH:array of String;
    RYEditSubSQL:String;
    WH_Decimal:String;
    { Private declarations }
    procedure Readini();
    procedure ButtonMaHG_V2(QueryObj:TQuery);
    procedure ButtonMaVatTu_V2();
    procedure ExportFormatExcel();
    procedure ExportFormatExcel_XuatXu();
    //
    procedure ButtonMaHG_Sep(DDBH_M:string;SepCount:string;DDBH_C_SQLStr:String;QueryObj:TQuery);
    procedure ButtonMaVatTu_Sep(DDBH_M:String;SepCount:String;DDBH_C_SQLStr:String);
    //
    procedure Show_Xuong_VGC(Query:TQuery);
    procedure Show_NotIn_Xuong_VGC(Query:TQuery);
    procedure Show_Xuong_VGC_Sep(Query:TQuery;DDBH_M:String;SepCount:String;DDBH_C_SQLStr:String);
    procedure Show_NotIn_Xuong_VGC_Sep(Query:TQuery;DDBH_M:String;SepCount:String;DDBH_C_SQLStr:String);
    procedure RYEditPaste();
    function GetMutiRYSubSQL(Str:String):String;
  public
    IsHide_Warehouse_XT:string;
    { Public declarations }
    procedure ExportExcel(MasQry:TQuery;DetQry:TQuery);
  end;

var
  DetailInVNo: TDetailInVNo;

implementation
  uses main1,DetailInVNO_Det1, MaHaiQuan1,FunUnit,untClipboard;
{$R *.dfm}

procedure TDetailInVNo.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //
  WH_Decimal:='2';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
    finally
      MyIni.Free;
    end;
  end;

  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    DBGridEh4.Columns[23].Visible:=false;
    DBGridEh4.Columns[25].Visible:=false;
    DBGridEh5.Columns[12].Visible:=false;
    DBGridEh5.Columns[14].Visible:=false;
    DBGridEh4.Columns[5].Visible:=false;
    DBGridEh5.Columns[5].Visible:=false;
    DBGridEh5.Columns[22].Visible:=false;
    DBGridEh5.Columns[23].Visible:=false;
    DBGridEh5.Columns[24].Visible:=false;
    DBGridEh5.Columns[4].Visible:=false;
  end;
end;

procedure TDetailInVNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDetailInVNo.FormDestroy(Sender: TObject);
begin
  DetailInVNo:=nil;
end;

procedure TDetailInVNo.Button2Click(Sender: TObject);
begin
  ExportFormatExcel_XuatXu();
end;
procedure TDetailInVNo.ExportFormatExcel_XuatXu();
var AppDir:String;
    i,j,datai:integer;
    eclApp,WorkBook:olevariant;
    DataRow,ExcelRow:integer;
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SHIPPPING_CO_SN13.xls'),Pchar(AppDir+'Additional\SHIPPPING_CO_SN13.xlsx'),false);
   if FileExists(AppDir+'Additional\SHIPPPING_CO_SN13.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\SHIPPPING_CO_SN13.xlsx');
        for i:=1 to (HGQuery.RecordCount-1) do
        begin
          eclApp.ActiveSheet.Rows[14].Copy;
          eclApp.ActiveSheet.Rows[14].Insert;
        end;
        //
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Select DDZL.DDBH,Sum(DDZLS.Quantity) as Quantity,Sum(Quantity*IPrice) as FOB ');
          SQL.Add('from DDZL');
          SQL.Add('left join DDZLS on DDZL.DDBH=DDZLS.DDBH');
          SQL.Add('where DDZL.DDBH='''+RYEdit.Text+'''');
          SQL.Add('Group by DDZL.DDBH,DDZL.Pairs');
          Active:=true;
          if RecordCount>0 then
          begin
            eclApp.Cells(7,11):=Qtemp.FieldByName('DDBH').AsString;
            eclApp.Cells(7,9):=Qtemp.FieldByName('Quantity').AsString;
            eclApp.Cells(8,9):=Qtemp.FieldByName('FOB').AsString;
          end;
          Active:=false;
        end;
        //
        HGQuery.First;
        datai:=0;
        for i:=0 to HGQuery.RecordCount -1 do
        begin
          eclApp.Cells(datai+14,1):=inttostr(i+1);
          if HGQuery.FieldByName('HG_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+14,2):=HGQuery.FieldByName('HG_HGPM').AsString;
           eclApp.Cells(datai+14,4):=HGQuery.FieldByName('HG_UNit').AsString;
           eclApp.Cells(datai+14,5):=HGQuery.FieldByName('NK').AsString;
           if HGQuery.FieldByName('TK_Country').AsString<>'' then
             eclApp.Cells(datai+14,9):=HGQuery.FieldByName('TK_Country').AsString
           else
             eclApp.Cells(datai+14,9):='Khong co xuat xu';
           if HGQuery.FieldByName('Declaretion').AsString<>'' then
           eclApp.Cells(datai+14,10):='TK'+HGQuery.FieldByName('Declaretion').AsString;
           eclApp.Cells(datai+14,11):=HGQuery.FieldByName('NGAYDANGKY').AsString;
           //
           datai:=datai+1;
          end;
          if HGQuery.FieldByName('TC_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+14,2):=HGQuery.FieldByName('TC_HGPM').AsString;
           eclApp.Cells(datai+14,4):=HGQuery.FieldByName('TC_Unit').AsString;
           eclApp.Cells(datai+14,5):=HGQuery.FieldByName('TC').AsString;
           if HGQuery.FieldByName('TK_Country').AsString<>'' then
             eclApp.Cells(datai+14,9):=HGQuery.FieldByName('TK_Country').AsString
           else
             eclApp.Cells(datai+14,9):='Khong co xuat xu';
           if HGQuery.FieldByName('Declaretion').AsString<>'' then
           eclApp.Cells(datai+14,10):='TK'+HGQuery.FieldByName('Declaretion').AsString;
           eclApp.Cells(datai+14,11):=HGQuery.FieldByName('NGAYDANGKY').AsString;
           datai:=datai+1;
          end;
          if HGQuery.FieldByName('HD_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+14,2):=HGQuery.FieldByName('HD_HGPM').AsString;
           eclApp.Cells(datai+14,4):=HGQuery.FieldByName('HD_Unit').AsString;
           eclApp.Cells(datai+14,5):=HGQuery.FieldByName('HD').AsString;
           if HGQuery.FieldByName('HD_Country').AsString<>'' then
             eclApp.Cells(datai+14,9):=HGQuery.FieldByName('HD_Country').AsString
           else
             eclApp.Cells(datai+14,9):='Khong co xuat xu';
           //if HGQuery.FieldByName('Declaretion').AsString<>'' then
           if HGQuery.FieldByName('DOCNO').AsString<>'' then
           eclApp.Cells(datai+14,10):='HD'+HGQuery.FieldByName('DOCNO').AsString;
           eclApp.Cells(datai+14,11):=HGQuery.FieldByName('VATDATE').AsString;
           datai:=datai+1;
          end;
          //if  HGQuery.FieldByName('Qty').value<>(HGQuery.FieldByName('CLSL').value)   then  eclApp.Rows[i+11].Font.Color := clRed;  //Gender Size不符合
          HGQuery.Next;
        end;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;
//
procedure TDetailInVNo.ExportExcel(MasQry:TQuery;DetQry:TQuery);
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
      if IsHide_Warehouse_XT='Y' then
      begin
        if (MasQry.fields[i-1].FieldName<>'XT') and (MasQry.fields[i-1].FieldName<>'ZZ') and (MasQry.fields[i-1].FieldName<>'CLSL_KT') and (MasQry.fields[i-1].FieldName<>'RateNK') and (MasQry.fields[i-1].FieldName<>'RateTC') and (MasQry.fields[i-1].FieldName<>'Rate') and (MasQry.fields[i-1].FieldName<>'Usage')  then
          eclApp.Cells(1,i+1):=MasQry.fields[i-1].FieldName;
      end else
      begin
        if (MasQry.fields[i-1].FieldName<>'CLSL_KT') and (MasQry.fields[i-1].FieldName<>'RateNK') and (MasQry.fields[i-1].FieldName<>'RateTC') and (MasQry.fields[i-1].FieldName<>'Rate') and (MasQry.fields[i-1].FieldName<>'Usage') then
          eclApp.Cells(1,i+1):=MasQry.fields[i-1].FieldName;
      end;
    end;
    MasQry.First;
    j:=2;
    while   not  MasQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   MasQry.fieldcount   do
      begin
        if IsHide_Warehouse_XT='Y' then
        begin
          if (MasQry.fields[i-1].FieldName<>'XT') and (MasQry.fields[i-1].FieldName<>'ZZ') and (MasQry.fields[i-1].FieldName<>'CLSL_KT') and (MasQry.fields[i-1].FieldName<>'RateNK') and (MasQry.fields[i-1].FieldName<>'RateTC') and (MasQry.fields[i-1].FieldName<>'Rate') and (MasQry.fields[i-1].FieldName<>'Usage') then
             eclApp.Cells(j,i+1):=MasQry.Fields[i-1].Value;
        end else
        begin
          if (MasQry.fields[i-1].FieldName<>'CLSL_KT') and (MasQry.fields[i-1].FieldName<>'RateNK') and (MasQry.fields[i-1].FieldName<>'RateTC') and (MasQry.fields[i-1].FieldName<>'Rate') and (MasQry.fields[i-1].FieldName<>'Usage') then
            eclApp.Cells(j,i+1):=MasQry.Fields[i-1].Value;
        end;
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

procedure TDetailInVNo.Button5Click(Sender: TObject);
var DDBH_M,DDBH_C_SQLStr,SepCount:String;
    i:integer;
begin
  //
  RYEditSubSQL:=GetMutiRYSubSQL(RYEdit.Text);
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    sql.Add('select * from ddzl where ddbh '+RYEditSubSQL+' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
    if RecordCount=0 then
    begin
      showmessage('Vui long nhap chinh xac don hang');
      abort;
    end
  end;
  DDBH_M:='';
  RYEditSubSQL:=GetMutiRYSubSQL(RYEdit.Text);
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DDZLTR_C.DDBH,DDZLTR_C.DDBH1 from ( ');
    SQL.Add('Select DDBH from DDZLTR where DDBH1='''+RYEdit.Text+''' and IsKCLLs=''N'' Group by DDBH ) DDZLTR_M ');
    SQL.Add('inner join DDZLTR as DDZLTR_C on DDZLTR_M.DDBH=DDZLTR_C.DDBH ');
    Active:=true;
    if RecordCount>0 then
    begin
      DDBH_C_SQLStr:='';
      DDBH_M:=FieldByName('DDBH').AsString;
      //簡化SQL
      if RB1.Checked=true then
      begin
        DDBH_C_SQLStr:=DDBH_C_SQLStr+' and NOT EXISTS (select CLBH from (SELECT CLBH from DDZL_ZLZLS2 ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH in (Select DDBH1 from DDZLTR where DDBH='''+FieldByName('DDBH').AsString+'''  and IsKCLLs=''N'' Group by DDBH1  ) Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH)';
      end else
        DDBH_C_SQLStr:=DDBH_C_SQLStr+' and NOT EXISTS (select CLBH from (SELECT CLBH from ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH in (Select DDBH1 from DDZLTR where DDBH='''+FieldByName('DDBH').AsString+'''  and IsKCLLs=''N'' Group by DDBH1  ) Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH)';
      SepCount:=inttostr(RecordCount);
    end;
    Active:=false;
  end;
  DDBH_MLab.Caption:=DDBH_M;
  if DDBH_M='' then
  begin
      ButtonMaHG_V2(HGQuery)
  end else
  begin
      ButtonMaHG_Sep(DDBH_M,SepCount,DDBH_C_SQLStr,HGQuery)
  end;
  //
end;

procedure TDetailInVNo.RYQueryCalcFields(DataSet: TDataSet);
begin
  with RYQuery do
  begin
    if FieldByName('CLSL').value<>0 then
    begin
      FieldByName('Person').value:=FieldByName('Qty').value/FieldByName('CLSL').value*100;
    end;
  end;
end;

procedure TDetailInVNo.DBGridEh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((RYQuery.FieldByName('DType').AsString='Gia cong'))  then          //
  begin
    DBGridEh4.canvas.Brush.Color:=clBtnface;
    DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  if ((RYQuery.FieldByName('NK').AsString<>'0'))  then          //
  begin
    if RYQuery.FieldByName('HG_NO').AsString='' then
     if DataCol=10 then
       DBGridEh4.canvas.Brush.Color:=clFuchsia;
    if RYQuery.FieldByName('Rate_HG').AsString='' then
     if DataCol=11 then
       DBGridEh4.canvas.Brush.Color:=clFuchsia;
    DBGridEh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TDetailInVNo.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if( not RYQuery.FieldByName('Qty').IsNull) then
  begin
    if  ((strtofloat(floattostr(RYQuery.FieldByName('Qty').value))>(strtofloat(floattostr(RYQuery.FieldByName('CLSL').value))*1.01)))   then
    begin
      DBGridEh4.canvas.font.color:=clred;
    end;
    if  ((strtofloat(floattostr(RYQuery.FieldByName('Qty').value))<strtofloat(floattostr(RYQuery.FieldByName('CLSL').value))) and (RYQuery.FieldByName('CLSL').value>0))    then
    begin
      DBGridEh4.canvas.font.color:=clblue;
    end;
  end;
  
  if(( RYQuery.FieldByName('Qty').IsNull) and (RYQuery.FieldByName('CLSL').value>0)) then
  begin
     DBGridEh4.canvas.font.color:=clblue;
  end;
end;

procedure TDetailInVNo.MenuItem1Click(Sender: TObject);
begin
  ExportExcel(RYQuery,nil);
end;

procedure TDetailInVNo.MenuItem3Click(Sender: TObject);
begin
  DetailInVNO_Det:=TDetailInVNO_Det.Create(self);
  DetailInVNO_Det.ZLBH:=DetailInVNo.RYQuery.FieldByName('ZLBH').AsString;
  DetailInVNO_Det.CLBH:=DetailInVNo.RYQuery.FieldByName('CLBH').AsString;
  DetailInVNO_Det.MJBH:=DetailInVNo.RYQuery.FieldByName('MJBH').AsString;
  DetailInVNO_Det.DType:=DetailInVNo.RYQuery.FieldByName('DType').AsString;
  DetailInVNO_Det.GSBH:=DetailInVNo.RYQuery.FieldByName('GSBH').AsString;
  if IsHide_Warehouse_XT='Y' then
  begin
    DetailInVNO_Det.DBGridEh1.Columns[13].Visible:=false;
    DetailInVNO_Det.DBGridEh1.Columns[15].Visible:=false;
    DetailInVNO_Det.DBGridEh2.Columns[11].Visible:=false;
    DetailInVNO_Det.DBGridEh2.Columns[13].Visible:=false;
  end;
  DetailInVNO_Det.ShowDetail();
  DetailInVNO_Det.ShowModal;
end;

procedure TDetailInVNo.Button4Click(Sender: TObject);
begin
   ExportFormatExcel();
end;

procedure TDetailInVNo.ExportFormatExcel();
var AppDir:String;
    i,j,datai:integer;
    eclApp,WorkBook:olevariant;
    DataRow,ExcelRow:integer;
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SP_N13.xls'),Pchar(AppDir+'Additional\SP_N13.xls'),false);
   if FileExists(AppDir+'Additional\SP_N13.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\SP_N13.xls');
        for i:=1 to (HGQuery.RecordCount-1) do
        begin
          eclApp.ActiveSheet.Rows[12].Copy;
          eclApp.ActiveSheet.Rows[12].Insert;
          eclApp.Range[eclApp.Cells[12,1],eclApp.Cells[12+i,1]].merge;
          eclApp.Range[eclApp.Cells[12,2],eclApp.Cells[12+i,2]].merge;
          eclApp.Range[eclApp.Cells[12,3],eclApp.Cells[12+i,3]].merge;
          eclApp.Range[eclApp.Cells[12,4],eclApp.Cells[12+i,4]].merge;
        end;
        eclApp.Cells(12,2):=RYEdit.Text;
        eclApp.Cells(12,4):='Doi/Cap';
        eclApp.Cells(12,1):='1';
        HGQuery.First;
        datai:=0;
        for i:=0 to HGQuery.RecordCount -1 do
        begin
          if HGQuery.FieldByName('HG_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+12,5):=HGQuery.FieldByName('HG_NO').AsString;
           eclApp.Cells(datai+12,8):=HGQuery.FieldByName('NK').AsString;
           eclApp.Cells(datai+12,6):=HGQuery.FieldByName('HG_HGPM').AsString ;
           eclApp.Cells(datai+12,7):=HGQuery.FieldByName('HG_UNit').AsString ;
           datai:=datai+1;
          end;
          if HGQuery.FieldByName('TC_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+12,5):=HGQuery.FieldByName('TC_NO').AsString;
           eclApp.Cells(datai+12,8):=HGQuery.FieldByName('TC').AsString;
           eclApp.Cells(datai+12,6):=HGQuery.FieldByName('TC_HGPM').AsString ;
           eclApp.Cells(datai+12,7):=HGQuery.FieldByName('TC_UNit').AsString ;
           datai:=datai+1;
          end;
          if HGQuery.FieldByName('HD_NO').AsString<>'' then
          begin
           eclApp.Cells(datai+12,5):=HGQuery.FieldByName('HD_NO').AsString;
           eclApp.Cells(datai+12,8):=HGQuery.FieldByName('HD').AsString;
           eclApp.Cells(datai+12,6):=HGQuery.FieldByName('HD_HGPM').AsString ;
           eclApp.Cells(datai+12,7):=HGQuery.FieldByName('HD_UNit').AsString ;
           eclApp.Cells(datai+12,9):='X';
           datai:=datai+1;
          end;
          //if  HGQuery.FieldByName('Qty').value<>(HGQuery.FieldByName('CLSL').value)   then  eclApp.Rows[i+11].Font.Color := clRed;  //Gender Size不符合
          HGQuery.Next;
        end;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

//VGC加工檔
procedure TDetailInVNo.Show_Xuong_VGC(Query:TQuery);
begin
  with Query do
  begin
    SQL.Add('Union all ');
    SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC,case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,');
    SQL.Add('       case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
    SQL.Add('       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) ');
    SQL.Add('                             -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0)-IsNull(KCLLS.NQ,0)-IsNull(KCLLS.NKNQ,0),2),0)  as ZZ,KCLLS.Qty ');
    //20221229 增加來源入庫單
    SQL.Add('       ,KCLLS.PKNO,OrdCL.CLSL-isnull(Rep_Mat.Rep_Qty,0) as CLSL_KT ');
    SQL.Add('       ,case when KCLLS.CNO_NK1='''' then null else CNO_NK1 end CNO_NK1,case when KCLLS.CNO_TC1='''' then null else CNO_TC1 end CNO_TC1,case when KCLLS.CNO_HD1='''' then null else CNO_HD1 end CNO_HD1 ');
    SQL.Add('       ,case when KCLLS.CNO_KD1='''' then null else CNO_KD1 end CNO_KD1 ');
    SQL.Add('       ,IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11');
    SQL.Add('       ,case when KCLLS.CNO_NQ='''' then null else CNO_NQ end CNO_NQ,IsNull(KCLLS.NQ,0) as NQ,case when KCLLS.CNO_NKNQ='''' then null else CNO_NKNQ end CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ ');
    SQL.Add('from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,'''+GSBH_VGC+''' as GSBH ');
    SQL.Add('      from ZLZLS2_YM as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH '+RYEditSubSQL+'  ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0');
    //SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add(') OrdCL');
    //20230906 add CLSL_KT column
    //SQL.Add('left join ( select KCLLS.SCBH,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>''''  group by KCLLS.SCBH,KCLLS.CLBH) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH ');
    SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
    SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
    SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
    SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
    SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH and Rep_Mat.MJBH=OrdCL.MJBH and Rep_Mat.DType=OrdCL.DType ');
    SQL.Add('left join (');
    SQL.Add('      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO) as PKNO,Sum(RKQty) as RKQty,');
    SQL.Add('                  Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ, ');
    SQL.Add('                  Max(CNO_NK1) as CNO_NK1,Max(CNO_TC1) as CNO_TC1,Max(CNO_HD1) as CNO_HD1,Max(CNO_KD1) as CNO_KD1,Sum(NK1) as NK1,Sum(TC1) as TC1,Sum(HD1) as HD1,Sum(KD1) as KD1,Sum(H11) as H11, ');
    SQL.Add('                  Max(CNO_NQ) as CNO_NQ,Sum(NQ) as NQ,Max(CNO_NKNQ) as CNO_NKNQ,Sum(NKNQ) as NKNQ ');
    SQL.Add('      from (');
    SQL.Add('                  ');
    //
    SQL.Add('      select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
    SQL.Add('					Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
    SQL.Add('         Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
    SQL.Add('         Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
    SQL.Add('         Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
    SQL.Add('         Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ, ');
    SQL.Add('         Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ ');
    SQL.Add('		   from KCLLS');
    SQL.Add('      left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    //SQL.Add('      Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('      Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('		   where  KCLLS.CLBH like '''+MatEdit.Text+'%''');
    SQL.Add('				    and KCLLS.SCBH '+RYEditSubSQL+'  ');
    SQL.Add('           and KCLL.GSBH='''+GSBH_VGC+''' and KCLL.CFMID<>''NO'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('		   group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
    SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
    SQL.Add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
    SQL.Add('where 1=1 ');
  end;
end;
procedure TDetailInVNo.Show_Xuong_VGC_Sep(Query:TQuery;DDBH_M:String;SepCount:String;DDBH_C_SQLStr:String);
begin
  with Query do
  begin
    SQL.Add('Union all ');
    SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC,case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,');
    SQL.Add('       case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,KCLLS.RKQty as RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
    SQL.Add('       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0)');
    SQL.Add('              -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0)-IsNull(KCLLS.NQ,0)-IsNull(KCLLS.NKNQ,0),2),0) as ZZ,KCLLS.Qty as Qty,OrdCL_M.CLSL_M,KCLLS.PKNO,Rep_Qty,');

    SQL.Add('       case when KCLLS.CNO_NK1='''' then null else CNO_NK1 end CNO_NK1,case when KCLLS.CNO_TC1='''' then null else CNO_TC1 end CNO_TC1,case when KCLLS.CNO_HD1='''' then null else CNO_HD1 end CNO_HD1, ');
    SQL.Add('       case when KCLLS.CNO_KD1='''' then null else CNO_KD1 end CNO_KD1, ');
    SQL.Add('       IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11,');
    SQL.Add('       case when KCLLS.CNO_NQ='''' then null else CNO_NQ end CNO_NQ,IsNull(KCLLS.NQ,0) as NQ,case when KCLLS.CNO_NKNQ='''' then null else CNO_NKNQ end CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ ');
    SQL.Add('from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,'''+GSBH_VGC+''' as GSBH');    //20190527   DDZL.GSBH-> GSBH_VGC
    SQL.Add('      from ZLZLS2_YM as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+RYEdit.Text+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    //SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add(') OrdCL');
    SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
    SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
    SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH ='''+DDBH_M+''' and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
    SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
    SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH and Rep_Mat.MJBH=OrdCL.MJBH and Rep_Mat.DType=OrdCL.DType ');
    SQL.Add('left join (');
    SQL.Add('      select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO) as PKNO,Sum(RKQty) as RKQty,');
    SQL.Add('             Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ, ');
    SQL.Add('             Max(CNO_NK1) as CNO_NK1,Max(CNO_TC1) as CNO_TC1,Max(CNO_HD1) as CNO_HD1,Max(CNO_KD1) as CNO_KD1,Sum(NK1) as NK1,Sum(TC1) as TC1,Sum(HD1) as HD1,Sum(KD1) as KD1,Sum(H11) as H11, ');
    SQL.Add('             Max(CNO_NQ) as CNO_NQ,Sum(NQ) as NQ,Max(CNO_NKNQ) as CNO_NKNQ,Sum(NKNQ) as NKNQ ');
    SQL.Add('      from (');
    //
    SQL.Add('      select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
    SQL.Add('					Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
    SQL.Add('         Max(KCPKLL.PKNO) as PKNO ,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ,');
    SQL.Add('					Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
    SQL.Add('         Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
    SQL.Add('		   from KCLLS');
    SQL.Add('      left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    //SQL.Add('      Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL  ');
    SQL.Add('      Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('		   where KCLLS.CLBH like '''+MatEdit.Text+'%''');
    SQL.Add('				    and KCLLS.SCBH = '''+DDBH_M+''' ');
    SQL.Add('           and KCLL.GSBH='''+GSBH_VGC+''' and KCLL.CFMID<>''NO'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('		   group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
    SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
    SQL.Add('          ) KCLLS on  KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
    //20171211 訂單拆單, 關連母訂單用量
    SQL.Add('left join (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL_M,DDZL.GSBH ');
    SQL.Add('      from ZLZLS2_YM as ZLZLS2');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+DDBH_M+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,DDZL.GSBH ');
    SQL.Add(') OrdCL_M on  OrdCL.MJBH=OrdCL_M.MJBH and OrdCL.Parent=OrdCL_M.Parent and OrdCL.DType=OrdCL_M.DType and OrdCL.CLBH=OrdCL_M.CLBH');  //20190527 don't need to OrdCL.GSBH=OrdCL_M.GSBH
    //======================================
    SQL.Add('where 1=1 ');
  end;
end;
procedure TDetailInVNo.Show_NotIn_Xuong_VGC(Query:TQuery);
begin
  with Query do
  begin
    //不在現場VA12
    SQL.Add('union all');
    SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty) as TempQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,sum(KCRKCX.RKQty) as RKQty,IsNull(sum(KCRKCX.NK),0) as NK,IsNull(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,IsNull(sum(KCRKCX.KD),0) as KD ');
    SQL.Add('       ,IsNull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKCX.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNull(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0) ');
    SQL.Add('                      -IsNull(sum(KCRKCX.NK1),0)-IsNull(sum(KCRKCX.TC1),0)-IsNull(sum(KCRKCX.HD1),0)-IsNull(sum(KCRKCX.KD1),0)-IsNull(sum(KCRKCX.H11),0)-IsNull(sum(KCRKCX.NQ),0)-IsNull(sum(KCRKCX.NKNQ),0) as ZZ');
    SQL.Add('       ,sum(KCLLS.Qty) as Qty ');
    //20221229 增加來源入庫單
    SQL.Add('       ,Max(KCRKCX.PKNO) as PKNO,''0'' as CLSL_KT ');
    SQL.Add('       ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,IsNull(sum(KCRKCX.NK1),0) as NK1,IsNull(sum(KCRKCX.TC1),0) as TC1,IsNull(sum(KCRKCX.HD1),0) as HD1,IsNull(sum(KCRKCX.KD1),0) as KD1,IsNull(sum(KCRKCX.H11),0) as H11 ');
    SQL.Add('       ,KCRKCX.CNO_NQ,IsNull(sum(KCRKCX.NQ),0) as NQ,KCRKCX.CNO_NKNQ,IsNull(sum(KCRKCX.NKNQ),0) as NKNQ ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
    SQL.Add('           from KCLLS ');
    //SQL.Add('           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');    
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE (KCLL.GSBH ='''+GSBH_VGC+''') and KCLL.CFMID<>''NO'' and NOT EXISTS (select CLBH from (SELECT CLBH from ZLZLS2_YM ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH '+RYEditSubSQL+' Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH) ');
    SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,KCRKCX.CNO_NKNQ');
  end;
end;
procedure TDetailInVNo.Show_NotIn_Xuong_VGC_Sep(Query:TQuery;DDBH_M:String;SepCount:String;DDBH_C_SQLStr:String);
begin
  if RB1.Checked=true then
  begin
    DDBH_C_SQLStr:=stringreplace(DDBH_C_SQLStr, 'from DDZL_ZLZLS2 ZLZLS2', 'from ZLZLS2_YM as ZLZLS2',[rfReplaceAll, rfIgnoreCase]);
  end else
    DDBH_C_SQLStr:=stringreplace(DDBH_C_SQLStr, 'from ZLZLS2', 'from ZLZLS2_YM as ZLZLS2',[rfReplaceAll, rfIgnoreCase]);
  with Query do
  begin
    SQL.Add('union all');
    SQL.Add('select '''+RYEdit.Text+''' as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty)/'+SepCount+' as TempQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,sum(KCRKCX.RKQty)/'+SepCount+' as RKQty,IsNull(sum(KCRKCX.NK)/'+SepCount+',0) as NK,IsNull(sum(KCRKCX.TC)/'+SepCount+',0) as TC,IsNull(sum(KCRKCX.HD)/'+SepCount+',0) as HD,IsNull(sum(KCRKCX.KD)/'+SepCount+',0) as KD,IsNull(sum(KCRKCX.XT)/'+SepCount+',0) as XT,IsNull(sum(KCRKCX.GC)/'+SepCount+',0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+'-IsNull(sum(KCRKCX.NK)/'+SepCount+',0)-IsNull(sum(KCRKCX.TC)/'+SepCount+',0)-IsNull(sum(KCRKCX.HD)/'+SepCount+',0)-IsNull(sum(KCRKCX.KD)/'+SepCount+',0)-IsNull(sum(KCRKCX.XT)/'+SepCount+',0)-IsNull(sum(KCRKCX.GC)/'+SepCount+',0)');
    SQL.Add('       -IsNull(sum(KCRKCX.NK1)/'+SepCount+',0)-IsNull(sum(KCRKCX.TC1)/'+SepCount+',0)-IsNull(sum(KCRKCX.HD1)/'+SepCount+',0)-IsNull(sum(KCRKCX.KD1)/'+SepCount+',0)-IsNull(sum(KCRKCX.H11)/'+SepCount+',0)-IsNull(sum(KCRKCX.NQ)/'+SepCount+',0)-IsNull(sum(KCRKCX.NKNQ)/'+SepCount+',0) as ZZ');

    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+' as Qty,Max(KCRKCX.PKNO) as PKNO,'''' as Rep_Qty');
    SQL.Add('       ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,IsNull(sum(KCRKCX.NK1)/'+SepCount+',0) as NK1,IsNull(sum(KCRKCX.TC1)/'+SepCount+',0) as TC1,IsNull(sum(KCRKCX.HD1)/'+SepCount+',0) as HD1,IsNull(sum(KCRKCX.KD1)/'+SepCount+',0) as KD1,IsNull(sum(KCRKCX.H11)/'+SepCount+',0) as H11 ');
    SQL.Add('       ,KCRKCX.CNO_NQ,IsNull(sum(KCRKCX.NQ)/'+SepCount+',0) as NQ,KCRKCX.CNO_NKNQ,IsNull(sum(KCRKCX.NKNQ)/'+SepCount+',0) as NKNQ  ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH='''+RYEdit.Text+''' ');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ ');
    SQL.Add('           from KCLLS ');
    //SQL.Add('           Left join KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL  ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           where KCLLS.SCBH = '''+DDBH_M+''' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE (KCLL.GSBH ='''+GSBH_VGC+''') and KCLL.CFMID<>''NO'' '+DDBH_C_SQLStr);
    SQL.Add('   and KCLLS.SCBH = '''+DDBH_M+''' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,KCRKCX.CNO_NKNQ');
  end;
end;
function TDetailInVNo.GetMutiRYSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   //BDE TQuery 不能太長所以改用暫存
   if ((tmpList.Count>=20) and (tmpList.Count<=100)) then
   begin
     with Qtemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.add('if object_id(''tempdb..#RYList'') is not null    ');
       SQL.add('begin drop table #RYList end                 ');
       SQL.Add('select DDBH into #RYList from DDZL');
       SQL.Add('where  DDBH '+tmResult);
       //funcobj.WriteErrorLog(sql.Text);
       ExecSQL();
       Result:=' in (select DDBH from #RYList) ';
     end;
   end else if (tmpList.Count>=100) then
   begin
      showmessage('Vui long khong nhap nhieu hon 100 RY#');
      abort;
   end else
   begin
      Result:=tmResult;
   end;
   tmpList.Free;
 end else
 begin
   Result:=' ='''+Str+''' ';
 end;
end;
//
procedure TDetailInVNo.Button6Click(Sender: TObject);
var DDBH_M,DDBH_C_SQLStr,SepCount:String;
    i:integer;
begin
  //
  RYEditSubSQL:=GetMutiRYSubSQL(RYEdit.Text);
  DDBH_M:='';
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select DDZLTR_C.DDBH,DDZLTR_C.DDBH1 from ( ');
    SQL.Add('Select DDBH from DDZLTR where DDBH1 '+RYEditSubSQL+' and IsKCLLs=''N'' Group by DDBH ) DDZLTR_M ');
    SQL.Add('inner join DDZLTR as DDZLTR_C on DDZLTR_M.DDBH=DDZLTR_C.DDBH ');
    //memo1.Lines:=sql;
    Active:=true;
    if RecordCount>0 then
    begin
      DDBH_C_SQLStr:='';
      DDBH_M:=FieldByName('DDBH').AsString;
      //簡化SQL
      if RB1.Checked=true then
      begin
        DDBH_C_SQLStr:=DDBH_C_SQLStr+' and NOT EXISTS (select CLBH from (SELECT CLBH from DDZL_ZLZLS2 ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH in (Select DDBH1 from DDZLTR where DDBH='''+FieldByName('DDBH').AsString+'''  and IsKCLLs=''N'' Group by DDBH1  ) Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH)';
      end else
        DDBH_C_SQLStr:=DDBH_C_SQLStr+' and NOT EXISTS (select CLBH from (SELECT CLBH from ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH in (Select DDBH1 from DDZLTR where DDBH='''+FieldByName('DDBH').AsString+'''  and IsKCLLs=''N'' Group by DDBH1  ) Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH)';
      SepCount:=inttostr(RecordCount);
    end;
    Active:=false;
  end;
  DDBH_MLab.Caption:=DDBH_M;
  if DDBH_M='' then
  begin
    ButtonMaVatTu_V2();
  end else
  begin
    ButtonMaVatTu_Sep(DDBH_M,SepCount,DDBH_C_SQLStr);
  end;
  //
end;

procedure TDetailInVNo.MAHG1Click(Sender: TObject);
var FilterSQL:string;
begin
  //
  if RYQuery.Active=true then
  begin
    RYQuery.First;
    while Not RYQuery.Eof do
    begin
      if ((RYQuery.FieldByName('NK').AsString<>'0') and
        ((RYQuery.FieldByName('HG_NO').AsString='') or  (RYQuery.FieldByName('Rate_HG').AsString='')) ) then
      begin
        FilterSQL:=FilterSQL+RYQuery.FieldByName('CLBH').AsString+'*';
      end;
      RYQuery.Next;
    end;
    if FilterSQL<>'' then
    begin
      FilterSQL:=Copy(FilterSQL,1,length(FilterSQL)-1);
      if MaHaiQuan=nil  then
      MaHaiQuan:=TMaHaiQuan.Create(self);
      MaHaiQuan.CheckBox1.Checked:=false;
      MaHaiQuan.MatNoEdit.Text:=FilterSQL;
      MaHaiQuan.Show;
      MaHaiQuan.Button1.Click;
    end;
  end;
  //
end;

procedure TDetailInVNo.DBGridEh5GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  HGQuery.FieldByName('Qty').value<>(HGQuery.FieldByName('CLSL').value)   then
  begin
    DBGridEh5.canvas.font.color:=clred;
  end;
end;


//後續替換KCLLS.HGLB KCRKCX.HGLB
procedure TDetailInVNo.ButtonMaVatTu_V2();
var ZLZLS2:string;
    i:integer;
begin
  if RB1.Checked=true then
    ZLZLS2:='DDZL_ZLZLS2'
  else
    ZLZLS2:='ZLZLS2';
  //
  if RYEdit.Text='' then
  begin
    showmessage('Pls input RY!');
    abort;
  end;
  //
  with  RYQuery do
  begin
    Active:=false;
    SQL.Clear;
   // if Edit2.Text<>'' then
   // begin
      sql.Add(' if object_id('+''''+'tempdb..#tmp'+''''+') is not null ');         //////////////////////////////    if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null
      sql.add('begin   drop table #tmp end    ');                     /////////////////////////////////////////
      sql.Add('select * into #tmp ');                                 ///////////////////////////////
      sql.add('from (                         ');                      /////////////////////////////////////
  //  end;                                                              /////////////////////////////
    //20201127 實領-退庫 Qty-THQty
    //SQL.Add('Select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.XieMing,ZLZLS2.Pairs,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,ZLZLS2.RKQty');
    //SQL.Add('       ,ZLZLS2.NK-ISNULL(KCRKTH.NK,0) as NK,ZLZLS2.HD-ISNULL(KCRKTH.HD,0) as HD,ZLZLS2.KD-ISNULL(KCRKTH.KD,0) as KD,ZLZLS2.XT-ISNULL(KCRKTH.XT,0) as XT,ZLZLS2.GC-ISNULL(KCRKTH.GC,0) as GC,ZLZLS2.ZZ,ZLZLS2.Qty-ISNULL(KCRKTH.Qty,0) as Qty');
    //SQL.Add('       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNull(CNO1,CLHG.HGBH) else null end as HG_NO,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNull(CNO1,CLHD.HGBH) else null end as HD_NO,KCRKTH.Qty as THQty from (');
    SQL.Add('Select top 100000 ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH,ZLZLS2.CLSL_KT,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.XieMing,ZLZLS2.Pairs,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,ZLZLS2.RKQty');
    SQL.Add('       ,ZLZLS2.NK,ZLZLS2.TC,ZLZLS2.HD,ZLZLS2.KD,ZLZLS2.XT,ZLZLS2.GC,ZLZLS2.ZZ,ZLZLS2.Qty');
    SQL.Add('       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNull(CNO_NK,CLHG.HGBH)  else null end as HG_NO ');
    SQL.Add('       ,CLTC.RateC as Rate_TC,case when (ZLZLS2.TC>0)  then IsNull(CNO_TC,CLTC.HGBH)  else null end as TC_NO ');
    SQL.Add('       ,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNull(CNO_HD,CLHD.HGBH)  else null end as HD_NO ');
    SQL.Add('       ,CLKD.RateC as Rate_KD,case when (ZLZLS2.KD>0)  then CNO_KD else null end as KD_NO ');
    SQL.Add('       ,ZLZLS2.NK1,ZLZLS2.TC1,ZLZLS2.HD1,ZLZLS2.KD1,ZLZLS2.H11,ZLZLS2.NQ,ZLZLS2.NKNQ ');
    SQL.Add('       ,CLHG1.RateC as Rate_HG1,case when (ZLZLS2.NK1>0)  then IsNull(CNO_NK1,CLHG1.HGBH)  else null end as HG1_NO ');
    SQL.Add('       ,CLTC1.RateC as Rate_TC1,case when (ZLZLS2.TC1>0)  then IsNull(CNO_TC1,CLTC1.HGBH)  else null end as TC1_NO ');
    SQL.Add('       ,CLHD1.RateC as Rate_HD1,case when (ZLZLS2.HD1>0)  then IsNull(CNO_HD1,CLHD1.HGBH)  else null end as HD1_NO ');
    SQL.Add('       ,CLKD1.RateC as Rate_KD1,case when (ZLZLS2.KD1>0) then CNO_KD1 else null end as KD1_NO ');
    SQL.Add('       ,CLNQ.RateC as Rate_NQ,case when (ZLZLS2.NQ>0)  then IsNull(CNO_NQ,CLNQ.HGBH)  else null end as NQ_NO ');
    SQL.Add('       ,CLNKNQ.RateC as Rate_NKNQ,case when (ZLZLS2.NKNQ>0)  then IsNull(CNO_NKNQ,CLNKNQ.HGBH)  else null end as NKNQ_NO ');
    SQL.Add('       ,KCRKTH.Qty as THQty,ZLZLS2.PKNO from (');
    SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC,case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,');
    SQL.Add('       case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
    SQL.Add('       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) ');
    SQL.Add('                             -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0)-IsNull(KCLLS.NQ,0)-IsNull(KCLLS.NKNQ,0),2),0)  as ZZ,KCLLS.Qty,KCLLS.PKNO,  ');
    SQL.Add('       case when OrdCL.CLSL = KCLLS.Qty then OrdCL.CLSL-isnull(Rep_Mat.Rep_Qty,0) else OrdCL.CLSL end as CLSL_KT,  ');
    SQL.Add('       case when KCLLS.CNO_NK1='''' then null else CNO_NK1 end CNO_NK1,case when KCLLS.CNO_TC1='''' then null else CNO_TC1 end CNO_TC1,case when KCLLS.CNO_HD1='''' then null else CNO_HD1 end CNO_HD1,');
    SQL.Add('       case when KCLLS.CNO_KD1='''' then null else CNO_KD1 end CNO_KD1,IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11, ');
    SQL.Add('       case when KCLLS.CNO_NQ='''' then null else CNO_NQ end CNO_NQ,IsNull(KCLLS.NQ,0) as NQ,case when KCLLS.CNO_NKNQ='''' then null else CNO_NKNQ end CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ ');
    SQL.Add('from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH ');
    SQL.Add('      from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH '+RYEditSubSQL+'  ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add('union all ');
    SQL.Add('   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from '+ZLZLS2+' as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH ');
    SQL.Add('    from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH '+RYEditSubSQL+'  ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add(') OrdCL');
    //20230906 add CLSL_KT column
    SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
    SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
    SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
    SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
    SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH and Rep_Mat.MJBH=OrdCL.MJBH and Rep_Mat.DType=OrdCL.DType ');
    // SQL show 2 CNO  20210331
    SQL.Add('  left join (  ');
    SQL.Add('        select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO) as PKNO,Sum(RKQty) as RKQty,  ');
    SQL.Add('                    Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ, ');
    SQL.Add('                    Max(CNO_NK1) as CNO_NK1,Max(CNO_TC1) as CNO_TC1,Max(CNO_HD1) as CNO_HD1,Max(CNO_KD1) as CNO_KD1,Sum(NK1) as NK1,Sum(TC1) as TC1,Sum(HD1) as HD1,Sum(KD1) as KD1,Sum(H11) as H11, ');
    SQL.Add('                    Max(CNO_NQ) as CNO_NQ,Sum(NQ) as NQ,Max(CNO_NKNQ) as CNO_NKNQ,Sum(NKNQ) as NKNQ ');
    SQL.Add('        from (  ');
    SQL.Add('         select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, KCLLS.DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,   ');
    SQL.Add('             Sum(KCLLS.Qty) as RKQty,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK'' then case when  len(KCLLS.CNO_NK)>0 then substring(KCLLS.CNO_NK,1,len(KCLLS.CNO_NK)-1) else NULL end end) as CNO_NK,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC'' then case when  len(KCLLS.CNO_TC)>0 then substring(KCLLS.CNO_TC,1,len(KCLLS.CNO_TC)-1) else NULL end end) as CNO_TC,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD'' then case when  len(KCLLS.CNO_HD)>0 then substring(KCLLS.CNO_HD,1,len(KCLLS.CNO_HD)-1) else NULL end end) as CNO_HD,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD'' then case when  len(KCLLS.CNO_KD)>0 then substring(KCLLS.CNO_KD,1,len(KCLLS.CNO_KD)-1) else NULL end end) as CNO_KD,');
    SQL.Add('             Max(KCLLS.PKNO) as PKNO, ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK1'' then case when  len(KCLLS.CNO_NK1)>0 then substring(KCLLS.CNO_NK1,1,len(KCLLS.CNO_NK1)-1) else NULL end end) as CNO_NK1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC1'' then case when  len(KCLLS.CNO_TC1)>0 then substring(KCLLS.CNO_TC1,1,len(KCLLS.CNO_TC1)-1) else NULL end end) as CNO_TC1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD1'' then case when  len(KCLLS.CNO_HD1)>0 then substring(KCLLS.CNO_HD1,1,len(KCLLS.CNO_HD1)-1) else NULL end end) as CNO_HD1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD1'' then case when  len(KCLLS.CNO_KD1)>0 then substring(KCLLS.CNO_KD1,1,len(KCLLS.CNO_KD1)-1) else NULL end end) as CNO_KD1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NQ'' then case when  len(KCLLS.CNO_NQ)>0 then substring(KCLLS.CNO_NQ,1,len(KCLLS.CNO_NQ)-1) else NULL end end) as CNO_NQ,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NKNQ'' then case when  len(KCLLS.CNO_NKNQ)>0 then substring(KCLLS.CNO_NKNQ,1,len(KCLLS.CNO_NKNQ)-1) else NULL end end) as CNO_NKNQ');
    SQL.Add('  		from (  ');
    SQL.Add('  		Select KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, KCLLS.Qty, KCLLS.TempQty,KCLLS.HGLB  ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NK'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NK ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''TC'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_TC ');
  	SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''HD'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_HD ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''KD'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_KD ');
    SQL.Add('           ,KCPKLL.PKNO ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NK1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NK1');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''TC1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_TC1 ');
  	SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''HD1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_HD1 ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''KD1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_KD1');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NQ'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NQ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NKNQ'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NKNQ');
    SQL.Add('  		from KCLLS  ');
    SQL.Add('          left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('          Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('  	     	 where  KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0 ');
    SQL.Add('  				  and KCLLS.SCBH '+RYEditSubSQL+'  ');
    SQL.Add('           and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO''   ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('  		) KCLLS Group by KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, KCLLS.DType  ');
    SQL.Add('             ) KCLLS Group by SCBH,CLBH,MJBH,DType  ');
    SQL.Add('            ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH   ');
    SQL.Add('where 1=1 ');
    //印刷線外加工VGC
    if CK1.Checked=true then
    Show_Xuong_VGC(RYQuery);
    //
    if CK2.Checked=true then
    begin
      //橡膠系統廠VR2
      For i:=0 to High(RubberGSBH) do
      begin
        SQL.Add('union all ');
        SQL.Add('select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CNO_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0)-IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0) ');
        SQL.Add('                -IsNull(KCLLS.NQ,0)-IsNull(KCLLS.NKNQ,0) as ZZ ');
        SQL.Add('       ,KCLLS.Qty,KCLLS.PKNO,ZLZLS3.TCLYL-isnull(Rep_Mat.Rep_Qty,0) as CLSL_KT  ');
        SQL.Add('       ,KCLLS.CNO_NK1,KCLLS.CNO_TC1,KCLLS.CNO_HD1,KCLLS.CNO_KD1,IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11 ');
        SQL.Add('       ,KCLLS.CNO_NQ,IsNull(KCLLS.NQ,0) as NQ,KCLLS.CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ  ');
        SQL.Add(' from (');
        SQL.Add('select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,');
        SQL.Add('      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_DDZL.Pairs,max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 ');
        SQL.Add('left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.Shehao=xxzl.shehao ');
        SQL.Add('where ZLZLS3.TCLYL>0 and DDZL.ZLBH1 '+RYEditSubSQL+'  and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3');
        // 20230906 add CLSL_KT column
        //SQL.Add('left join ( select KCLLS.SCBH,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' group by KCLLS.SCBH,KCLLS.CLBH) Rep_Mat on Rep_Mat.SCBH=ZLZLS3.ZLBH1 and Rep_Mat.CLBH=Substring(ZLZLS3.cldhz,2,10) ');
        SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
        SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
        SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
        SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
        SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=ZLZLS3.ZLBH1 and Rep_Mat.CLBH=ZLZLS3.cldhz and Rep_Mat.MJBH=ZLZLS3.MJBH and Rep_Mat.DType=ZLZLS3.DType ');
        SQL.Add('left join (');
        SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
        SQL.Add('                  round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as RKQty,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
        SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
        SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
        SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL  ');
        SQL.Add('           where 1=1 ');
        SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+'''');
        SQL.Add('                 and KCLLS.SCBH  '+RYEditSubSQL+'   ');
        if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('                 and KCLLS.HGLB<>''XT'' ');
        SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ ');
      end;
    end;
    //不在現場VA12
    SQL.Add('union all');
    SQL.Add('select KCLLS.SCBH as ZLBH1,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end  as MJBH,KCLLS.CLBH as Parent,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,');
    SQL.Add('       KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty) as TemQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD ');
    SQL.Add('       ,sum(KCRKCX.RKQty) as RKQty,IsNull(sum(KCRKCX.NK),0) as NK,IsNull(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,IsNull(sum(KCRKCX.KD),0) as KD,IsNull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKCX.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNull(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0)');
    SQL.Add('                            -IsNull(sum(KCRKCX.NK1),0)-IsNull(sum(KCRKCX.TC1),0)-IsNull(sum(KCRKCX.HD1),0)-IsNull(sum(KCRKCX.KD1),0)-IsNull(sum(KCRKCX.H11),0)-IsNull(sum(KCRKCX.NQ),0)-IsNull(sum(KCRKCX.NKNQ),0) as ZZ  ');
    SQL.Add('       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO, ''0'' as CLSL_KT ');
    SQL.Add('       ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1');
    SQL.Add('       ,IsNull(sum(KCRKCX.NK1),0) as NK1,IsNull(sum(KCRKCX.TC1),0) as TC1,IsNull(sum(KCRKCX.HD1),0) as HD1,IsNull(sum(KCRKCX.KD1),0) as KD1,IsNull(sum(KCRKCX.H11),0) as H11 ');
    SQL.Add('       ,KCRKCX.CNO_NQ,IsNull(sum(KCRKCX.NQ),0) as NQ,KCRKCX.CNO_NKNQ,IsNull(sum(KCRKCX.NKNQ),0) as NKNQ ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ ');
    SQL.Add('           from KCLLS ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           where KCLLS.SCBH  '+RYEditSubSQL+' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE (KCLL.GSBH ='''+main.Edit2.Text+''') and KCLL.CFMID<>''NO'' and NOT EXISTS (select CLBH,ZLBH from (SELECT CLBH,ZLBH from '+ZLZLS2+' as ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH '+RYEditSubSQL+' Group by CLBH,ZLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH and ZLZLS2.ZLBH=KCLLS.SCBH ) ');
    SQL.Add('   and KCLLS.SCBH  '+RYEditSubSQL+'  and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,KCRKCX.CNO_NKNQ');
    //不再印刷線外加工VGC制令表材料中
    if CK1.Checked=true then
    Show_NotIn_Xuong_VGC(RYQuery);
    //不在R廠制令表材料中
    SQL.Add('union all');
    SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty) as TempQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,sum(KCRKCX.RKQty) as RKQty');
    SQL.Add('       ,IsNull(sum(KCRKCX.NK),0) as NK,IsNull(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,IsNull(sum(KCRKCX.KD),0) as KD,IsNull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKCX.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNull(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0)  ');
    SQL.Add('                      -IsNull(sum(KCRKCX.NK1),0)-IsNull(sum(KCRKCX.TC1),0)-IsNull(sum(KCRKCX.HD1),0)-IsNull(sum(KCRKCX.KD1),0)-IsNull(sum(KCRKCX.H11),0)-IsNull(sum(KCRKCX.NQ),0)-IsNull(sum(KCRKCX.NKNQ),0) as ZZ');
    SQL.Add('       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO, ''0'' as CLSL_KT ');
    SQL.Add('       ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1');
    SQL.Add('       ,IsNull(sum(KCRKCX.NK1),0) as NK1,IsNull(sum(KCRKCX.TC1),0) as TC1,IsNull(sum(KCRKCX.HD1),0) as HD1,IsNull(sum(KCRKCX.KD1),0) as KD1,IsNull(sum(KCRKCX.H11),0) as H11');
    SQL.Add('       ,KCRKCX.CNO_NQ,IsNull(sum(KCRKCX.NQ),0) as NQ,KCRKCX.CNO_NKNQ,IsNull(sum(KCRKCX.NKNQ),0) as NKNQ ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ ');
    SQL.Add('           from KCLLS ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           where KCLLS.SCBH  '+RYEditSubSQL+'  ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 and ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLL.GSBH=ZLZLS3.CQDH)');
    SQL.Add('   and KCLLS.SCBH  '+RYEditSubSQL+'  and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,KCRKCX.CNO_NKNQ');
    SQL.Add('  ) ZLZLS2    ');
    SQL.Add('Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  ');
    //20201127 增加退庫和紅發票海關代碼
    SQL.Add('Left join CLHD on CLHD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC on CLTC.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD on CLKD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHG1 on CLHG1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHD1 on CLHD1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC1 on CLTC1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD1 on CLKD1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLNQ on CLNQ.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLNKNQ on CLNKNQ.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join (');
    SQL.Add(' Select KCRK.GSBH,KCRK.ZLBH,kcrk.MJBH,kcrk.DType,KCRK.CLBH,sum(KCRK.Qty) as Qty,sum(KCRK.NK) as NK,sum(KCRK.TC) as TC,sum(KCRK.HD) as HD,sum(KCRK.KD) as KD,sum(KCRK.XT) as XT,sum(KCRK.GC) as GC,sum(KCRK.ZZ) as ZZ');
    SQL.Add('        ,sum(KCRK.NK1) as NK1,sum(KCRK.TC1) as TC1,sum(KCRK.HD1) as HD1,sum(KCRK.KD1) as KD1,sum(KCRK.H11) as H11,sum(KCRK.NQ) as NQ,sum(KCRK.NKNQ) as NKNQ ');
    SQL.Add(' from ( Select KCRKS.GSBH,KCRKS.CGBH as ZLBH,Case when len(KCRKS.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRKS.RKSB)<10 then ''Assembly'' else ''Gia cong'' End as DType ,KCRKS.CLBH, ');
    SQL.Add('               Sum(KCRKS.Qty) as Qty, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''NK'' then Qty else 0 end ) as NK, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''TC'' then Qty else 0 end ) as TC, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''HD'' then Qty else 0 end ) as HD, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''KD'' then Qty else 0 end ) as KD, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''XT'' then Qty else 0 end ) as XT, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''GC'' then Qty else 0 end ) as GC, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,  ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''NK1'' then Qty else 0 end ) as NK1, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''TC1'' then Qty else 0 end ) as TC1, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''HD1'' then Qty else 0 end ) as HD1, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''KD1'' then Qty else 0 end ) as KD1, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''H11'' then Qty else 0 end ) as H11, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''NQ'' then Qty else 0 end ) as NQ, ');
    SQL.Add('               Sum(Case when KCRK.HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ ');
    SQL.Add('       from KCRK ');
    SQL.Add('       left join KCRKS on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('       where KCRK.SFL=''THU HOI''  and KCRKS.CGBH '+RYEditSubSQL+'  ');
    SQL.Add('       Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH ');
    SQL.Add('       ) KCRK group by KCRK.GSBH,KCRK.ZLBH,kcrk.MJBH,kcrk.DType,KCRK.CLBH');
    SQL.Add(') KCRKTH on  KCRKTH.ZLBH=ZLZLS2.ZLBH and KCRKTH.CLBH=ZLZLS2.CLBH and KCRKTH.DType=ZLZLS2.DType and KCRKTH.MJBH=ZLZLS2.MJBH  and KCRKTH.GSBH=ZLZLS2.GSBH');
    //
    SQL.Add('where 1=1 ');
    if HGEdit.Text<>'' then
      SQL.Add(' and IsNull(CNO_NK,CLHG.HGBH)='''+HGEdit.Text+''' ');
    if HDEdit.Text<>'' then
      SQL.Add(' and IsNull(CNO_HD,CLHD.HGBH)='''+HDEdit.Text+''' ');
    SQL.Add('Order by ZLZLS2.ZLBH,ZLZLS2.GSBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH ');
     //   if Edit2.Text<>'' then
  //  begin
    sql.add(') as subquery');
    sql.add('select * from #tmp');
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
 //   end;
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

 // if ((main.Edit2.Text='VA12') or (main.Edit2.Text='VC2')) then
 // begin
  //  button3.Enabled:=true;
//  end;
end;

procedure TDetailInVNo.ButtonMaHG_V2(QueryObj:TQuery);
var ZLZLS2:string;
    i:integer;
begin
  if RB1.Checked=true then
    ZLZLS2:='DDZL_ZLZLS2'
  else
    ZLZLS2:='ZLZLS2';
  //
  if RYEdit.Text='' then
  begin
    showmessage('Pls input RY!');
    abort;
  end;
  //
  with QueryObj do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select MaHG.ZLBH,case when NK>0 then HG_NO when TC>0  then TC_NO when HD>0 then HD_NO when KD>0 then KD_NO  when NK1>0 then HG1_NO when TC1>0  then TC1_NO when HD1>0 then HD1_NO when KD1>0 then KD1_NO ');
    SQL.Add('                      when NQ>0 then NQ_NO when NKNQ >0 then NKNQ_NO else NULL end as CNO, ');
    SQL.Add('		    case when  NK>0 then HG_HGPM when TC>0 then TC_HGPM when HD>0 then HD_HGPM  when KD>0 then KD_HGPM when  NK1>0 then HG1_HGPM when TC1>0 then TC1_HGPM when HD1>0 then HD1_HGPM  when KD1>0 then KD1_HGPM ');
    SQL.Add('            when NQ>0 then NQ_HGPM when NKNQ>0 then NKNQ_HGPM else NULL end as HGPM,');
    SQL.Add(' 		  case when  NK>0 then HG_Unit when TC>0 then TC_Unit when HD>0 then HD_Unit when KD>0 then KD_Unit when  NK1>0 then HG1_Unit when TC1>0 then TC1_Unit when HD1>0 then HD1_Unit when KD1>0 then KD1_Unit ');
    SQL.Add('            when NQ>0 then NQ_Unit when NKNQ>0 then NKNQ_Unit else NULL end UnitC, ');
    SQL.Add('   		Usage,CLSL_KT,CLSL,QTY,NK,TC,HD,KD,XT,GC,ZZ,NK1,TC1,HD1,KD1,H11,NQ,NKNQ ');
    SQL.Add(' 		  ,case when NK>0 then round((NK-CLSL_KT)/nullif(CLSL_KT,0)*100,2) else 0 end RateNK ');
    SQL.Add('       ,case when TC>0 then round((TC-CLSL_KT)/nullif(CLSL_KT,0)*100,2) else 0 end RateTC ');
    SQL.Add(' 	    ,round((USAGE-CLSL_KT)/nullif(CLSL_KT,0),2) Rate ');
    SQL.Add('From ( ');
    SQL.Add('Select ZLZLS2.*,KCPK.Declaretion,CGZL_Declaration.NGAYDANGKY,CGZL_Declaration.Country as TK_Country,KCRK.DOCNO,CGZL_VATNO.VATDATE,CGZL_VATNO.Country as HD_Country,Usage ');
    SQL.Add(' from (  ');
    SQL.Add('select  ZLZLS2.ZLBH,HG_NO,TC_NO,HD_NO,KD_NO,sum(CLSL_KT) as CLSL_KT,sum (CLSL) as CLSL ,sum (QTY) as QTY,sum (NK) as NK,sum (TC) as TC,sum (HD) as HD,sum (KD) as KD,sum (XT) as XT,sum (GC) as GC,sum (ZZ) as ZZ');
    SQL.Add('        ,Max(HG_HGPM) as HG_HGPM,Max(HG_Unit) as HG_Unit,Max(TC_HGPM) as TC_HGPM,Max(TC_Unit) as TC_Unit,Max(HD_HGPM) as HD_HGPM,Max(HD_Unit) as HD_Unit,Max(KD_HGPM) as KD_HGPM,Max(KD_Unit) as KD_Unit,Max(PKNO) as PKNO ');
    SQL.Add('        ,HG1_NO,TC1_NO,HD1_NO,KD1_NO,NQ_NO,NKNQ_NO,sum (NK1) as NK1,sum (TC1) as TC1,sum (HD1) as HD1,sum (KD1) as KD1,sum (H11) as H11,sum (NQ) as NQ, sum(NKNQ) as NKNQ ');
    SQL.Add('        ,Max(HG1_HGPM) as HG1_HGPM,Max(HG1_Unit) as HG1_Unit,Max(TC1_HGPM) as TC1_HGPM,Max(TC1_Unit) as TC1_Unit,Max(HD1_HGPM) as HD1_HGPM,Max(HD1_Unit) as HD1_Unit,Max(KD1_HGPM) as KD1_HGPM,Max(KD1_Unit) as KD1_Unit ');
    SQL.Add('        ,Max(NQ_HGPM) as NQ_HGPM,Max(NQ_Unit) as NQ_Unit, Max(NKNQ_HGPM) as NKNQ_HGPM, Max(NKNQ_unit) as NKNQ_Unit ');
    SQL.Add('from (');
    SQL.Add('Select ZLZLS2.ZLBH,HG_NO,TC_NO,HD_NO,KD_NO,Max(DWBH) as DWBH');
    SQL.Add('       ,Max(HG_HGPM) as HG_HGPM,Max(HG_Unit) as HG_Unit,Max(TC_HGPM) as TC_HGPM,Max(TC_Unit) as TC_Unit,Max(HD_HGPM) as HD_HGPM,Max(HD_Unit) as HD_Unit,Max(KD_HGPM) as KD_HGPM,Max(KD_Unit) as KD_Unit,Max(PKNO) as PKNO  ');
    //SQL.Add('       ,Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as CLSL_KT ');
    //SQL.Add('       ,Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as CLSL ');
    //SQL.Add('       ,Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as Qty ');
    SQL.Add('       ,case when sum(NK)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_HG),6) ');
    SQL.Add('       			when sum(TC)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_TC),6) ');
    SQL.Add('       			when sum(HD)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_HD),6) ');
    SQL.Add('             when sum(NK1)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_HG1),6) ');
    SQL.Add('       			when sum(TC1)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_TC1),6) ');
    SQL.Add('       			when sum(HD1)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_HD1),6) ');
    SQL.Add('       			else Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(1),6)  end as CLSL_KT ');
    SQL.Add('   		,case when sum(NK)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_HG),6) ');
    SQL.Add('       			when sum(TC)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_TC),6) ');
    SQL.Add('       			when sum(HD)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_HD),6) ');
    SQL.Add('   		      when sum(NK1)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_HG1),6) ');
    SQL.Add('       			when sum(TC1)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_TC1),6) ');
    SQL.Add('       			when sum(HD1)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_HD1),6) ');
    SQL.Add('       			else Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(1),6)  end as CLSL ');
    SQL.Add('   		,case when sum(NK)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_HG),6) ');
    SQL.Add('       			when sum(TC)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_TC),6) ');
    SQL.Add('       			when sum(HD)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_HD),6) ');
    SQL.Add('   		      when sum(NK1)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_HG1),6) ');
    SQL.Add('       			when sum(TC1)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_TC1),6) ');
    SQL.Add('       			when sum(HD1)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_HD1),6) ');
    SQL.Add('       			else Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(1),6)  end as Qty ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(NK))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as NK ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(TC))/Max(Pairs),6)*IsNull((Rate_TC),1),6) as TC ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(HD))/Max(Pairs),6)*IsNull((Rate_HD),1),6) as HD ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(KD))/Max(Pairs),6)*IsNull((Rate_KD),1),6) as KD ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(XT))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as XT ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(GC))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as GC ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(ZZ))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as ZZ ');
    SQL.Add('       ,HG1_NO,TC1_NO,HD1_NO,KD1_NO,Max(HG1_HGPM) as HG1_HGPM,Max(HG1_Unit) as HG1_Unit,Max(TC1_HGPM) as TC1_HGPM,Max(TC1_Unit) as TC1_Unit,Max(HD1_HGPM) as HD1_HGPM,Max(HD1_Unit) as HD1_Unit,Max(KD1_HGPM) as KD1_HGPM,Max(KD1_Unit) as KD1_Unit ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(NK1))/Max(Pairs),6)*IsNull((Rate_HG1),1),6) as NK1 ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(TC1))/Max(Pairs),6)*IsNull((Rate_TC1),1),6) as TC1 ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(HD1))/Max(Pairs),6)*IsNull((Rate_HD1),1),6) as HD1 ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(KD1))/Max(Pairs),6)*IsNull((Rate_KD1),1),6) as KD1 ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(H11))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as H11 ');
    SQL.Add('       ,NQ_NO,NKNQ_NO,Max(NQ_HGPM) NQ_HGPM,Max(NQ_Unit) as NQ_Unit,Max(NKNQ_HGPM) NKNQ_HGPM,Max(NKNQ_Unit) as NKNQ_Unit ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(NQ))/Max(Pairs),6)*IsNull((Rate_NQ),1),6) as NQ ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(NKNQ))/Max(Pairs),6)*IsNull((Rate_NKNQ),1),6) as NKNQ ');
    SQL.Add('       from (');
    //SQL.Add('Select * from (');
    //20201127 實領-退庫 Qty-THQty
    //SQL.Add('Select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.XieMing,ZLZLS2.Pairs,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,ZLZLS2.RKQty');
    //SQL.Add('       ,ZLZLS2.NK-ISNULL(KCRKTH.NK,0) as NK,ZLZLS2.TC-ISNULL(KCRKTH.TC,0) as TC,ZLZLS2.HD-ISNULL(KCRKTH.HD,0) as HD,ZLZLS2.KD-ISNULL(KCRKTH.KD,0) as KD,ZLZLS2.XT-ISNULL(KCRKTH.XT,0) as XT,ZLZLS2.GC-ISNULL(KCRKTH.GC,0) as GC,ZLZLS2.ZZ,ZLZLS2.Qty-ISNULL(KCRKTH.Qty,0) as Qty');
    //SQL.Add('       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNull(CNO1,CLHG.HGBH) else null end as HG_NO,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNull(CNO1,CLHD.HGBH) else null end as HD_NO,KCRKTH.Qty as THQty from (');
    SQL.Add('Select ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH,ZLZLS2.CLSL,ZLZLS2.YWPM,ZLZLS2.dwbh,ZLZLS2.ARTICLE,ZLZLS2.XieMing,ZLZLS2.Pairs,ZLZLS2.CalDate,ZLZLS2.GSBH,ZLZLS2.TempQty,ZLZLS2.RKQty');
    SQL.Add('       ,ZLZLS2.NK,ZLZLS2.TC,ZLZLS2.HD,ZLZLS2.KD,ZLZLS2.XT,ZLZLS2.GC,ZLZLS2.ZZ,ZLZLS2.Qty,ZLZLS2.PKNO,ZLZLS2.CLSL_KT  ');
    SQL.Add('       ,CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0)  then IsNull(CNO_NK,CLHG.HGBH)  else null end as HG_NO,CLHG.HGPM as HG_HGPM,CLHG.UnitC as HG_Unit ');
    SQL.Add('       ,CLTC.RateC as Rate_TC,case when (ZLZLS2.TC>0)  then IsNull(CNO_TC,CLTC.HGBH)  else null end as TC_NO,CLTC.HGPM as TC_HGPM,CLTC.UnitC as TC_Unit ');
    SQL.Add('       ,CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0)  then IsNull(CNO_HD,CLHD.HGBH)  else null end as HD_NO,CLHD.HGPM as HD_HGPM,CLHD.UnitC as HD_Unit ');
    SQL.Add('       ,CLKD.RateC as Rate_KD,case when (ZLZLS2.KD>0)  then CNO_KD else null end as KD_NO,CLKD.HGPM as KD_HGPM,CLKD.UnitC as KD_Unit ');
    SQL.Add('       ,KCRKTH.Qty as THQty,ZLZLS2.NK1,ZLZLS2.TC1,ZLZLS2.HD1,ZLZLS2.KD1,ZLZLS2.H11,ZLZLS2.NQ,ZLZLS2.NKNQ  ');
    SQL.Add('       ,CLHG1.RateC as Rate_HG1,case when (ZLZLS2.NK1>0)  then IsNull(CNO_NK1,CLHG1.HGBH)  else null end as HG1_NO,CLHG1.HGPM as HG1_HGPM,CLHG1.UnitC as HG1_Unit ');
    SQL.Add('       ,CLTC1.RateC as Rate_TC1,case when (ZLZLS2.TC1>0)  then IsNull(CNO_TC1,CLTC1.HGBH)  else null end as TC1_NO,CLTC1.HGPM as TC1_HGPM,CLTC1.UnitC as TC1_Unit ');
    SQL.Add('       ,CLHD1.RateC as Rate_HD1,case when (ZLZLS2.HD1>0)  then IsNull(CNO_HD1,CLHD1.HGBH)  else null end as HD1_NO,CLHD1.HGPM as HD1_HGPM,CLHD1.UnitC as HD1_Unit ');
    SQL.Add('       ,CLKD1.RateC as Rate_KD1,case when (ZLZLS2.KD1>0)  then CNO_KD1 else null end as KD1_NO,CLKD1.HGPM as KD1_HGPM,CLKD1.UnitC as KD1_Unit ');
    SQL.Add('       ,CLNQ.RateC as Rate_NQ,case when (ZLZLS2.NQ>0)  then CNO_NQ else null end as NQ_NO,CLNQ.HGPM as NQ_HGPM,CLNQ.UnitC as NQ_Unit ');
    SQL.Add('       ,CLNKNQ.RateC as Rate_NKNQ,case when (ZLZLS2.NKNQ>0)  then CNO_NKNQ else null end as NKNQ_NO,CLNKNQ.HGPM as NKNQ_HGPM,CLNKNQ.UnitC as NKNQ_Unit ');
    SQL.Add('from (');
    SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC,case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,');
    SQL.Add('       case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
    SQL.Add('       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) ');
    SQL.Add('                             -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0),2),0)  as ZZ,KCLLS.Qty,KCLLS.PKNO ');
    SQL.Add('       ,case when OrdCL.CLSL = KCLLS.Qty then OrdCL.CLSL-isnull(Rep_Mat.Rep_Qty,0) else OrdCL.CLSL end as CLSL_KT ');
    SQL.Add('       ,case when KCLLS.CNO_NK1='''' then null else CNO_NK1 end CNO_NK1,case when KCLLS.CNO_TC1='''' then null else CNO_TC1 end CNO_TC1,case when KCLLS.CNO_HD1='''' then null else CNO_HD1 end CNO_HD1 ');
    SQL.Add('       ,case when KCLLS.CNO_KD1='''' then null else CNO_KD1 end CNO_KD1,IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11 ');
    SQL.Add('       ,case when KCLLS.CNO_NQ='''' then null else CNO_NQ end CNO_NQ,IsNull(KCLLS.NQ,0) as NQ,case when KCLLS.CNO_NKNQ='''' then null else CNO_NKNQ end CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ  ');
    SQL.Add('from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH ');
    SQL.Add('      from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH '+RYEditSubSQL+' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add('union all ');
    SQL.Add('   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from '+ZLZLS2+' as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH ');
    SQL.Add('    from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH '+RYEditSubSQL+' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add(') OrdCL');
     //20230906 add CLSL_KT column
    //SQL.Add('left join ( select KCLLS.SCBH,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>''''  group by KCLLS.SCBH,KCLLS.CLBH) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH ');
    SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
    SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
    SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
    SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
    SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH and Rep_Mat.MJBH=OrdCL.MJBH and Rep_Mat.DType=OrdCL.DType ');
    // SQL show 2 CNO  20210331
    SQL.Add('  left join (  ');
    SQL.Add('        select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO) as PKNO,Sum(RKQty) as RKQty,  ');
    SQL.Add('               Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ, ');
    SQL.Add('               Max(CNO_NK1) as CNO_NK1,Max(CNO_TC1) as CNO_TC1,Max(CNO_HD1) as CNO_HD1,Max(CNO_KD1) as CNO_KD1,Sum(NK1) as NK1,Sum(TC1) as TC1,Sum(HD1) as HD1,Sum(KD1) as KD1,Sum(H11) as H11, ');
    SQL.Add('               Max(CNO_NQ) as CNO_NQ,Sum(NQ) as NQ,Max(CNO_NKNQ) as CNO_NKNQ,Sum(NKNQ) as NKNQ ');
    SQL.Add('        from (  ');
    SQL.Add('         select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, KCLLS.DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,   ');
    SQL.Add('             Sum(KCLLS.Qty) as RKQty,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK'' then case when  len(KCLLS.CNO_NK)>0 then substring(KCLLS.CNO_NK,1,len(KCLLS.CNO_NK)-1) else NULL end end) as CNO_NK,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC'' then case when  len(KCLLS.CNO_TC)>0 then substring(KCLLS.CNO_TC,1,len(KCLLS.CNO_TC)-1) else NULL end end) as CNO_TC,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD'' then case when  len(KCLLS.CNO_HD)>0 then substring(KCLLS.CNO_HD,1,len(KCLLS.CNO_HD)-1) else NULL end end) as CNO_HD,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD'' then case when  len(KCLLS.CNO_KD)>0 then substring(KCLLS.CNO_KD,1,len(KCLLS.CNO_KD)-1) else NULL end end) as CNO_KD,');
    SQL.Add('             Max(KCLLS.PKNO) as PKNO, ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK1'' then case when  len(KCLLS.CNO_NK1)>0 then substring(KCLLS.CNO_NK1,1,len(KCLLS.CNO_NK1)-1) else NULL end end) as CNO_NK1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC1'' then case when  len(KCLLS.CNO_TC1)>0 then substring(KCLLS.CNO_TC1,1,len(KCLLS.CNO_TC1)-1) else NULL end end) as CNO_TC1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD1'' then case when  len(KCLLS.CNO_HD1)>0 then substring(KCLLS.CNO_HD1,1,len(KCLLS.CNO_HD1)-1) else NULL end end) as CNO_HD1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD1'' then case when  len(KCLLS.CNO_KD1)>0 then substring(KCLLS.CNO_KD1,1,len(KCLLS.CNO_KD1)-1) else NULL end end) as CNO_KD1,');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NQ'' then case when  len(KCLLS.CNO_NQ)>0 then substring(KCLLS.CNO_NQ,1,len(KCLLS.CNO_NQ)-1) else NULL end end) as CNO_NQ,');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NKNQ'' then case when  len(KCLLS.CNO_NKNQ)>0 then substring(KCLLS.CNO_NKNQ,1,len(KCLLS.CNO_NKNQ)-1) else NULL end end) as CNO_NKNQ');

    SQL.Add('  		from (  ');
    SQL.Add('  		Select KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, KCLLS.Qty, KCLLS.TempQty,KCLLS.HGLB  ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NK'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NK ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''TC'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_TC ');
  	SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''HD'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_HD ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''KD'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_KD ');
    SQL.Add('           ,KCPKLL.PKNO ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NK1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NK1 ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''TC1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_TC1 ');
  	SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''HD1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_HD1 ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''KD1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_KD1 ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NQ'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NQ ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NKNQ'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NKNQ ');
    SQL.Add('  		from KCLLS  ');
    SQL.Add('          left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('          Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL	 ');
    SQL.Add('  	     	 where  KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0 ');
    SQL.Add('  				  and KCLLS.SCBH '+RYEditSubSQL+' ');
    SQL.Add('           and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO''   ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('  		) KCLLS Group by KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, KCLLS.DType  ');
    SQL.Add('             ) KCLLS Group by SCBH,CLBH,MJBH,DType  ');
    SQL.Add('            ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH   ');
    SQL.Add('where 1=1 ');
    //印刷線外加工VGC
    if CK1.Checked=true then
    Show_Xuong_VGC(QueryObj);
    //
    if CK2.Checked=true then
    begin
      //橡膠系統廠VR2
      For i:=0 to High(RubberGSBH) do
      begin
        SQL.Add('union all ');
        SQL.Add('select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CNO_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) ');
        SQL.Add('       -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0)  as ZZ,KCLLS.Qty,KCLLS.PKNO,ZLZLS3.TCLYL-isnull(Rep_Mat.Rep_Qty,0) as CLSL_KT,  ');
        SQL.Add('       KCLLS.CNO_NK1,KCLLS.CNO_TC1,KCLLS.CNO_HD1,KCLLS.CNO_KD1,IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11, ');
        SQL.Add('       KCLLS.CNO_NQ,IsNull(KCLLS.NQ,0) as NQ, KCLLS.CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ ');
        SQL.Add(' from (');
        SQL.Add('select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,');
        SQL.Add('      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_DDZL.Pairs,max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 ');
        SQL.Add('left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.Shehao=xxzl.shehao ');
        SQL.Add('where ZLZLS3.TCLYL>0 and DDZL.ZLBH1 '+RYEditSubSQL+' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3');
        //20230906 add CLSL_KT column
        //SQL.Add('left join ( select KCLLS.SCBH,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>''''  group by KCLLS.SCBH,KCLLS.CLBH) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH ');
        SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
        SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
        SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
        SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
        SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=ZLZLS3.ZLBH1 and Rep_Mat.CLBH=ZLZLS3.cldhz and Rep_Mat.MJBH=ZLZLS3.MJBH and Rep_Mat.DType=ZLZLS3.DType ');
        SQL.Add('left join (');
        SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
        SQL.Add('                  round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as RKQty,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
        SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');

        SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
        SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
        SQL.Add('           where 1=1 ');
        SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+'''');
        SQL.Add('                 and KCLLS.SCBH  '+RYEditSubSQL+'  ');
        if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('                 and KCLLS.HGLB<>''XT'' ');
        SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ ');
      end;
    end;
    //不在現場VA12
    SQL.Add('union all');
    SQL.Add('select KCLLS.SCBH as ZLBH1,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end  as MJBH,KCLLS.CLBH as Parent,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,');
    SQL.Add('       KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty) as TemQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD  ');
    SQL.Add('       ,sum(KCRKCX.RKQty) as RKQty,IsNull(sum(KCRKCX.NK),0) as NK,IsNull(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,IsNull(sum(KCRKCX.KD),0) as KD,IsNull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKCX.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNull(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0)');
    SQL.Add('                      -IsNull(sum(KCRKCX.NK1),0)-IsNull(sum(KCRKCX.TC1),0)-IsNull(sum(KCRKCX.HD1),0)-IsNull(sum(KCRKCX.KD1),0)-IsNull(sum(KCRKCX.H11),0) as ZZ');
    SQL.Add('       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO,''0'' as CLSL_KT ');
    SQL.Add('       ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,IsNull(sum(KCRKCX.NK1),0) as NK1,IsNull(sum(KCRKCX.TC1),0) as TC,IsNull(sum(KCRKCX.HD1),0) as HD1,IsNull(sum(KCRKCX.KD1),0) as KD1,IsNull(sum(KCRKCX.H11),0) as H11  ');
    SQL.Add('       ,KCRKCX.CNO_NQ,IsNull(sum(KCRKCX.NQ),0) as NQ ,KCRKCX.CNO_NKNQ,IsNull(sum(KCRKCX.NKNQ),0) as NKNQ ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ ');

    SQL.Add('           from KCLLS ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE (KCLL.GSBH ='''+main.Edit2.Text+''') and KCLL.CFMID<>''NO'' and NOT EXISTS (select CLBH from (SELECT CLBH from '+ZLZLS2+' as ZLZLS2 where ZLZLS2.CLSL>0 and ZLBH '+RYEditSubSQL+' Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH) ');
    SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD');
    SQL.Add('         ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,KCRKCX.CNO_NKNQ   ');
    //不再印刷線外加工VGC制令表材料中
    if CK1.Checked=true then
    Show_NotIn_Xuong_VGC(QueryObj);
    //不在R廠制令表材料中
    SQL.Add('union all');
    SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty) as TempQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,sum(KCRKCX.RKQty) as RKQty');
    SQL.Add('       ,IsNull(sum(KCRKCX.NK),0) as NK,IsNull(sum(KCRKCX.TC),0) as TC,IsNull(sum(KCRKCX.HD),0) as HD,IsNull(sum(KCRKCX.KD),0) as KD,IsNull(sum(KCRKCX.XT),0) as XT,IsNull(sum(KCRKCX.GC),0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)-IsNull(sum(KCRKCX.NK),0)-IsNull(sum(KCRKCX.TC),0)-IsNull(sum(KCRKCX.HD),0)-IsNull(sum(KCRKCX.KD),0)-IsNull(sum(KCRKCX.XT),0)-IsNull(sum(KCRKCX.GC),0)');
    SQL.Add('                      -IsNull(sum(KCRKCX.NK1),0)-IsNull(sum(KCRKCX.TC1),0)-IsNull(sum(KCRKCX.HD1),0)-IsNull(sum(KCRKCX.KD1),0)-IsNull(sum(KCRKCX.H11),0) as ZZ');
    SQL.Add('       ,sum(KCLLS.Qty) as Qty,Max(KCRKCX.PKNO) as PKNO,''0'' as CLSL_KT ');
    SQL.Add('       ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,IsNull(sum(KCRKCX.NK1),0) as NK1,IsNull(sum(KCRKCX.TC1),0) as TC1,IsNull(sum(KCRKCX.HD1),0) as HD1,IsNull(sum(KCRKCX.KD1),0) as KD1,IsNull(sum(KCRKCX.H11),0) as H11 ');
    SQL.Add('       ,KCRKCX.CNO_NQ,IsNull(sum(KCRKCX.NQ),0) as NQ,KCRKCX.CNO_NKNQ,IsNull(sum(KCRKCX.NKNQ),0) as NKNQ ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ ');
    SQL.Add('           from KCLLS ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           where KCLLS.SCBH '+RYEditSubSQL+' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 and ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)');
    SQL.Add('   and KCLLS.SCBH '+RYEditSubSQL+' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,KCRKCX.CNO_NKNQ');
    SQL.Add('  ) ZLZLS2    ');
    SQL.Add('Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  ');
    //20201127 增加退庫和紅發票海關代碼
    SQL.Add('Left join CLHD on CLHD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC on CLTC.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD on CLKD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHG1 on CLHG1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHD1 on CLHD1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC1 on CLTC1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD1 on CLKD1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLNQ on CLNQ.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLNKNQ on CLNKNQ.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join (');
    SQL.Add('Select KCRKS.GSBH,KCRKS.CGBH as ZLBH,Case when len(KCRKS.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRKS.RKSB)<10 then ''Assembly'' else ''Gia cong'' End as DType ,KCRKS.CLBH, ');
    SQL.Add('       Sum(KCRKS.Qty) as Qty, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK'' then KCRKS.Qty else 0 end ) as NK, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC'' then KCRKS.Qty else 0 end ) as TC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD'' then KCRKS.Qty else 0 end ) as HD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD'' then KCRKS.Qty else 0 end ) as KD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''XT'' then KCRKS.Qty else 0 end ) as XT, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''GC'' then KCRKS.Qty else 0 end ) as GC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,  ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK1'' then KCRKS.Qty else 0 end ) as NK1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC1'' then KCRKS.Qty else 0 end ) as TC1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD1'' then KCRKS.Qty else 0 end ) as HD1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD1'' then KCRKS.Qty else 0 end ) as KD1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''H11'' then KCRKS.Qty else 0 end ) as H11, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NQ'' then KCRKS.Qty else 0 end ) as NQ, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NKNQ'' then KCRKS.Qty else 0 end ) as NKNQ ');
    SQL.Add('from KCRK ');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('where KCRK.SFL=''THU HOI''  and KCRKS.CGBH '+RYEditSubSQL+'');
    SQL.Add('Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH ');
    SQL.Add(') KCRKTH on  KCRKTH.ZLBH=ZLZLS2.ZLBH and KCRKTH.CLBH=ZLZLS2.CLBH and KCRKTH.DType=ZLZLS2.DType and KCRKTH.MJBH=ZLZLS2.MJBH  and KCRKTH.GSBH=ZLZLS2.GSBH');
    //
    SQL.Add(') ZLZLS2 where 1=1  ');
    SQL.Add('and (IsNull(HG_NO,'''')<>'''' or IsNull(TC_NO,'''')<>'''' or IsNull(HD_NO,'''')<>'''' or IsNull(KD_NO,'''')<>'''' ');
    SQL.Add('     or IsNull(HG1_NO,'''')<>'''' or IsNull(TC1_NO,'''')<>'''' or IsNull(HD1_NO,'''')<>'''' or IsNull(KD1_NO,'''')<>''''  ');
    SQL.Add('     or IsNull(NQ_NO,'''')<>'''' or IsNull(NKNQ_NO,'''')<>'''' ) ');
    SQL.Add('Group by ZlZLS2.ZLBH,ZLZLS2.HG_NO,ZLZLS2.Rate_HG,ZLZLS2.TC_NO,ZLZLS2.Rate_TC,ZLZLS2.HD_NO,ZLZLS2.Rate_HD,ZLZLS2.KD_NO,ZLZLS2.Rate_KD ');
    SQL.Add('         ,ZLZLS2.HG1_NO,ZLZLS2.Rate_HG1,ZLZLS2.TC1_NO,ZLZLS2.Rate_TC1,ZLZLS2.HD1_NO,ZLZLS2.Rate_HD1,ZLZLS2.KD1_NO,ZLZLS2.Rate_KD1,ZLZLS2.NQ_NO,ZLZLS2.Rate_NQ,ZLZLS2.NKNQ_NO,ZLZLS2.Rate_NKNQ');
    SQL.Add('  ) ZLZLS2   ');
    SQL.Add('Group by ZLZLS2.ZLBH,ZLZLS2.HG_NO,ZLZLS2.TC_NO,ZLZLS2.HD_NO,ZLZLS2.KD_NO,ZLZLS2.HG1_NO,ZLZLS2.TC1_NO,ZLZLS2.HD1_NO,ZLZLS2.KD1_NO,ZLZLS2.NQ_NO,ZLZLS2.NKNQ_NO) ZLZLS2 ');
    SQL.Add('Left join KCRK on KCRK.RKNO=ZLZLS2.PKNO');
    SQL.Add('Left join KCPK on KCPK.PKNO=ZLZLS2.PKNO');
    SQL.Add('Left join CGZL_Declaration on CGZL_Declaration.DECLARATION=KCPK.Declaretion');
    SQL.Add('Left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
    SQL.Add('Left join CGZL_VATNO on CGZL_VATNO.VATNO=KCRK.DOCNO and ZSZL.tybh=CGZL_VATNO.ZSBH_MST');
    SQL.Add('Left join HG_Compare on HG_Compare.DDBH = ZLZLS2.ZLBH and ((HG_Compare.HGBH = ZLZLS2.HG_NO) or (HG_Compare.HGBH = ZLZLS2.HD_NO) or (HG_Compare.HGBH = ZLZLS2.TC_NO))');
    //SQL.Add('Order by ZLZLS2.ZLBH,ZLZLS2.HG_NO desc,ZLZLS2.TC_NO desc,ZLZLS2.HD_NO desc,ZLZLS2.KD_NO desc');
    SQL.Add(') MaHG   ');
    SQL.Add('Order by MaHG.ZLBH,CNO desc  ');
    //funcObj.WriteErrorLog(sql.GetText);
//  showmessage(SQL.Text);
    Active:=true;
  end;

end;
//
//拆單版本平均分攤領料用量版本
procedure TDetailInVNo.ButtonMaVatTu_Sep(DDBH_M:String;SepCount:String;DDBH_C_SQLStr:String);
var ZLZLS2:string;
    i:integer;
begin

  if RB1.Checked=true then
    ZLZLS2:='DDZL_ZLZLS2'
  else
    ZLZLS2:='ZLZLS2';
  //
  if RYEdit.Text='' then
  begin
    showmessage('Pls input RY!');
    abort;
  end;
  //
  with  RYQuery do
  begin
    Active:=false;
    SQL.Clear;
    sql.Add(' if object_id('+''''+'tempdb..#tmp'+''''+') is not null ');         //////////////////////////////    if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null
      sql.add('begin   drop table #tmp end    ');                     /////////////////////////////////////////
      sql.Add('select * into #tmp ');                                 ///////////////////////////////
      sql.add('from (                         ');                      /////////////////////////////////////

    SQL.Add('Select top 100000 ZLZLS2.*,KCRKTH.Qty as THQty,');
    SQL.Add('       CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0) then IsNull(CNO_NK,CLHG.HGBH) else null end as HG_NO,');
    SQL.Add('       CLTC.RateC as Rate_TC,case when (ZLZLS2.TC>0) then IsNull(CNO_TC,CLTC.HGBH) else null end as TC_NO,');
    SQL.Add('       CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0) then IsNull(CNO_HD,CLHD.HGBH) else null end as HD_NO, ');
    SQL.Add('       CLKD.RateC as Rate_KD,case when (ZLZLS2.KD>0) then CNO_KD else null end as KD_NO,');
    SQL.Add('       CLHG1.RateC as Rate_HG1,case when (ZLZLS2.NK1>0) then IsNull(CNO_NK1,CLHG1.HGBH) else null end as HG1_NO,');
    SQL.Add('       CLTC1.RateC as Rate_TC1,case when (ZLZLS2.TC1>0) then IsNull(CNO_TC1,CLTC1.HGBH) else null end as TC1_NO,');
    SQL.Add('       CLHD1.RateC as Rate_HD1,case when (ZLZLS2.HD1>0) then IsNull(CNO_HD1,CLHD1.HGBH) else null end as HD1_NO, ');
    SQL.Add('       CLKD1.RateC as Rate_KD1,case when (ZLZLS2.KD1>0) then CNO_KD1 else null end as KD1_NO,');
    SQL.Add('       CLNQ.RateC as Rate_NQ,case when (ZLZLS2.NQ>0) then IsNull(CNO_NQ,CLNQ.HGBH) else null end as NQ_NO, ');
    SQL.Add('       CLNKNQ.RateC as Rate_NKNQ,case when (ZLZLS2.NKNQ>0) then IsNull(CNO_NKNQ,CLNKNQ.HGBH) else null end as NKNQ_NO ');
    SQL.Add('from ( ');
    //20201127 實領-退庫 Qty-THQty
    //SQL.Add('select OrdCL.ZLBH,OrdCL.MJBH,OrdCL.Parent,OrdCL.DType,OrdCL.CLBH,OrdCL.CLSL,OrdCL.YWPM,OrdCL.DWBH,OrdCL.ARTICLE,OrdCL.XieMing,OrdCL.Pairs,OrdCL.CalDate,OrdCL.GSBH,round((OrdCL.TempQty-IsNull(KCRKTH_M.Qty,0))/CLSL_M*CLSL,2) as TempQty,');
    //SQL.Add('       OrdCL.CNO_NK,OrdCL.CNO_HD,round((OrdCL.RKQty-IsNull(KCRKTH_M.Qty,0))/CLSL_M*CLSL,2) as RKQty,');
    //SQL.Add('       round((OrdCL.NK-IsNull(KCRKTH_M.NK,0))/CLSL_M*CLSL,2) as NK,round((OrdCL.KD-IsNull(KCRKTH_M.KD,0))/CLSL_M*CLSL,2) as KD,round((OrdCL.HD-IsNull(KCRKTH_M.HD,0))/CLSL_M*CLSL,2) as HD,round((OrdCL.GC-IsNull(KCRKTH_M.GC,0))/CLSL_M*CLSL,2) as GC,');
    //SQL.Add('       round((OrdCL.XT-IsNull(KCRKTH_M.XT,0))/CLSL_M*CLSL,2) as XT,round((OrdCL.ZZ-IsNull(KCRKTH_M.ZZ,0))/CLSL_M*CLSL,2) as ZZ,round((OrdCL.Qty-IsNull(KCRKTH_M.Qty,0))/CLSL_M*CLSL,2) as Qty');
    SQL.Add('select OrdCL.ZLBH,OrdCL.MJBH,OrdCL.Parent,OrdCL.DType,OrdCL.CLBH,OrdCL.CLSL,OrdCL.YWPM,OrdCL.DWBH,OrdCL.ARTICLE,OrdCL.XieMing,OrdCL.Pairs,OrdCL.CalDate,OrdCL.GSBH,round((OrdCL.TempQty)/CLSL_M*CLSL,2) as TempQty,');
    SQL.Add('       OrdCL.CNO_NK,OrdCL.CNO_TC,OrdCL.CNO_HD,OrdCL.CNO_KD,round((OrdCL.RKQty)/CLSL_M*CLSL,2) as RKQty,');
    SQL.Add('       round((OrdCL.NK)/CLSL_M*CLSL,2) as NK,round((OrdCL.TC)/CLSL_M*CLSL,2) as TC,round((OrdCL.HD)/CLSL_M*CLSL,2) as HD,round((OrdCL.KD)/CLSL_M*CLSL,2) as KD,round((OrdCL.XT)/CLSL_M*CLSL,2) as XT,');
    SQL.Add('       round((OrdCL.GC)/CLSL_M*CLSL,2) as GC,round((OrdCL.ZZ)/CLSL_M*CLSL,2) as ZZ,round((OrdCL.Qty)/CLSL_M*CLSL,2) as Qty,OrdCL.PKNO, ');
    SQL.Add('       ROUND(CAST(OrdCL.CLSL AS FLOAT) - (ISNULL(CAST(Rep_Qty AS FLOAT), 0) / CAST(CLSL_M AS FLOAT) * CAST(CLSL AS FLOAT)), 2) AS CLSL_KT, ');

//sua dong tren ep sang kieu du lieu float
    //SQL.Add('       round(OrdCL.CLSL-(isnull(Rep_Qty,0)/CLSL_M*CLSL),2) as CLSL_KT, ');
    SQL.Add('       OrdCL.CNO_NK1,OrdCL.CNO_TC1,OrdCL.CNO_HD1,OrdCL.CNO_KD1,');
    SQL.Add('       round((OrdCL.NK1)/CLSL_M*CLSL,2) as NK1,round((OrdCL.TC1)/CLSL_M*CLSL,2) as TC1,round((OrdCL.HD1)/CLSL_M*CLSL,2) as HD1,round((OrdCL.KD1)/CLSL_M*CLSL,2) as KD1,round((OrdCL.H11)/CLSL_M*CLSL,2) as H11,');
    SQL.Add('       OrdCL.CNO_NQ,round((OrdCL.NQ)/CLSL_M*CLSL,2) as NQ,OrdCL.CNO_NKNQ,round((OrdCL.NKNQ)/CLSL_M*CLSL,2) as NKNQ  ');
    SQL.Add('from (');
    SQL.Add('select OrdCL.*,Round(Round(KCLLS.TempQty,2),2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC, ');
    SQL.Add('       case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,round(KCLLS.RKQty,2) as RKQty,');
    SQL.Add('       round(IsNull(KCLLS.NK,0),2) as NK,round(IsNull(KCLLS.TC,0),2) as TC,round(IsNull(KCLLS.HD,0),2) as HD,round(IsNull(KCLLS.KD,0),2) as KD, round(IsNull(KCLLS.XT,0),2) as XT, round(IsNull(KCLLS.GC,0),2) as GC,');
    SQL.Add('       round(IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0)');
    SQL.Add('       -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0) -IsNull(KCLLS.NQ,0)-IsNull(KCLLS.NKNQ,0),2),0),2)  as ZZ,round(KCLLS.Qty,2) as Qty,OrdCL_M.CLSL_M,KCLLS.PKNO,Rep_Qty,  ');
    SQL.Add('       case when KCLLS.CNO_NK1='''' then null else CNO_NK1 end CNO_NK1,case when KCLLS.CNO_TC1='''' then null else CNO_TC1 end CNO_TC1, ');
    SQL.Add('       case when KCLLS.CNO_HD1='''' then null else CNO_HD1 end CNO_HD1,case when KCLLS.CNO_KD1='''' then null else CNO_KD1 end CNO_KD1, ');
    SQL.Add('       round(IsNull(KCLLS.NK1,0),2) as NK1,round(IsNull(KCLLS.TC1,0),2) as TC1,round(IsNull(KCLLS.HD1,0),2) as HD1,round(IsNull(KCLLS.KD1,0),2) as KD1, round(IsNull(KCLLS.H11,0),2) as H11 ,');
    SQL.Add('       case when KCLLS.CNO_NQ='''' then null else CNO_NQ end CNO_NQ,round(IsNull(KCLLS.NQ,0),2) as NQ,case when KCLLS.CNO_NKNQ='''' then null else CNO_NKNQ end CNO_NKNQ,round(IsNull(KCLLS.NKNQ,0),2) as NKNQ ');
    SQL.Add('from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH ');
    SQL.Add('      from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+RYEdit.Text+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add('union all ');
    SQL.Add('   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from '+ZLZLS2+' as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH ');
    SQL.Add('    from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+RYEdit.Text+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add(') OrdCL');
    SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
    SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
    SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH ='''+DDBH_M+'''  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
    SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
    SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH and Rep_Mat.MJBH=OrdCL.MJBH and Rep_Mat.DType=OrdCL.DType ');

    // SQL show 2 CNO  20210331
    SQL.Add('  left join (  ');
    SQL.Add('        select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO)as PKNO,Sum(RKQty) as RKQty,  ');
    SQL.Add('               Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ,   ');
    SQL.Add('               Max(CNO_NK1) as CNO_NK1,Max(CNO_TC1) as CNO_TC1,Max(CNO_HD1) as CNO_HD1,Max(CNO_KD1) as CNO_KD1,Sum(NK1) as NK1,Sum(TC1) as TC1,Sum(HD1) as HD1,Sum(KD1) as KD1,Sum(H11) as H11, ');
    SQL.Add('               Max(CNO_NQ) as CNO_NQ,Sum(NQ) as NQ,Max(CNO_NKNQ) as CNO_NKNQ,Sum(NKNQ) as NKNQ  ');
    SQL.Add('        from (  ');
    SQL.Add('         select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, KCLLS.DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,   ');
    SQL.Add('             Sum(KCLLS.Qty) as RKQty,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK'' then case when  len(KCLLS.CNO_NK)>0 then substring(KCLLS.CNO_NK,1,len(KCLLS.CNO_NK)-1) else NULL end end) as CNO_NK,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC'' then case when  len(KCLLS.CNO_TC)>0 then substring(KCLLS.CNO_TC,1,len(KCLLS.CNO_TC)-1) else NULL end end) as CNO_TC,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD'' then case when  len(KCLLS.CNO_HD)>0 then substring(KCLLS.CNO_HD,1,len(KCLLS.CNO_HD)-1) else NULL end end) as CNO_HD,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD'' then case when  len(KCLLS.CNO_KD)>0 then substring(KCLLS.CNO_KD,1,len(KCLLS.CNO_KD)-1) else NULL end end) as CNO_KD,');
    SQL.Add('             Max(KCLLS.PKNO) as PKNO ,');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK1'' then case when  len(KCLLS.CNO_NK1)>0 then substring(KCLLS.CNO_NK1,1,len(KCLLS.CNO_NK1)-1) else NULL end end) as CNO_NK1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC1'' then case when  len(KCLLS.CNO_TC1)>0 then substring(KCLLS.CNO_TC1,1,len(KCLLS.CNO_TC1)-1) else NULL end end) as CNO_TC1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD1'' then case when  len(KCLLS.CNO_HD1)>0 then substring(KCLLS.CNO_HD1,1,len(KCLLS.CNO_HD1)-1) else NULL end end) as CNO_HD1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD1'' then case when  len(KCLLS.CNO_KD1)>0 then substring(KCLLS.CNO_KD1,1,len(KCLLS.CNO_KD1)-1) else NULL end end) as CNO_KD1,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NQ'' then case when  len(KCLLS.CNO_NQ)>0 then substring(KCLLS.CNO_NQ,1,len(KCLLS.CNO_NQ)-1) else NULL end end) as CNO_NQ,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NKNQ'' then case when  len(KCLLS.CNO_NKNQ)>0 then substring(KCLLS.CNO_NKNQ,1,len(KCLLS.CNO_NKNQ)-1) else NULL end end) as CNO_NKNQ');
    SQL.Add('  		from (  ');
    SQL.Add('  		Select KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, KCLLS.Qty, KCLLS.TempQty,KCLLS.HGLB  ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NK'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NK ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''TC'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_TC ');
  	SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''HD'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_HD ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''KD'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_KD ');
    SQL.Add('           ,KCPKLL.PKNO ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NK1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NK1 ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''TC1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_TC1 ');
  	SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''HD1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_HD1 ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''KD1'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_KD1 ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NQ'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NQ ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NKNQ'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NKNQ ');
    SQL.Add('  		from KCLLS  ');
    SQL.Add('          left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('          Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL  ');
    SQL.Add('  		     where  KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0 ');
    SQL.Add('  				 and KCLLS.SCBH = '''+DDBH_M+'''  ');
    SQL.Add('          and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO''   ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('  		) KCLLS Group by KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, KCLLS.DType  ');
    SQL.Add('             ) KCLLS Group by SCBH,CLBH,MJBH,DType  ');
    SQL.Add('            ) KCLLS on  KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH  ');
    //20171211 訂單拆單, 關連母訂單用量
    SQL.Add('left join (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL_M,DDZL.GSBH ');
    SQL.Add('      from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+DDBH_M+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,DDZL.GSBH ');
    SQL.Add('union all ');
    SQL.Add('   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from '+ZLZLS2+' as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL_M,DDZL.GSBH ');
    SQL.Add('    from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+DDBH_M+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,DDZL.GSBH ');
    SQL.Add(') OrdCL_M on  OrdCL.MJBH=OrdCL_M.MJBH and OrdCL.Parent=OrdCL_M.Parent and OrdCL.DType=OrdCL_M.DType and OrdCL.CLBH=OrdCL_M.CLBH and OrdCL.GSBH=OrdCL_M.GSBH ');
    //======================================
    SQL.Add('where 1=1 ');
    //印刷線外加工VGC
    if CK1.Checked=true then
    Show_Xuong_VGC_Sep(RYQuery,DDBH_M,SepCount,DDBH_C_SQLStr);
    //
    if CK2.Checked=true then
    begin
      //橡膠系統廠VR2
      For i:=0 to High(RubberGSBH) do
      begin
        SQL.Add('union all ');
        SQL.Add('Select ZLZLS3.*,KCLLS.TempQty/TCLYL_M*TCLYL as TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CNO_HD,KCLLS.CNO_KD,KCLLS.RKQty as RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,');
        SQL.Add('       IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0)   ');
        SQL.Add('       -IsNull(KCLLS.NK1,0)-IsNull(KCLLS.TC1,0)-IsNull(KCLLS.HD1,0)-IsNull(KCLLS.KD1,0)-IsNull(KCLLS.H11,0)-IsNull(KCLLS.NQ,0)-IsNull(KCLLS.NKNQ,0) as ZZ,KCLLS.Qty as Qty,ZLZLS3_M.TCLYL_M,KCLLS.PKNO,Rep_Qty,  ');
        SQL.Add('       KCLLS.CNO_NK1,KCLLS.CNO_TC1,KCLLS.CNO_HD1,KCLLS.CNO_KD1, ');
        SQL.Add('       IsNull(KCLLS.NK1,0) as NK1,IsNull(KCLLS.TC1,0) as TC1,IsNull(KCLLS.HD1,0) as HD1,IsNull(KCLLS.KD1,0) as KD1,IsNull(KCLLS.H11,0) as H11, ');
        SQL.Add('       KCLLS.CNO_NQ,IsNull(KCLLS.NQ,0) as NQ,KCLLS.CNO_NKNQ,IsNull(KCLLS.NKNQ,0) as NKNQ');
        SQL.Add('from (');
        SQL.Add('select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,');
        SQL.Add('      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_DDZL.Pairs,Max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,ZLZLS3.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 ');
        SQL.Add('left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.Shehao=xxzl.shehao ');
        SQL.Add('where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1='''+RYEdit.Text+''' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,ZLZLS3.CQDH,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3');
        SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
        SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
        SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH ='''+DDBH_M+'''  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
        SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
        SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=ZLZLS3.ZLBH1 and Rep_Mat.CLBH=ZLZLS3.cldhz and Rep_Mat.MJBH=ZLZLS3.MJBH and Rep_Mat.DType=ZLZLS3.DType ');
        SQL.Add('left join (');
        SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
        SQL.Add('                  round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as RKQty,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
        SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
        SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
        SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
        SQL.Add('           where 1=1  ');
        SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+'''');
        SQL.Add('                 and KCLLS.SCBH ='''+DDBH_M+'''  ');
        if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('                 and KCLLS.HGLB<>''XT'' ');
        SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on  KCLLS.CLBH=ZLZLS3.CLDHZ ');
        //20171211 訂單拆單, 關連母訂單用量
        SQL.Add('left join (');
        SQL.Add('select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL_M,');
        SQL.Add('       DDZL.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 ');
        SQL.Add('left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.Shehao=xxzl.shehao ');
        SQL.Add('where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1='''+DDBH_M+''' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,DDZL.CQDH ) ZLZLS3_M on  ZLZLS3.MJBH=ZLZLS3_M.MJBH and  ZLZLS3.Parent=ZLZLS3_M.Parent  and  ZLZLS3.DType=ZLZLS3_M.DType and  ZLZLS3.cldhz=ZLZLS3_M.cldhz and  ZLZLS3.CQDH=ZLZLS3_M.CQDH ');
      end;
    end;
    SQL.Add(') OrdCL ');
    //20201127 增加退庫
    SQL.Add('Left join  (');
    SQL.Add('Select KCRKS.GSBH,'''+RYEdit.Text+''' as ZLBH,Case when len(KCRKS.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRKS.RKSB)<10 then ''Assembly'' else ''Gia cong'' End as DType ,KCRKS.CLBH, ');
    SQL.Add('       Sum(KCRKS.Qty) as Qty, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK'' then Qty else 0 end ) as NK, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC'' then Qty else 0 end ) as TC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD'' then Qty else 0 end ) as HD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD'' then Qty else 0 end ) as KD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''XT'' then Qty else 0 end ) as XT, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''GC'' then Qty else 0 end ) as GC,');
    SQL.Add('       Sum(Case when KCRK.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK1'' then Qty else 0 end ) as NK1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC1'' then Qty else 0 end ) as TC1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD1'' then Qty else 0 end ) as HD1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD1'' then Qty else 0 end ) as KD1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''H11'' then Qty else 0 end ) as H11, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NQ'' then Qty else 0 end ) as NQ, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NKNQ'' then Qty else 0 end ) as NKNQ ');
    SQL.Add('from KCRK');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('where KCRK.SFL=''THU HOI''  and KCRKS.CGBH='''+DDBH_M+'''');
    SQL.Add('Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH ');
    SQL.Add(') KCRKTH_M on  KCRKTH_M.ZLBH=OrdCL.ZLBH and KCRKTH_M.CLBH=OrdCL.CLBH and KCRKTH_M.DType=OrdCL.DType and KCRKTH_M.MJBH=OrdCL.MJBH  and KCRKTH_M.GSBH=OrdCL.GSBH');
    //不在現場VA12
    SQL.Add('union all');
    SQL.Add('select '''+RYEdit.Text+''' as ZLBH1,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,KCLLS.CLBH as Parent,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,');
    SQL.Add('        KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty)/'+SepCount+' as TempQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,sum(KCRKCX.RKQty)/'+SepCount+' as RKQty,IsNull(sum(KCRKCX.NK)/'+SepCount+',0) as NK,IsNull(sum(KCRKCX.TC)/'+SepCount+',0) as TC,IsNull(sum(KCRKCX.HD)/'+SepCount+',0) as HD,IsNull(sum(KCRKCX.KD)/'+SepCount+',0) as KD,IsNull(sum(KCRKCX.XT)/'+SepCount+',0) as XT,IsNull(sum(KCRKCX.GC)/'+SepCount+',0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+'-IsNull(sum(KCRKCX.NK)/'+SepCount+',0)-IsNull(sum(KCRKCX.TC)/'+SepCount+',0)-IsNull(sum(KCRKCX.HD)/'+SepCount+',0)-IsNull(sum(KCRKCX.KD)/'+SepCount+',0)-IsNull(sum(KCRKCX.XT)/'+SepCount+',0)-IsNull(sum(KCRKCX.GC)/'+SepCount+',0)');
    SQL.Add('       -IsNull(sum(KCRKCX.NK1)/'+SepCount+',0)-IsNull(sum(KCRKCX.TC1)/'+SepCount+',0)-IsNull(sum(KCRKCX.HD1)/'+SepCount+',0)-IsNull(sum(KCRKCX.KD1)/'+SepCount+',0)-IsNull(sum(KCRKCX.H11)/'+SepCount+',0)-IsNull(sum(KCRKCX.NQ)/'+SepCount+',0)-IsNull(sum(KCRKCX.NKNQ)/'+SepCount+',0) as ZZ');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+' as Qty,Max(KCRKCX.PKNO) as PKNO,'''' as Rep_Qty ');
    SQL.Add('       ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1 ');
    SQL.Add('       ,IsNull(sum(KCRKCX.NK1)/'+SepCount+',0) as NK1,IsNull(sum(KCRKCX.TC1)/'+SepCount+',0) as TC1,IsNull(sum(KCRKCX.HD1)/'+SepCount+',0) as HD1,IsNull(sum(KCRKCX.KD1)/'+SepCount+',0) as KD1,IsNull(sum(KCRKCX.H11)/'+SepCount+',0) as H11');
    SQL.Add('       ,KCRKCX.CNO_NQ,IsNull(sum(KCRKCX.NQ)/'+SepCount+',0) as NQ,KCRKCX.CNO_NKNQ,IsNull(sum(KCRKCX.NKNQ)/'+SepCount+',0) as NKNQ ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH='''+RYEdit.Text+''' ');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD, ');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ ');
    SQL.Add('           from KCLLS ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           where KCLLS.SCBH = '''+DDBH_M+''' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE (KCLL.GSBH ='''+main.Edit2.Text+''') and KCLL.CFMID<>''NO'' '+DDBH_C_SQLStr);
    SQL.Add('   and KCLLS.SCBH = '''+DDBH_M+''' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,KCRKCX.CNO_NKNQ');
    //不再印刷線外加工VGC制令表材料中
    if CK1.Checked=true then
    Show_NotIn_Xuong_VGC_Sep(RYQuery,DDBH_M,SepCount,DDBH_C_SQLStr);
    //不在R廠制令表材料中
    SQL.Add('union all');
    SQL.Add('select '''+RYEdit.Text+''' as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty)/'+SepCount+' as TempQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,sum(KCRKCX.RKQty)/'+SepCount+' as RKQty,IsNull(sum(KCRKCX.NK)/'+SepCount+',0) as NK,IsNull(sum(KCRKCX.TC)/'+SepCount+',0) as TC,IsNull(sum(KCRKCX.HD)/'+SepCount+',0) as HD,IsNull(sum(KCRKCX.KD)/'+SepCount+',0) as KD,IsNull(sum(KCRKCX.XT)/'+SepCount+',0) as XT,IsNull(sum(KCRKCX.GC)/'+SepCount+',0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+'-IsNull(sum(KCRKCX.NK)/'+SepCount+',0)-IsNull(sum(KCRKCX.TC)/'+SepCount+',0)-IsNull(sum(KCRKCX.HD)/'+SepCount+',0)-IsNull(sum(KCRKCX.KD)/'+SepCount+',0)-IsNull(sum(KCRKCX.XT)/'+SepCount+',0)-IsNull(sum(KCRKCX.GC)/'+SepCount+',0)');
    SQL.Add('       -IsNull(sum(KCRKCX.NK1)/'+SepCount+',0)-IsNull(sum(KCRKCX.TC1)/'+SepCount+',0)-IsNull(sum(KCRKCX.HD1)/'+SepCount+',0)-IsNull(sum(KCRKCX.KD1)/'+SepCount+',0)-IsNull(sum(KCRKCX.H11)/'+SepCount+',0)-IsNull(sum(KCRKCX.NQ)/'+SepCount+',0)-IsNull(sum(KCRKCX.NKNQ)/'+SepCount+',0)  as ZZ');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+' as Qty,Max(KCRKCX.PKNO) as PKNO,'''' as Rep_Qty ');
    SQL.Add('       ,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,IsNull(sum(KCRKCX.NK1)/'+SepCount+',0) as NK1,IsNull(sum(KCRKCX.TC1)/'+SepCount+',0) as TC1,IsNull(sum(KCRKCX.HD1)/'+SepCount+',0) as HD1,IsNull(sum(KCRKCX.KD1)/'+SepCount+',0) as KD1,IsNull(sum(KCRKCX.H11)/'+SepCount+',0) as H11 ');
    SQL.Add('       ,KCRKCX.CNO_NQ,IsNull(sum(KCRKCX.NQ)/'+SepCount+',0) as NQ,KCRKCX.CNO_NKNQ,IsNull(sum(KCRKCX.NKNQ)/'+SepCount+',0) as NKNQ ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH='''+RYEdit.Text+''' ');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK1'' then KCLLS.Qty else 0 end ) as NK1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC1'' then KCLLS.Qty else 0 end ) as TC1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD1'' then KCLLS.Qty else 0 end ) as HD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD1'' then KCLLS.Qty else 0 end ) as KD1, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''H11'' then KCLLS.Qty else 0 end ) as H11, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NQ'' then KCLLS.Qty else 0 end ) as NQ, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.Qty else 0 end ) as NKNQ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK1'' then KCLLS.CNO end) as CNO_NK1,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC1'' then KCLLS.CNO end) as CNO_TC1,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD1'' then KCLLS.CNO end) as CNO_HD1,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD1'' then KCLLS.CNO end) as CNO_KD1,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NQ'' then KCLLS.CNO end) as CNO_NQ,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NKNQ'' then KCLLS.CNO end) as CNO_NKNQ');
    SQL.Add('           from KCLLS ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL ');
    SQL.Add('           where KCLLS.SCBH = '''+DDBH_M+''' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 and ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)');
    SQL.Add('   and KCLLS.SCBH = '''+DDBH_M+''' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.CNO_NK1,KCRKCX.CNO_TC1,KCRKCX.CNO_HD1,KCRKCX.CNO_KD1,KCRKCX.CNO_NQ,KCRKCX.CNO_NKNQ');
    SQL.Add('  ) ZLZLS2    ');
    SQL.Add('Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHD on CLHD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC on CLTC.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD on CLKD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHG1 on CLHG1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHD1 on CLHD1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC1 on CLTC1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD1 on CLKD1.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLNQ on CLNQ.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLNKNQ on CLNKNQ.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join  (');
    SQL.Add('Select KCRKS.GSBH,KCRKS.CGBH as ZLBH,Case when len(KCRKS.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRKS.RKSB)<10 then ''Assembly'' else ''Gia cong'' End as DType ,KCRKS.CLBH, ');
    SQL.Add('       Sum(KCRKS.Qty) as Qty, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK'' then KCRKS.Qty else 0 end ) as NK, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC'' then KCRKS.Qty else 0 end ) as TC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD'' then KCRKS.Qty else 0 end ) as HD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD'' then KCRKS.Qty else 0 end ) as KD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''XT'' then KCRKS.Qty else 0 end ) as XT, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''GC'' then KCRKS.Qty else 0 end ) as GC,');
    SQL.Add('       Sum(Case when KCRK.HGLB=''ZZZZ'' then KCRKS.Qty else 0 end ) as ZZ,    ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK1'' then KCRKS.Qty else 0 end ) as NK1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC1'' then KCRKS.Qty else 0 end ) as TC1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD1'' then KCRKS.Qty else 0 end ) as HD1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD1'' then KCRKS.Qty else 0 end ) as KD1, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''H11'' then KCRKS.Qty else 0 end ) as H11, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NQ'' then KCRKS.Qty else 0 end ) as NQ, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NKNQ'' then KCRKS.Qty else 0 end ) as NKNQ ');
    SQL.Add('from KCRK');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('where KCRK.SFL=''THU HOI''  and KCRKS.CGBH='''+RYEdit.Text+'''');
    SQL.Add('Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH ');
    SQL.Add(') KCRKTH on  KCRKTH.ZLBH=ZLZLS2.ZLBH and KCRKTH.CLBH=ZLZLS2.CLBH and KCRKTH.DType=ZLZLS2.DType and KCRKTH.MJBH=ZLZLS2.MJBH  and KCRKTH.GSBH=ZLZLS2.GSBH');
    SQL.Add('where 1=1 ');
    if HGEdit.Text<>'' then
      SQL.Add(' and IsNull(CNO_NK,CLHG.HGBH)='''+HGEdit.Text+''' ');
    if HDEdit.Text<>'' then
      SQL.Add(' and IsNull(CNO_HD,CLHD.HGBH)='''+HDEdit.Text+''' ');
    SQL.Add('Order by ZLZLS2.ZLBH,ZLZLS2.GSBH,ZLZLS2.Parent,ZLZLS2.DType,ZLZLS2.CLBH ');
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    sql.add(') as subquery');
    sql.add('select * from #tmp');
    ///////////////////////////////////////////////////////////////////////////////////////////////////////
    //end;
    //funcObj.WriteErrorLog(sql.GetText);
    Active:=true;
  end;
end;

procedure TDetailInVNo.ButtonMaHG_Sep(DDBH_M:String;SepCount:String;DDBH_C_SQLStr:String;QueryObj:TQuery);
var ZLZLS2:string;
    i:integer;
    //
begin

  if RB1.Checked=true then
    ZLZLS2:='DDZL_ZLZLS2'
  else
    ZLZLS2:='ZLZLS2';
  //
  if RYEdit.Text='' then
  begin
    showmessage('Pls input RY!');
    abort;
  end;
  //

  with  QueryObj do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select MaHG.ZLBH,case when NK>0 then HG_NO when TC>0  then TC_NO when HD>0 then HD_NO when KD>0 then KD_NO else NULL end as CNO, ');
    SQL.Add('		    case when  NK>0 then HG_HGPM when TC>0 then TC_HGPM when HD>0 then HD_HGPM  when KD>0 then KD_HGPM else NULL end as HGPM,');
    SQL.Add(' 		  case when  NK>0 then HG_Unit when TC>0 then TC_Unit when HD>0 then HD_Unit when KD>0 then KD_Unit else NULL end UnitC, ');
    SQL.Add('   		Usage,CLSL_KT,CLSL,QTY,NK,TC,HD,KD,XT,GC,ZZ, ');
    SQL.Add(' 		  case when NK>0 then round((NK-CLSL_KT)/nullif(CLSL_KT,0)*100,2) else 0 end RateNK ');
    SQL.Add('       ,case when TC>0 then round((TC-CLSL_KT)/nullif(CLSL_KT,0)*100,2) else 0 end RateTC ');
    SQL.Add(' 	    ,round((USAGE-CLSL_KT)/nullif(CLSL_KT,0),2) Rate ');
    SQL.Add('From ( ');
    SQL.Add('Select ZLZLS2.*,KCPK.Declaretion,CGZL_Declaration.NGAYDANGKY,CGZL_Declaration.Country as TK_Country,KCRK.DOCNO,CGZL_VATNO.VATDATE,CGZL_VATNO.Country as HD_Country,Usage from ( ');
    SQL.Add('select  ZLZLS2.ZLBH,HG_NO,TC_NO,HD_NO,KD_NO,sum(CLSL_KT) as CLSL_KT,sum (CLSL) as CLSL ,sum (QTY) as QTY,sum (NK) as NK,sum (TC) as TC,sum (HD) as HD,sum (KD) as KD,sum (XT) as XT,sum (GC) as GC,sum (ZZ) as ZZ');
    SQL.Add('        ,Max(HG_HGPM) as HG_HGPM,Max(HG_Unit) as HG_Unit,Max(TC_HGPM) as TC_HGPM,Max(TC_Unit) as TC_Unit,Max(HD_HGPM) as HD_HGPM,Max(HD_Unit) as HD_Unit,Max(KD_HGPM) as KD_HGPM,Max(KD_Unit) as KD_Unit,Max(PKNO) as PKNO  ');
    SQL.Add('from (');
    SQL.Add('Select ZLZLS2.ZLBH,HG_NO,TC_NO,HD_NO as HD_NO,KD_NO,Max(DWBH) as DWBH');
    SQL.Add('       ,Max(HG_HGPM) as HG_HGPM,Max(HG_Unit) as HG_Unit,Max(TC_HGPM) as TC_HGPM,Max(TC_Unit) as TC_Unit,Max(HD_HGPM) as HD_HGPM,Max(HD_Unit) as HD_Unit,Max(KD_HGPM) as KD_HGPM,Max(KD_Unit) as KD_Unit,Max(PKNO) as PKNO  ');
    //SQL.Add('       ,Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as CLSL ');
    //SQL.Add('       ,Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as Qty ');
    SQL.Add('       ,case when sum(NK)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_HG),6) ');
    SQL.Add('       			when sum(TC)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_TC),6) ');
    SQL.Add('       			when sum(HD)>0 then Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(Rate_HD),6) ');
    SQL.Add('       			else Round(Round(Convert(float,Sum(CLSL_KT))/Max(Pairs),6)*(1),6)  end as CLSL_KT ');
    SQL.Add('   		,case when sum(NK)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_HG),6) ');
    SQL.Add('       			when sum(TC)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_TC),6) ');
    SQL.Add('       			when sum(HD)>0 then Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(Rate_HD),6) ');
    SQL.Add('       			else Round(Round(Convert(float,Sum(CLSL))/Max(Pairs),6)*(1),6)  end as CLSL ');
    SQL.Add('   		,case when sum(NK)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_HG),6) ');
    SQL.Add('       			when sum(TC)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_TC),6) ');
    SQL.Add('       			when sum(HD)>0 then Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(Rate_HD),6) ');
    SQL.Add('       			else Round(Round(Convert(float,Sum(Qty))/Max(Pairs),6)*(1),6)  end as Qty ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(NK))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as NK ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(TC))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as TC ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(HD))/Max(Pairs),6)*IsNull((Rate_HD),1),6) as HD ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(KD))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as KD ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(XT))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as XT ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(GC))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as GC ');
    SQL.Add('       ,Round(Round(Convert(float,Sum(ZZ))/Max(Pairs),6)*IsNull((Rate_HG),1),6) as ZZ ');
    SQL.Add('       from (');
    SQL.Add('Select ZLZLS2.*,KCRKTH.Qty as THQty,');
    SQL.Add('       CLHG.RateC as Rate_HG,case when (ZLZLS2.NK>0) then IsNull(CNO_NK,CLHG.HGBH) else null end as HG_NO,CLHG.HGPM as HG_HGPM,CLHG.UnitC as HG_Unit,');
    SQL.Add('       CLTC.RateC as Rate_TC,case when (ZLZLS2.TC>0) then IsNull(CNO_TC,CLTC.HGBH) else null end as TC_NO,CLTC.HGPM as TC_HGPM,CLTC.UnitC as TC_Unit,');
    SQL.Add('       CLHD.RateC as Rate_HD,case when (ZLZLS2.HD>0) then IsNull(CNO_HD,CLHD.HGBH) else null end as HD_NO,CLHD.HGPM as HD_HGPM,CLHD.UnitC as HD_Unit, ');
    SQL.Add('       CLKD.RateC as Rate_KD,case when (ZLZLS2.KD>0) then IsNull(CNO_KD,CLKD.HGBH) else null end as KD_NO,CLKD.HGPM as KD_HGPM,CLKD.UnitC as KD_Unit  from ( ');
    //20201127 實領-退庫 Qty-THQty
    //SQL.Add('select OrdCL.ZLBH,OrdCL.MJBH,OrdCL.Parent,OrdCL.DType,OrdCL.CLBH,OrdCL.CLSL,OrdCL.YWPM,OrdCL.DWBH,OrdCL.ARTICLE,OrdCL.XieMing,OrdCL.Pairs,OrdCL.CalDate,OrdCL.GSBH,round((OrdCL.TempQty-IsNull(KCRKTH_M.Qty,0))/CLSL_M*CLSL,2) as TempQty,');
    //SQL.Add('       OrdCL.CNO_NK,OrdCL.CNO_HD,round((OrdCL.RKQty-IsNull(KCRKTH_M.Qty,0))/CLSL_M*CLSL,2) as RKQty,');
    //SQL.Add('       round((OrdCL.NK-IsNull(KCRKTH_M.NK,0))/CLSL_M*CLSL,2) as NK,round((OrdCL.KD-IsNull(KCRKTH_M.KD,0))/CLSL_M*CLSL,2) as KD,round((OrdCL.HD-IsNull(KCRKTH_M.HD,0))/CLSL_M*CLSL,2) as HD,round((OrdCL.GC-IsNull(KCRKTH_M.GC,0))/CLSL_M*CLSL,2) as GC,');
    //SQL.Add('       round((OrdCL.XT-IsNull(KCRKTH_M.XT,0))/CLSL_M*CLSL,2) as XT,round((OrdCL.ZZ-IsNull(KCRKTH_M.ZZ,0))/CLSL_M*CLSL,2) as ZZ,round((OrdCL.Qty-IsNull(KCRKTH_M.Qty,0))/CLSL_M*CLSL,2) as Qty');
    SQL.Add('select OrdCL.ZLBH,OrdCL.MJBH,OrdCL.Parent,OrdCL.DType,OrdCL.CLBH,OrdCL.CLSL,OrdCL.YWPM,OrdCL.DWBH,OrdCL.ARTICLE,OrdCL.XieMing,OrdCL.Pairs,OrdCL.CalDate,OrdCL.GSBH,round((OrdCL.TempQty)/CLSL_M*CLSL,2) as TempQty,');
    SQL.Add('       OrdCL.CNO_NK,OrdCL.CNO_TC,OrdCL.CNO_HD,OrdCL.CNO_KD,round((OrdCL.RKQty)/CLSL_M*CLSL,2) as RKQty,');
    SQL.Add('       round((OrdCL.NK)/CLSL_M*CLSL,2) as NK,round((OrdCL.TC)/CLSL_M*CLSL,2) as TC,round((OrdCL.HD)/CLSL_M*CLSL,2) as HD,round((OrdCL.KD)/CLSL_M*CLSL,2) as KD,round((OrdCL.XT)/CLSL_M*CLSL,2) as XT,');
    SQL.Add('       round((OrdCL.GC)/CLSL_M*CLSL,2) as GC,round((OrdCL.ZZ)/CLSL_M*CLSL,2) as ZZ,round((OrdCL.Qty)/CLSL_M*CLSL,2) as Qty,OrdCL.PKNO,round(OrdCL.CLSL-(isnull(Rep_Qty,0)/CLSL_M*CLSL),2) as CLSL_KT  ');

    SQL.Add('from (');
    SQL.Add('select OrdCL.*,Round(Round(KCLLS.TempQty,2),2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC ');
    SQL.Add('       ,case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,round(KCLLS.RKQty,2) as RKQty,');
    SQL.Add('       round(IsNull(KCLLS.NK,0),2) as NK,round(IsNull(KCLLS.TC,0),2) as TC,round(IsNull(KCLLS.HD,0),2) as HD,round(IsNull(KCLLS.KD,0),2) as KD, round(IsNull(KCLLS.XT,0),2) as XT, round(IsNull(KCLLS.GC,0),2) as GC,');
    SQL.Add('       round(IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0),2),0),2)  as ZZ,round(KCLLS.Qty,2) as Qty,OrdCL_M.CLSL_M,KCLLS.PKNO,Rep_Qty  ');
    SQL.Add('from (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH ');
    SQL.Add('      from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+RYEdit.Text+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add('union all ');
    SQL.Add('   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from '+ZLZLS2+' as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL)   CLSL,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,Max(ZLZLS2.USERDATE) as CalDate,DDZL.GSBH ');
    SQL.Add('    from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.Add('      left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    SQL.Add('      left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+RYEdit.Text+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,DDZL.GSBH ');
    SQL.Add(') OrdCL');
    SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
    SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
    SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH = '''+RYEdit.Text+''' and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
    SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
    SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=OrdCL.ZLBH and Rep_Mat.CLBH=OrdCL.CLBH and Rep_Mat.MJBH=OrdCL.MJBH and Rep_Mat.DType=OrdCL.DType ');
    //SQL show 2 CNO  20210331
    SQL.Add('  left join (  ');
    SQL.Add('        select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Max(PKNO)as PKNO,Sum(RKQty) as RKQty,  ');
    SQL.Add('                    Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from (  ');
    SQL.Add('         select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, KCLLS.DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,   ');
    SQL.Add('             Sum(KCLLS.Qty) as RKQty,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,  ');
    SQL.Add('  		        Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,  ');
    SQL.Add('             Max(Case when KCLLS.HGLB=''NK'' then case when  len(KCLLS.CNO_NK)>0 then substring(KCLLS.CNO_NK,1,len(KCLLS.CNO_NK)-1) else NULL end end) as CNO_NK,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''TC'' then case when  len(KCLLS.CNO_TC)>0 then substring(KCLLS.CNO_TC,1,len(KCLLS.CNO_TC)-1) else NULL end end) as CNO_TC,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''HD'' then case when  len(KCLLS.CNO_HD)>0 then substring(KCLLS.CNO_HD,1,len(KCLLS.CNO_HD)-1) else NULL end end) as CNO_HD,');
    SQL.Add('             Max(Case when KCLLS.HGLB=''KD'' then case when  len(KCLLS.CNO_KD)>0 then substring(KCLLS.CNO_KD,1,len(KCLLS.CNO_KD)-1) else NULL end end) as CNO_KD,');
    SQL.Add('             Max(KCLLS.PKNO) as PKNO ');
    SQL.Add('  		from (  ');
    SQL.Add('  		Select KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, KCLLS.Qty, KCLLS.TempQty,KCLLS.HGLB  ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''NK'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_NK ');
    SQL.Add('           ,Cast((select CNO+'','' from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''TC'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_TC ');
  	SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''HD'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_HD ');
    SQL.Add('           ,Cast((select CNO+'',''from KCLLS A where   A.CLBH=KCLLS.CLBH and A.DFL=KCLLS.DFL and A.SCBH=KCLLS.SCBH and A.HGLB=''KD'' and A.Qty>0 Group by CNO for XML Path (''''))  as varchar(50)) as CNO_KD ');
    SQL.Add('           ,KCPKLL.PKNO ');
    SQL.Add('  		from KCLLS  ');
    SQL.Add('          left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('          Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL  ');
    SQL.Add('  		     where  KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0 ');
    SQL.Add('  				 and KCLLS.SCBH = '''+DDBH_M+'''  ');
    SQL.Add('          and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO''   ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('           and KCLLS.HGLB<>''XT'' ');
    SQL.Add('  		) KCLLS Group by KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,KCLLS.MJBH, KCLLS.DType  ');
    SQL.Add('             ) KCLLS Group by SCBH,CLBH,MJBH,DType  ');
    SQL.Add('            ) KCLLS on  KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH  ');
    //20171211 訂單拆單, 關連母訂單用量
    SQL.Add('left join (select ZLZLS2.ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL_M,DDZL.GSBH ');
    SQL.Add('      from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+DDBH_M+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      group by ZLZLS2.ZLBH,ZLZLS2.CLBH,DDZL.GSBH ');
    SQL.Add('union all ');
    SQL.Add('   select ZLZLS2.ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from '+ZLZLS2+' as  A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
    SQL.Add('             sum(ZLZLS2.CLSL) as CLSL_M,DDZL.GSBH ');
    SQL.Add('    from '+ZLZLS2+' as ZLZLS2');
    SQL.Add('      left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    SQL.Add('      where 1=1');
    SQL.Add('      and ZLZLS2.ZLBH = '''+DDBH_M+''' ');
    SQL.Add('      and ZLZLS2.CLBH like '''+MatEdit.Text+'%'' ');
    SQL.Add('      and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' and ZLZLS2.CLSL>0 ');
    SQL.Add('      and DDZl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('    group by ZLZLS2.ZLBH,ZLZLS2.MJBH,ZLZLS2.CLBH,DDZL.GSBH ');
    SQL.Add(') OrdCL_M on  OrdCL.MJBH=OrdCL_M.MJBH and OrdCL.Parent=OrdCL_M.Parent and OrdCL.DType=OrdCL_M.DType and OrdCL.CLBH=OrdCL_M.CLBH and OrdCL.GSBH=OrdCL_M.GSBH ');
    //======================================
    SQL.Add('where 1=1 ');
    //印刷線外加工VGC
    if CK1.Checked=true then
    Show_Xuong_VGC_Sep(QueryObj,DDBH_M,SepCount,DDBH_C_SQLStr);
    //
    if CK2.Checked=true then
    begin
      //橡膠系統廠VR2
      For i:=0 to High(RubberGSBH) do
      begin
        SQL.Add('union all ');
        SQL.Add('Select ZLZLS3.*,KCLLS.TempQty/TCLYL_M*TCLYL as TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CNO_HD,KCLLS.CNO_KD,KCLLS.RKQty as RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,');
        SQL.Add('       IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
        SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ,KCLLS.Qty as Qty,ZLZLS3_M.TCLYL_M,KCLLS.PKNO,Rep_Qty ');

        SQL.Add(' from (');
        SQL.Add('select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,');
        SQL.Add('      CLZL.ywpm,CLZL.DWBH,XXZL.Article,XXZL.XieMing,IsNull(ERP_DDZL.Pairs,Max(DDZL.Pairs)) as Pairs,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,ZLZLS3.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 ');
        SQL.Add('left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.Shehao=xxzl.shehao ');
        SQL.Add('where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1='''+RYEdit.Text+''' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,ZLZLS3.CQDH,CLZL.DWBH,XXZL.Article, XXZL.XieMing,ERP_DDZL.Pairs ) ZLZLS3');
        SQL.Add('   left join ( select KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,KCLLS.CLBH,Sum(KCLLS.qty) as Rep_Qty ');
        SQL.Add('               from KCLLS left join KCLL on KCLLS.LLNO =KCLL.LLNO ');
        SQL.Add('               where KCLL.CFMID<>''NO'' and KCLLS.SCBH '+RYEditSubSQL+'  and  KCLLS.BLSB=''Y'' and KCLLS.HGLB in (''NK'',''TC'',''HD'') and isnull(CNO,'''')<>'''' ');
        SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end ,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end ');
        SQL.Add('           ) Rep_Mat on Rep_Mat.SCBH=ZLZLS3.ZLBH1 and Rep_Mat.CLBH=ZLZLS3.cldhz and Rep_Mat.MJBH=ZLZLS3.MJBH and Rep_Mat.DType=ZLZLS3.DType ');
        SQL.Add('left join (');
        SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
        SQL.Add('                  round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as RKQty,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT,');
        SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
        SQL.Add('                  Max(KCPKLL.PKNO) as PKNO ');
        SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
        SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL  ');
        SQL.Add('           where 1=1  ');
        SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+'''');
        SQL.Add('                 and KCLLS.SCBH ='''+DDBH_M+'''  ');
        if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('                 and KCLLS.HGLB<>''XT'' ');
        SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on  KCLLS.CLBH=ZLZLS3.CLDHZ ');
        //20171211 訂單拆單, 關連母訂單用量
        SQL.Add('left join (');
        SQL.Add('select DDZL.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL_M,');
        SQL.Add('       DDZL.CQDH');
        SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
        SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
        SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
        SQL.Add('Left join DDZL ERP_DDZL on ERP_DDZL.DDBH=DDZL.ZLBH1 ');
        SQL.Add('left join XXZL on ERP_DDZL.XieXing=xxzl.XieXing and ERP_DDZL.Shehao=xxzl.shehao ');
        SQL.Add('where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1='''+DDBH_M+''' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
        SQL.Add('      and ZLZLS3.CLDHZ like ''A'+MatEdit.Text+'%'' ');
        SQL.Add('GROUP BY  ZLZLS3.cldhz,DDZL.ZLBH1,DDZL.CQDH ) ZLZLS3_M on  ZLZLS3.MJBH=ZLZLS3_M.MJBH and  ZLZLS3.Parent=ZLZLS3_M.Parent  and  ZLZLS3.DType=ZLZLS3_M.DType and  ZLZLS3.cldhz=ZLZLS3_M.cldhz and  ZLZLS3.CQDH=ZLZLS3_M.CQDH ');
      end;
    end;
    SQL.Add(') OrdCL ');
    //20201127 增加退庫
    SQL.Add('Left join  (');
    SQL.Add('Select KCRKS.GSBH,'''+RYEdit.Text+''' as ZLBH,Case when len(KCRKS.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRKS.RKSB)<10 then ''Assembly'' else ''Gia cong'' End as DType ,KCRKS.CLBH, ');
    SQL.Add('       Sum(KCRKS.Qty) as Qty, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK'' then KCRKS.Qty else 0 end ) as NK, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC'' then KCRKS.Qty else 0 end ) as TC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD'' then KCRKS.Qty else 0 end ) as HD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD'' then KCRKS.Qty else 0 end ) as KD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''XT'' then KCRKS.Qty else 0 end ) as XT, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''GC'' then KCRKS.Qty else 0 end ) as GC,');
    SQL.Add('       Sum(Case when KCRK.HGLB=''ZZZZ'' then KCRKS.Qty else 0 end ) as ZZ         ');
    SQL.Add('from KCRK');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('where KCRK.SFL=''THU HOI''  and KCRKS.CGBH='''+DDBH_M+'''');
    SQL.Add('Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH ');
    SQL.Add(') KCRKTH_M on  KCRKTH_M.ZLBH=OrdCL.ZLBH and KCRKTH_M.CLBH=OrdCL.CLBH and KCRKTH_M.DType=OrdCL.DType and KCRKTH_M.MJBH=OrdCL.MJBH  and KCRKTH_M.GSBH=OrdCL.GSBH');
    //不在現場VA12
    SQL.Add('union all');
    SQL.Add('select '''+RYEdit.Text+''' as ZLBH1,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,KCLLS.CLBH as Parent,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,');
    SQL.Add('        KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty)/'+SepCount+' as TempQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,sum(KCRKCX.RKQty)/'+SepCount+' as RKQty,IsNull(sum(KCRKCX.NK)/'+SepCount+',0) as NK,IsNull(sum(KCRKCX.TC)/'+SepCount+',0) as TC,IsNull(sum(KCRKCX.HD)/'+SepCount+',0) as HD,IsNull(sum(KCRKCX.KD)/'+SepCount+',0) as KD,IsNull(sum(KCRKCX.XT)/'+SepCount+',0) as XT,IsNull(sum(KCRKCX.GC)/'+SepCount+',0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+'-IsNull(sum(KCRKCX.NK)/'+SepCount+',0)-IsNull(sum(KCRKCX.TC)/'+SepCount+',0)-IsNull(sum(KCRKCX.HD)/'+SepCount+',0)-IsNull(sum(KCRKCX.KD)/'+SepCount+',0)-IsNull(sum(KCRKCX.XT)/'+SepCount+',0)-IsNull(sum(KCRKCX.GC)/'+SepCount+',0) as ZZ');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+' as Qty,Max(KCRKCX.PKNO) as PKNO,'''' as Rep_Qty ');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH='''+RYEdit.Text+''' ');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ, ');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO ');
    SQL.Add('           from KCLLS ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL  ');
    SQL.Add('           where KCLLS.SCBH = '''+DDBH_M+''' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE (KCLL.GSBH ='''+main.Edit2.Text+''') and KCLL.CFMID<>''NO'' '+DDBH_C_SQLStr);
    SQL.Add('   and KCLLS.SCBH = '''+DDBH_M+''' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD');
    //不再印刷線外加工VGC制令表材料中
    if CK1.Checked=true then
    Show_NotIn_Xuong_VGC_Sep(QueryObj,DDBH_M,SepCount,DDBH_C_SQLStr);
    //不在R廠制令表材料中
    SQL.Add('union all');
    SQL.Add('select '''+RYEdit.Text+''' as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,sum(KCLLS.TempQty)/'+SepCount+' as TempQty');
    SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,sum(KCRKCX.RKQty)/'+SepCount+' as RKQty,IsNull(sum(KCRKCX.NK)/'+SepCount+',0) as NK,IsNull(sum(KCRKCX.TC)/'+SepCount+',0) as TC,IsNull(sum(KCRKCX.HD)/'+SepCount+',0) as HD,IsNull(sum(KCRKCX.KD)/'+SepCount+',0) as KD,IsNull(sum(KCRKCX.XT)/'+SepCount+',0) as XT,IsNull(sum(KCRKCX.GC)/'+SepCount+',0) as GC');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+'-IsNull(sum(KCRKCX.NK)/'+SepCount+',0)-IsNull(sum(KCRKCX.TC)/'+SepCount+',0)-IsNull(sum(KCRKCX.HD)/'+SepCount+',0)-IsNull(sum(KCRKCX.KD)/'+SepCount+',0)-IsNull(sum(KCRKCX.XT)/'+SepCount+',0)-IsNull(sum(KCRKCX.GC)/'+SepCount+',0) as ZZ');
    SQL.Add('       ,sum(KCLLS.Qty)/'+SepCount+' as Qty,Max(KCRKCX.PKNO) as PKNO ,'''' as Rep_Qty');
    SQL.Add('from  KCLLS');
    SQL.Add('left join DDZL on DDZL.DDBH='''+RYEdit.Text+''' ');
    SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
    SQL.Add('left join ( ');
    SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then KCLLS.Qty else 0 end ) as NK, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then KCLLS.Qty else 0 end ) as TC, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then KCLLS.Qty else 0 end ) as HD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then KCLLS.Qty else 0 end ) as KD, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then KCLLS.Qty else 0 end ) as XT, ');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then KCLLS.Qty else 0 end ) as GC,');
    SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then KCLLS.Qty else 0 end ) as ZZ,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
    SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD,');
    SQL.Add('                  Max(KCPKLL.PKNO) as PKNO ');
    SQL.Add('           from KCLLS ');
    SQL.Add('           Left join (Select LLNO,CLBH,SCBH,DFL,Min(PKNO) as PKNO from KCPKLL Group by LLNO,CLBH,SCBH,DFL ) KCPKLL on KCLLS.LLNO=KCPKLL.LLNO and KCLLS.CLBH=KCPKLL.CLBH and KCLLS.SCBH=KCPKLL.SCBH and KCLLS.DFL=KCPKLL.DFL  ');
    SQL.Add('           where KCLLS.SCBH = '''+DDBH_M+''' ');
    SQL.Add('                 and KCLLS.CLBH like '''+MatEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
    SQL.add('                 and KCLLS.HGLB<>''XT'' ');
    SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
    SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
    SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ZLZLS3.TCLYL>0 and ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1)');
    SQL.Add('   and KCLLS.SCBH = '''+DDBH_M+''' and KCLLS.CLBH like '''+MatEdit.Text+'%'' and KCLLS.Qty>0');
    SQL.Add('group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,KCLL.GSBH,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD');
    SQL.Add('  ) ZLZLS2    ');
    SQL.Add('Left join CLHG on CLHG.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLHD on CLHD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLTC on CLTC.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join CLKD on CLKD.CLBH=ZLZLS2.CLBH  ');
    SQL.Add('Left join  (');
    SQL.Add('Select KCRKS.GSBH,KCRKS.CGBH as ZLBH,Case when len(KCRKS.RKSB)<10 then KCRKS.CLBH else KCRKS.RKSB End as MJBH,Case when len(KCRKS.RKSB)<10 then ''Assembly'' else ''Gia cong'' End as DType ,KCRKS.CLBH, ');
    SQL.Add('       Sum(KCRKS.Qty) as Qty, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''NK'' then KCRKS.Qty else 0 end ) as NK, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''TC'' then KCRKS.Qty else 0 end ) as TC, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''HD'' then KCRKS.Qty else 0 end ) as HD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''KD'' then KCRKS.Qty else 0 end ) as KD, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''XT'' then KCRKS.Qty else 0 end ) as XT, ');
    SQL.Add('       Sum(Case when KCRK.HGLB=''GC'' then KCRKS.Qty else 0 end ) as GC,');
    SQL.Add('       Sum(Case when KCRK.HGLB=''ZZZZ'' then KCRKS.Qty else 0 end ) as ZZ    ');
    SQL.Add('from KCRK');
    SQL.Add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('where KCRK.SFL=''THU HOI''  and KCRKS.CGBH='''+RYEdit.Text+'''');
    SQL.Add('Group by KCRKS.GSBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CLBH ');
    SQL.Add(') KCRKTH on  KCRKTH.ZLBH=ZLZLS2.ZLBH and KCRKTH.CLBH=ZLZLS2.CLBH and KCRKTH.DType=ZLZLS2.DType and KCRKTH.MJBH=ZLZLS2.MJBH  and KCRKTH.GSBH=ZLZLS2.GSBH');
    //
    SQL.Add(') ZLZLS2 where 1=1  ');
    SQL.Add('and IsNull(HG_NO,'''')<>'''' or IsNull(TC_NO,'''')<>'''' or IsNull(HD_NO,'''')<>''''  or IsNull(KD_NO,'''')<>'''' ');
    SQL.Add('Group by ZLZLS2.ZLBH,ZLZLS2.HG_NO,ZLZLS2.Rate_HG,ZLZLS2.TC_NO,ZLZLS2.Rate_TC,ZLZLS2.HD_NO,ZLZLS2.Rate_HD,ZLZLS2.KD_NO,ZLZLS2.Rate_KD');
    SQL.Add('  ) ZLZLS2   ');
    SQL.Add('Group by ZLZLS2.ZLBH,ZLZLS2.HG_NO,ZLZLS2.TC_NO,ZLZLS2.HD_NO,ZLZLS2.KD_NO ) ZLZLS2');
    //20221229 
    SQL.Add('Left join KCRK on KCRK.RKNO=ZLZLS2.PKNO');
    SQL.Add('Left join KCPK on KCPK.PKNO=ZLZLS2.PKNO');
    SQL.Add('Left join CGZL_Declaration on CGZL_Declaration.DECLARATION=KCPK.Declaretion');
    SQL.Add('Left join ZSZL on KCRK.ZSBH=ZSZL.ZSDH');
    SQL.Add('Left join CGZL_VATNO on CGZL_VATNO.VATNO=KCRK.DOCNO and ZSZL.tybh=CGZL_VATNO.ZSBH_MST');
    SQL.Add('Left join HG_Compare on HG_Compare.DDBH = ZLZLS2.ZLBH and ((HG_Compare.HGBH = ZLZLS2.HG_NO) or (HG_Compare.HGBH = ZLZLS2.HD_NO) or (HG_Compare.HGBH = ZLZLS2.TC_NO))');
    //SQL.Add('Order by ZLZLS2.ZLBH,ZLZLS2.HG_NO desc,ZLZLS2.TC_NO desc,ZLZLS2.HD_NO desc,ZLZLS2.KD_NO desc');
    SQL.Add(') MaHG   ');
    SQL.Add('Order by MaHG.ZLBH,CNO desc  ');
    //funcObj.WriteErrorLog(sql.GetText);
    Active:=true;
  end;
end;

procedure TDetailInVNo.FormCreate(Sender: TObject);
var i:integer;
begin
  //底廠
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''RB'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    setlength(RubberGSBH,RecordCount);
    for i:=0 to RecordCount-1 do
    begin
      RubberGSBH[i]:=FieldByName('GSBH').AsString;
      if GSBH_XuongR_2Ma='' then GSBH_XuongR_2Ma:=Copy(FieldByName('GSBH').AsString,1,2)+'%';
      Next;
    end;
    Active:=false;
  end;
  //印刷加工廠
  GSBH_VGC:='NULL';
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''GC'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    if RecordCount>0 then GSBH_VGC:=FieldByName('GSBH').AsString;
    Active:=false;
  end;
  DTP1.date:=startofthemonth(Date);
  DTP2.date:=date;
  with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.add('select CKBH from KCCK where GSBH='+''''+main.Edit2.Text+'''');
    active:=true;
    while not eof do
    begin
      CBX1.Items.Add(fields[0].value);
      next;
    end;
    if CBX1.text='' then
      CBX1.ItemIndex:=0;
    CBX1.items.add('ALL');
    active:=false;
  end;
  Readini();
end;
procedure TDetailInVNo.RYEditPaste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalDDBH:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalDDBH:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalDDBH:=TotalDDBH+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalDDBH)>0 then
    begin
      RYEdit.Text:=Copy(TotalDDBH,1,length(TotalDDBH)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;

procedure TDetailInVNo.RYEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    RYEditPaste();
  end;
end;

procedure TDetailInVNo.Button1Click(Sender: TObject);
var year,month,day:word;
    ayear,amonth:string;
begin
  decodedate(DTP1.Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
  amonth:='0'+amonth;
  with KCLL do          //出庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from ( select * from ( select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,');
    //20160521 round 2 numeric for Qty
    sql.add('JGZL.CFMID1 as CFMID,round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),'+WH_Decimal+') as Qty');
    //
    sql.add(',cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as SCBH ');
    sql.add(', ''JG'' as Memo ' );
    sql.add('from JGZLS  ');
    sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('          left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
   // sql.add('          and JGZL.CFMDate1 is not null');
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    sql.add('          and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');

    //sql.add('          and JGZL.CKBH='+''''+CBX1.text+'''');

    if (CBX1.text<>'ALL') and (CBX1.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and JGZL.CKBH='''+CBX1.Text+''' ');
    end else
    if CBX1.text = 'ALL Without CBY' then
    begin
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX1.text = 'ALL' then
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    sql.add('          ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('where JGZL.CFMDate1>='+''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    sql.add('and JGZLS.ZMLB='+''''+edit1.Text+'''');

    if (CBX1.text<>'ALL') and (CBX1.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and JGZL.CKBH='''+CBX1.Text+''' ');
    end else
    if CBX1.text = 'ALL Without CBY' then
    begin
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX1.text = 'ALL' then
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');

    sql.add('and JGZLS.ZMLB <>'+''''+'ZZZZZZZZZZ'+'''');  //2017/09/01 sua gia cong vat tu
    //2017/09/01 sua gia cong vat tu
    sql.add('union all');
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where  KCLLS.CLBH='+''''+edit1.Text+'''');
    //sql.add('and KCLL.CKBH='+''''+CBX1.text+'''');

    if (CBX1.text<>'ALL') and (CBX1.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and KCLL.CKBH='''+CBX1.Text+''' ');
    end else
    if CBX1.text = 'ALL Without CBY' then
    begin
      sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX1.text = 'ALL' then
      sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    //2017/09/01 sua gia cong vat tu
    sql.Add('and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('and KCLL.SCBH = ''JJJJJJJJJJ'')');
    sql.add(') JGCK ');
    sql.add('union all');
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('where  KCLLS.CLBH='+''''+edit1.Text+'''');
    //sql.add('and KCLL.CKBH='+''''+CBX1.text+'''');

    if (CBX1.text<>'ALL') and (CBX1.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and KCLL.CKBH='''+CBX1.Text+''' ');
    end else
    if CBX1.text = 'ALL Without CBY' then
    begin
      sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX1.text = 'ALL' then
      sql.add('and KCLL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    sql.add('and KCLL.SCBH <> ''JJJJJJJJJJ''');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    if  CB3.Checked then
    begin
      sql.Add(')');
    end else
    begin
      sql.add('or KCLL.CFMDATE is null)');
    end;
    sql.add(') JGCK ');
    //
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  with KCRK do     //入庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZL.CFMID1 as CFMID,JGZLS.Qty,');
    sql.add(''''+'JG'+''''+' as Memo,'''' as Invoice,'''' as PaperNo ');
    sql.add(' ,cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as ZLBH ');
    sql.add('from JGZL,JGZLS ');
    sql.add('where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and JGZLS.CLBH='+''''+edit1.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    //sql.add('and JGZL.CKBH='+''''+CBX1.text+'''');

    if (CBX1.text<>'ALL') and (CBX1.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and JGZL.CKBH='''+CBX1.Text+''' ');
    end else
    if CBX1.text = 'ALL Without CBY' then
    begin
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX1.text = 'ALL' then
      sql.add('and JGZL.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    sql.add('union all');
    sql.add('select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,KCRK.ZSNO as Memo,kcrk.docno as Invoice,KCRK.Memo as PaperNo,KCRKS.CGBH as ZLBH ');
    sql.add('from KCRKS');
    sql.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('where KCRKS.CLBH='+''''+edit1.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    //sql.add('and KCRK.CKBH='+''''+CBX1.text+'''');
    if (CBX1.text<>'ALL') and (CBX1.text <> 'ALL Without CBY') then
    begin
      SQL.Add('and KCRK.CKBH='''+CBX1.Text+''' ');
    end else
    if CBX1.text = 'ALL Without CBY' then
    begin
      sql.add('and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+'''and CKBH <> ''CBY'')');
    end else
    if CBX1.text = 'ALL' then
      sql.add('and KCRK.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
    //
    sql.Add('order by kcrk.USERDATE');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TDetailInVNo.PC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  Edit1.Text := RYQuery.fieldbyname('CLBH').AsString;
end;

procedure TDetailInVNo.HGQueryCalcFields(DataSet: TDataSet);
begin
  with HGQuery do
  begin
    if ((FieldByName('NK').value<>0) and (FieldByName('CLSL_KT').value<>0)) then
    begin
      FieldByName('Person_NK').value:=(FieldByName('NK').value-FieldByName('CLSL_KT').value)/FieldByName('CLSL_KT').value*100;
    end;
    if ((FieldByName('TC').value<>0) and (FieldByName('CLSL_KT').value<>0)) then
    begin
      FieldByName('Person_TC').value:=(FieldByName('TC').value-FieldByName('CLSL_KT').value)/FieldByName('CLSL_KT').value*100;
    end;  
  end;
end;

procedure TDetailInVNo.Excel1Click(Sender: TObject);
begin
  ExportExcel(HGQuery,nil);
end;

procedure TDetailInVNo.B_ImportP3Click(Sender: TObject);
var
  i,j,n:integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  stt,DDBH,Brand,Unit1,HGBH,Material_Name,Part_Unit,Usage :TStringlist;
  eof,eof1: String;
begin

    stt:=TStringList.Create;
    DDBH:=TStringList.Create;
    Brand:=TStringList.Create;
    Unit1:=TStringList.Create;
    HGBH:=TStringList.Create;
    Material_Name:=TStringList.Create;
    Part_Unit:=TStringList.Create;
    Usage:=TStringList.Create;

    if opendialog1.Execute then begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog1.FileName);
    n:=0;
    j:=12;
    flag:=true;
   // for i := 1 to 6 do
      while(flag=true)  do
       begin
         eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
         eof1:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5];
         if eof <> '' then begin
           stt.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
           DDBH.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
           Brand.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3]);
           Unit1.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4]);
           i := j;
         end
         else begin
           stt.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[i,1]);
           DDBH.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[i,2]);
           Brand.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[i,3]);
           Unit1.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[i,4]);
         end;

         HGBH.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5]);
         Material_Name.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6]);
         Part_Unit.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7]);
         Usage.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8]);

         n:=n+1;//秀出目前資料讀取比數
         j:=j+1;
         if (eof='') and (eof1 = '') then
           flag:=false;
       end;
   MsExcelWorkBook.Close;
   MsExcel.Quit;

    for j:=0 to n-2 do
     begin
     Qtemp.Active := false;
      Qtemp.SQL.Clear;
      Qtemp.SQL.Add('Insert into HG_Compare(Stt,DDBH,Brand,Unit,HGBH,Material_Name,Part_Unit,Usage)');
      Qtemp.SQL.Add('Values (:Stt,:DDBH,:Brand,:Unit,:HGBH,:Material_Name,:Part_Unit,:Usage)');
      Qtemp.ParamByName('Stt').AsString := stt[j];
      Qtemp.ParamByName('DDBH').AsString := DDBH[j];
      Qtemp.ParamByName('Brand').AsString := Brand[j];
      Qtemp.ParamByName('Unit').AsString := Unit1[j];
      Qtemp.ParamByName('HGBH').AsString := HGBH[j];
      Qtemp.ParamByName('Material_Name').AsString := Material_Name[j];
      Qtemp.ParamByName('Part_Unit').AsString := Part_Unit[j];
      Qtemp.ParamByName('Usage').AsString := Usage[j];
      Qtemp.ExecSQL;
     end;
 end;
 showmessage('Success!');
end;

procedure TDetailInVNo.DBGridEh5DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if HGQuery.FieldByName('Usage').Value <> HGQuery.FieldByName('CLSL_KT').Value then
    DBGridEh5.Canvas.Font.Color := clred
  else
    DBGridEh5.Canvas.Font.Color:=clBlack;
  if (DataCol = 4) or (DataCol = 5) then
     DBGridEh5.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TDetailInVNo.Button3Click(Sender: TObject);
var AppDir:String;
    i,j,datai:integer;
    eclApp,WorkBook:olevariant;
    DataRow,ExcelRow:integer;
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Shipping_SN13_Outsole.xlsx'),Pchar(AppDir+'Additional\Shipping_SN13_Outsole.xlsx'),false);
   if FileExists(AppDir+'Additional\Shipping_SN13_Outsole.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Shipping_SN13_Outsole.xlsx');

        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('  Select distinct kclls.SCBH,ddzl.Pairs  ');
          SQL.Add('  	      ,Case when KCLLS.HGLB =''NK'' then CLHG.HGPM when KCLLS.HGLB =''TC'' then CLTC.HGPM when KCLLS.HGLB=''HD'' then  CLHD.HGPM  ');
          SQL.Add('                    when (KCLLS.HGLB =''KD'' and IsNull(KCLLS.CNO,'''')<>'''') then CLKD.HGPM   ');
          SQL.Add('                    when KCLLS.HGLB =''NK1'' then CLHG1.HGPM when KCLLS.HGLB =''TC1'' then CLTC1.HGPM when KCLLS.HGLB=''HD1'' then  CLHD1.HGPM  ');
          SQL.Add('                    when (KCLLS.HGLB =''KD1'' and IsNull(KCLLS.CNO,'''')<>'''') then CLKD1.HGPM when KCLLS.HGLB=''NQ'' then  CLNQ.HGPM   ');
          SQL.Add('                    when KCLLS.HGLB=''NKNQ'' then  CLNKNQ.HGPM else NULL end as HGPM  ');
          SQL.Add('  		    ,Case when KCLLS.HGLB =''NK'' then CLHG.UnitC when KCLLS.HGLB =''TC'' then CLTC.UnitC when KCLLS.HGLB=''HD'' then  CLHD.UnitC  ');
          SQL.Add('                  when (KCLLS.HGLB =''KD'' and IsNull(KCLLS.CNO,'''')<>'''') then CLKD.UnitC    ');
          SQL.Add('                  when KCLLS.HGLB =''NK1'' then CLHG1.UnitC when KCLLS.HGLB =''TC1'' then CLTC1.UnitC when KCLLS.HGLB=''HD1'' then  CLHD1.UnitC  ');
          SQL.Add('                  when (KCLLS.HGLB =''KD1'' and IsNull(KCLLS.CNO,'''')<>'''') then CLKD1.UnitC  when KCLLS.HGLB=''NQ'' then  CLNQ.UnitC   ');
          SQL.Add('                  when KCLLS.HGLB=''NKNQ'' then  CLNKNQ.UnitC else '''' end as UnitC  ');
          SQL.Add('  		    ,kclls.CNO,kclls.HGLB  ');
          SQL.Add('  From kclls left join kcll  ');
          SQL.Add('  on kclls.LLNO=KCLL.LLNO  ');
          SQL.Add('  Left join ddzl on kclls.scbh=ddzl.DDBH  ');
          SQL.Add('  Left join CLHG on CLHG.CLBH=KCLLS.CLBH and KCLLS.HGLB =''NK''  ');
          SQL.Add('  Left join CLTC on CLTC.CLBH=KCLLS.CLBH and KCLLS.HGLB =''TC''  ');
          SQL.Add('  Left join CLHD on CLHD.CLBH=KCLLS.CLBH and KCLLS.HGLB =''HD''  ');
          SQL.Add('  Left join CLKD on CLKD.CLBH=KCLLS.CLBH and KCLLS.HGLB =''KD''  ');
          SQL.Add('  Left join CLHG1 on CLHG1.CLBH=KCLLS.CLBH and KCLLS.HGLB =''NK1''  ');
          SQL.Add('  Left join CLTC1 on CLTC1.CLBH=KCLLS.CLBH and KCLLS.HGLB =''TC1''  ');
          SQL.Add('  Left join CLHD1 on CLHD1.CLBH=KCLLS.CLBH and KCLLS.HGLB =''HD1''  ');
          SQL.Add('  Left join CLKD1 on CLKD1.CLBH=KCLLS.CLBH and KCLLS.HGLB =''KD1''  ');
          SQL.Add('  Left join CLNQ on CLNQ.CLBH=KCLLS.CLBH and KCLLS.HGLB =''NQ''  ');
          SQL.Add('  Left join CLNKNQ on CLNKNQ.CLBH=KCLLS.CLBH and KCLLS.HGLB =''NKNQ''  ');
          SQL.Add('  Where kclls.scbh='''+RYEdit.Text+''' and kcll.ckbh=''VTXW''  ');
          SQL.Add('   and kcll.GSBH=''VR3'' and isnull(kclls.CNO,'''')<>'''' ');
          SQL.Add('  Order by kclls.CNO  ');
          Active:=true;
        end;
        eclApp.Cells(7,2):=Qtemp.FieldByName('Pairs').AsString+' DOI';
        eclApp.Cells(8,2):=Qtemp.FieldByName('SCBH').AsString;
        Qtemp.First;
        i:=13;
        j:=1;
        while not Qtemp.Eof do
        begin
          eclApp.Cells(i,2):=Qtemp.fieldbyname('HGPM').AsString;
          eclApp.Cells(i,3):=Qtemp.fieldbyname('CNO').AsString;
          eclApp.Cells(i,4):=Qtemp.fieldbyname('UnitC').AsString;
          Qtemp.Next;
          inc(i);
        end;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

procedure TDetailInVNo.Button7Click(Sender: TObject);
var AppDir:String;
    i,j,datai:integer;
    eclApp,WorkBook:olevariant;
    DataRow,ExcelRow:integer;
begin
    if Edit2.Text='' then begin
    showmessage('Vui long nhap ty gia');
    abort;
    end;
   AppDir:=ExtractFilePath(Application.ExeName);
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\192.168.71.7\lys_erp\Additional\SP_N13.xlsx'),Pchar(AppDir+'Additional\SP_N13.xlsx'),false);   //'+main.serverIP+'
   if FileExists(AppDir+'Additional\SP_N13.xlsx') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\SP_N13.xlsx');
        with Qtemp do
        begin
          Active:=false;
          SQL.Clear;
          sql.Add(' if object_id('+''''+'tempdb..#tmp1'+''''+') is not null ');         //////////////////////////////    if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null
          sql.add('begin   drop table #tmp1 end    ');
          sql.add('select ZLBH,MJBH,Parent,DType,CLBH,CLSL_KT,CLSL,YWPM,dwbh,ARTICLE,XieMing,Pairs');
          sql.add(',CalDate,GSBH,TempQty,RKQty,NK,TC,HD,KD,XT,GC,ZZ,Qty,Rate_HG,HG_NO');
          sql.add(',Rate_TC,TC_NO,Rate_HD,HD_NO,Rate_KD,KD_NO,NK1,TC1,HD1,KD1,H11,NQ,NKNQ,Rate_HG1,HG1_NO,Rate_TC1,TC1_NO,Rate_HD1,HD1_NO,Rate_KD1,KD1_NO');
          sql.add(',Rate_NQ,NQ_NO,Rate_NKNQ,NKNQ_NO,THQty,ISNULL(PKNO, (SELECT distinct TOP 1 RKNO FROM KCRKS WHERE CGBH = '''+RYEdit.Text+''' and CLBH=#tmp.CLBH)) AS PKNO');
          sql.add('into #tmp1 from #tmp');

          SQL.Add('  select distinct  ISNULL(A.HG_NO,ISNULL(A.TC_NO,A.HD_NO)) as MHQ, b.DWBH,b.HS_code,b.Name, a.CLSL, round(a.CLSL/a.Pairs,6) as CLSLpair,');
          SQL.Add(' CONVERT(date, kcrk.USERDATE) as userdateKCRK,sum(a.Qty) as qty,a.Qty,max(DDZLS.IPrice) as IPrice,zszl.zsjc,');
	        SQL.Add(' isnull( KCPK.Declaretion,kcrk.DOCNO) as TKorHD, a.CLBH,a.ZLBH,');
          SQL.Add('SUBSTRING(A.ARTICLE, 1, CHARINDEX(''-'', A.ARTICLE) - 1) AS ARTICLE,'); // cat chuoi article

          SQL.Add('a.Pairs,ISNULL( kcrks.USPrice,kcrks.VNPrice/'''+Edit2.text+''') as USprice, kcrks.USPrice,kcrks.VNPrice');
	// --, case when kcpk.Declaretion is null then kcrk.USERDATE else KCPK.UserDate end as datetime
	        SQL.Add(' from #tmp1 A ');
          SQL.Add(' left join MHQ B on b.MHQ=A.HG_NO or b.MHQ=A.TC_NO or b.MHQ=A.HD_NO');
          SQL.Add(' left join KCRK on KCRK.RKNO=A.PKNO ');
          SQL.Add(' Left join KCPK on KCPK.PKNO=A.PKNO  ');
          SQL.Add(' left join kcrks on kcrk.RKNO=kcrks.RKNO and  ISNULL(A.HG_NO,ISNULL(A.TC_NO,A.HD_NO)) =kcrks.CNO and a.CLBH= kcrks.CLBH ');
          SQL.Add(' left join ddzls on DDZLs.DDBH= a.ZLBH');
          SQL.Add(' left join zszl on kcrk.ZSBH = zszl.zsdh');
	        SQL.Add(' where b.MHQ is not null ');
          SQL.Add(' group by A.ZLBH,ISNULL(A.HG_NO, ISNULL(A.TC_NO, A.HD_NO)),b.DWBH,b.HS_code,b.Name,zszl.zsjc,');
          SQL.Add(' a.CLSL,a.ARTICLE,a.Pairs,KCRK.USERDATE,KCPK.Declaretion,KCRK.DOCNO,a.CLBH,kcrks.USPrice,kcrks.VNPrice,a.Qty ');
          Active:=true;
        end;
        eclApp.Cells(8,9):=Qtemp.FieldByName('Pairs').AsString;    //cells(dong;cot)
        eclApp.Cells(7,9):=Qtemp.FieldByName('ZLBH').AsString +'('+ Qtemp.FieldByName('ARTICLE').AsString +')' ;
        eclApp.Cells(9,9):= Qtemp.FieldByName('IPrice').AsFloat  * Qtemp.FieldByName('Pairs').AsFloat;
        Qtemp.First;
        i:=16;
        j:=1;
        while not Qtemp.Eof do
        begin
          eclApp.Cells(i,1):=Qtemp.fieldbyname('MHQ').AsString;
          eclApp.Cells(i,2):=Qtemp.fieldbyname('Name').AsString;
          eclApp.Cells(i,3):=Qtemp.fieldbyname('HS_code').AsString;
          eclApp.Cells(i,4):=Qtemp.fieldbyname('DWBH').AsString;
          eclApp.Cells(i,5):=Qtemp.fieldbyname('CLSLpair').AsString;
          eclApp.Cells(i,6):=Qtemp.fieldbyname('USprice').AsString;
          eclApp.Cells(i,8):=Qtemp.fieldbyname('CLSLpair').AsFloat * Qtemp.FieldByName('USprice').AsFloat* Qtemp.fieldbyname('Pairs').AsFloat;
          eclApp.Cells(i,10):=Qtemp.fieldbyname('TKorHD').AsString;
          eclApp.Cells(i,11):=Qtemp.fieldbyname('userdateKCRK').AsString;
          eclApp.Cells(i,14):=Qtemp.fieldbyname('zsjc').AsString;
          eclApp.Cells(i,15):=Qtemp.fieldbyname('ZLBH').AsString;
          eclApp.ActiveSheet.Rows[i+1].Insert;
          Qtemp.Next;
          inc(i);
        end;
        eclApp.ActiveSheet.Rows[i].delete;
        eclApp.Cells[i, 7] := '=SUM(G16:G' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 8] := '=SUM(H16:H' + IntToStr(i-1) + ')';
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on  F:Exception   do
          showmessage(F.Message);
      end;
   end;
end;

end.

unit Purtrace1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, Menus, ComCtrls, dateutils, Buttons, ShellApi, IniFiles,Math;

type
  TPurtrace = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;                             
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit4: TEdit;
    DDBHEdit: TEdit;
    Edit6: TEdit;
    CheckBox1: TCheckBox;
    Button2: TButton;
    Edit3: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    Query1CQDH: TStringField;
    Query1CGQty: TCurrencyField;
    Query1CLSL: TFloatField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1CGDate: TDateTimeField;
    Query1CGNO: TStringField;
    Query1UseStock: TCurrencyField;
    Query1RKNO: TStringField;
    Query1RKDate: TDateTimeField;
    Query1RKQty: TCurrencyField;
    Query1ShipDate: TDateTimeField;
    PrintDBGridEh1: TPrintDBGridEh;
    Button3: TButton;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Query1USPrice: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TIntegerField;
    Query1USACC: TFloatField;
    CB5: TCheckBox;
    UpdateSQL1: TUpdateSQL;
    Label4: TLabel;
    Edit7: TEdit;
    CheckBox5: TCheckBox;
    CYear: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    CMonth: TComboBox;
    Button4: TButton;
    Query1get2com: TIntegerField;
    Query1com2cg: TIntegerField;
    Query1cg2rk: TIntegerField;
    Query1cgkpi: TIntegerField;
    Query1INDATE: TDateTimeField;
    Query1CLDATE: TDateTimeField;
    Query1OrderDate: TDateTimeField;
    Query1BUYNO: TStringField;
    PurchasePage: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    Label10: TLabel;
    Edit8: TEdit;
    Query1zsjc: TStringField;
    lbKHPO: TLabel;
    edKHPO: TEdit;
    Query1CCGB: TStringField;
    lbDDGB: TLabel;
    edDDGB: TEdit;
    Label11: TLabel;
    OrderType: TComboBox;
    DDZTCK: TCheckBox;
    Query1DDZT: TStringField;
    CancelCK: TCheckBox;
    TabSheet3: TTabSheet;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    DateTimeField8: TDateTimeField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField2: TFloatField;
    CurrencyField4: TCurrencyField;
    FloatField3: TFloatField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    UpdateSQL3: TUpdateSQL;
    DS2: TDataSource;
    Query1ZSDH: TStringField;
    Query1zsywjc: TStringField;
    Query2ZSDH: TStringField;
    Query2zsywjc: TStringField;
    HistoryCB: TCheckBox;
    Query2DOCNO: TStringField;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    clbh: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SBtn1: TSpeedButton;
    SBtn2: TSpeedButton;
    BuyNoEdit: TEdit;
    Button5: TButton;
    SupEdit: TEdit;
    DDGBEdit: TEdit;
    RYEdit: TEdit;
    GroupBox1: TGroupBox;
    CK2: TCheckBox;
    CK1: TCheckBox;
    CK3: TCheckBox;
    SKUEdit: TEdit;
    MatNoEdit: TEdit;
    MatNMEdit: TEdit;
    CB4: TCheckBox;
    DBGridEh3: TDBGridEh;
    RSLQry: TQuery;
    RSLQryCLBH: TStringField;
    RSLQryYWPM: TStringField;
    RSLQryDWBH: TStringField;
    RSLQryCQDH: TStringField;
    RSLQryZSDH: TStringField;
    RSLQryzsywjc: TStringField;
    RSLQryPDDate: TDateTimeField;
    RSLQryPDFilePage: TStringField;
    RSLQryIsExpire: TStringField;
    RSLQryID: TFloatField;
    DS3: TDataSource;
    Button6: TButton;
    Label18: TLabel;
    CBX1: TComboBox;
    Label19: TLabel;
    CBX2: TComboBox;
    Query2VNACC: TCurrencyField;
    CheckBox9: TCheckBox;
    Label20: TLabel;
    Query2APlanDate: TDateTimeField;
    Query1APlanDate: TDateTimeField;
    TabSheet5: TTabSheet;
    DBGridEh5: TDBGridEh;
    DS5: TDataSource;
    Query5: TQuery;
    Query5BUYNO: TStringField;
    Query5ZLBH: TStringField;
    Query5CLBH: TStringField;
    Query5YWPM: TStringField;
    Query5CGDate: TDateTimeField;
    Query5CLSL: TCurrencyField;
    Query5YQDate: TDateTimeField;
    Query5CGNO: TStringField;
    Query5ZSJC: TStringField;
    Query5ZSBH: TStringField;
    Query5USERID: TStringField;
    Query5USERDATE: TDateTimeField;
    cbbMode: TComboBox;
    Label21: TLabel;
    Label22: TLabel;
    SupplierEdit: TEdit;
    RSLQryMemo: TStringField;
    MonthEdit: TEdit;
    Label23: TLabel;
    Qtemp: TQuery;
    QtempCLBH: TStringField;
    RSLQryGSBH: TStringField;
    Query2Season: TStringField;
    Query2ProdMOQ: TCurrencyField;
    Query2ProdLeadTime: TIntegerField;
    Query2Forecast_Leadtime: TIntegerField;
    Query2Location: TStringField;
    LTCKbox: TCheckBox;
    SeasonEdit: TEdit;
    Query5KHPO: TStringField;
    Query5Article: TStringField;
    Query5XieMing: TStringField;
    Query5Pairs: TIntegerField;
    Query5DWBH: TStringField;
    Query5CQDH: TStringField;
    Query5CGQty: TCurrencyField;
    Query5ZWPM: TStringField;
    Query5RKQty: TCurrencyField;
    Query5RKNO: TStringField;
    Query5usprice: TFloatField;
    Query5vnprice: TFloatField;
    Query5ShipDate: TDateTimeField;
    Query5RKDate: TDateTimeField;
    Query5DDZT: TStringField;
    RSLQryGender: TStringField;
    RSLQryPDFilePageT2: TStringField;
    RSLQryKFGender: TStringField;
    Label24: TLabel;
    GenderCombo: TComboBox;
    Query2FlexID: TStringField;
    Query2PartName: TStringField;
    Label25: TLabel;
    PurchaserEdit: TEdit;
    chkFlexCode: TCheckBox;
    Query2UseYG: TCurrencyField;
    RadioGroup1: TRadioGroup;
    Query2ShippedDate: TDateTimeField;
    Query2AWB: TStringField;
    Query2SR: TStringField;
    Query5SR: TStringField;
    Query5CFMDate: TDateTimeField;
    Query5RequestETD: TDateTimeField;
    Query2RequestETD: TDateTimeField;
    Query2MaterialETC: TDateTimeField;
    Query2LYWSM: TStringField;
    Label26: TLabel;
    FlexID_Edit: TEdit;
    Query2A4Comfirm: TStringField;
    Query2DateA4Comfirm: TDateTimeField;
    ETCCK: TCheckBox;
    LTCK: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PurchasePageChange(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query2CalcFields(DataSet: TDataSet);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button6Click(Sender: TObject);
    procedure SBtn1Click(Sender: TObject);
    procedure SBtn2Click(Sender: TObject);
    procedure LTCKboxClick(Sender: TObject);
    procedure DDBHEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure chkFlexCodeClick(Sender: TObject);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    IsChekcRSLOver:boolean;
    //分三個頁面
    procedure Purchase_Default();
    procedure Purchase_DefaultVer1();
    procedure Purchase_CancelMaterial();
    { Private declarations }
    procedure TWPurcahseSQL(Query:TQuery);
    procedure TWPurcahseDetailSQL(Query:TQuery);
    procedure InitTitleClick(IsOpen:boolean);
    procedure ReadIni();
    procedure DDBHEditPaste();
    function GetMutiDDBHSubSQL(Str:String):String;
    procedure Edit3Paste();
  public
    { Public declarations }
    DCFilePath:string;
    PDFilePath:string;
  end;

var
  Purtrace: TPurtrace;
const
  PDFilePath = '\\192.168.23.11\RSL\PD\';
implementation

uses main1, Purtrace_Det1,Purtrace_LT1, RSLSupplier1, RSLDDGB1, FunUnit, FileTransClient1, untClipboard;

{$R *.dfm}

procedure TPurtrace.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  DCFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\DC\';                    // 先設定上傳的檔案路徑
  PDFilePath := '\\192.168.23.11\A_DataCenter\A12\RSL\PD\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      DCFilePath:=MyIni.ReadString('RSL','Bom_N472_DCFilePath','');
      PDFilePath:=MyIni.ReadString('RSL','Bom_N472_PDFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;


procedure TPurtrace.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPurtrace.FormDestroy(Sender: TObject);
begin
Purtrace:=nil;
end;

procedure TPurtrace.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    Qeruy:TQuery;
 begin
  if PurchasePage.ActivePageIndex=0 then Qeruy:=Query1;
  if PurchasePage.ActivePageIndex=1 then Qeruy:=Query2;
  if PurchasePage.ActivePageIndex=3 then Qeruy:=Query5;
  //
  if  Qeruy.active  then
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
        for   i:=0   to   Qeruy.fieldcount-1   do
        begin
          if Qeruy.fields[i].FieldName ='Forecast_Leadtime' then
          begin
            eclApp.Cells(1,i+1):= 'NoFC_Leadtime';
          end else
            eclApp.Cells(1,i+1):=Qeruy.fields[i].FieldName;
        end;
        if PurchasePage.ActivePageIndex=1 then begin
          eclApp.Cells(1,1):= 'BUY ORDER';
          eclApp.Cells(1,2):= 'CUSTOMER PO';
          eclApp.Cells(1,3):= 'RY#';
          eclApp.Cells(1,4):= 'SKU';
          eclApp.Cells(1,5):= 'SR#';
          eclApp.Cells(1,6):= 'SHOE NAME';
          eclApp.Cells(1,7):= 'PO# QTY';
          eclApp.Cells(1,8):= 'MATERIAL CODE';
          eclApp.Cells(1,9):= 'MATERIAL DESCRIPTION';
          eclApp.Cells(1,10):= 'UNIT';
          eclApp.Cells(1,11):= 'LOCATION';
          eclApp.Cells(1,12):= 'QTY USAGE';
          eclApp.Cells(1,13):= 'QTY ORDERED';
          eclApp.Cells(1,14):= 'QTY INPUT W/H';
          eclApp.Cells(1,15):= 'USE STOCK';
          eclApp.Cells(1,16):= '';
          eclApp.Cells(1,17):= 'DATE BUZ RECEIVED FROM CUSTOMER';
          eclApp.Cells(1,18):= 'DATE INSERT INTO ERP';
          eclApp.Cells(1,19):= 'REVISED ORDER DATE';
          eclApp.Cells(1,20):= 'MAT. PO# DATE';
          eclApp.Cells(1,21):= '';
          eclApp.Cells(1,22):= 'MATERIAL ETC';
          eclApp.Cells(1,23):= 'MAT. ARRIVAL DATE';
          eclApp.Cells(1,24):= 'INPUT W/H DATE';
          eclApp.Cells(1,25):= 'PLAN DATE';
          eclApp.Cells(1,26):= 'GAC DATE';
          eclApp.Cells(1,27):= 'Mat. PO#';
          eclApp.Cells(1,28):= 'INPUT W/H NO';
          eclApp.Cells(1,29):= '';
          eclApp.Cells(1,30):= 'PRICE USD';
          eclApp.Cells(1,31):= 'PRICE VND';
          eclApp.Cells(1,32):= '';
          eclApp.Cells(1,33):= '';
          eclApp.Cells(1,34):= '';
          eclApp.Cells(1,35):= '';
          eclApp.Cells(1,36):= '';
          eclApp.Cells(1,37):= '';
          eclApp.Cells(1,38):= 'DESTINATION ';
          eclApp.Cells(1,39):= 'MP OR OFFICIAL ORDER';
          eclApp.Cells(1,40):= 'VENDOR CODE';
          eclApp.Cells(1,41):= 'VENDOR NAME';
          eclApp.Cells(1,42):= 'INVOICE';
          eclApp.Cells(1,43):= 'SEASON';
          eclApp.Cells(1,44):= 'Prod MOQ';
          eclApp.Cells(1,45):= 'PROD LT';              
          eclApp.Cells(1,46):= 'NO FC PROD LT';
          eclApp.Cells(1,47):= '';
          eclApp.Cells(1,48):= 'Flex ID';
          eclApp.Cells(1,49):= 'PART NAME';
          eclApp.Cells(1,50):= 'CFM SWATCH DATE SENT';
          eclApp.Cells(1,51):= 'CFM SWATCH BILL#';
          eclApp.Cells(1,52):= 'REQUESTED ETD';
          eclApp.Cells(1,53):= 'VULCANIZE E';
        end;

        Qeruy.First;
        j:=2;
        while   not   Qeruy.Eof   do
          begin
            for   i:=0   to  Qeruy.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Qeruy.Fields[i].Value;
            end;
          Qeruy.Next;
          inc(j);
          end;
      if (PurchasePage.ActivePageIndex=1) then begin
//        eclapp.ActiveSheet.Columns[48].Delete;
        eclapp.ActiveSheet.Columns[47].Delete;
        eclapp.ActiveSheet.Columns[37].Delete;
        eclapp.ActiveSheet.Columns[36].Delete;
        eclapp.ActiveSheet.Columns[35].Delete;
        eclapp.ActiveSheet.Columns[34].Delete;
        eclapp.ActiveSheet.Columns[33].Delete;
        eclapp.ActiveSheet.Columns[32].Delete;
        eclapp.ActiveSheet.Columns[29].Delete;
        eclapp.ActiveSheet.Columns[21].Delete;
        eclapp.ActiveSheet.Columns[16].Delete;
      end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;
//20140503台灣採購
procedure TPurtrace.TWPurcahseSQL(Query:TQuery);
begin
  with Query  do
  begin

            //台灣出貨材料
            sql.add('left join (');
            if (OrderType.ItemIndex=0) then
            begin
              sql.add('         select CGHZZLS.ZLBH,CGHZZLS.CLBH,Sum(CGHZZLS.dg_Qty) as CGQty,');
              sql.add('                  CONZL.Ex_Qty as RKQty, max(convert(smalldatetime,CGHZZLSS.ZD_Date)) as YQDate,');
              sql.add('                  max(convert(smalldatetime,(case when hf_Date='+''''+'ZZZZZZZZ'+''''+' then null else hf_Date end))) as CFMDate,');
              sql.add('                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,max(CGHZZLSS.DGDH) as CGNO,CONZL.CON_Date as RKDate,CONZL.CON_NO as RKNO ');
              sql.add('                  ,conzl.USPrice,conzl.VNPrice ');
            end;
            if ((OrderType.ItemIndex=1) or (OrderType.ItemIndex=2)) then
            begin
              sql.add('         select CGHZZLS.ZLBH,CGHZZLS.CLBH,Sum(CGHZZLS.dg_Qty) as CGQty,');
              sql.add('                  Sum(CONZL.Ex_Qty) as RKQty, max(convert(smalldatetime,CGHZZLSS.ZD_Date)) as YQDate,');
              sql.add('                  max(convert(smalldatetime,(case when hf_Date='+''''+'ZZZZZZZZ'+''''+' then null else hf_Date end))) as CFMDate,');
              sql.add('                  max(convert(smalldatetime,CGHZZLSS.dg_Date)) as CGDate,max(CGHZZLSS.DGDH) as CGNO,Max(CONZL.CON_Date) as RKDate,Max(CONZL.CON_NO) as RKNO ');
              sql.add('                  ,max(conzl.USPrice) as USPrice,max(conzl.VNPrice) as VNPrice ');
            end;
            sql.add('           from CGHZZLS with (nolock) ');
            sql.add('           left join   CGHZZLSS with (nolock)  on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.DGDH=CGHZZLSS.DGDH  and CGHZZLS.Size=CGHZZLSS.Size ');
            sql.add('           left join CLZL  with (nolock) on CLZL.CLDH=CGHZZLS.CLBH         ');
            //20140502正單補單
            if OrderType.ItemIndex=0 then
            begin
              sql.add('           LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.CLDH,sum(EXZLSS.CK_Qty) as EX_Qty,MAX(EXZLS.PY_dj) as USPrice ,convert(money,0) AS VNPrice');
            end else if ((OrderType.ItemIndex=1) or (OrderType.ItemIndex=2)) then
            begin
               sql.add('           LEFT JOIN (SELECT EXZLSS.ZLBH,EXZLSS.dgdh,EXZLSS.CLDH,sum(EXZLSS.CK_Qty) as EX_Qty,MAX(EXZLS.PY_dj) as USPrice ,convert(money,0) AS VNPrice');
            end;
            sql.add('                             ,max(convert(smalldatetime,HGZL.CON_DATE)) as Con_Date,max(HGZL.SHLB) as SHLB,max(EXZL.CON_NO) as CON_NO');
            sql.add('                      FROM EXZLSS');
            sql.add('                      left join EXZLS on EXZLS.EXNO=EXZLSS.exno AND exzls.xh=exzlss.xh ');
            sql.add('                      LEFT JOIN EXZL  with (nolock) ON EXZLSS.EXNO=EXZL.EXNO  ');
            sql.add('                      LEFT JOIN HGZL  with (nolock) ON EXZL.CON_NO=HGZL.CON_NO');
            sql.add('                      where EXZLSS.CLDH like '+''''+edit1.Text+'%'+'''');
            sql.add('                            and EXZLSS.ZLBH like '+''''+DDBHEdit.Text+'%'+'''');
            //20140502正單補單
            if OrderType.ItemIndex=0 then
            begin
              sql.add('                      GROUP BY EXZLSS.ZLBH,EXZLSS.CLDH ');
              sql.add('                      ) AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLBH   = CONZL.ZLBH   ') //區別正單和補單
            end else
            begin
              sql.add('                      GROUP BY EXZLSS.ZLBH,EXZLSS.dgdh,EXZLSS.CLDH ');
              sql.add('                      ) AS CONZL  ON CGHZZLS.clbh   = CONZL.cldh  AND CGHZZLS.ZLBH   = CONZL.ZLBH  And  CGHZZLS.dgdh=CONZL.dgdh '); //區別正單和補單
            end;
            sql.add('           where CGHZZLS.CLBH like '+''''+edit1.Text+'%'+'''');
            sql.add('                 and CGHZZLS.ZLBH like '+''''+DDBHEdit.Text+'%'+'''');
            sql.add('                 and CLZL.CQDH='+''''+'TW'+'''');
            //20140502 區別正單和補單
            if OrderType.ItemIndex=1 then
               sql.Add('                 and CGHZZLS.cghzbh like ''LB%''');
            if OrderType.ItemIndex=2 then
               sql.Add('                 and CGHZZLS.cghzbh like ''RB%''');
            sql.Add('                 and CGHZZLS.DGDH<>''ZZZZZZZZZZZZZ''');
            if (OrderType.ItemIndex=0) then
               sql.add('           group by CGHZZLS.ZLBH,CGHZZLS.CLBH,CONZL.Ex_Qty,CONZL.CON_Date,CONZL.CON_NO ,conzl.USPrice,conzl.VNPrice) CGTW') ;
            if ((OrderType.ItemIndex=1) or (OrderType.ItemIndex=2)) then
               sql.add('           group by CGHZZLS.ZLBH,CGHZZLS.CLBH ) CGTW') ;

  end;
end;
//
procedure TPurtrace.Purchase_Default();
var ff:textfile;
    DDZL_SubSQL:string;
    CLZL_SQL:string;
    CGZL,CGZLS,CGZLSS,KCRK,KCRKS,ZLZLS2:string;
    DDBHEditSubSQL:String;
begin
 //MultiDDBHSQL
 DDBHEditSubSQL:=GetMutiDDBHSubSQL(DDBHEdit.Text);
 //20150826 修改SQL
 DDZL_SubSQL:='and DDZL.GSBH='''+main.Edit2.Text+''' ';
 if Edit8.Text<>'' then
   DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.BUYNO like '''+Edit8.Text+'%'' ';
 if DDBHEdit.Text<>'' then
   DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.DDBH '+DDBHEditSubSQL;
 if cyear.ItemIndex > 0 then
   DDZL_SubSQL:=DDZL_SubSQL+'and year(DDZL.Shipdate)='''+cyear.Text+''' ';  //出貨年
 if cmonth.ItemIndex > 0 then
   DDZL_SubSQL:=DDZL_SubSQL+'  and month(DDZL.Shipdate)='''+cmonth.text+''' ';  //出貨月
 if Edit1.Text<>'' then
   CLZL_SQL:='inner join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH and CLZL.CLDH like '''+Edit1.Text+'%'' '
 else
   CLZL_SQL:='left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH ';
 //歷史資料
 if HistoryCB.Checked=true then
 begin
  CGZL:='(select * from CGZL union all select * from CGZL_2014 ) CGZL ';
  CGZLS:='(select * from CGZLS union all select * from CGZlS_2014 ) CGZlS ';
  CGZLSS:='(select * from CGZLSS union all select * from CGZlSS_2014 ) CGZlSS ';
  KCRK:='(select * from KCRK union all select * from KCRK_2014 ) KCRK ';
  KCRKS:='(select * from KCRKS union all select * from KCRKS_2014 ) KCRKS ';
  ZLZLS2:='(select * from ZLZLS2 union all select * from ZLZLS2_2014 ) ZLZLS2 ';
 end else
 begin
  CGZL:=' CGZL with (nolock) ';
  CGZLS:='CGZLS with (nolock) ';
  CGZLSS:='CGZLSS with (nolock) ';
  KCRK:='KCRK with (nolock) ';
  KCRKS:='KCRKS with (nolock) ';
  ZLZLS2:='ZLZLS2 with (nolock) ';
 end;
 //
      with query1 do
      begin
        active:=false;
        sql.Clear;
        if  checkbox1.Checked then
          begin
            sql.add('Select * from ( ');
            sql.add(' select isnull(DDZL.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
            sql.add('        CLZl.CQDH,isnull(CGTW.CGQty,0) as CGQty,');
            //20150605 修改取消訂單用量為0
            if DDZTCK.Checked=true then
              sql.add('case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsCGZLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
            else
              sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            sql.add('        CGTW.YQDate,CGTW.CFMDate,');
            sql.add('        CGTW.CGDate,CGTW.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,min(SCZLDate.ADate) as APlanDate,DDZL.Shipdate,CGTW.USPrice,CGTW.VNPrice')  ;
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate') ;
            sql.Add('        ,convert(smalldatetime,max(zlzls2.userdate),111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');
            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,(convert(int,max(zlzls2.userdate))-convert(int,ddzl.ddrq)) as get2com');
            sql.Add('    		 ,(convert(int,CGtw.CGDate)-convert(int,max(zlzls2.userdate))) as com2cg');
            sql.Add('    		 ,(convert(int,cgtw.RKDate)-convert(int,CGtw.CGDate)) as cg2rk');
            sql.Add('    		 ,(convert(int,CGtw.CFMDate)-convert(int,cgtw.RKDate)) as cgkpi');
            sql.add('        ,lbzls.ywsm,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as zsywjc'); //加入出貨國別star 2014.2.27
            //edit end
            sql.add('from '+ZLZLS2);
            //20150826 weston增加
            sql.add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL);
            sql.add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
            sql.add('left join SCZL with (nolock) on ZLZLS2.ZLBH = SCZL.SCBH');
            sql.add(CLZL_SQL);
            //             
            //台灣採購SQL
            TWPurcahseSQL(query1);
            //20140318 weston更改
            sql.add('     on CGTW.ZLBH=ZLZLS2.ZLBH and CGTW.CLBH=ZLZLS2.CLBH   ');
            //

            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH='''+main.Edit2.Text+''' ');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH ');
            //20150826 add supplier
            sql.add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
            //
            sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
            sql.add('      and ZLZLS2.ZLBH '+DDBHEditSubSQL);
            sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
            sql.add('      and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
            sql.add('      and XXZL.Article like '+''''+edit3.text+'%'+'''');
            sql.add('      and DDZL.GSBH='''+main.edit2.Text+'''');
            if edKHPO.text <> '' then
              sql.add('      and DDZLTW.KHPO like '''+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
               sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
            if edit8.Text  <>'' then
            sql.add('      and DDZL.BuyNO like '+''''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            sql.add('      and KFZL.KFJC like '+''''+'%'+edit4.Text+'%'+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex > 0 then
               sql.add('      and year(DDZL.Shipdate)='+''''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex > 0 then
               sql.add('      and month(DDZL.Shipdate)='+''''+cmonth.text+'''');  //出貨月
    //end edit
            sql.add('      and ZLZLS2.ZMLB='+''''+'N'+'''');  //只針對子材料
            sql.add('      and ZLZLS2.CLSL<>0');//數量不等於0
            sql.add('      and CLZL.CQDH='+''''+'TW'+'''');
            if CancelCK.Checked=false then
              sql.add('      and DDZLTW.DDZT<>''C'' ');
            //20140502 區別正單和補單
            if OrderType.ItemIndex=2 then  sql.Add('      and CGTW.CGQty is not null ');
            // 20140318 weston 更改 刪除 ZLZLS2.SIZE
            sql.add('group by DDZL.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZl.DWBH,XXZL.Article,XXZl.XieMing,DDZL.Pairs,');
            //end edit
            sql.add('        CLZl.CQDH,CGTW.CGQty,CGTW.YQDate,CGTW.CFMDate,ddzl.userdate,');
            sql.add('        CGTW.CGDate,CGTW.CGNO,CGKCUSE.Qty,CGTW.RKNO,CGTW.RKDate,CGTW.RKQty,DDZL.Shipdate,CGTW.USPrice,CGTW.VNPrice')  ;
            sql.Add('		     ,ddzl.ddrq,lbzls.ywsm,SCZL.IsCGZLS');
            if (checkbox3.Checked xor checkbox4.Checked)=true then
            begin
                sql.add('      having  ');
                if checkbox3.Checked=true then
                  sql.add('        isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGTW.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                if checkbox4.Checked  then
                  sql.add('        isnull(sum(ZLZLS2.CLSL),0)>isnull(CGTW.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                //20151203  add RKQty+UseQty
                if (checkbox6.Checked xor checkbox7.Checked)=true then
                begin
                  if checkbox6.Checked then
                    sql.add('    and   isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGTW.RKQty,0)+isnull(CGKCUSE.Qty,0) ');
                  if checkbox7.Checked then
                    sql.add('    and   isnull(sum(ZLZLS2.CLSL),0)>isnull(CGTW.RKQty,0)+isnull(CGKCUSE.Qty,0) ');
                end;
            end else
            begin
                if (checkbox6.Checked xor checkbox7.Checked)=true then
                begin
                  sql.add('      having  ');
                  if checkbox6.Checked then
                    sql.add('         isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGTW.RKQty,0)+isnull(CGKCUSE.Qty,0) ');
                  if checkbox7.Checked then
                    sql.add('         isnull(sum(ZLZLS2.CLSL),0)>isnull(CGTW.RKQty,0)+isnull(CGKCUSE.Qty,0) ');
                end;
            end;
            sql.add(') ZLZLS2 where 1=1 ');
            if SupplierEdit.Text<>'' then
              sql.add(' and ZLZLS2.zsywjc like ''%'+SupplierEdit.Text+'%'' ');

         if (checkbox1.Checked and checkbox2.Checked) or (checkbox1.Checked and checkbox5.Checked) then
           begin
            sql.add('union all');
           end;
          end;
        if  checkbox2.Checked then
          begin
            sql.add('Select * from ( ');
            sql.add('select  isnull(DDZL.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');
            //20150605 修改取消訂單用量為0
            if DDZTCK.Checked=true then
              sql.add('case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsCGZLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
            else
              sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            sql.add('        CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
            sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,');
            sql.add('        RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,min(SCZLDate.ADate) as APlanDate,DDZL.ShipDate,');
            sql.add('        isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnprice');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,max(zlzls2.userdate),111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,(convert(int,max(zlzls2.userdate))-convert(int,ddzl.ddrq)) as get2com');
            sql.Add('    		 ,(convert(int,CGZl.CGDate)-convert(int,max(zlzls2.userdate))) as com2cg');
            sql.Add('    		 ,(convert(int,RKZL.RKDate)-convert(int,CGZl.CGDate)) as cg2rk');
            sql.Add('    		 ,(convert(int,CGZL.CFMDate)-convert(int,RKZL.RKDate)) as cgkpi');
            sql.add('         ,lbzls.ywsm,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as zsywjc');//出貨國別 star 2014.2.27
            //edit end

            sql.add('from '+ZLZLS2);
            //20150826 weston 修改
            sql.add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL);
            sql.add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
            sql.add('left join SCZL with (nolock) on ZLZLS2.ZLBH = SCZL.SCBH');
            sql.add(CLZL_SQL);
            //
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            sql.add('left join CGKCUSE  with (nolock) on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH='''+main.Edit2.Text+'''  ');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
            sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
            sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH ');
            //加載采購相關的數量及日期等數據
            sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
            sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPrice ');
            sql.add('           from '+CGZLSS+' ');
            sql.add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH '+DDZL_SubSQL);
            sql.add('           left join '+CGZLS+' on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
            sql.add('           left join '+CGZL+' on CGZl.CGNO=CGZLSS.CGNO');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');
            if (cyear.text > '0000') then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            sql.add('                 and DDZL.GSBH='''+main.edit2.Text+'''');  //在子查詢加入廠別搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and CGZLSS.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.Text <> '' then
              sql.add('                 and CGZLSS.ZLBH '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
            sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
              //加載入庫相關的數量及日期等數據
            sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
            sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
            sql.add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
            sql.add('           from  '+KCRKS+' ');
            sql.add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
            sql.add('           left join '+KCRK+'  on KCRK.RKNO=KCRKS.RKNO ');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');     //在子查詢加入廠別搜尋 2014.1.24 star
            if (cyear.text > '0000') then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.text <> '' then
              sql.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
            sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
            //20150826 add supplier
            sql.add('left join (select zsdh,zsywjc from zszl ) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
            //
            sql.add('       where DDZL.GSBH='''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex > 0 then
               sql.add('      and year(DDZL.Shipdate)='''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex > 0 then
               sql.add('      and month(DDZL.Shipdate)='''+cmonth.text+'''');  //出貨月
            if edit1.Text <> '' then
              sql.add('     and ZLZLS2.CLBH like '''+edit1.Text+'%''');
            //不要買安全庫存類的材料
            sql.add('       and ZLZLS2.CLBH not like ''W%''');
            sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
            if DDBHEdit.text <> '' then
              sql.add('       and ZLZLS2.ZLBH '+DDBHEditSubSQL);
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like ''%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like ''%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edit8.Text <> '' then
              sql.add('       and DDZL.BuyNO like '''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edit4.Text <> '' then
              sql.add('       and KFZL.KFJC like ''%'+edit4.Text+'%''');
            sql.add('       and ZLZLS2.ZMLB=''N''');
            sql.add('       and CLZL.CQDH=''VN''');
            if CancelCK.Checked=false then
              sql.add('       and DDZLTW.DDZT<>''C'' ');
            sql.add('       and ZLZLS2.CLSL<>0') ;
            //加上不要開發材料分類到無需領料的部分
            sql.add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');

            if edKHPO.Text <> '' then
              sql.add('     and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
               sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');

    //end edit

            sql.add('group by DDZl.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,');
            sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
            sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate, ');
            sql.add('         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice');
            sql.add('		      ,ddzl.ddrq,lbzls.ywsm,SCZL.IsCGZLS');
            if (checkbox3.Checked xor checkbox4.Checked)=true then
            begin
                sql.add('      having  ');
                if checkbox3.Checked=true then
                  sql.add('        isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                if checkbox4.Checked  then
                  sql.add('        isnull(sum(ZLZLS2.CLSL),0)>isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0) ');
                //20151203  add RKQty+UseQty
                if (checkbox6.Checked xor checkbox7.Checked)=true then
                begin
                  if checkbox6.Checked then
                    sql.add('    and   isnull(sum(ZLZLS2.CLSL),0)<=isnull(RKZL.RKQty,0)+isnull(CGKCUSE.Qty,0) ');
                  if checkbox7.Checked then
                    sql.add('    and   isnull(sum(ZLZLS2.CLSL),0)>isnull(RKZL.RKQty,0)+isnull(CGKCUSE.Qty,0) ');
                end;
            end else
            begin
                if (checkbox6.Checked xor checkbox7.Checked)=true then
                begin
                  sql.add('      having  ');
                  if checkbox6.Checked then
                    sql.add('         isnull(sum(ZLZLS2.CLSL),0)<=isnull(RKZL.RKQty,0)+isnull(CGKCUSE.Qty,0) ');
                  if checkbox7.Checked then
                    sql.add('         isnull(sum(ZLZLS2.CLSL),0)>isnull(RKZL.RKQty,0)+isnull(CGKCUSE.Qty,0) ');
                end;
            end;
            sql.add(') ZLZLS2 where 1=1 ');
            if SupplierEdit.Text<>'' then
              sql.add(' and ZLZLS2.zsywjc like ''%'+SupplierEdit.Text+'%'' ');
          end;

    {Edit by BillWeng 2009/12/16 加入外箱
    //START }

        if (checkbox2.Checked and checkbox5.Checked) then sql.add('union all');

        if  checkbox5.Checked then
          begin
            sql.add('Select * from ( ');  //20150609 weston  修改BOX
            sql.add('select isnull(DDZL.BUYNO,0) as BUYNO,ddzl.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH ,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,convert(decimal,sum(ywbzpo.cts)) as CGQty,0.0 as clsl,getdate() as YQDate,');
            sql.add('         getdate() as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('         max(CGZL.CGNO) as CGNO,0.0 as usestock,RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,min(SCZLDate.ADate) as APlanDate,DDZL.ShipDate,');
            sql.add('           isnull(rkzl.USPrice,0) as USPrice,isnull(rkzl.VNPrice,0) as VNPrice   ');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,ywbzpo.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,null as get2com');
            sql.Add('    		 ,null as com2cg');
            sql.Add('    		 ,null as cg2rk');
            sql.Add('    		 ,null as cgkpi');
            sql.add('       ,lbzls.ywsm,'''' as zsdh,'''' as zsywjc');//出貨國別 star 2014.2.27
            //edit end
            sql.add('from ywbzpo  with (nolock) ');
            sql.add('left join ywdd on ywbzpo.ddbh = ywdd.ddbh');
            sql.add('left join CGZL  with (nolock) on CGZL.CGNO=ywdd.CGNO ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ywbzpo.CLBH ');
            sql.add('left join DDZl  with (nolock) on DDZl.DDBH=ywdd.ysbh ');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ywdd.ysbh');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('left join SCZLDate on SCZLDate.ZLBH=ywbzpo.ddbh ');
            sql.add(' left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,');
            sql.add(' max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate,usprice,vnprice  ');
            sql.add(' from  '+KCRKS+' ');
            sql.add(' inner join DDZL on DDZL.DDBH = KCRKS.CGBH '+DDZL_SubSQL);
            sql.add('left join '+KCRK+' on KCRK.RKNO=KCRKS.RKNO ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('where DDZL.GSBH='''+main.edit2.Text+''''); //在子查詢加入廠別搜尋 2014.1.24 star
            if (cyear.text > '0000') then
              sql.add('                 and  year(DDZL.Shipdate)='+cyear.Text);         //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.Text <> '' then
              sql.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH,usprice,vnprice ) RKZL');
            sql.add('                 on RKZL.ZLBH=ywbzpo.ddbh and RKZL.CLBH=ywbzpo.CLBH ');
            sql.add(' left join (select  ywbzpo.ddbh as ZLBH,ywbzpo.CLBH as clbh');
            sql.add(' from  ywbzpo with (nolock) ');
            sql.add(' left join DDZL on DDZL.DDBH = YWBZPO.DDBH');
            sql.Add(' where DDZL.GSBH='''+main.edit2.Text+''''); //在子查詢加入廠別搜尋 2014.1.24 star
            if (cyear.text > '0000') then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);          //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and ywbzpo.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.Text <> '' then
              sql.add('                 and ddzl.ddbh '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by ywbzpo.ddbh,ywbzpo.CLBH ) zlzls2');
            sql.add('                 on ywbzpo.ddbh=ZLZLS2.ZLBH and ywbzpo.CLBH=ZLZLS2.CLBH ');
            sql.add('       where DDZL.GSBH='+''''+main.edit2.Text+'''');
    //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if cyear.ItemIndex > 0 then
               sql.add('      and year(DDZL.Shipdate)='+''''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex > 0 then
               sql.add('      and month(DDZL.Shipdate)='+''''+cmonth.text+'''');  //出貨月
            if DDBHEdit.text <> '' then
              sql.add('       and ddzl.ddbh '+DDBHEditSubSQL);
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like '''+'%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like '''+'%'+edit6.text+'%''');
            if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');
            if edKHPO.Text <> '' then
              sql.add('       and DDZLTW.KHPO like '''+edKHPO.Text+'%''');
            if edit8.Text <> '' then
              sql.add('       and DDZL.BuyNO like '+''''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edDDGB.text <> '' then
              sql.add('      and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
            if CancelCK.Checked=false then
              sql.add('      and DDZLTW.DDZT<>''C'' ');
    //end edit

            sql.add(' group by DDZL.BUYNO,ddzl.DDBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,XXZL.Article,XXZL.XieMing,');
            sql.add(' DDZL.Pairs,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate,');
            sql.add(' rkzl.USPrice,rkzl.VNPrice ');
            sql.Add(' ,ddzl.userdate,ddzl.ddrq,ywbzpo.userdate,lbzls.ywsm');
            sql.add(') ZLZLS2  '); //20150609 weston  修改BOX
            if ((edit1.Text <> '') and (UpperCase(Copy(edit1.Text,1,1))='U')) then
            sql.add(' where ZLZLS2.CLBH like '''+edit1.Text+'%''');
          end;

    // End of edit   }
        sql.add('order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH ');
        //showmessage(SQL.Text);
        assignfile(ff,'sql.txt');
        rewrite(ff);
        writeln(ff,sql.text);
        closefile(ff);
       // memo1.Text:=sql.Text;
        active:=true;
      end;
    if CB5.Checked then
      begin
        while not query1.eof do
          begin
            query1.cachedupdates:=true;
            query1.requestlive:=true;
            if not query1.FieldByName('CGDate').IsNull then
              begin
                 if ( (not query1.FieldByName('USPrice').IsNull) and ( query1.FieldByName('USPrice').value<>0) ) then
                   begin
                     query1.Edit;
                     if edit7.text<>'' then
                     query1.FieldByName('VNPrice').Value:=query1.FieldByName('USPrice').Value* strtoint(edit7.Text);
                     query1.Post;
                   end;
                 if ( (not query1.FieldByName('VNPrice').IsNull) and (query1.FieldByName('VNPrice').value<>0) ) then
                   begin
                     query1.Edit;
                     if edit7.text<>'' then
                     query1.FieldByName('USPrice').Value:=query1.FieldByName('VNPrice').Value/strtoint(edit7.Text);
                     query1.Post;
                   end;
                   //end;
              end;
            query1.Next;
          end;
        query1.first;
      end else
      begin
          query1.cachedupdates:=false;
          query1.requestlive:=false;
      end;
end;
//多筆訂單編號查詢子SQL
function TPurtrace.GetMutiDDBHSubSQL(Str:String):String;
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
   if tmpList.Count>=20 then
   begin
     with Qtemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.add('if object_id(''tempdb..#PurDDBHList'') is not null    ');
       SQL.add('begin drop table #PurDDBHList end                 ');
       SQL.Add('select DDBH into #PurDDBHList from DDZLTW');
       SQL.Add('where  DDBH '+tmResult);
       ExecSQL();
       Result:=' in (select DDBH from #PurDDBHList) ';
     end;
   end else
   begin
      Result:=tmResult;
   end;
   tmpList.Free;
 end else
 begin
   Result:=' like '''+Str+'%'' ';
 end;
end;
//
procedure TPurtrace.Purchase_DefaultVer1();
var ff:textfile;
    DDZL_SubSQL:string;
    CLZL_SQL:string;
    CGZL,CGZLS,CGZLSS,KCRK,KCRKS,ZLZLS2:string;
    LT_SubSQL:String;
    DDBHEditSubSQL:String;
    ListSKU: TStringList;
    i: Integer;
begin
  ListSKU := TStringList.Create;
 //MultiDDBHSQL
 DDBHEditSubSQL:=GetMutiDDBHSubSQL(DDBHEdit.Text);
 //20150826 修改SQL
 DDZL_SubSQL:='and DDZL.GSBH='''+main.Edit2.Text+''' ';
 if Edit8.Text<>'' then
   DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.BUYNO like '''+Edit8.Text+'%'' ';
 if DDBHEdit.Text<>'' then
   DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.DDBH '+DDBHEditSubSQL;
 if cyear.ItemIndex > 0 then
   DDZL_SubSQL:=DDZL_SubSQL+'and year(DDZL.Shipdate)='''+cyear.Text+''' ';  //出貨年
 if cmonth.ItemIndex > 0 then
   DDZL_SubSQL:=DDZL_SubSQL+'  and month(DDZL.Shipdate)='''+cmonth.text+''' ';  //出貨月
 if Edit1.Text<>'' then
   CLZL_SQL:='inner join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH and CLZL.CLDH like '''+Edit1.Text+'%'' '
 else
   CLZL_SQL:='left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH ';
 //歷史資料
 if HistoryCB.Checked=true then
 begin
  CGZL:='(select * from CGZL union all select * from CGZL_2014 ) CGZL ';
  CGZLS:='(select * from CGZLS union all select * from CGZlS_2014 ) CGZlS ';
  CGZLSS:='(select * from CGZLSS union all select * from CGZlSS_2014 ) CGZlSS ';
  KCRK:='(select * from KCRK union all select * from KCRK_2014 ) KCRK ';
  KCRKS:='(select * from KCRKS union all select * from KCRKS_2014 ) KCRKS ';
  ZLZLS2:='(select * from ZLZLS2 union all select * from ZLZLS2_2014 ) ZLZLS2 ';
 end else
 begin
  CGZL:=' CGZL with (nolock) ';
  CGZLS:='CGZLS with (nolock) ';
  CGZLSS:='CGZLSS with (nolock) ';
  KCRK:='KCRK with (nolock) ';
  KCRKS:='KCRKS with (nolock) ';
  ZLZLS2:='ZLZLS2 with (nolock) ';
 end;
 if SeasonEdit.Text<>'' then LT_SubSQL:='case when Season='''+SeasonEdit.Text+''' then 0 else 1 end,';
      with query2 do
      begin
        ListSKU.Delimiter := ',';
        ListSKU.DelimitedText := edit3.Text;

        if Copy(edit3.Text, Length(edit3.Text), 1) = ',' then
        edit3.Text := Copy(edit3.Text, 1, Length(edit3.Text)-1);
        ListSKU.DelimitedText := edit3.Text;

        if ListSKU.Count > 20 then
        begin
          ShowMessage('SKU cannot be more than 20');
          ListSKU.Free;
          Exit;
        end;


        active:=false;
        sql.Clear;
        if  ((checkbox1.Checked) or (checkbox2.Checked)) then
        begin
            if (chkFlexCode.Checked) then
            begin
              if main.Edit2.Text='VA12' then
              begin
                sql.add('Select ZLZLS2.*,clzl_flex.cldhflex as FlexID,CGZL_Color2.AWB,CGZL_Color2.ShippedDate,CGZL_Color2.A4Comfirm,CGZL_Color2.DateA4Comfirm,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime as ''Request ETD''  from ( ')
              end else
              begin
                sql.add('Select ZLZLS2.*,clzl_flex.cldhflex as FlexID,'''' as AWB,convert(datetime,''1900/01/01'') as ShippedDate,'''' as A4Comfirm,convert(datetime,''1900/01/01'') as DateA4Comfirm,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime as ''Request ETD''  from ( ')
              end;
            end else
            begin
              if main.Edit2.Text='VA12' then
              begin
                sql.add('Select ZLZLS2.*,'''' as FlexID,CGZL_Color2.AWB,CGZL_Color2.ShippedDate,CGZL_Color2.A4Comfirm,CGZL_Color2.DateA4Comfirm,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime as ''Request ETD'' from ( ');
              end else
              begin
                sql.add('Select ZLZLS2.*,'''' as FlexID,'''' as AWB,convert(datetime,''1900/01/01'') as ShippedDate,'''' as A4Comfirm,convert(datetime,''1900/01/01'') as DateA4Comfirm,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime as ''Request ETD'' from ( ');
              end;
            end;
            sql.add('select  isnull(DDZL.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,isnull(CGZL.CGQty,0) as CGQty,');

            //20150605 修改取消訂單用量為0
            if DDZTCK.Checked=true then
              sql.add('case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsCGZLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
            else
              sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
            sql.add('        CGZL.YQDate,CGZL.CFMDate,CGZl.CGDate,');
            sql.add('        CGZL.CGNO,isnull(CGKCUSE.Qty,0) as UseStock,isnull(CGYGUSE.Qty,0) as UseYG,');
            sql.add('        RKZL.RKNO,RKZL.RKDate,case when ((CLZL.CQDH=''TW'')and (HGINV.HGQty is not null)) then HGINV.HGQty else RKZL.RKQty end as RKQty,HGINV.DOCNO,min(SCZLDate.ADate) as APlanDate,DDZL.ShipDate,');
            sql.add('        isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnprice');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,max(zlzls2.userdate),111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');

            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,(convert(int,max(zlzls2.userdate))-convert(int,ddzl.ddrq)) as get2com');
            sql.Add('    		 ,(convert(int,CGZl.CGDate)-convert(int,Max(zlzls2.userdate))) as com2cg');
            sql.Add('    		 ,(convert(int,RKZL.RKDate)-convert(int,CGZl.CGDate)) as cg2rk');
            sql.Add('    		 ,(convert(int,CGZL.CFMDate)-convert(int,RKZL.RKDate)) as cgkpi');
            sql.add('        ,lbzls.ywsm,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as zsywjc');//出貨國別 star 2014.2.27
            //edit end
            sql.add('        ,MaterialMOQ.Season,MaterialMOQ.ProdMOQ,MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_Leadtime,MaterialMOQ.Location ');
//            sql.Add('        ,Max(BWZL.YWSM) as PartName,kfxxzl.DEVCODE as SR,CGZL.MaterialETC, '''' as FlexID,lbzls_vul.ywsm as LYWSM');
            sql.Add('        ,Max(BWZL.YWSM) as PartName,kfxxzl.DEVCODE as SR,CGZL.MaterialETC,lbzls_vul.ywsm as LYWSM');
            sql.add('from '+ZLZLS2+' ');
            sql.add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL);
            if PurchaserEdit.Text<>'' then
            sql.add('inner JOIN ZSZL_DEV on ZLZLS2.CSBH=ZSZL_DEV.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' and ZSZL_DEV.SamplePurchaser='''+PurchaserEdit.Text+''' ');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
            sql.add('left join SCZL with (nolock) on ZLZLS2.ZLBH = SCZL.SCBH');
            sql.add(CLZL_SQL);
            sql.add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
            sql.add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
            //使用庫存
            sql.add('left join ( ');
            sql.add('           Select CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH,Sum(CGKCUSES.Qty) as Qty  from CGKCUSES with (nolock)');
            sql.add('           where CGKCUSES.GSBH='''+main.Edit2.Text+'''');
            sql.add('           Group by CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH) CGKCUSE  on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH='''+main.Edit2.Text+'''');
            //2021115 使用預購
            SQL.Add('left join ( ');
            SQL.Add('           Select CGYGUSES.GSBH,CGYGUSES.ZLBH,CGYGUSES.CLBH,Sum(CGYGUSES.Qty) as Qty  from CGYGUSES with (nolock)');
            SQL.Add('           where CGYGUSES.GSBH='''+main.Edit2.Text+'''');
            SQL.Add('           Group by CGYGUSES.GSBH,CGYGUSES.ZLBH,CGYGUSES.CLBH) CGYGUSE  on CGYGUSE.ZLBH=ZLZLS2.ZLBH and CGYGUSE.CLBH=ZLZLS2.CLBH and CGYGUSE.GSBH='''+main.Edit2.Text+'''');
            //
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
            sql.add('left join KFXXZL  with (nolock) on KFXXZL.XieXing=DDZLTW.XieXing and KFXXZL.SheHao=DDZLTW.SheHao');
            sql.add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
            sql.add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('left join lbzls lbzls_vul on lbzls_vul.lbdh=XXZL.XieGN and lbzls_vul.lb=''03'' ');
            sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH ');
            sql.Add('left join bwzl on zlzls2.bwbh=bwzl.bwdh');
            //加載采購相關的數量及日期等數據
            sql.add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
            sql.add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPrice,max(CGZLSS.MaterialETC) as MaterialETC ');
            sql.add('           from '+CGZLSS+'');
            sql.add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH '+DDZL_SubSQL);
            sql.add('           left join '+CGZLS+' on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
            sql.add('           left join '+CGZL+' on CGZl.CGNO=CGZLSS.CGNO');
            sql.add('           where CGZL.CGLX in (''1'',''2'',''5'') and  DDZL.GSBH='''+main.edit2.Text+'''  ');
            if (cyear.text > '0000') then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);  //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and CGZLSS.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.Text <> '' then
              sql.add('                 and CGZLSS.ZLBH '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by CGZLSS.ZLBH,CGZLSS.CLBH ) CGZL');
            //
            sql.add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
              //加載入庫相關的數量及日期等數據
            sql.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
            sql.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
            sql.add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
            sql.add('           from  '+KCRKS+' ');
            sql.add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
            sql.add('           left join '+KCRK+' on KCRK.RKNO=KCRKS.RKNO ');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');     //在子查詢加入廠別搜尋 2014.1.24 star
            sql.add('           and KCRK.SFL<>''THU HOI''');
            if (cyear.text > '0000') then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.text <> '' then
              sql.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
            sql.add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
            //20151021 台灣貨櫃文件
            sql.add('left join (select HG_INVS.CGBH as ZLBH ,HG_INVS.CLBH,sum(HG_INVS.Qty ) as HGQty, ');
            sql.add('                  max(HG_INV.DOCNO) as DOCNO,max(HG_INV.USERDate) as HGDate ');
            sql.add('           from  HG_INVS with (nolock) ');
            sql.add('           inner join DDZL on DDZL.DDBH=HG_INVS.CGBH '+DDZL_SubSQL);
            sql.add('           left join HG_INV with (nolock)  on HG_INV.RKNO=HG_INVS.RKNO');
            sql.add('           where DDZL.GSBH='''+main.edit2.Text+'''');     //在子查詢加入廠別搜尋 2014.1.24 star
            if (cyear.text > '0000') then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and HG_INVS.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.text <> '' then
              sql.add('                 and HG_INVS.CGBH '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by HG_INVS.CGBH,HG_INVS.CLBH ) HGINV');
            sql.add('                 on HGINV.ZLBH=ZLZLS2.ZLBH and HGINV.CLBH=ZLZLS2.CLBH');
            //20150826 add supplier
            sql.add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
            //20200406 MOQ & LeadTime
            SQL.Add('left join (');
            SQL.Add('		   Select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location from (');
            SQL.Add('		   Select A.Season,A.CLBH,A.ProdMOQ,A.ProdLeadTime,A.Forecast_Leadtime,A.Location from (');
            SQL.Add('			   select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY '+LT_SubSQL+'Substring(Season,1,2) DESC,USERDATE desc) ');
            SQL.Add('			   as  rn from ');
            SQL.Add('			  (');
            SQL.Add('			  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,MaterialMOQ.USERDATE ');
            SQL.Add('			  from MaterialMOQ with (nolock)');
            SQL.Add('			  left join CLZL_LS with (nolock) on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ) MaterialMOQ');
            if LTCKbox.Checked=true then
               SQL.Add('			  where 1=1')
            else
               SQL.Add('        where 1=2');
            SQL.Add('		   ) A where A.rn=1 and A.CLBH in (select distinct CLBH from ZLZLS2,DDZL where DDZL.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.edit2.Text+''' and DDZL.BUYNO like '''+edit8.Text+'%'' ');
            if DDBHEdit.text <> '' then
              SQL.add('                                       and ZLZLS2.ZLBH '+DDBHEditSubSQL);
            SQL.Add('                                      and ZLZLS2.CLBH not like ''W%'' and ZLZLS2.CLBH like '''+edit1.Text+'%'' and ZLZLS2.CLSL<>0 and ZLZLS2.ZMLB=''N'') ');
            SQL.Add('    ) MatMOQ');
            //20240730 add leadtime key in at MaterialMassMOQ
            SQL.Add('   Where CLBH not in ( select CLBH from MaterialMassMOQ where gsbh='''+main.edit2.Text+''' )');
            SQL.Add('   Union all ');
            SQL.Add('   Select '''' as Season,CLBH,'''' as ProdMOQ,ProdLeadTime,Forecast_Leadtime,'''' as Location  ');
            SQL.Add('   From MaterialMassMOQ ');
            if LTCKbox.Checked=true then
               SQL.Add('			  Where 1=1 and gsbh='''+main.edit2.Text+''' and CLBH like '''+edit1.Text+'%'' ')
            else
               SQL.Add('        Where 1=2');
            SQL.Add('		) MaterialMOQ on MaterialMOQ.CLBH=ZLZLS2.CLBH ');
            //
            sql.add('       where DDZL.GSBH='''+main.edit2.Text+'''');
            //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if ETCCK.Checked then
               sql.add('      and (CGZL.CGDate is null or ((MaterialETC is null) and (CGZL.CGDate + 7 < getdate())) )');
            if LTCK.Checked then
               sql.add('      and (MaterialMOQ.ProdLeadTime is null or MaterialMOQ.Forecast_Leadtime is null)');
            if (cyear.text > '0000') then
               sql.add('      and year(DDZL.Shipdate)='''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex > 0 then
               sql.add('      and month(DDZL.Shipdate)='''+cmonth.text+'''');  //出貨月
            if edit1.Text <> '' then
              sql.add('     and ZLZLS2.CLBH like '''+edit1.Text+'%''');
            //不要買安全庫存類的材料
            sql.add('       and ZLZLS2.CLBH not like ''W%''');
            sql.add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
            if DDBHEdit.text <> '' then
              sql.add('       and ZLZLS2.ZLBH '+DDBHEditSubSQL);
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like ''%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like ''%'+edit6.text+'%''');
            {if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');   }
            if edit3.Text <> '' then
            begin
              sql.Add('       and (');
              for i := 0 to ListSKU.Count - 1 do
              begin
              if i > 0 then
                sql.Add('           or');
                sql.Add('           XXZL.Article like ''' + ListSKU[i] + '%''');
              end;
              sql.Add('       )');
            end;

            if edit8.Text <> '' then
              sql.add('       and DDZL.BuyNO like '''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edit4.Text <> '' then
              sql.add('       and KFZL.KFJC like ''%'+edit4.Text+'%''');
            sql.add('       and ZLZLS2.ZMLB=''N''');
            if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
               sql.add('       and CLZL.CQDH=''TW''');
            if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
               sql.add('       and CLZL.CQDH=''VN''');
            if CancelCK.Checked=false then
              sql.add('       and DDZLTW.DDZT<>''C'' ');
            sql.add('       and ZLZLS2.CLSL<>0') ;
            //加上不要開發材料分類到無需領料的部分
            sql.add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');

            if edKHPO.Text <> '' then
              sql.add('     and DDZLTW.KHPO like '''+edKHPO.Text+'%''');
            if edDDGB.text <> '' then
               sql.add('     and lbzls.ywsm like ''%'+edDDGB.Text+'%''');

            //end edit

            sql.add('group by DDZl.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,ddzl.userdate,');
            sql.add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGYGUSE.Qty,CGZl.CGQty,CGZL.YQDate,');
            sql.add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,HGINV.HGQty,HGINV.DOCNO,DDZL.ShipDate, ');
            sql.add('         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice,ddzl.ddrq,lbzls.ywsm ');
            sql.add('         ,MaterialMOQ.Season,MaterialMOQ.ProdMOQ,MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_Leadtime,MaterialMOQ.Location,SCZL.IsCGZLS,kfxxzl.DEVCODE,CGZL.MaterialETC,lbzls_vul.ywsm  ');
            if (checkbox3.Checked xor checkbox4.Checked)=true then
            begin
                sql.add('      having  ');
                if checkbox3.Checked=true then
                  sql.add('        isnull(sum(ZLZLS2.CLSL),0)<=isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0)+isnull(CGYGUSE.Qty,0) ');
                if checkbox4.Checked  then
                  sql.add('        isnull(sum(ZLZLS2.CLSL),0)>isnull(CGZL.CGQty,0)+isnull(CGKCUSE.Qty,0)+isnull(CGYGUSE.Qty,0) ');
                //20151203  add RKQty+UseQty
                if (checkbox6.Checked xor checkbox7.Checked)=true then
                begin
                  if checkbox6.Checked then
                    sql.add('    and   isnull(sum(ZLZLS2.CLSL),0)<=isnull(RKZL.RKQty,IsNull(HGINV.HGQty,0))+isnull(CGKCUSE.Qty,0)+isnull(CGYGUSE.Qty,0) ');
                  if checkbox7.Checked then
                    sql.add('    and   isnull(sum(ZLZLS2.CLSL),0)>isnull(RKZL.RKQty,IsNull(HGINV.HGQty,0))+isnull(CGKCUSE.Qty,0)+isnull(CGYGUSE.Qty,0) ');
                end;
            end else
            begin
                if (checkbox6.Checked xor checkbox7.Checked)=true then
                begin
                  sql.add('      having  ');
                  if checkbox6.Checked then
                    sql.add('         isnull(sum(ZLZLS2.CLSL),0)<=isnull(RKZL.RKQty,IsNull(HGINV.HGQty,0))+isnull(CGKCUSE.Qty,0)+isnull(CGYGUSE.Qty,0) ');
                  if checkbox7.Checked then
                    sql.add('         isnull(sum(ZLZLS2.CLSL),0)>isnull(RKZL.RKQty,IsNull(HGINV.HGQty,0))+isnull(CGKCUSE.Qty,0)+isnull(CGYGUSE.Qty,0) ');
                end;
            end;
            sql.add(') ZLZLS2   ');
            if (chkFlexCode.Checked) then
              sql.Add('left join clzl_flex with (nolock) on clzl_flex.cldh=ZLZLS2.CLBH and clzl_flex.cldh not like ''V%'' and clzl_flex.cldhflex<>''''');
            //sql.Add('left join CGZL_Color2 on CGZL_Color2.clbh = ZLZLS2.CLBH');
            if main.Edit2.Text='VA12' then
            begin
              sql.add('    left join(select CLZL.cldh,Max(case when (left(CLZL.cldh,1)<>''V'' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh ');
              sql.add('             when (left(CLZL_LS.JHDH,1)<>''V'' and cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH');
              sql.add('             when (cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH');
              sql.add('             else CLZL.cldh  end) ColorCLDH  ');
              sql.add('     From CLZL ');
              sql.add('     left join(select CLDH,JHDH from  CLZL_LS UNION ALL select JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=CLZL.cldh ');
              sql.add('     left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh');
              sql.add('     left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.CLBH=CLZL_LS.JHDH');
              sql.add('     group by CLZL.cldh');
              sql.add('     )ColorCLDH on ColorCLDH.CLDH=ZLZLS2.CLBH');
              sql.add('  left join cgzl_color2 on cgzl_color2.clbh=ColorCLDH.ColorCLDH');
            end;
            sql.add('where 1=1 ');
            if main.Edit2.Text='VA12' then
            begin
              if RadioGroup1.ItemIndex = 1 then
                sql.Add('and CGZL_Color2.ShippedDate = null')
              else if RadioGroup1.ItemIndex = 2 then
                sql.Add('and CGZL_Color2.ShippedDate <> null');
            end;
            if cbbMode.Text <> 'All' then
              sql.add(' and CGQty+ UseStock+ UseYG >CLSL');
            if SupplierEdit.Text<>'' then
              sql.add(' and ZLZLS2.zsywjc like ''%'+SupplierEdit.Text+'%'' ');
            if ((chkFlexCode.Checked=true) and (FlexID_Edit.Text<>'')) then
              sql.add(' and clzl_flex.cldhflex like '''+FlexID_Edit.Text+'%'' ');
        end;
        {Edit by BillWeng 2009/12/16 加入外箱
        //START }
        if ((checkbox1.Checked or checkbox2.Checked) and checkbox5.Checked) then sql.add('union all');
        if  checkbox5.Checked then
        begin
            if (chkFlexCode.Checked) then
            begin
              if main.Edit2.Text='VA12' then
              begin
                sql.add('Select ZLZLS2.*,clzl_flex.cldhflex as FlexID,CGZL_Color2.AWB,CGZL_Color2.ShippedDate,CGZL_Color2.A4Comfirm,CGZL_Color2.DateA4Comfirm,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime as ''Request ETD''  from ( ')
              end else
              begin
                sql.add('Select ZLZLS2.*,clzl_flex.cldhflex as FlexID,'''' as AWB,convert(datetime,''1900/01/01'') as ShippedDate,'''' as A4Comfirm,convert(datetime,''1900/01/01'') as DateA4Comfirm,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime as ''Request ETD''  from ( ')
              end;
            end else
            begin
              if main.Edit2.Text='VA12' then
              begin
                sql.add('Select ZLZLS2.*,'''' as FlexID,CGZL_Color2.AWB,CGZL_Color2.ShippedDate,CGZL_Color2.A4Comfirm,CGZL_Color2.DateA4Comfirm,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime as ''Request ETD'' from ( ');
              end else
              begin
                sql.add('Select ZLZLS2.*,'''' as FlexID,'''' as AWB,convert(datetime,''1900/01/01'') as ShippedDate,'''' as A4Comfirm,convert(datetime,''1900/01/01'') as DateA4Comfirm,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime ''Request ETD''  from ( ');
              end;
            end;
//            sql.add('Select ZLZLS2.*,CGZL_Color2.AWB,CGZL_Color2.ShippedDate,ZLZLS2.CGDate+ZLZLS2.ProdLeadTime as ''Request ETD'' from ( ');  //20150609 weston  修改BOX
            sql.add('select isnull(DDZL.BUYNO,0) as BUYNO,ddzl.DDBH as ZLBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH ,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs,');
            sql.add('        CLZL.CQDH,convert(decimal,sum(ywbzpo.cts)) as CGQty');
            sql.add(',0.0 as clsl,getdate() as YQDate,');
            sql.add('         getdate() as CFMDate,max(CGZL.CGDate) as CGDate,');
            sql.add('         max(CGZL.CGNO) as CGNO,0.0 as usestock,0.0 as UseYG,RKZL.RKNO,RKZL.RKDate,isnull(RKZL.RKQty,0) as RKQty,'''' as DOCNO,min(SCZLDate.ADate) as APlanDate,DDZL.ShipDate,');
            sql.add('           isnull(rkzl.USPrice,0) as USPrice,isnull(rkzl.VNPrice,0) as VNPrice   ');
            sql.Add('        ,convert(smalldatetime,ddzl.userdate,111) as indate');
            sql.Add('        ,convert(smalldatetime,ywbzpo.userdate,111) as cldate');
            sql.Add('        ,convert(smalldatetime,ddzl.ddrq,111) as orderdate');
            //加入日期差數 edit by billweng 2013/04/20
            sql.Add('    		 ,null as get2com');
            sql.Add('    		 ,null as com2cg');
            sql.Add('    		 ,null as cg2rk');
            sql.Add('    		 ,null as cgkpi');
            sql.add('       ,lbzls.ywsm,'''' as zsdh,'''' as zsywjc');//出貨國別 star 2014.2.27
            sql.add('       ,'''' as Season,0.0 as ProdMOQ,0 as ProdLeadTime,0 as Forecast_Leadtime,'''' as Location,'''' as PartName,kfxxzl.DEVCODE as SR,'''' as MaterialETC,lbzls_vul.ywsm as LYWSM  ');
            //edit end
            sql.add('from (select ddbh,CLBH,CTS,UserDate from ywbzpo union all select  ddbh,CLBH,CTS,UserDate from YWBZPOE )ywbzpo ');
            sql.add('left join ywdd on ywbzpo.ddbh = ywdd.ddbh');
            sql.add('left join '+CGZL+' on CGZL.CGNO=ywdd.CGNO ');
            sql.add('left join CLZL  with (nolock) on CLZL.CLDH=ywbzpo.CLBH ');
            sql.add('left join DDZl  with (nolock) on DDZl.DDBH=ywdd.ysbh ');
            sql.add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ywdd.ysbh');
            sql.add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
            sql.add('left join KFXXZL  with (nolock) on KFXXZL.XieXing=DDZLTW.XieXing and KFXXZL.SheHao=DDZLTW.SheHao');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('left join lbzls lbzls_vul on lbzls_vul.lbdh=XXZL.XieGN and lbzls_vul.lb=''03'' ');
            sql.add('left join SCZLDate on SCZLDate.ZLBH=ywbzpo.ddbh ');
            sql.add('left join clzl_flex on clzl.cldh=clzl_flex.cldh ');

            sql.add(' left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,');
            sql.add(' max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate,usprice,vnprice  ');
            sql.add(' from  '+KCRKS+' ');
            sql.add(' left join DDZL on DDZL.DDBH = KCRKS.CGBH');
            sql.add('left join '+KCRK+' on KCRK.RKNO=KCRKS.RKNO ');
            //20140301 weston 顯示國別修正
            sql.add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
            sql.add('where DDZL.GSBH='''+main.edit2.Text+''''); //在子查詢加入廠別搜尋 2014.1.24 star
            sql.add('and KCRK.SFL<>''THU HOI''');
            if (cyear.text > '0000') then
              sql.add('                 and  year(DDZL.Shipdate)='+cyear.Text);         //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);    //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.Text <> '' then
              sql.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like ''%'+edKHPO.Text+'%''');
            sql.add('           group by KCRKS.CGBH,KCRKS.CLBH,usprice,vnprice ) RKZL');
            sql.add('                 on RKZL.ZLBH=ywbzpo.ddbh and RKZL.CLBH=ywbzpo.CLBH ');
            sql.add(' left join (select  ywbzpo.ddbh as ZLBH,ywbzpo.CLBH as clbh');
            sql.add(' from  (select ddbh,CLBH,CTS,UserDate from ywbzpo union all select  ddbh,CLBH,CTS,UserDate from YWBZPOE )ywbzpo  ');
            sql.add(' left join DDZL on DDZL.DDBH = YWBZPO.DDBH');
            sql.Add(' where DDZL.GSBH='''+main.edit2.Text+''''); //在子查詢加入廠別搜尋 2014.1.24 star
            if (cyear.text > '0000') then
              sql.add('                 and year(DDZL.Shipdate)='+cyear.Text);          //在子查詢加入日期搜尋 2014.1.24 star
            if cmonth.ItemIndex > 0 then
              sql.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
            if edit1.Text <> '' then
              sql.add('                 and ywbzpo.CLBH like '''+edit1.Text+'%''');
            if DDBHEdit.Text <> '' then
              sql.add('                 and ddzl.ddbh '+DDBHEditSubSQL);
            if edKHPO.Text <> '' then
              sql.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
            sql.add('           group by ywbzpo.ddbh,ywbzpo.CLBH ) zlzls2');
            sql.add('                 on ywbzpo.ddbh=ZLZLS2.ZLBH and ywbzpo.CLBH=ZLZLS2.CLBH ');
            sql.add('       where IsNull(DDZL.GSBH,'''+main.edit2.Text+''')='+''''+main.edit2.Text+'''');
            //edit by BillWeng 加入交貨期查調條件 2009/12/17
            if (cyear.text > '0000') then
               sql.add('      and year(DDZLTW.Shipdate)='+''''+cyear.Text+'''');  //出貨年
            if cmonth.ItemIndex > 0 then
               sql.add('      and month(DDZLTW.Shipdate)='+''''+cmonth.text+'''');  //出貨月
            if DDBHEdit.text <> '' then
              sql.add('       and ddzl.ddbh '+DDBHEditSubSQL);
            if edit2.Text <> '' then
              sql.add('       and CLZL.YWPM like '''+'%'+edit2.Text+'%''');
            if edit6.Text <> '' then
              sql.add('       and XXZl.XieMing like '''+'%'+edit6.text+'%''');
            {if edit3.Text <> '' then
              sql.add('       and XXZL.Article like '''+edit3.text+'%''');  }
            if edit3.Text <> '' then
            begin
              sql.Add('       and (');
              for i := 0 to ListSKU.Count - 1 do
              begin
              if i > 0 then
                sql.Add('           or');
                sql.Add('           XXZL.Article like ''' + ListSKU[i] + '%''');
              end;
              sql.Add('       )');
            end;

            if edKHPO.Text <> '' then
              sql.add('       and DDZLTW.KHPO like ''%'+edKHPO.Text+'%''');
            if edit8.Text <> '' then
              sql.add('       and DDZL.BuyNO like '''+edit8.Text+'%'''); //20140102 增加BuyNO 欄位查詢
            if edDDGB.text <> '' then
              sql.add('      and lbzls.ywsm like ''%'+edDDGB.Text+'%''');
            if CancelCK.Checked=false then
              sql.add('      and DDZLTW.DDZT<>''C'' ');
           //end edit

            sql.add(' group by DDZL.BUYNO,ddzl.DDBH,DDZLTW.DDZT,DDZL.KHPO,ywbzpo.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,XXZL.Article,XXZL.XieMing,');
            sql.add(' DDZL.Pairs,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate,');
            sql.add(' rkzl.USPrice,rkzl.VNPrice,ddzl.userdate,ddzl.ddrq,ywbzpo.userdate,lbzls.ywsm,cldhflex,kfxxzl.DEVCODE,lbzls_vul.ywsm ');
            sql.add(') ZLZLS2  '); //20150609 weston  修改BOX
            if (chkFlexCode.Checked) then
              sql.Add('left join clzl_flex with (nolock) on clzl_flex.cldh=ZLZLS2.CLBH and clzl_flex.cldh not like ''V%'' and clzl_flex.cldhflex<>''''');
            //sql.Add('left join CGZL_Color2 on CGZL_Color2.clbh = ZLZLS2.CLBH');     
            //優先選擇正式料號 如沒有資料則使用臨時料號  SEAN 20240228
            if main.Edit2.Text='VA12' then
            begin
              sql.add('    left join(select CLZL.cldh,Max(case when (left(CLZL.cldh,1)<>''V'' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh ');
              sql.add('             when (left(CLZL_LS.JHDH,1)<>''V'' and cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH');
              sql.add('             when (cgzl_color2_TEMP.CLBH  IS NOT NULL) THEN CLZL_LS.JHDH');
              sql.add('             else CLZL.cldh  end) ColorCLDH  ');
              sql.add('     From CLZL ');
              sql.add('     left join(select CLDH,JHDH from  CLZL_LS UNION ALL select JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=CLZL.cldh ');
              sql.add('     left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh');
              sql.add('     left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.CLBH=CLZL_LS.JHDH');
              sql.add('     group by CLZL.cldh');
              sql.add('     )ColorCLDH on ColorCLDH.CLDH=ZLZLS2.CLBH');
              sql.add('  left join cgzl_color2 on cgzl_color2.clbh=ColorCLDH.ColorCLDH');
            end;

            sql.add('where 1=1  ');
            if ((edit1.Text <> '') and (UpperCase(Copy(edit1.Text,1,1))='U')) then
              sql.add(' and ZLZLS2.CLBH like '''+edit1.Text+'%''');
            if cbbMode.Text <> 'All' then
              sql.add(' and CGQty+ UseStock+ UseYG >CLSL');
            if ((chkFlexCode.Checked=true) and (FlexID_Edit.Text<>'')) then
              sql.add(' and clzl_flex.cldhflex like '''+FlexID_Edit.Text+'%'' ');
          end;
        // End of edit   }
        sql.add('order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH ');
        ListSKU.Free;
        assignfile(ff,'sql.txt');
        rewrite(ff);
        writeln(ff,sql.text);
        closefile(ff);
        //showmessage(SQL.Text);
        active:=true;
      end;
      if CB5.Checked then
      begin
        while not query2.eof do
        begin
            query2.cachedupdates:=true;
            query2.requestlive:=true;
            if ((not query2.FieldByName('CGDate').IsNull) or (query2.FieldByName('CLBH').AsString='ZZZZZZZZZZ')) then   //CLBH=ZZZZZZZZZZ 加工項目
            begin
              if ( (not query2.FieldByName('USPrice').IsNull) and ( query2.FieldByName('USPrice').value<>0) ) then
              begin
                 query2.Edit;
                 if edit7.text<>'' then
                 query2.FieldByName('VNPrice').Value:=query2.FieldByName('USPrice').Value* strtoint(edit7.Text) ;
                 query2.Post;
              end;
              if ( (not query2.FieldByName('VNPrice').IsNull) and (query2.FieldByName('VNPrice').value<>0) ) then
              begin
                 query2.Edit;
                 if edit7.text<>'' then
                 query2.FieldByName('USPrice').Value:=query2.FieldByName('VNPrice').Value/strtoint(edit7.Text);
                 query2.Post;
              end;
            end;
            query2.Next;
        end;
        query2.first;
      end else
      begin
        query2.cachedupdates:=false;
        query2.requestlive:=false;
      end;
end;

procedure TPurtrace.Purchase_CancelMaterial();
var DDZL_SubSQL:string;
    CGZL,CGZLS,CGZLSS,KCRK,KCRKS,ZLZLS2:string;
    DDBHEditSubSQL,LT_SubSQL:String;
begin
  DDBHEditSubSQL:=GetMutiDDBHSubSQL(DDBHEdit.Text);
  //20150826 修改SQL
  DDZL_SubSQL:='';
  if Edit8.Text<>'' then
     DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.BUYNO like '''+Edit8.Text+'%'' ';
  if DDBHEdit.Text<>'' then
     DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.DDBH '+DDBHEditSubSQL;
  if cyear.ItemIndex > 0 then
     DDZL_SubSQL:=DDZL_SubSQL+'and year(DDZL.Shipdate)='''+cyear.Text+''' ';  //出貨年
  if cmonth.ItemIndex > 0 then
     DDZL_SubSQL:=DDZL_SubSQL+'  and month(DDZL.Shipdate)='''+cmonth.text+''' ';  //出貨月
  //歷史資料
  if HistoryCB.Checked=true then
  begin
    CGZL:='(select * from CGZL union all select * from CGZL_2014 ) CGZL ';
    CGZLS:='(select * from CGZLS union all select * from CGZlS_2014 ) CGZlS ';                    
    CGZLSS:='(select * from CGZLSS union all select * from CGZlSS_2014 ) CGZlSS ';
    KCRK:='(select * from KCRK union all select * from KCRK_2014 ) KCRK ';
    KCRKS:='(select * from KCRKS union all select * from KCRKS_2014 ) KCRKS ';
    ZLZLS2:='(select * from ZLZLS2 union all select * from ZLZLS2_2014 ) ZLZLS2 ';
  end else
  begin
    CGZL:=' CGZL with (nolock) ';
    CGZLS:='CGZLS with (nolock) ';
    CGZLSS:='CGZLSS with (nolock) ';
    KCRK:='KCRK with (nolock) ';
    KCRKS:='KCRKS with (nolock) ';
    ZLZLS2:='ZLZLS2 with (nolock) ';
  end;
 if SeasonEdit.Text<>'' then LT_SubSQL:='case when Season='''+SeasonEdit.Text+''' then 0 else 1 end,';
  with Query5 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select CGZLSS.*,RKZL.RKQty,RKZL.RKNO,RKZL.usprice,RKZL.vnprice,RKZL.RKDate from (');
    SQL.Add('select isnull(DDZL.BUYNO,DDZLTW.BUYNO) as BUYNO,DDZLTW.KHPO,CGZLSS.ZLBH,XXZL.Article,XXZL.XieMing,DDZLTW.Pairs,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,Max(CGZLSS.CLSL) as CLSL ');
    SQL.Add('       ,Sum(CGZLSS.Qty) as CGQty,Max(CGZL.CGDate) as CGDate,Max(CGZLS.YQDate) as YQDate,');
    SQL.Add('       Max(CGZL.CGNO) as CGNO,Max(ZSZL.ZSJC) as ZSJC,Max(CGZL.ZSBH) as ZSBH,Max(CGZLSS.USERID) as UserID,Max(CGZLSS.USERDATE) as UserDate,CLZL.ZWPM,DDZLTW.ShipDate,DDZLTW.DDZT,');
    SQL.Add('       KFXXZL.DEVCODE as SR,MAX(CGZLSS.CFMDate) as CFMDate,Max(CGZLS.YQDate)+MaterialMOQ.ProdLeadTime as ''Request ETD'' from '+CGZLSS);
    SQL.Add('Left join '+CGZL+' on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('Left join '+CGZLS+' on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('Left join DDZLTW on DDZLTW.DDBH=CGZLSS.ZLBH');
    SQL.Add('Left join DDZL on DDZL.DDBH=CGZLSS.ZLBH');
    SQL.Add('Left join XXZL on XXZL.XieXIng=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
    SQL.Add('Left join KFXXZL on KFXXZL.XieXIng=DDZLTW.XieXing and KFXXZL.SheHao=DDZLTW.SheHao');
    SQL.Add('Left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    SQL.Add('Left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH');

    //20200406 MOQ & LeadTime
    SQL.Add('left join (');
    SQL.Add('		   Select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location from (');
    SQL.Add('		   Select A.Season,A.CLBH,A.ProdMOQ,A.ProdLeadTime,A.Forecast_Leadtime,A.Location from (');
    SQL.Add('			   select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY '+LT_SubSQL+'Substring(Season,1,2) DESC,USERDATE desc) ');
    SQL.Add('			   as  rn from ');
    SQL.Add('			  (');
    SQL.Add('			  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,MaterialMOQ.USERDATE ');
    SQL.Add('			  from MaterialMOQ with (nolock)');
    SQL.Add('			  left join CLZL_LS with (nolock) on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ) MaterialMOQ');
    SQL.Add('			  where 1=1');
    SQL.Add('		   ) A where A.rn=1 and A.CLBH in (select distinct CLBH from ZLZLS2,DDZL where DDZL.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.edit2.Text+''' and DDZL.BUYNO like '''+edit8.Text+'%'' ');
    if DDBHEdit.text <> '' then
      SQL.add('                                       and ZLZLS2.ZLBH '+DDBHEditSubSQL);
    SQL.Add('                                      and ZLZLS2.CLBH not like ''W%'' and ZLZLS2.CLBH like '''+edit1.Text+'%'' and ZLZLS2.CLSL<>0 and ZLZLS2.ZMLB=''N'') ');
    SQL.Add('    ) MatMOQ');
    SQL.Add('		) MaterialMOQ on MaterialMOQ.CLBH=CGZLSS.CLBH ');

    sql.Add('where CGZL.CGLX in (''1'',''2'') and CGZLSS.Qty>0 and CGZL.GSBH ='''+main.edit2.text+'''');
    if edit1.Text <> '' then
      sql.Add('      and CGZLSS.CLBH like '''+edit1.Text+'%''');
    if edit2.Text <> '' then
      sql.Add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
      sql.add('      and XXZL.Article like '+''''+edit3.text+'%'+'''');
    if DDBHEdit.Text <> '' then
      sql.add('      and CGZLSS.ZLBH '+DDBHEditSubSQL);
    if edit6.Text <> '' then
      sql.add('      and XXZl.XieMing like '+''''+'%'+edit6.text+'%'+'''');
    if edit8.Text <> '' then
      sql.Add('      and isnull(DDZL.BUYNO,DDZLTW.BUYNO)  like '''+Edit8.Text+'%''');
    if (cyear.text > '0000') then
      sql.add('      and year(DDZLTW.Shipdate)='+cyear.Text);
    if cmonth.ItemIndex > 0 then
      sql.add('      and month(DDZLTW.Shipdate)='+cmonth.Text);
    if edKHPO.text <> '' then
      sql.add('      and DDZLTW.KHPO like '''+edKHPO.Text+'%''');
    SQL.Add('      and ((not exists (select ZLBH from ZLZLS2 where  ZLZLS2.ZMLB=''N'' and ZLZLS2.CLSL<>0 and ZLZLS2.ZLBH=CGZLSS.ZLBH and ZLZLS2.CLBH=CGZLSS.CLBH)) ');
    SQL.Add('      or (not exists (select DDBH from DDZL where DDZL.DDBH=CGZLSS.ZLBH)) )');
    SQL.Add('group by isnull(DDZL.BUYNO,DDZLTW.BUYNO) ,DDZLTW.KHPO,CGZLSS.ZLBH,XXZL.Article,XXZL.XieMing,DDZLTW.Pairs,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,DDZLTW.ShipDate,DDZLTW.DDZT,KFXXZL.DEVCODE,CGZLSS.CFMDate,MaterialMOQ.ProdLeadTime ');
    SQL.add(') CGZLSS');
     //加載入庫相關的數量及日期等數據
    SQL.add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    SQL.add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    SQL.add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
    SQL.add('           from  '+KCRKS+' ');
    SQL.add('           inner join DDZLTW DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
    SQL.add('           left join '+KCRK+' on KCRK.RKNO=KCRKS.RKNO ');
    SQL.add('           where 1=1 ');     //在子查詢加入廠別搜尋 2014.1.24 star
    if (cyear.text > '0000') then
      SQL.add('                 and year(DDZL.Shipdate)='+cyear.Text);    //在子查詢加入日期搜尋 2014.1.24 star
    if cmonth.ItemIndex > 0 then
      SQL.add('                 and month(DDZL.Shipdate)='+cmonth.Text);     //在子查詢加入日期搜尋 2014.1.24 star
    if edit1.Text <> '' then
      SQL.add('                 and KCRKS.CLBH like '''+edit1.Text+'%''');
    if DDBHEdit.text <> '' then
      SQL.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
    if edKHPO.Text <> '' then
      SQL.add('                 and DDZL.KHPO like '''+edKHPO.Text+'%''');
    SQL.add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    SQL.Add('                 on RKZL.ZLBH=CGZLSS.ZLBH and RKZL.CLBH=CGZLSS.CLBH ');
    SQL.Add('where 1=1 ');
    if (checkbox3.Checked xor checkbox4.Checked)=true then
    begin
        if checkbox3.Checked=true then
          sql.add('    and    isnull(CGZLSS.CLSL,0)<=isnull(CGZLSS.CGQty,0) ');
        if checkbox4.Checked  then
          sql.add('    and    isnull(CGZLSS.CLSL,0)>isnull(CGZLSS.CGQty,0) ');
        //20151203  add RKQty+UseQty
        if (checkbox6.Checked xor checkbox7.Checked)=true then
        begin
          if checkbox6.Checked then
            sql.add('    and   isnull(CGZLSS.CLSL,0)<=isnull(RKZL.RKQty,0) ');
          if checkbox7.Checked then
            sql.add('    and   isnull(CGZLSS.CLSL,0)>isnull(RKZL.RKQty,0) ');
        end;                                                                                      
    end else
    begin
        if (checkbox6.Checked xor checkbox7.Checked)=true then
        begin
          if checkbox6.Checked then
            sql.add('    and     isnull(CGZLSS.CLSL,0)<=isnull(RKZL.RKQty,0) ');
          if checkbox7.Checked then
            sql.add('    and     isnull(CGZLSS.CLSL,0)>isnull(RKZL.RKQty,0) ');
        end;
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TPurtrace.Button1Click(Sender: TObject);
var ff:textfile;
    InputIsOk:boolean;
begin
  if ((not checkbox1.Checked) and (not checkbox2.Checked) and (not checkbox5.Checked) ) then
  begin
      showmessage('Pls select TW / VN material first.') ;
      abort;
  end;
  if ((not checkbox3.Checked) and (not checkbox4.Checked) ) then
  begin
      showmessage('Pls select material purchased ok or not.') ;
      abort;
  end;


   //廠區因為訂單比較多訂單必須輸入5碼 或 3碼訂單+1碼材料 或6碼BuyNo+1碼材料
   InputIsOk:=false;
   if length(DDBHEdit.Text)>=5 then InputIsOk:=true;
   if ((length(DDBHEdit.Text)>=3) and (length(edit1.Text)>=1)) then InputIsOk:=true;
   if ((length(Edit8.Text)>=4) and (length(edit1.Text)>=1)) then InputIsOk:=true;
   if ((length(Edit8.Text)>=4) and (length(edit3.Text)>=1)) then InputIsOk:=true;
   if length(Edit8.Text)>=4 then InputIsOk:=true;  //先暫時可以查一整年
   if InputIsOk=false then
   begin
     Showmessage('Input OrderNo(5) '+#13#10+'Input OrderNo(3) and MatNo(1)'+#13#10+'Input BuyNo(4) and MatNo(1)'+#13#10+'Input BuyNo(4) and SKU(1)');
     abort;
   end;

  //20150609 檢查Check
  if CheckBox5.Checked=true then
  begin
     if trim(DDBHEdit.Text)='' then
     begin
       Showmessage('Show Box,Pls input OrderNo!');
       abort;
     end;
  end;
  //原本沒有RSL資訊DBGrid顯示
  if PurchasePage.ActivePageIndex=0 then
  begin
    Purchase_Default();
  end
  else if PurchasePage.ActivePageIndex=1 then
  begin
    Purchase_DefaultVer1();
  end
  else if PurchasePage.ActivePageIndex=3 then
  begin
    Purchase_CancelMaterial();
  end;
  InitTitleClick(true);//開啟TitelBtn click
end;

procedure TPurtrace.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;                                        
  State: TGridDrawState);
begin

  if Query1.FieldByName('CLSL').value=Query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value then
  begin
    dbgrideh1.canvas.font.color:=clBlue;
  end;
  if (((query1.FieldByName('CGQty').value>0) or (Query1.FieldByName('UseStock').value>0))
                    and (query1.FieldByName('CLSL').value>(query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value))) then
  begin
    if ((Query1.FieldByName('CGQty').value<>0) or (Query1.FieldByName('UseStock').value<>0)) then
    begin
      dbgrideh1.canvas.font.color:=clred;
    end;
  end;
  if Query1.FieldByName('CLSL').value<Query1.FieldByName('CGQty').value+Query1.FieldByName('UseStock').value then
  begin
    dbgrideh1.canvas.font.color:=clgreen;
  end;

end;



procedure TPurtrace.Button3Click(Sender: TObject);
begin
  printdbgrideh1.Preview;
end;

procedure TPurtrace.Query1AfterOpen(DataSet: TDataSet);
begin
    if query1.recordcount>0 then
      begin
        DBGrideh1.Columns[7].buttonstyle:=cbsellipsis;
        DBGrideh1.Columns[8].buttonstyle:=cbsellipsis;
        DBGrideh1.Columns[9].buttonstyle:=cbsellipsis;
      end
      else
        begin
          DBGrideh1.Columns[7].buttonstyle:=cbsnone;
          DBGrideh1.Columns[8].buttonstyle:=cbsnone;
          DBGrideh1.Columns[9].buttonstyle:=cbsnone;
        end;
end;
//201405605 台灣採購資料
procedure TPurtrace.TWPurcahseDetailSQL(Query:TQuery);
begin

  with Query  do
  begin
    if (OrderType.ItemIndex=1) then
    begin
     sql.Add('      and CGHZZLS.cghzbh like ''LB%'''); //20140502區別正單和補單
    end else if (OrderType.ItemIndex=2) then
    begin
     sql.Add('      and CGHZZLS.cghzbh like ''RB%''');
    end;
  end;

end;

procedure TPurtrace.DBGridEh1EditButtonClick(Sender: TObject);
begin
Purtrace_Det:=TPurtrace_Det.create(self);
Purtrace_Det.Query1.Active:=false;
Purtrace_Det.Query1.DataSource:=DS1;
if dbgrideh1.selectedfield.fieldname='CGQty' then
  begin
    with Purtrace_Det.Query1 do
      begin
        active:=false;
        sql.Clear;  
        sql.add('select CGHZZLS.dgdh as CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) as CGQty');
        sql.add('from CGHZZLS with (nolock)');
        //20140318 weston更改增加and CGHZZLS.Size=CGHZZLSS.Size
        sql.add('           left join   CGHZZLSS with (nolock)  on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.DGDH=CGHZZLSS.DGDH  and CGHZZLS.Size=CGHZZLSS.Size ');
        //end edit
        sql.add('left join ZSZL on ZSZL.ZSDH=CGHZZLSS.ZSBH ');
        sql.add('where CGHZZLS.CLBH=:CLBH');
        sql.add('      and CGHZZLS.dg_Qty<>0');
        sql.add('      and CGHZZLS.ZLBH=:ZLBH');
        //20140502顯示正單或補單
        TWPurcahseDetailSQL(Purtrace_Det.Query1);
        sql.add('group by CGHZZLS.dgdh,ZSZL.ZSJC,ZSZL.ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH');
        sql.add('union all'); 
        sql.add('select CGZLSS.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty   ');
        sql.add('from CGZLSS  with (nolock)');
        sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
        sql.add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
        sql.add('where CGZLSS.CLBH=:CLBH ');
        sql.add('      and CGZLSS.Qty <>0');
        sql.add('      and CGZLSS.ZLBH=:ZLBH');
        sql.add('group by CGZLSS.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH ');
        if HistoryCB.Checked then
        begin
        sql.add('union all');
        sql.add('select CGZLSS_2014.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS_2014.ZLBH,CGZLSS_2014.CLBH,sum(CGZLSS_2014.Qty) as CGQty   ');
        sql.add('from CGZLSS_2014  with (nolock)');
        sql.add('left join CGZL_2014 on CGZL_2014.CGNO=CGZLSS_2014.CGNO ');
        sql.add('left join ZSZL on ZSZL.ZSDH=CGZL_2014.ZSBH ');
        sql.add('where CGZLSS_2014.CLBH=:CLBH ');
        sql.add('      and CGZLSS_2014.Qty <>0');
        sql.add('      and CGZLSS_2014.ZLBH=:ZLBH');
        sql.add('group by CGZLSS_2014.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS_2014.ZLBH,CGZLSS_2014.CLBH ');
        end;
        sql.add('order by CGZLSS.CGNO');
        //memo1.Text:=sql.Text;
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=100;
        Purtrace_Det.DBGrideh1.columns[1].width:=100;
        Purtrace_Det.DBGrideh1.columns[2].width:=80;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
        Purtrace_Det.DBGrideh1.columns[4].width:=80;
        Purtrace_Det.DBGrideh1.columns[5].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[5].width:=60;
      end;
  end;
       
if dbgrideh1.selectedfield.fieldname='RKQty' then
  begin
    with Purtrace_Det.Query1 do
      begin
        active:=false;
        sql.Clear;   
        sql.add('SELECT convert(smalldatetime,HGZL.CON_Date) as USERDate,HGZL.CON_NO as RKNO,EXZLSS.ZLBH,EXZLSS.CLDH as CLBH');
        sql.add('       , sum(EXZLSS.CK_Qty) as RKQty,HGZL.lbdh07 as Way');
        sql.add('FROM EXZLSS');
        sql.add('left join HGZLS on HGZLS.CLBH=EXZLSS.EXNO+EXZLSS.XH ');
        sql.add('left join HGZL on HGZL.CON_NO=HGZLS.CON_NO ');
        sql.Add('left join CGHZZLS on CGHZZLS.dgdh=EXZLSS.dgdh and CGHZZLS.clbh   = EXZLSS.cldh  AND CGHZZLS.ZLBH   = EXZLSS.ZLBH  and CGHZZLS.size=EXZLSS.size ');
        sql.add('where EXZLSS.CLDH =:CLBH');
        sql.add('      and EXZLSS.ZLBH=:ZLBH ');
        sql.add('      and EXZLSS.CK_Qty<>0');
        //20140502顯示正單或補單
        TWPurcahseDetailSQL(Purtrace_Det.Query1);
        sql.add('group by HGZL.CON_Date,HGZL.CON_NO ,EXZLSS.ZLBH,EXZLSS.CLDH,HGZL.lbdh07');
        sql.add('union all');  
        sql.add('select KCRK.USERDate,KCRKS.RKNO,KCRKS.CGBH as ZLBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty,'+''''+'VN'+''''+' as Way ');
        sql.add('from KCRKS  with (nolock)');
        sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        sql.add('where KCRKS.CLBH=:CLBH ');
        sql.add('      and KCRKS.CGBH=:ZLBH ');
        sql.add('      and KCRKS.Qty<>0');
        sql.add('group by KCRK.USERDate,KCRKS.RKNO,KCRKS.CGBH ,KCRKS.CLBH ');
        sql.add('order by KCRK.USERDate,KCRKS.RKNO');
        //memo1.Text:=sql.Text;
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=80;
        Purtrace_Det.DBGrideh1.columns[0].displayformat:='yyyy/MM/dd';
        Purtrace_Det.DBGrideh1.columns[1].width:=80;
        Purtrace_Det.DBGrideh1.columns[2].width:=80;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
        Purtrace_Det.DBGrideh1.columns[4].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[4].width:=60;   
        Purtrace_Det.DBGrideh1.columns[5].width:=40;
      end;
  end; 
if dbgrideh1.selectedfield.fieldname='UseStock' then
  begin
    with Purtrace_Det.Query1  do
      begin
        active:=false;
        sql.Clear;   
        sql.add('select CGKCUSE.ZLBH,CGKCUSE.CLBH,CGKCUSE.Qty as KCUseQty,CGKCUSE.CLBHYS ');
        sql.add('from CGKCUSE  ');
        sql.add('where  CGKCUSE.CLBH=:CLBH');
        sql.add('       and CGKCUSE.ZLBH=:ZLBH ');
        sql.add('order by ZLBH,CLBH');
        active:=true;
        Purtrace_Det.DBGrideh1.columns[0].width:=80;
        Purtrace_Det.DBGrideh1.columns[1].width:=80;
        Purtrace_Det.DBGrideh1.columns[2].displayformat:='##,#0.0';
        Purtrace_Det.DBGrideh1.columns[2].width:=60;
        Purtrace_Det.DBGrideh1.columns[3].width:=80;
      end;
  end;

Purtrace_Det.show;
end;

procedure TPurtrace.Query1CalcFields(DataSet: TDataSet);
begin
  if CB5.Checked then
  begin
    with query1 do
      begin
        fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CGQty').Value;
        fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CGQty').Value;
      end;
  end;
end;

procedure TPurtrace.CheckBox5Click(Sender: TObject);
begin
   if checkbox5.Checked then
      begin
      checkbox1.checked:=false;
      checkbox2.Checked:=false;
      end;
end;

procedure TPurtrace.CheckBox2Click(Sender: TObject);
begin
   if checkbox2.Checked then
      checkbox5.Checked:=false;
end;

procedure TPurtrace.CheckBox1Click(Sender: TObject);
begin
   if checkbox1.Checked then
      checkbox5.Checked:=false;
end;

procedure TPurtrace.Button4Click(Sender: TObject);
begin
  showmessage('如果查不到資料，請檢查'+chr(13)+'1.採區是不是沒有異動，選擇TW再查一次'+chr(13)+'2.在BOM模組中的N32 VN BOM中的BOM，對應的DEF欄位是否設定為G  ');

end;
//DBGridEh 抬頭排序開啟和關閉
procedure TPurtrace.InitTitleClick(IsOpen:boolean);
var i:integer;
begin

  if IsOpen=false then
  begin
    for i:=0 to DBGridEh1.Columns.Count-1 do
      DBGridEh1.Columns[i].Title.TitleButton:=false;
    for i:=0 to DBGridEh2.Columns.Count-1 do
      DBGridEh2.Columns[i].Title.TitleButton:=false;
  end else
  begin
    if ((Query1.Active=true) and (DBGridEh1.Columns[0].Title.TitleButton=false))then
      for i:=0 to DBGridEh1.Columns.Count-1 do
        DBGridEh1.Columns[i].Title.TitleButton:=true;
    if ((Query2.Active=true) and (DBGridEh2.Columns[0].Title.TitleButton=false))then
      for i:=0 to DBGridEh2.Columns.Count-3 do
        DBGridEh2.Columns[i].Title.TitleButton:=true;
  end;
end;
procedure TPurtrace.FormCreate(Sender: TObject);
begin
  ReadIni();
  InitTitleClick(false);
  PurchasePage.TabIndex:=1;
end;

procedure TPurtrace.PurchasePageChange(Sender: TObject);
begin
  if ((PurchasePage.ActivePageIndex=0) or (PurchasePage.ActivePageIndex=1) or (PurchasePage.ActivePageIndex=3) ) then
  begin
    Panel1.Visible:=true;
    Panel2.Visible:=false;
  end else if PurchasePage.ActivePageIndex=2 then
  begin
    Panel1.Visible:=false;
    Panel2.Visible:=true;
  end;
end;

procedure TPurtrace.Query2AfterOpen(DataSet: TDataSet);
begin
  if query2.recordcount>0 then
  begin
    DBGrideh2.Columns[7].buttonstyle:=cbsellipsis;
    DBGrideh2.Columns[8].buttonstyle:=cbsellipsis;
    DBGrideh2.Columns[9].buttonstyle:=cbsellipsis;
  end
  else
    begin
      DBGrideh2.Columns[7].buttonstyle:=cbsnone;
      DBGrideh2.Columns[8].buttonstyle:=cbsnone;
      DBGrideh2.Columns[9].buttonstyle:=cbsnone;
    end;
end;

procedure TPurtrace.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query2.FieldByName('DDZT').AsString='C' then
  begin
    dbgrideh2.Canvas.Brush.Color:=clBtnFace;
    dbgrideh2.defaultdrawcolumncell(rect,datacol,column,state);

  end;
end;

procedure TPurtrace.DBGridEh2EditButtonClick(Sender: TObject);
begin

  if ((dbgrideh2.selectedfield.fieldname='CGQty') or (dbgrideh2.selectedfield.fieldname='RKQty') or (dbgrideh2.selectedfield.fieldname='UseStock') or (dbgrideh2.selectedfield.fieldname='UseYG')  ) then
  begin

    Purtrace_Det:=TPurtrace_Det.create(self);
    Purtrace_Det.Query1.Active:=false;
    Purtrace_Det.Query1.DataSource:=DS2;
    if dbgrideh2.selectedfield.fieldname='CGQty' then
    begin
      with Purtrace_Det.Query1 do
      begin
          active:=false;
          sql.Clear;
          sql.add('select CGHZZLS.dgdh as CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH,sum(CGHZZLS.dg_Qty) as CGQty');
          sql.add('from CGHZZLS with (nolock)');
          //20140318 weston更改增加and CGHZZLS.Size=CGHZZLSS.Size
          sql.add('           left join   CGHZZLSS with (nolock)  on CGHZZLS.CGHZBH=CGHZZLSS.CGHZBH and CGHZZLS.CLBH=CGHZZLSS.CLBH and CGHZZLS.DGDH=CGHZZLSS.DGDH  and CGHZZLS.Size=CGHZZLSS.Size ');
          //end edit
          sql.add('left join ZSZL on ZSZL.ZSDH=CGHZZLSS.ZSBH ');
          sql.add('where CGHZZLS.CLBH=:CLBH');
          sql.add('      and CGHZZLS.dg_Qty<>0');
          sql.add('      and CGHZZLS.ZLBH=:ZLBH');
          //20140502顯示正單或補單
          TWPurcahseDetailSQL(Purtrace_Det.Query1);
          sql.add('group by CGHZZLS.dgdh,ZSZL.ZSJC,ZSZL.ZSYWJC,CGHZZLS.ZLBH,CGHZZLS.CLBH');
          sql.add('union all');
          sql.add('select CGZLSS.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty   ');
          sql.add('from CGZLSS  with (nolock)');
          sql.add('left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
          sql.add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH ');
          sql.add('where CGZLSS.CLBH=:CLBH ');
          sql.add('      and CGZLSS.Qty <>0');
          sql.add('      and CGZLSS.ZLBH=:ZLBH');
          sql.add('group by CGZLSS.CGNO,ZSZL.ZSJC,ZSZL.ZSYWJC,CGZLSS.ZLBH,CGZLSS.CLBH ');
          // memo1.Text:=sql.Text;
          active:=true;
          Purtrace_Det.DBGrideh1.columns[0].width:=100;
          Purtrace_Det.DBGrideh1.columns[1].width:=100;
          Purtrace_Det.DBGrideh1.columns[2].width:=80;
          Purtrace_Det.DBGrideh1.columns[3].width:=80;
          Purtrace_Det.DBGrideh1.columns[4].width:=80;
          Purtrace_Det.DBGrideh1.columns[5].displayformat:='##,#0.0';
          Purtrace_Det.DBGrideh1.columns[5].width:=60;
      end;
    end;
    if dbgrideh2.selectedfield.fieldname='RKQty' then
    begin
      with Purtrace_Det.Query1 do
      begin
          active:=false;
          sql.Clear;   
          sql.Add('select HG_INV.USERDate,HG_INV.HGRK as RKNO,HG_INV.DOCNO,HG_INVS.CGBH as ZLBH,HG_INVS.CLBH,sum(HG_INVS.Qty) as RKQty,''VN'' as Way');
          sql.Add('from HG_INVS  with (nolock)');
          sql.Add('left join HG_INV on HG_INV.RKNO=HG_INVS.RKNO');
          sql.Add('where HG_INVS.CLBH=:CLBH');
          sql.Add('and HG_INVS.CGBH=:ZLBH');
          sql.Add('and HG_INVS.Qty<>0');
          sql.Add('and HG_INV.HGRK is null');
         // TWPurcahseDetailSQL(Purtrace_Det.Query1);
          sql.add('group by HG_INV.USERDate,HG_INV.HGRK,HG_INV.DOCNO,HG_INVS.CGBH ,HG_INVS.CLBH');
          sql.add('union all');
          sql.add('select KCRK.USERDate,KCRKS.RKNO,KCRK.DOCNO,KCRKS.CGBH as ZLBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty,'+''''+'VN'+''''+' as Way ');
          sql.add('from KCRKS  with (nolock)');
          sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
          sql.add('where KCRKS.CLBH=:CLBH ');
          sql.add('      and KCRKS.CGBH=:ZLBH ');
          sql.add('      and KCRKS.Qty<>0');
          sql.add('group by KCRK.USERDate,KCRKS.RKNO,KCRK.DOCNO,KCRKS.CGBH ,KCRKS.CLBH ');

          active:=true;
          Purtrace_Det.DBGrideh1.columns[0].width:=80;
          Purtrace_Det.DBGrideh1.columns[0].displayformat:='yyyy/MM/dd';
          Purtrace_Det.DBGrideh1.columns[1].width:=80;
          Purtrace_Det.DBGrideh1.columns[2].width:=80;
          Purtrace_Det.DBGrideh1.columns[3].width:=80;
          Purtrace_Det.DBGrideh1.columns[4].width:=80;
          Purtrace_Det.DBGrideh1.columns[5].displayformat:='##,#0.0';
          Purtrace_Det.DBGrideh1.columns[5].width:=60;
          Purtrace_Det.DBGrideh1.columns[6].width:=40;
      end;
    end;
    if dbgrideh2.selectedfield.fieldname='UseStock' then
    begin
      with Purtrace_Det.Query1  do
      begin
          active:=false;
          sql.Clear;
          sql.add('select CGKCUSE.ZLBH,CGKCUSE.CLBH,CGKCUSES.Qty as KCUseQty,CGKCUSES.SIZE,CGKCUSE.CLBHYS   ');
          sql.add('from CGKCUSE  ');
          sql.add('left join CGKCUSES on CGKCUSES.GSBH=CGKCUSE.GSBH and CGKCUSES.ZLBH=CGKCUSE.ZLBH and CGKCUSES.CLBH=CGKCUSE.CLBH ');
          sql.add('where  CGKCUSE.CLBH=:CLBH');
          sql.add('       and CGKCUSE.ZLBH=:ZLBH ');
          sql.add('order by CGKCUSE.ZLBH,CGKCUSE.CLBH');
          active:=true;
          Purtrace_Det.DBGrideh1.columns[0].width:=80;
          Purtrace_Det.DBGrideh1.columns[1].width:=80;
          Purtrace_Det.DBGrideh1.columns[2].displayformat:='##,#0.0';
          Purtrace_Det.DBGrideh1.columns[2].width:=60;
          Purtrace_Det.DBGrideh1.columns[3].width:=60;
          Purtrace_Det.DBGrideh1.columns[4].width:=80;
      end;
    end;
    if dbgrideh2.selectedfield.fieldname='UseYG' then
    begin
      with Purtrace_Det.Query1  do
      begin
          active:=false;
          sql.Clear;
          sql.add('select CGYGUSES.ZKBH,CGYGUSES.ZLBH,CGYGUSES.CLBH,CGYGUSES.Qty as KCUseQty,CGYGUSES.SIZE   ');
          sql.add('from CGYGUSE  ');
          sql.add('left join CGYGUSES on CGYGUSES.GSBH=CGYGUSE.GSBH and CGYGUSES.ZLBH=CGYGUSE.ZLBH and CGYGUSES.CLBH=CGYGUSE.CLBH ');
          sql.add('where  CGYGUSE.CLBH=:CLBH');
          sql.add('       and CGYGUSE.ZLBH=:ZLBH ');
          sql.add('order by CGYGUSE.ZLBH,CGYGUSE.CLBH');
          active:=true;
          Purtrace_Det.DBGrideh1.columns[0].width:=80;
          Purtrace_Det.DBGrideh1.columns[1].width:=80;
          Purtrace_Det.DBGrideh1.columns[2].width:=80;
          Purtrace_Det.DBGrideh1.columns[3].displayformat:='##,#0.0';
          Purtrace_Det.DBGrideh1.columns[3].width:=60;
          Purtrace_Det.DBGrideh1.columns[4].width:=60;
      end;
    end;
    Purtrace_Det.show;
  end;
  if ((dbgrideh2.selectedfield.fieldname='ProdLeadTime') or (dbgrideh2.selectedfield.fieldname='Forecast_Leadtime')  ) then
  begin
    Purtrace_LT:=TPurtrace_LT .create(self);
    Purtrace_LT.GetBWSMEdit_ZLBH(Query2.fieldByName('ZLBH').AsString,Query2.fieldByName('CLBH').AsString);
    Purtrace_LT.Query1.Active:=false;
    Purtrace_LT.Query1.DataSource:=DS2;
    with Purtrace_LT.Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add(' Select A.Season,A.CLBH,A.ProdMOQ,A.ProdLeadTime,A.Forecast_Leadtime,A.Location from (');
      SQL.Add('			   select Season,CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,USERDATE desc) ');
      SQL.Add('			   as  rn from ');
      SQL.Add('			  (');
      SQL.Add('			  Select Season,IsNull(CLZL_LS.JHDH,MaterialMOQ.CLBH) as CLBH,ProdMOQ,ProdLeadTime,Forecast_Leadtime,Location,MaterialMOQ.USERDATE ');
      SQL.Add('			  from MaterialMOQ');
      SQL.Add('			  left join CLZL_LS on CLZL_LS.CLDH=MaterialMOQ.CLBH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ) MaterialMOQ');
      SQL.Add('		   ) A where CLBH=:CLBH ');
      Active:=true;
      Purtrace_LT.DBGrideh1.columns[0].width:=40;
      Purtrace_LT.DBGrideh1.columns[1].width:=80;
      Purtrace_LT.DBGrideh1.columns[2].displayformat:='##,#0.0';
      Purtrace_LT.DBGrideh1.columns[3].displayformat:='##,#0.0';
      Purtrace_LT.DBGrideh1.columns[2].width:=40;
      Purtrace_LT.DBGrideh1.columns[3].width:=40;
      Purtrace_LT.DBGrideh1.columns[4].width:=40;
    end;
    Purtrace_LT.show;
  end;
end;

procedure TPurtrace.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if Query1.FieldByName('DDZT').AsString='C' then
  begin
    dbgrideh1.Canvas.Brush.Color:=clBtnFace;
    dbgrideh1.defaultdrawcolumncell(rect,datacol,column,state);

  end;
end;

procedure TPurtrace.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  CLSLValue, CGQtyValue, UseStockValue: Double;
  TotalQty: Double;
begin
  CLSLValue := Query2.FieldByName('CLSL').AsFloat;
  CGQtyValue := Query2.FieldByName('CGQty').AsCurrency;
  UseStockValue := Query2.FieldByName('UseStock').AsCurrency;

  TotalQty := RoundTo(CGQtyValue + UseStockValue, -2);  // Tinh tong va lam tron 2 so thap phan

  if RoundTo(CLSLValue, -2) = TotalQty then
  begin
    dbgrideh2.Canvas.Font.Color := clBlue;
  end

  else if ((CGQtyValue > 0) or (UseStockValue > 0)) and (RoundTo(CLSLValue, -2) > TotalQty) then
  begin
    if (CGQtyValue <> 0) or (UseStockValue <> 0) then
    begin
      dbgrideh2.Canvas.Font.Color := clRed;
    end;
  end

  else if RoundTo(CLSLValue, -2) < TotalQty then
  begin
    dbgrideh2.Canvas.Font.Color := clGreen;
  end;

  {if Query2.FieldByName('CLSL').value=Query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value then
  begin
    dbgrideh2.canvas.font.color:=clBlue;
  end;
  if (((query2.FieldByName('CGQty').value>0) or (Query2.FieldByName('UseStock').value>0))
                    and (query2.FieldByName('CLSL').value>(query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value))) then
  begin
    if ((Query2.FieldByName('CGQty').value<>0) or (Query2.FieldByName('UseStock').value<>0)) then
    begin
      dbgrideh2.canvas.font.color:=clred;
    end;
  end;
  if Query2.FieldByName('CLSL').value<Query2.FieldByName('CGQty').value+Query2.FieldByName('UseStock').value then
  begin
    dbgrideh2.canvas.font.color:=clgreen;
  end;}
end;

procedure TPurtrace.Query2CalcFields(DataSet: TDataSet);
begin
  if CB5.Checked then
  begin
    if query2.FieldByName('CLBH').AsString<>'ZZZZZZZZZZ' then  //ZZZZZZZZZZ加工項目
    begin
      with query2 do
      begin
          fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CGQty').Value;
          fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CGQty').Value;
      end;
    end else
    begin
      //20161118 加工項目預計金額統計
      with query2 do
      begin
          fieldbyname('USACC').Value:=fieldbyname('USPrice').Value*fieldbyname('CLSL').Value;
          fieldbyname('VNACC').Value:=fieldbyname('VNPrice').Value*fieldbyname('CLSL').Value;
      end;
    end;
  end;
end;

procedure TPurtrace.Button5Click(Sender: TObject);
var tmpList:TStringlist;
    i:integer;
    YWPM:string;
    InputIsOk:boolean;
begin
   InputIsOk:=false;
   if length(RYEdit.Text)>=5 then InputIsOk:=true;
   if ((length(RYEdit.Text)>=4) and (length(MatNoEdit.Text)>=1)) then InputIsOk:=true;
   if ((length(BuyNoEdit.Text)>=4) and (length(MatNoEdit.Text)>=1)) then InputIsOk:=true;
   if length(BuyNoEdit.Text)>=6 then InputIsOk:=true;  //先暫時可以查一整年
   if ((Trim(CBX1.Text)<>'0000') and (Trim(CBX2.Text)<>'00')) then  InputIsOk:=true;
   if InputIsOk=false then
   begin
     Showmessage('Input OrderNo(5) '+#13#10+'Input OrderNo(3) and MatNo(1)'+#13#10+'Input BuyNo(4) and MatNo(1)'+#13#10+'Input BuyNo(6)'+#13#10+'Input GAC');
     abort;
   end;
  if CheckBox9.Checked=true  then
  begin
    with Qtemp do
    begin
      SQL.Clear;
      SQL.Add('select CLBH from (  ');
      SQL.Add('select *,ROW_NUMBER() over (PARTITION BY CSBH ORDER BY CLSL Desc) as  QtyRank   from ( ');
      SQL.Add('select ZLZLS2.CLBH,ZLZLS2.CSBH ,Sum(ZLZLS2.CLSL) as CLSL ');
      SQL.Add('from ZLZLS2 with (nolock) ');
      SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+'''  and DDZL.DDZT=''Y'' and DDZL.DDLB=''N''  ');
      SQL.Add('left join LBZLS on LBZLS.LB=''06''  and LBZLS.LBDH>''A'' and LBZLS.LBDH=DDZL.DDGB ');
      SQL.Add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh ');
      SQL.Add('where 1=1  ');
      SQL.Add('       and ZLZLS2.ZMLB=''N'' ');
      SQL.Add('       and ZLZLS2.CLSL<>0 ');
      SQL.Add('and IsNull(ZLZLS2.CSBH,'' '')<>'' '' ');
      SQL.Add('and IsNull(ZLZLS2.CSBH,'' '')<>''0000''');
      if MatNoEdit.Text<>'' then
      SQL.Add('       and ZLZLS2.CLBH like '''+MatNoEdit.Text+'%''  ');
      if SKUEdit.Text<>'' then
      SQL.Add('       and DDZL.Article like '''+SKUEdit.Text+'%''  ');
      if BuyNoEdit.Text<>'' then
      SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      if RYEdit.Text<>'' then
      SQL.Add('       and DDZL.DDBH like '''+RYEdit.Text+'%'' ');
      if DDGBEdit.Text<>'' then
      SQL.Add('       and LBZLS.YWSM like '''+DDGBEdit.Text+'%'' ');
      if SupEdit.Text<>'' then
      SQL.Add('       and zszl.zsywjc like '''+SupEdit.Text+'%'' ');
      SQL.Add('Group by ZLZLS2.CLBH,ZLZLS2.CSBH ) ZLZLS2  ) ZLZLS2   ');
      SQL.Add('left join (  ');
      SQL.Add('select CSBH, Count(CLBH) as Total from (  ');
      SQL.Add('select *,ROW_NUMBER() over (PARTITION BY CSBH ORDER BY CLSL Desc) as  QtyRank   from (  ');
      SQL.Add('select ZLZLS2.CLBH,ZLZLS2.CSBH ,Sum(ZLZLS2.CLSL) as CLSL ');
      SQL.Add('from ZLZLS2 with (nolock) ');
      SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+'''  and DDZL.DDZT=''Y'' and DDZL.DDLB=''N''  ');
      SQL.Add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh ');
      SQL.Add('left join LBZLS on LBZLS.LB=''06''  and LBZLS.LBDH>''A'' and LBZLS.LBDH=DDZL.DDGB ');
      SQL.Add('where 1=1  ');
      SQL.Add('       and ZLZLS2.ZMLB=''N'' ');
      SQL.Add('       and ZLZLS2.CLSL<>0 ');
      SQL.Add('and IsNull(ZLZLS2.CSBH,'' '')<>'' ''   ');
      SQL.Add('and IsNull(ZLZLS2.CSBH,'' '')<>''0000''  ');
      if MatNoEdit.Text<>'' then
      SQL.Add('       and ZLZLS2.CLBH like '''+MatNoEdit.Text+'%''  ');
      if SKUEdit.Text<>'' then
      SQL.Add('       and DDZL.Article like '''+SKUEdit.Text+'%''  ');
      if BuyNoEdit.Text<>'' then
      SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      if RYEdit.Text<>'' then
      SQL.Add('       and DDZL.DDBH like '''+RYEdit.Text+'%'' ');
      if DDGBEdit.Text<>'' then
      SQL.Add('       and LBZLS.YWSM like '''+DDGBEdit.Text+'%'' ');
      if SupEdit.Text<>'' then
      SQL.Add('       and zszl.zsywjc like '''+SupEdit.Text+'%'' ');
      if ((Trim(CBX1.Text)<>'0000') and (Trim(CBX2.Text)<>'00')) then
      SQL.Add('       and Year(DDZL.shipdate)='+CBX1.Text+' and replace(STR(month(DDZL.shipdate),2),'' '',''0'')='+CBX2.Text+' ');
      SQL.Add('Group by ZLZLS2.CLBH,ZLZLS2.CSBH ) ZLZLS2 ) ZLZLS2 Group by CSBH ) Supp on ZLZLS2.CSBH=Supp.CSBH  ');
      SQL.Add('where (ZLZLS2.QtyRank<=Round(Supp.Total*0.05+0.5,0)) or QtyRank=''1''');
      Active:=true;
    end;
  end;

  with  RSLQry do
  begin
    SQL.Clear;
    SQL.Add('select RSLMat.*,CLZL.clbm from (');
    SQL.Add('select ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as zsywjc,RSLList.PDDate,RSLList.PDFilePage,RSLList.ID,RSLList.GSBH, ');
    SQL.Add('       Case when  left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',RSLList.PDDate),112), 6) <= left(convert(varchar, getdate(),112), 6) or RSLList.PDDate is null then ''Y'' else ''N'' end as IsExpire,RSLList.Memo ');
    SQL.Add('       ,RSLList.Gender,RSLList.PDFilePageT2,Max(case when KFXXZL.Gender in (''Kid'',''Infant'',''Junior'') then KFXXZL.Gender else null end) as KFGender ');
    SQL.Add('from ZLZLS2 with (nolock)  ');
    SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLS2.CLBH ');
    SQL.Add('left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh ');
    SQL.Add('left join XXZL  with (nolock) on XXZl.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    SQL.Add('left join KFXXZL on XXZl.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao ');
    SQL.Add('left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH ');
    SQL.Add('left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH  ');
    //20200407 RSL 串聯臨時料號
    SQL.Add('left join (select ID,GSBH,CLDH,PDDate,PDYN,PDFilePage,Memo,Gender,PDFilePageT2 ');
    SQL.Add('from (');
    SQL.Add('select ID,GSBH,CLZL_LS.JHDH,IsNull(CLZL_LS.JHDH,RSTList.CLDH) as CLDH,PDDate,PDYN,PDFilePage,Memo,Gender,PDFilePageT2,ROW_NUMBER() over (PARTITION BY IsNull(CLZL_LS.JHDH,RSTList.CLDH) ORDER BY PDDate DESC)as  rn ');
    SQL.Add('from RSTList ');
    SQL.Add('left join CLZL_LS on CLZL_LS.CLDH=RSTList.CLDH  and IsNull(CLZL_LS.JHDH,'''')<>'''' ');
    SQL.Add('where RSTList.PDYN=''Y'' and RSTList.PDDate is not null ) A where A.rn=1) RSLList on  RSLList.CLDH=ZLZLS2.CLBH');
    //
    SQL.Add('left join LBZLS on LBZLS.LB=''06''  and LBZLS.LBDH>''A'' and LBZLS.LBDH=DDZL.DDGB ');
    SQL.Add('where 1=1 ');
    if CheckBox9.Checked=true  then
    begin
      Qtemp.first;
      SQL.Add('and ZLZLS2.CLBH in (  ');
      for i:=0 to Qtemp.RecordCount-1 do
      begin
        if i < Qtemp.RecordCount-1 then
          SQL.Add('''' +Qtemp.Fields[0].value + ''',');
        Qtemp.next;
      end;
      SQL.Add('''' +Qtemp.Fields[0].value + ''')');
    end;
    if MatNoEdit.Text<>'' then
    SQL.Add('       and ZLZLS2.CLBH like '''+MatNoEdit.Text+'%''  ');
    if SKUEdit.Text<>'' then
    SQL.Add('       and DDZL.Article like '''+SKUEdit.Text+'%''  ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('       and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text<>'' then
    SQL.Add('       and DDZL.DDBH like '''+RYEdit.Text+'%'' ');
    if DDGBEdit.Text<>'' then
    SQL.Add('       and LBZLS.YWSM like '''+DDGBEdit.Text+'%'' ');
    if SupEdit.Text<>'' then
    SQL.Add('       and zszl.zsywjc like '''+SupEdit.Text+'%'' ');
    if ((Trim(CBX1.Text)<>'0000') and (Trim(CBX2.Text)<>'00')) then
    SQL.Add('       and Year(DDZL.shipdate)='+CBX1.Text+' and replace(STR(month(DDZL.shipdate),2),'' '',''0'')='+CBX2.Text+' ');
    //
    SQL.Add('       and ZLZLS2.ZMLB=''N'' ');
    SQL.Add('       and ZLZLS2.CLSL<>0 ');

    if MatNMEdit.Text<>'' then
    begin
      tmpList:=FuncObj.SplitString(MatNMEdit.Text,'*');
      for i:=0 to tmpList.Count-1 do
      begin
         YWPM:=YWPM+'(CLZL.YWPM like ''%'+tmpList.Strings[i]+'%'') or ';
      end;
      tmpList.Free;
      if YWPM<>'' then
      begin
        YWPM:=Copy(YWPM,1,length(YWPM)-4);
        SQl.Add(' and ('+YWPM+')');
      end;
    end;
    if (CK1.Checked=true) then
    begin
      SQL.Add(' and ((RSLList.PDFilePage is not null and KFXXZL.Gender not in (''Kid'',''Infant'',''Junior'') )  or (RSLList.PDFilePageT2 is not null and KFXXZL.Gender  in (''Kid'',''Infant'',''Junior''))  ) ');
      SQL.Add(' and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',RSLList.PDDate),112), 6) > left(convert(varchar, getdate(),112), 6) ');
    end else
    begin
      if ((CK2.Checked=true) and (CK3.Checked=true)) then
      begin
        SQL.Add(' and ( (RSLList.PDFilePage is null and RSLList.PDFilePageT2 is null ) or (RSLList.PDFilePageT2 is null and KFXXZL.Gender  in (''Kid'',''Infant'',''Junior'') ) or   (left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',RSLList.PDDate),112), 6) <= left(convert(varchar, getdate(),112), 6)) ) ');
      end else
      begin                                             
        if CK2.Checked=true then  SQL.Add(' and left(convert(varchar, DateAdd(Month,'+MonthEdit.Text+',RSLList.PDDate),112), 6) <= left(convert(varchar, getdate(),112), 6) ');
        if CK3.Checked=true then  SQL.Add(' and ((RSLList.PDFilePage is null and RSLList.PDFilePageT2 is null) or (RSLList.PDFilePageT2 is null and KFXXZL.Gender  in (''Kid'',''Infant'',''Junior'') )) ');
      end;
    end;
    if GenderCombo.Text<>'' then
    SQL.Add('       and KFXXZL.Gender like '''+GenderCombo.Text+'%'' ');
    SQL.Add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
    SQL.Add('       and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null)');
    SQL.Add('       and SCZL.SCBH is not null');
    SQL.Add('Group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,RSLList.PDDate,RSLList.PDFilePage,RSLList.ID,RSLList.GSBH,RSLList.Memo,RSLList.Gender,RSLList.PDFilePageT2   ) RSLMat');
    SQL.Add('left join CLZL on CLZL.CLDH=RSLMat.CLBH ');
    SQL.Add('Order by RSLMat.ZSDH,SubString(RSLMat.CLBH,1,1),SubString(CLZL.clbm,13,4),SubString(CLZL.clbm,1,4) ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TPurtrace.DBGridEh3CellClick(Column: TColumnEh);
var
  DownloadObj: TFileTransClient;
  TempText, FileExt: string;
  Path: PChar;
  i: integer;
begin
  if CB4.Checked=true then
  begin
    if (DBGridEh3.SelectedField.FieldName = 'PDFilePage') and (not RSLQry.FieldByName('PDFilePage').isnull) then
    begin
      DownloadObj := TFileTransClient.Create();
      if not FileExists(ExtractFileDir(Application.ExeName) + '\Temp') then
        CreateDir(ExtractFileDir(Application.ExeName) + '\Temp');
      FileExt := '';
      TempText := RSLQry.FieldByName('PDFilePage').AsString;
      for i := Length(TempText) downto 1 do
      begin
        if (TempText[i] <> '.') then
          FileExt := TempText[i] + FileExt
        else begin
          FileExt := '.' + FileExt;
          Break;
        end;
      end;
      DownloadObj.down(RSLQry.FieldByName('PDFilePage').AsString, 'QC\' + RSLQry.FieldByName('GSBH').AsString + '\RSL\', ExtractFileDir(Application.ExeName) + '\Temp\' + RSLQry.FieldByName('PDFilePage').AsString);
      Path := PChar(ExtractFileDir(Application.ExeName) + '\Temp\' + RSLQry.FieldByName('PDFilePage').AsString);
      ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
    end;
    if (DBGridEh3.SelectedField.FieldName = 'PDFilePageT2') and (not RSLQry.FieldByName('PDFilePageT2').isnull) then
    begin
      DownloadObj := TFileTransClient.Create();
      if not FileExists(ExtractFileDir(Application.ExeName) + '\Temp') then
        CreateDir(ExtractFileDir(Application.ExeName) + '\Temp');
      FileExt := '';
      TempText := RSLQry.FieldByName('PDFilePage').AsString;
      for i := Length(TempText) downto 1 do
      begin
        if (TempText[i] <> '.') then
          FileExt := TempText[i] + FileExt
        else begin
          FileExt := '.' + FileExt;
          Break;
        end;
      end;
      DownloadObj.down(RSLQry.FieldByName('PDFilePageT2').AsString, 'QC\' + RSLQry.FieldByName('GSBH').AsString + '\RSL\', ExtractFileDir(Application.ExeName) + '\Temp\' + RSLQry.FieldByName('PDFilePageT2').AsString);
      Path := PChar(ExtractFileDir(Application.ExeName) + '\Temp\' + RSLQry.FieldByName('PDFilePageT2').AsString);
      ShellExecute(Handle, nil, Path ,  nil, nil, SW_SHOWNORMAL);
    end;
  end;
end;

procedure TPurtrace.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
{
  if  RSLQry.FieldByName('IsExpire').AsString='Y' then
    DBGridEh3.canvas.font.color:=clBlue;
  if  RSLQry.FieldByName('PDFilePage').AsString='' then
    DBGridEh3.canvas.font.color:=clRed;
  }
  if  RSLQry.FieldByName('IsExpire').AsString='Y' then
    DBGridEh3.canvas.font.color:=clBlue;
  if  (RSLQry.FieldByName('PDFilePage').AsString='') and (RSLQry.FieldByName('PDFilePageT2').AsString='') then
    DBGridEh3.canvas.font.color:=clRed;
  if  (RSLQry.FieldByName('PDFilePageT2').AsString='') and (RSLQry.FieldByName('KFGender').AsString='KIDS') then
    DBGridEh3.canvas.font.color:=clRed;
end;

procedure TPurtrace.Button6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  RSLQry.active  then
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
          {for   i:=0   to   RSLQry.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=RSLQry.fields[i].FieldName;
          end;}
          eclApp.Cells[1, 1] := 'Material Code';
          eclApp.Cells[1, 2] := 'Material Name';
          eclApp.Cells[1, 3] := 'Unit';
          eclApp.Cells[1, 4] := 'Location';
          eclApp.Cells[1, 5] := 'Vendor Code';
          eclApp.Cells[1, 6] := 'Vendor Name';
          eclApp.Cells[1, 7] := 'PD Date';
          eclApp.Cells[1, 8] := 'Test Report';
          eclApp.Cells[1, 9] := 'Expired Date';
          eclApp.Cells[1, 10] := 'ID';
          eclApp.Cells[1, 11] := 'Memo';
          eclApp.Cells[1, 12] := 'Production';
          eclApp.Cells[1, 13] := 'Gender';
          eclApp.Cells[1, 14] := 'Test Report 2';
          eclApp.Cells[1, 15] := 'KF Gender';
          //
          RSLQry.First;
          j:=2;
          while   not   RSLQry.Eof   do
          begin
            for   i:=0   to  RSLQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=RSLQry.Fields[i].Value;
            end;
            RSLQry.Next;
            inc(j);
          end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
         on  F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;

procedure TPurtrace.SBtn1Click(Sender: TObject);
begin
  RSLDDGB:=TRSLDDGB.Create(self);
  RSLDDGB.Show;
end;

procedure TPurtrace.SBtn2Click(Sender: TObject);
begin
  RSLSupplier:=TRSLSupplier.Create(self);
  RSLSupplier.Show;
end;

procedure TPurtrace.LTCKboxClick(Sender: TObject);
begin
  if LTCKBox.Checked=true then
  begin
    DBGridEh2.Columns[15].Visible:=true;
    DBGridEh2.Columns[16].Visible:=true;
  end else
  begin
    DBGridEh2.Columns[15].Visible:=false;
    DBGridEh2.Columns[16].Visible:=false;
  end;
end;

procedure TPurtrace.DDBHEditPaste();
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
      DDBHEdit.Text:=Copy(TotalDDBH,1,length(TotalDDBH)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;

procedure TPurtrace.DDBHEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    DDBHEditPaste();
  end;
end;

procedure TPurtrace.DBGridEh5GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query5.FieldByName('CLSL').value=Query5.FieldByName('CGQty').value then
  begin
    dbgrideh5.canvas.font.color:=clBlue;
  end;
  if ( ((query5.FieldByName('CGQty').value>0) or (Query5.FieldByName('UseStock').value>0))
                    and (query5.FieldByName('CLSL').value>(query5.FieldByName('CGQty').value))) then
  begin
    if (Query5.FieldByName('CGQty').value<>0)  then
    begin
      dbgrideh5.canvas.font.color:=clred;
    end;
  end;
  if Query5.FieldByName('CLSL').value<Query5.FieldByName('CGQty').value then
  begin
    dbgrideh5.canvas.font.color:=clgreen;
  end;
end;

procedure TPurtrace.chkFlexCodeClick(Sender: TObject);
begin
  if chkFlexCode.Checked = true then
  begin
    Label26.Visible:=true;
    FlexID_Edit.Visible:=true;
    FlexID_Edit.Clear;
    DBGridEh2.FieldColumns['FlexID'].Visible:=True;
  end else
  begin
    Label26.Visible:=false;
    FlexID_Edit.Visible:=false;
    DBGridEh2.FieldColumns['FlexID'].Visible:=False;
  end;
end;

procedure TPurtrace.Edit3Paste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalSKU:String;
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
    TotalSKU:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalSKU:=TotalSKU+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalSKU)>0 then
    begin
      Edit3.Text:=Copy(TotalSKU,1,length(TotalSKU)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;

procedure TPurtrace.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    Edit3Paste();
  end;
end;

end.

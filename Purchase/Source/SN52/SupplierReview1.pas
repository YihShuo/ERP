unit SupplierReview1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, comobj,
  ComCtrls, DateUtils,math, Menus,inifiles;

type
  TSupplierReview = class(TForm)
    Panel3: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    DS1: TDataSource;
    QSupplier: TQuery;
    UP_Supplier: TUpdateSQL;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    QSupplierLNO: TStringField;
    QSupplierYear: TStringField;
    QSupplierMonth: TStringField;
    QSupplierUserID: TStringField;
    QSupplierUserDate: TDateTimeField;
    QSupplierYN: TStringField;
    QSearch: TQuery;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    UP_SupplierS: TUpdateSQL;
    QSupplierS: TQuery;
    QSupplierSLNO: TStringField;
    QSupplierSSupplierID: TStringField;
    QSupplierSTimes: TIntegerField;
    QSupplierSQualified: TIntegerField;
    QSupplierSOnTime: TIntegerField;
    QSupplierSQuality: TFloatField;
    QSupplierSETD: TFloatField;
    QSupplierSCooperation: TFloatField;
    QSupplierSTotal: TFloatField;
    QSupplierSRemark: TStringField;
    QSupplierSUserID: TStringField;
    QSupplierSUserDate: TDateTimeField;
    QSupplierSYN: TStringField;
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    QSupplierSZSYWJC: TStringField;
    BD8: TBitBtn;
    BB8: TBitBtn;
    PC2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    DTP3: TDateTimePicker;
    Label2: TLabel;
    Button2: TButton;
    DS4: TDataSource;
    QReportS: TQuery;
    QReportSMonth: TStringField;
    QReportSQuality: TFloatField;
    QReportSETD: TFloatField;
    QReportSCooperation: TFloatField;
    QReportSTotal: TFloatField;
    Panel5: TPanel;
    BR1: TBitBtn;
    BR2: TBitBtn;
    BR3: TBitBtn;
    BR4: TBitBtn;
    BR5: TBitBtn;
    BR6: TBitBtn;
    BR7: TBitBtn;
    BR8: TBitBtn;
    PC3: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    DS3: TDataSource;
    QReport: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    UP_Report: TUpdateSQL;
    DTP4: TDateTimePicker;
    Label4: TLabel;
    DBGridEh5: TDBGridEh;
    QSupList: TQuery;
    Splitter1: TSplitter;
    DBGridEh6: TDBGridEh;
    DS5: TDataSource;
    QQuarter: TQuery;
    QQuarterQuarter: TIntegerField;
    QQuarterMonth: TStringField;
    QQuarterResult: TStringField;
    QQuarterUserID: TStringField;
    QQuarterUserDate: TDateTimeField;
    QQuarterYN: TStringField;
    QQuarterYear: TStringField;
    DS6: TDataSource;
    Splitter2: TSplitter;
    QQuarterSupplierID: TStringField;
    Panel2: TPanel;
    Panel6: TPanel;
    BS2: TBitBtn;
    BS3: TBitBtn;
    BS4: TBitBtn;
    BS5: TBitBtn;
    BS6: TBitBtn;
    BS7: TBitBtn;
    BS8: TBitBtn;
    UP_Quarter: TUpdateSQL;
    QQuarterLNO: TStringField;
    QSupplierSSeq: TFloatField;
    QSupplierType: TStringField;
    QReportType: TStringField;
    QSupplierStatus: TStringField;
    QSupplierflowflag: TStringField;
    QReportStatus: TStringField;
    QReportflowflag: TStringField;
    UP_SupList: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Qtemp: TQuery;
    QSupplierGSBH: TStringField;
    QReportGSBH: TStringField;
    QSupListLNO: TStringField;
    QSupListSupplierID: TStringField;
    QSupListTimes: TIntegerField;
    QSupListQualified: TIntegerField;
    QSupListOnTime: TIntegerField;
    QSupListQuality: TFloatField;
    QSupListETD: TFloatField;
    QSupListCooperation: TFloatField;
    QSupListTotal: TFloatField;
    QSupListRemark: TStringField;
    QSupListUserID: TStringField;
    QSupListUserDate: TDateTimeField;
    QSupListYN: TStringField;
    QSupListZSYWJC: TStringField;
    QSupListYear: TStringField;
    PopupMenu2: TPopupMenu;
    Resend: TMenuItem;
    QReportflowflag1: TStringField;
    QReportflowflag2: TStringField;
    QReportflowflag3: TStringField;
    QReportflowflag4: TStringField;
    QSupListGSBH: TStringField;
    QQuarterGSBH: TStringField;
    QSupplierSFL: TStringField;
    QReportSFL: TStringField;
    QSupListSFL: TStringField;
    QQuarterSFL: TStringField;
    bbt6: TBitBtn;
    BitBtn1: TBitBtn;
    Query1: TQuery;
    StringField3: TStringField;
    StringField6: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField2: TDateTimeField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField5: TFloatField;
    Query1MONTH: TIntegerField;
    Query1YEAR: TIntegerField;
    Query2: TQuery;
    Query2SupplierID: TStringField;
    Query2ZSYWJC: TStringField;
    Query2BDEDesigner1_Quality: TFloatField;
    Query2BDEDesigner1_ETD: TFloatField;
    Query2BDEDesigner1_Cooperation: TFloatField;
    Query2BDEDesigner1_Total: TFloatField;
    Query2BDEDesigner2_Quality: TFloatField;
    Query2BDEDesigner2_ETD: TFloatField;
    Query2BDEDesigner2_Cooperation: TFloatField;
    Query2BDEDesigner2_Total: TFloatField;
    Query2BDEDesigner3_Quality: TFloatField;
    Query2BDEDesigner3_ETD: TFloatField;
    Query2BDEDesigner3_Cooperation: TFloatField;
    Query2BDEDesigner3_Total: TFloatField;
    Query2BDEDesigner4_Quality: TFloatField;
    Query2BDEDesigner4_ETD: TFloatField;
    Query2BDEDesigner4_Cooperation: TFloatField;
    Query2BDEDesigner4_Total: TFloatField;
    Query2BDEDesigner5_Quality: TFloatField;
    Query2BDEDesigner5_ETD: TFloatField;
    Query2BDEDesigner5_Cooperation: TFloatField;
    Query2BDEDesigner5_Total: TFloatField;
    Query2BDEDesigner6_Quality: TFloatField;
    Query2BDEDesigner6_ETD: TFloatField;
    Query2BDEDesigner6_Cooperation: TFloatField;
    Query2BDEDesigner6_Total: TFloatField;
    Query2BDEDesigner7_Quality: TFloatField;
    Query2BDEDesigner7_ETD: TFloatField;
    Query2BDEDesigner7_Cooperation: TFloatField;
    Query2BDEDesigner7_Total: TFloatField;
    Query2BDEDesigner8_Quality: TFloatField;
    Query2BDEDesigner8_ETD: TFloatField;
    Query2BDEDesigner8_Cooperation: TFloatField;
    Query2BDEDesigner8_Total: TFloatField;
    Query2BDEDesigner9_Quality: TFloatField;
    Query2BDEDesigner9_ETD: TFloatField;
    Query2BDEDesigner9_Cooperation: TFloatField;
    Query2BDEDesigner9_Total: TFloatField;
    Query2BDEDesigner10_Quality: TFloatField;
    Query2BDEDesigner10_ETD: TFloatField;
    Query2BDEDesigner10_Cooperation: TFloatField;
    Query2BDEDesigner10_Total: TFloatField;
    Query2BDEDesigner11_Quality: TFloatField;
    Query2BDEDesigner11_ETD: TFloatField;
    Query2BDEDesigner11_Cooperation: TFloatField;
    Query2BDEDesigner11_Total: TFloatField;
    Query2BDEDesigner12_Quality: TFloatField;
    Query2BDEDesigner12_ETD: TFloatField;
    Query2BDEDesigner12_Cooperation: TFloatField;
    Query2BDEDesigner12_Total: TFloatField;
    Query2Result_1: TStringField;
    Query2Result_2: TStringField;
    Query2Result_3: TStringField;
    Query2Result_4: TStringField;
    Quarter: TComboBox;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QSupplierAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure QSupplierNewRecord(DataSet: TDataSet);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure QSupplierSAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure QSupplierSNewRecord(DataSet: TDataSet);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure BD8Click(Sender: TObject);
    procedure BB8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure QReportAfterOpen(DataSet: TDataSet);
    procedure BR8Click(Sender: TObject);
    procedure BR2Click(Sender: TObject);
    procedure BR3Click(Sender: TObject);
    procedure BR4Click(Sender: TObject);
    procedure BR5Click(Sender: TObject);
    procedure BR6Click(Sender: TObject);
    procedure PC3Change(Sender: TObject);
    procedure QQuarterAfterOpen(DataSet: TDataSet);
    procedure BS8Click(Sender: TObject);
    procedure BS4Click(Sender: TObject);
    procedure BS5Click(Sender: TObject);
    procedure BS6Click(Sender: TObject);
    procedure BR7Click(Sender: TObject);
    procedure BS7Click(Sender: TObject);
    procedure PC2Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PC3Changing(Sender: TObject; var AllowChange: Boolean);
    procedure QReportNewRecord(DataSet: TDataSet);
    procedure DBGridEh6Columns3UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns5UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns6UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns7UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns2UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns3UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns4UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure BS2Click(Sender: TObject);
    procedure QSupListAfterOpen(DataSet: TDataSet);
    procedure DBGridEh5EditButtonClick(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure ResendClick(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    AppDir:string;
    procedure readini();
    { Private declarations }
  public
    PurchaseN52_ISO_Month,PurchaseN52_ISO_Year:String;
    { Public declarations }
  end;

var
  SupplierReview: TSupplierReview;

implementation

uses
  main1, SupplierReview_Supplier1, SupplierReview_SeasonalReport1, SupplierReview_MonthlyReport1,
  SupplierReview_ZSDH1;

{$R *.dfm}
procedure TSupplierReview.readini();
var MyIni :Tinifile;
    AppDir:string;
begin

  AppDir:=ExtractFilePath(Application.ExeName);
  PurchaseN52_ISO_Month:='T-DCC-027C';
  PurchaseN52_ISO_Year:='T-DCC-028C';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      PurchaseN52_ISO_Month:=MyIni.ReadString('ERP','PurchaseN52_ISO_Month','');
      PurchaseN52_ISO_Year:=MyIni.ReadString('ERP','PurchaseN52_ISO_Year','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TSupplierReview.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BB5.Enabled) OR (BD5.Enabled) OR (BR5.Enabled) OR (BS5.Enabled) then
  begin
    MessageDlg('You have to save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TSupplierReview.FormDestroy(Sender: TObject);
begin
  SupplierReview := Nil;
end;



procedure TSupplierReview.FormCreate(Sender: TObject);
var
  i: integer;
begin
  PC1.ActivePageIndex := 0;
  PC2.ActivePageIndex := 0;
  PC3.ActivePageIndex := 0;
  DTP1.Date := StartOfTheYear(Date);
  DTP2.Date := EndOfTheYear(Date);
  DTP3.Date := Date;
  DTP4.Date := Date;
  for i := YearOf(Date)-2 to YearOf(Date)+2 do
  begin
    DBGridEh1.Columns[2].PickList.Add(IntToStr(i));
    DBGridEh4.Columns[2].PickList.Add(IntToStr(i));
  end;
  AppDir:=ExtractFilePath(Application.ExeName);
  readini();
end;

procedure TSupplierReview.Button1Click(Sender: TObject);
begin
  with QSupplier do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT LNO, GSBH, Type, Year, Month, UserID, UserDate, YN, CASE WHEN ISNULL(flowflag, '''') = '''' THEN ''未上呈'' ELSE CASE WHEN flowflag = ''Z'' THEN ''已結案'' ELSE CASE WHEN flowflag = ''X'' THEN ''已作廢'' ELSE ''審核中'' END END END AS Status,');
    SQL.Add('flowflag, SFL FROM WF_SupplierReview');
    SQL.Add('WHERE Type = ''Monthly'' AND CONVERT(SmallDateTime, Year + ''/'' + Month + ''/01'') BETWEEN ''' + FormatDateTime('yyyy/MM/DD', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/DD', DTP2.Date) + '''');
    SQL.Add('AND WF_SupplierReview.GSBH = '''+main.Edit2.Text+''' ');
    SQL.Add('ORDER BY Year, Month');
    Active := true;
  end;
  bbt6.enabled := true;
  QSupplierS.Active := true;
end;

procedure TSupplierReview.BB2Click(Sender: TObject);
begin
  with QSupplier do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    QSupplier.Insert;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSupplierReview.BB3Click(Sender: TObject);
begin
  if (QSupplier.FieldByName('flowflag').AsString <> '') then
  begin
    ShowMessage('This list is already submitted, can not be deleted');
    Exit;
  end;

  with QSupplier do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSupplierReview.BB4Click(Sender: TObject);
begin
  if (QSupplier.FieldByName('flowflag').AsString <> '') then
  begin
    ShowMessage('This list is already submitted, can not be deleted');
    Exit;
  end;
  with QSupplier do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSupplierReview.BB5Click(Sender: TObject);
var
  i: integer;
begin
  if  QSupplier.FieldByName('Year').IsNull = true then
  begin
      showmessage('Year can not be empty.');
      abort;
  end;
  try
    QSupplier.First;
    for i := 1 to QSupplier.RecordCount do
    begin
      case QSupplier.UpdateStatus of
        usInserted:
        begin
          if (QSupplier.FieldByName('LNO').IsNull) then
          begin
            QSupplier.Delete;
          end
          else begin
            with QSearch do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT CONVERT(VARCHAR, GETDATE(), 112) + ''-'' + RIGHT(''00000'' + CAST(ISNULL(MAX(CAST(SUBSTRING(LNO, 10, 5) AS INT)), 0) + 1 AS VARCHAR), 5) AS LNO FROM WF_SupplierReview');
              SQL.Add('WHERE LNO LIKE CAST(YEAR(GETDATE()) AS VARCHAR) + ''%'' AND Type = ''Monthly''');
              Active := true;
            end;

            QSupplier.Edit;
            QSupplier.FieldByName('LNO').Value := QSearch.FieldByName('LNO').AsString;
            QSupplier.FieldByName('GSBH').Value := main.Edit2.Text;
            if QSupplier.FieldByName('SFL').AsString='' then QSupplier.fieldbyname('SFL').Value:='TM';
            QSupplier.FieldByName('UserID').Value := main.Edit1.Text;
            UP_Supplier.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QSupplier.FieldByName('YN').Value = 0) then
          begin
            UP_Supplier.Apply(ukDelete);
          end
          else begin
            QSupplier.Edit;
            QSupplier.FieldByName('UserID').Value := main.Edit1.text;
            UP_Supplier.Apply(ukModify);
          end;
        end;
      end;

      QSupplier.Next;
    end;

    QSupplier.Active := false;
    QSupplier.CachedUpdates := false;
    QSupplier.RequestLive := false;
    QSupplier.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSupplierReview.BB6Click(Sender: TObject);
begin
  with QSupplier do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TSupplierReview.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TSupplierReview.QSupplierAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BB8.Enabled := true;
end;

procedure TSupplierReview.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QSupplier.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TSupplierReview.QSupplierNewRecord(DataSet: TDataSet);
begin
  QSupplier.FieldByName('LNO').Value := 'Auto-Generated';
end;

procedure TSupplierReview.BD2Click(Sender: TObject);
begin
  if (QSupplier.FieldByName('Status').AsString = '已結案') or (QSupplier.FieldByName('Status').AsString = '審核中') then begin
    showmessage('This report cant Insert!');
    exit;
  end;
  with QSupplierS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;
  
  DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TSupplierReview.BD3Click(Sender: TObject);
begin
  if (QSupplier.FieldByName('Status').AsString = '已結案') or (QSupplier.FieldByName('Status').AsString = '審核中') then begin
    showmessage('This report cant delete!');
    exit;
  end;
  with QSupplierS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TSupplierReview.BD4Click(Sender: TObject);
begin
  if (QSupplier.FieldByName('Status').AsString = '已結案') or (QSupplier.FieldByName('Status').AsString = '審核中') then begin
    showmessage('This report cant modify now!');
    exit;
  end;
  with QSupplierS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TSupplierReview.BD5Click(Sender: TObject);
var
  i: integer;
begin
  try
    QSupplierS.First;
    for i := 1 to QSupplierS.RecordCount do
    begin
      case QSupplierS.UpdateStatus of
        usInserted:
        begin
          if (QSupplierS.FieldByName('LNO').IsNull) OR (QSupplierS.FieldByName('SupplierID').IsNull) OR (QSupplierS.FieldByName('Total').IsNull) then
          begin
            QSupplierS.Delete;
          end
          else begin
            QSupplierS.Edit;
            QSupplierS.FieldByName('UserID').Value := main.Edit1.Text;
            UP_SupplierS.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QSupplierS.FieldByName('YN').Value = 0) then
          begin
            UP_SupplierS.Apply(ukDelete);
          end
          else begin
            if (QSupplierS.FieldByName('LNO').IsNull = false) AND (QSupplierS.FieldByName('SupplierID').IsNull = false) AND (QSupplierS.FieldByName('Total').IsNull = false) then
            begin
              QSupplierS.Edit;
              QSupplierS.FieldByName('UserID').Value := main.Edit1.text;
              UP_SupplierS.Apply(ukModify);
            end;
          end;
        end;
      end;

      QSupplierS.Next;
    end;

    QSupplierS.Active := false;
    QSupplierS.CachedUpdates := false;
    QSupplierS.RequestLive := false;
    QSupplierS.Active := true;

    DBGridEh2.Columns[0].ButtonStyle := cbsNone;
    BD5.Enabled := false;
    BD6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSupplierReview.BD6Click(Sender: TObject);
begin
  with QSupplierS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh2.Columns[0].ButtonStyle := cbsNone;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TSupplierReview.BD7Click(Sender: TObject);
begin
  Close;
end;

procedure TSupplierReview.QSupplierSAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;
  BD8.Enabled := true;
end;

procedure TSupplierReview.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePageIndex = 0) then
  begin                      
    Panel2.Visible := true;
    Panel3.Visible := false;
  end
  else begin                 
    Panel3.Visible := true;
    Panel2.Visible := false;
  end;
end;

procedure TSupplierReview.QSupplierSNewRecord(DataSet: TDataSet);
begin
  QSupplierS.FieldByName('LNO').Value := QSupplier.FieldByName('LNO').AsString;
end;

procedure TSupplierReview.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QSupplierS.FieldByName('YN').AsString = '0') then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

procedure TSupplierReview.DBGridEh2Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if (SupplierReview_Supplier <> Nil) then
    SupplierReview_Supplier.Close;
  SupplierReview_Supplier := TSupplierReview_Supplier.Create(Self);
  SupplierReview_Supplier.ShowModal;
end;
         
procedure TSupplierReview.BB8Click(Sender: TObject);
begin
  if (QSupplier.Active) then
  begin
    SupplierReview_MonthlyReport := TSupplierReview_MonthlyReport.Create(Self);
    SupplierReview_MonthlyReport.LoadData;
    SupplierReview_MonthlyReport.QuickRep1.Prepare;
    SupplierReview_MonthlyReport.QRPage.Expression := '''第'' + PAGENUMBER + ''頁/共' + IntToStr(SupplierReview_MonthlyReport.QuickRep1.QRPrinter.PageCount) + '頁''';
    SupplierReview_MonthlyReport.QRLabel43.Caption:=PurchaseN52_ISO_Month;
    SupplierReview_MonthlyReport.QuickRep1.Preview;
    SupplierReview_MonthlyReport.Close;
  end;
end;

procedure TSupplierReview.BD8Click(Sender: TObject);
begin
  BB8Click(Nil);
end;

procedure TSupplierReview.Button2Click(Sender: TObject);
begin
  with QReport do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT LNO, GSBH, Type, Year, UserID, UserDate, YN, CASE WHEN ISNULL(flowflag, '''') = '''' THEN ''未上呈'' ELSE CASE WHEN flowflag = ''Z'' THEN ''已結案'' ELSE CASE WHEN flowflag = ''X'' THEN ''已作廢'' ELSE ''審核中'' END END END AS Status');
    SQL.Add(', flowflag, flowflag1, flowflag2, flowflag3, flowflag4, SFL ');
    SQL.Add('FROM WF_SupplierReview');
    SQL.Add('WHERE Type = ''Yearly'' AND CAST(Year AS INT) BETWEEN ' + FormatDateTime('yyyy', DTP3.Date) + ' AND ' + FormatDateTime('yyyy', DTP4.Date));
    SQL.Add('AND WF_SupplierReview.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('ORDER BY Year');
    //showmessage(sql.Text);
    Active := true;
  end;

  if (QReport.RecordCount > 0) then
  begin
    QSupList.Active := true;
  end
  else begin
    QSupList.Active := false;
  end;
  BitBtn1.enabled := true;
end;

procedure TSupplierReview.QReportAfterOpen(DataSet: TDataSet);
begin
  BR2.Enabled := true;
  BR3.Enabled := true;
  BR4.Enabled := true;
  BR8.Enabled := true;  
end;

procedure TSupplierReview.BR8Click(Sender: TObject);
begin
  if (QReport.Active) then
  begin
    SupplierReview_SeasonalReport := TSupplierReview_SeasonalReport.Create(Self);
    SupplierReview_SeasonalReport.LoadData;
    SupplierReview_SeasonalReport.QuickRep1.Prepare;
    SupplierReview_SeasonalReport.QRPage.Expression := '''第'' + PAGENUMBER + ''頁/共' + IntToStr(SupplierReview_SeasonalReport.QuickRep1.QRPrinter.PageCount) + '頁''';
    SupplierReview_SeasonalReport.QRLabel43.Caption:=PurchaseN52_ISO_Year;
    SupplierReview_SeasonalReport.QuickRep1.Preview;
    SupplierReview_SeasonalReport.Close;
  end;
end;

procedure TSupplierReview.BR2Click(Sender: TObject);
begin
  QSupList.Active:=false;
  with QReport do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  BR5.Enabled := true;
  BR6.Enabled := true;
end;

procedure TSupplierReview.BR3Click(Sender: TObject);
begin
  if (QReport.FieldByName('flowflag').AsString <> '') then
  begin
    ShowMessage('This list is already submitted, can not be deleted');
    Exit;
  end;

  with QReport do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BR5.Enabled := true;
  BR6.Enabled := true;
end;

procedure TSupplierReview.BR4Click(Sender: TObject);
begin
  if (QReport.FieldByName('flowflag').AsString <> '') then
  begin
    ShowMessage('This list is already submitted, can not be delete');
    Exit;
  end;
  with QReport do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BR5.Enabled := true;
  BR6.Enabled := true;
end;

procedure TSupplierReview.BR5Click(Sender: TObject);
var
  i: integer;
begin
  try
    QReport.First;
    for i := 1 to QReport.RecordCount do
    begin
      case QReport.UpdateStatus of
        usInserted:
        begin
          if (QReport.FieldByName('LNO').IsNull) then
          begin
            QReport.Delete;
          end
          else begin
            with QSearch do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT CONVERT(VARCHAR, GETDATE(), 112) + ''-'' + RIGHT(''00000'' + CAST(ISNULL(MAX(CAST(SUBSTRING(LNO, 10, 5) AS INT)), 0) + 1 AS VARCHAR), 5) AS LNO FROM WF_SupplierReview');
              SQL.Add('WHERE LNO LIKE CAST(YEAR(GETDATE()) AS VARCHAR) + ''%'' AND Type = ''Yearly''');
              Active := true;
            end;

            QReport.Edit;
            QReport.FieldByName('LNO').Value := QSearch.FieldByName('LNO').AsString;
            QReport.FieldByName('GSBH').Value := main.Edit2.Text;
            if QReport.FieldByName('SFL').AsString='' then QReport.fieldbyname('SFL').Value:='TM';
            QReport.FieldByName('UserID').Value := main.Edit1.Text;
            UP_Report.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QReport.FieldByName('YN').Value = 0) then
          begin
            UP_Report.Apply(ukDelete);
          end else
          begin
            QReport.Edit;
            QReport.FieldByName('UserID').Value := main.Edit1.text;
            UP_Report.Apply(ukModify);
          end;
        end;
      end;

      QReport.Next;
    end;

    QReport.Active := false;
    QReport.CachedUpdates := false;
    QReport.RequestLive := false;
    QReport.Active := true;
    QSupList.Active:=true;
    BR5.Enabled := false;
    BR6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSupplierReview.BR6Click(Sender: TObject);
begin
  with QReport do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BR5.Enabled := false;
  BR6.Enabled := false;
end;

procedure TSupplierReview.PC3Change(Sender: TObject);
begin
  if (PC3.ActivePageIndex = 0) then
  begin
    Panel5.Visible := true;
    Panel6.Visible := false;
  end
  else begin              
    Panel6.Visible := true;
    Panel5.Visible := false;
  end;
end;

procedure TSupplierReview.QQuarterAfterOpen(DataSet: TDataSet);
begin
  //BS4.Enabled := true;
  //BS8.Enabled := true;
end;

procedure TSupplierReview.BS8Click(Sender: TObject);
begin
  BR8Click(Nil);
end;

procedure TSupplierReview.BS4Click(Sender: TObject);
begin
  if (QReport.FieldByName('Status').AsString = '已結案') or (QReport.FieldByName('Status').AsString = '審核中') then begin
    showmessage('This report cant Modify now!');
    exit;
  end;
  with QSupList do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  //
  DBGridEh5.Columns[0].ButtonStyle := cbsEllipsis;
  BS5.Enabled := true;
  BS6.Enabled := true;
end;

procedure TSupplierReview.BS5Click(Sender: TObject);
var i: integer;
begin
  try
    QSupList.First;
    for i := 1 to QSupList.RecordCount do
    begin
      case QSupList.UpdateStatus of
        usInserted:
        begin
          QSupList.Edit;
          QSupList.FieldByName('LNO').Value := QReport.FieldByName('LNO').AsString;
          QSupList.FieldByName('UserID').Value := main.Edit1.Text;
          UP_SupList.Apply(ukInsert);
        end;

        usModified:
        begin
          if (QSupList.FieldByName('YN').Value = 0) then
          begin
            UP_SupList.Apply(ukDelete);
          end else
          begin
            QSupList.Edit;
            QSupList.FieldByName('UserID').Value := main.Edit1.text;
            UP_SupList.Apply(ukModify);
            //
            with Qtemp do
            begin
              active:=false;
              sql.Clear;
              sql.Add('select SupplierID from WF_SupplierReviewSS where LNO = '''+QSupList.FieldByName('LNO').Value+''' and SupplierID ='''+QSupList.FieldByName('SupplierID').OldValue+''' ');
              active:=true;
              if RecordCount>0 then
              begin
                Qtemp.Active:=false;
                Qtemp.SQL.Clear;
                Qtemp.SQL.Add('Delete from WF_SupplierReviewSS where LNO = '''+QSupList.FieldByName('LNO').Value+''' and SupplierID ='''+QSupList.FieldByName('SupplierID').OldValue+''' ');
                ExecSQL;
              end;
            end;
          end;
        end;
      //
      end;
      QSupList.Next;
    end;
    //
    QSupList.Active := false;
    QSupList.CachedUpdates := false;
    QSupList.RequestLive := false;
    QSupList.Active := true;
    DBGridEh5.Columns[0].ButtonStyle := cbsNone;
    BS5.Enabled := false;
    BS6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSupplierReview.BS6Click(Sender: TObject);
begin
  with QSupList do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  //
  DBGridEh5.Columns[0].ButtonStyle := cbsNone;
  BS5.Enabled := false;
  BS6.Enabled := false;
end;

procedure TSupplierReview.BR7Click(Sender: TObject);
begin
  Close;
end;

procedure TSupplierReview.BS7Click(Sender: TObject);
begin
  Close;
end;

procedure TSupplierReview.PC2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BB5.Enabled) OR (BD5.Enabled) OR (BR5.Enabled) OR (BS5.Enabled) then
  begin
    ShowMessage('Please save the data before you change the tab.');
    AllowChange := false;
  end;
end;

procedure TSupplierReview.PC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BB5.Enabled) OR (BD5.Enabled) then
  begin
    ShowMessage('Please save the data before you change the tab.');
    AllowChange := false;
  end;
end;

procedure TSupplierReview.PC3Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BR5.Enabled) OR (BS5.Enabled) then
  begin
    ShowMessage('Please save the data before you change the tab.');
    AllowChange := false;
  end;
end;

procedure TSupplierReview.QReportNewRecord(DataSet: TDataSet);
begin
  QReport.FieldByName('LNO').Value := 'Auto-Generated';
end;

procedure TSupplierReview.DBGridEh6Columns3UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
begin
  if (QReportS.RecordCount = 0) then
  begin
    Text := '';
    ShowMessage('You can''t set a result to a supplier without any score');
  end;
end;

procedure TSupplierReview.DBGridEh2Columns5UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var
  Total, val: integer;
begin
  if QSupplierS.FieldByName('Remark').AsString='' then    //20230327 key in remark can modify Quality
  begin
    if (Value = '') then
      val := 0
    else if (Value > 20) then
      val := 20
    else
      val := Value;
  end else
  begin
    val := Value;
  end;
  Text := IntToStr(val);
  Total := QSupplierS.FieldByName('ETD').AsInteger + QSupplierS.FieldByName('Cooperation').AsInteger + val;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReview.DBGridEh2Columns6UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var
  Total, val: integer;
begin
  if QSupplierS.FieldByName('Remark').AsString='' then   //20230602 key in remark can modify ETD
  begin
    if (Value = '') then
      val := 0
    else if (Value > 20) then
      val := 20
    else
      val := Value;
  end else
  begin
    val := Value;
  end;
  Text := IntToStr(val);
  Total := QSupplierS.FieldByName('Quality').AsInteger + QSupplierS.FieldByName('Cooperation').AsInteger + val;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReview.DBGridEh2Columns7UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var
  Total, val: integer;
begin           
  if (Value = '') then
    val := 0
  else if (Value > 20) then
    val := 20
  else
    val := Value;
  Text := IntToStr(val);
  Total := QSupplierS.FieldByName('Quality').AsInteger + QSupplierS.FieldByName('ETD').AsInteger + val;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;
Function ERPTrunc(value:double;demical:integer):double;
var valueF:double;
begin
  valueF:=value*power(10,-1*demical)+0.5;
  valueF:=trunc(valueF);
  result:=valueF/power(10,-1*demical);
end;
procedure TSupplierReview.DBGridEh2Columns2UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var
  Total,val: integer;
  Score : double;
begin
  if (Value = '') then
    val := 0
  else
    val := Value;
  Text := IntToStr(val);
  
  if (QSupplierS.FieldByName('Qualified').IsNull = false) then
  begin
    if (QSupplierS.FieldByName('Qualified').AsInteger > val) then
      QSupplierS.FieldByName('Qualified').Value := val;

    Score := Trunc(50 / val * QSupplierS.FieldByName('Qualified').AsInteger);
    if (Score > 50) then
      QSupplierS.FieldByName('Quality').Value := 50
    else
      QSupplierS.FieldByName('Quality').Value := Score;
  end;

  if (QSupplierS.FieldByName('OnTime').IsNull = false) then
  begin
    if (QSupplierS.FieldByName('OnTime').AsInteger > val) then
      QSupplierS.FieldByName('OnTime').Value := val;

    //Score := Trunc(30 / val * QSupplierS.FieldByName('OnTime').AsInteger);
    //20230509 round ex 22.5 to 23
    Score := ERPTrunc((30 / val * QSupplierS.FieldByName('OnTime').AsInteger),0);
    if (Score > 30) then
      QSupplierS.FieldByName('ETD').Value := 30
    else
      QSupplierS.FieldByName('ETD').Value := Score;
  end;

  Total := QSupplierS.FieldByName('Quality').AsInteger + QSupplierS.FieldByName('ETD').AsInteger + QSupplierS.FieldByName('Cooperation').AsInteger;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReview.DBGridEh2Columns3UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var
  Total, Score, val: integer;
begin
  if (Value = '') then
    val := 0
  else if (Value > QSupplierS.FieldByName('Times').AsInteger) then
    val := QSupplierS.FieldByName('Times').AsInteger
  else
    val := Value;
  Text := IntToStr(val);

  Score := Trunc(50 / QSupplierS.FieldByName('Times').AsInteger * val);
  if (Score > 50) then
    QSupplierS.FieldByName('Quality').Value := 50
  else
    QSupplierS.FieldByName('Quality').Value := Score;

  Total := QSupplierS.FieldByName('Quality').AsInteger + QSupplierS.FieldByName('ETD').AsInteger + QSupplierS.FieldByName('Cooperation').AsInteger;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReview.DBGridEh2Columns4UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var
  Total, val: integer;
  Score : double;
begin
  if (Value = '') then
    val := 0
  else if (Value > QSupplierS.FieldByName('Times').AsInteger) then
    val := QSupplierS.FieldByName('Times').AsInteger
  else
    val := Value;
  Text := IntToStr(val);
  
  //Score := Trunc(30 / QSupplierS.FieldByName('Times').AsInteger * val);
  //20230509 round ex 22.5 to 23
  Score := ERPTrunc((30 / QSupplierS.FieldByName('Times').AsInteger * val),0);
  if (Score > 30) then
    QSupplierS.FieldByName('ETD').Value := 30
  else
    QSupplierS.FieldByName('ETD').Value := Score;

  Total := QSupplierS.FieldByName('Quality').AsInteger + QSupplierS.FieldByName('ETD').AsInteger + QSupplierS.FieldByName('Cooperation').AsInteger;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReview.BS2Click(Sender: TObject);
begin
  if (QReport.FieldByName('Status').AsString = '已結案') or (QReport.FieldByName('Status').AsString = '審核中') then begin
    showmessage('This report cant Insert!');
    exit;
  end;
  QQuarter.Active := false;
  QReportS.Active := false;
  with QSupList do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;
  //
  BS5.Enabled := true;
  BS6.Enabled := true;
  DBGridEh5.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSupplierReview.QSupListAfterOpen(DataSet: TDataSet);
begin
  if (QSupList.RecordCount > 0) then
  begin
    QQuarter.Active := true;
    QReportS.Active := true;
  end
  else begin
    QQuarter.Active := false;
    QReportS.Active := false;
  end;
  BS2.Enabled := true;
  BS4.Enabled := true;
  BS8.Enabled := true;
end;

procedure TSupplierReview.DBGridEh5EditButtonClick(Sender: TObject);
begin
  if (SupplierReview_ZSDH <> Nil) then
    SupplierReview_ZSDH.Close;
  SupplierReview_ZSDH := TSupplierReview_ZSDH.Create(Self);
  SupplierReview_ZSDH.ShowModal;
end;

procedure TSupplierReview.Modify1Click(Sender: TObject);
begin
  with QQuarter do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  //
  DBGridEh6.Columns[3].ButtonStyle := cbsAuto;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TSupplierReview.Save1Click(Sender: TObject);
var i:integer;
begin
  try
    QQuarter.First;
    for i := 1 to QQuarter.RecordCount do
    begin
      case QQuarter.UpdateStatus of
        usModified:
        begin
          if (QQuarter.FieldByName('YN').IsNull) then
          begin
            QQuarter.Edit;
            QQuarter.FieldByName('UserID').Value := main.Edit1.text;
            UP_Quarter.Apply(ukInsert);
          end
          else begin
            QQuarter.Edit;
            QQuarter.FieldByName('UserID').Value := main.Edit1.text;
            UP_Quarter.Apply(ukModify);
          end;
        end;
      end;
      QQuarter.Next;
    end;
    //
    QQuarter.Active := false;
    QQuarter.CachedUpdates := false;
    QQuarter.RequestLive := false;
    QQuarter.Active := true;
    DBGridEh6.Columns[3].ButtonStyle := cbsNone;
    Save1.Enabled:=false;
    Cancel1.Enabled:=false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
  
end;

procedure TSupplierReview.Cancel1Click(Sender: TObject);
begin
  with QQuarter do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  //
  DBGridEh6.Columns[3].ButtonStyle := cbsNone;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TSupplierReview.ResendClick(Sender: TObject);
begin
  if messagedlg('Do you want to resend?',mtconfirmation,[mbYes,MbNo],0)=mrYes then
  begin
    if ((QReport.FieldByName('flowflag1').Value='Z') and (QReport.FieldByName('flowflag2').Value='Z') and (QReport.FieldByName('flowflag3').Value='Z') and (QReport.FieldByName('flowflag4').Value='Z')) then
    begin
      ShowMessage('Approve successfully, can not resend.');
    end else if (QReport.FieldByName('flowflag').Value<>'Z') then
    begin
      ShowMessage('Approve not yet finish, can not resend.');
    end else
    begin
      with Qtemp do
      begin
        active:=false;
        SQL.Clear;
        SQL.Add('update WF_SupplierReview set flowflag = NULL where LNO ='''+QReport.FieldByName('LNO').AsString+''' and Type =''Yearly'' ');
        ExecSQL;
        active:=false;
      end;
      Button2Click(nil);
    end;
  end;
  //
end;

procedure TSupplierReview.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QReport.FieldByName('YN').AsString = '0') then
    DBGridEh4.Canvas.Font.Color := clRed;
end;


procedure TSupplierReview.bbt6Click(Sender: TObject);
var
  eclApp, WorkBook, WorkSheet, ExcelRange: OleVariant;
  i, j: Integer;
  Title: string;
begin
  if not Query1.Active then
    Query1.Open;  // Ensure Query1 is active

  if Query1.RecordCount = 0 then
  begin
    ShowMessage('No record.');
    Abort;
  end;

  if not DirectoryExists(AppDir + 'Additional\') then
    ForceDirectories(AppDir + 'Additional\');

  CopyFile(PChar('\\' + main.ServerIP + '\liy_erp\Additional\Purchase_SN52Month.xlsx'),
           PChar(AppDir + 'Additional\Purchase_SN52Month.xlsx'), False);

  if FileExists(AppDir + 'Additional\Purchase_SN52Month.xlsx') then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook := eclApp.WorkBooks.Open(AppDir + 'Additional\Purchase_SN52Month.xlsx');
      WorkSheet := WorkBook.WorkSheets[1];
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    try
      WorkSheet.Activate;
      j := 7;
      Query1.First;

      Title := 'Thang ' + Query1.FieldByName('MONTH').AsString + ' 月/ nam ' + Query1.FieldByName('YEAR').AsString + ' 年';
      WorkSheet.Cells[4, 1] := Title;

      for i := 1 to Query1.RecordCount do
      begin
        WorkSheet.Cells[j, 1] := Query1.FieldByName('Seq').Value;
        WorkSheet.Cells[j, 2] := Query1.FieldByName('ZSYWJC').Value;
        WorkSheet.Cells[j, 3] := Query1.FieldByName('Times').Value;
        WorkSheet.Cells[j, 4] := Query1.FieldByName('Qualified').Value;
        WorkSheet.Cells[j, 5] := Query1.FieldByName('OnTime').Value;
        WorkSheet.Cells[j, 6] := Query1.FieldByName('Quality').Value;
        WorkSheet.Cells[j, 7] := Query1.FieldByName('ETD').Value;
        WorkSheet.Cells[j, 8] := Query1.FieldByName('Cooperation').Value;
        WorkSheet.Cells[j, 9] := Query1.FieldByName('Total').Value;

        // Add borders to the current row
        ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 1], WorkSheet.Cells[j, 10]];
        ExcelRange.Borders.LineStyle := 1;  // xlContinuous
        ExcelRange.Borders.Weight := 2;    // xlThin



        Query1.Next;
        Inc(j);
      end;
      //ShowMessage(IntToStr(i));
      
      ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 1], WorkSheet.Cells[j, 10]];
      ExcelRange.MergeCells := True;
      WorkSheet.Cells[j, 1].HorizontalAlignment := -4131;                                 //Can le trai
      WorkSheet.Cells[j, 1] := 'Chat luong: (So dot dat yeu cau/ so dot hang giao) x50';

      ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+1, 1], WorkSheet.Cells[j+1, 10]];
      ExcelRange.MergeCells := True;
      WorkSheet.Cells[j+1, 1].HorizontalAlignment := -4131;
      WorkSheet.Cells[j+1, 1] := '品質 : (交貨合格批數/期間總交貨批數)*50分';

      ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+2, 1], WorkSheet.Cells[j+2, 10]];
      ExcelRange.MergeCells := True;
      WorkSheet.Cells[j+2, 1].HorizontalAlignment := -4131;
      WorkSheet.Cells[j+2, 1] := 'Giao hang (So dot giao hang dung thoi han/Tong so dot giao hang trong ky) x30';

      ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+3, 1], WorkSheet.Cells[j+3, 10]];
      ExcelRange.MergeCells := True;
      WorkSheet.Cells[j+3, 1].HorizontalAlignment := -4131;
      WorkSheet.Cells[j+3, 1] := '交期： (準時貨批數/期間總訂貨批數)*30分';

      ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+4, 1], WorkSheet.Cells[j+4, 10]];
      ExcelRange.MergeCells := True;
      WorkSheet.Cells[j+4, 1].HorizontalAlignment := -4131;                                 
      WorkSheet.Cells[j+4, 1] := 'Muc do phoi hop 配合度 : 15-20分';

      j := j + 5;
      ExcelRange := WorkSheet.Range[WorkSheet.Cells[j - 5, 1], WorkSheet.Cells[j - 1, 10]];
      ExcelRange.Borders.LineStyle := 1;
      ExcelRange.Borders.Weight := 2;


      //----------------------------
      Inc(j);
     ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 1], WorkSheet.Cells[j, 2]];
     ExcelRange.MergeCells := True;
     WorkSheet.Cells[j, 1] := 'Chu quan  主管';

     ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 3], WorkSheet.Cells[j, 4]];
     ExcelRange.MergeCells := True;
     WorkSheet.Cells[j, 3] := '';

     ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 5], WorkSheet.Cells[j, 7]];
     ExcelRange.MergeCells := True;
     WorkSheet.Cells[j, 5] := 'Nguoi lap bieu  主管';

     ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 7], WorkSheet.Cells[j, 9]];
     ExcelRange.MergeCells := True;
     WorkSheet.Cells[j, 10] := 'T-DCC-027B';


      WorkSheet.Columns.AutoFit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except
      on F: Exception do
        ShowMessage(F.Message);
    end;
  end;
end;



procedure TSupplierReview.BitBtn1Click(Sender: TObject);
var
  eclApp, WorkBook, WorkSheet, ExcelRange: OleVariant;
  i, j, SupplierIndex,RowOffset: Integer;
  Title, Month: string;
begin
  if not Query2.Active then
    Query2.Open;  // Ensure Query2 is active
  if Query2.RecordCount = 0 then
  begin
    ShowMessage('No record.');
    Abort;
  end;

  if not DirectoryExists(AppDir + 'Additional\') then
    ForceDirectories(AppDir + 'Additional\');

  CopyFile(PChar('\\' + main.ServerIP + '\liy_erp\Additional\Purchase_SN52Year.xlsx'),
           PChar(AppDir + 'Additional\Purchase_SN52Year.xlsx'), False);

  if FileExists(AppDir + 'Additional\Purchase_SN52Year.xlsx') then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook := eclApp.WorkBooks.Open(AppDir + 'Additional\Purchase_SN52Year.xlsx');
      WorkSheet := WorkBook.WorkSheets[1];
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    try
      WorkSheet.Activate;
      j := 4;
      SupplierIndex := 0;
      Query2.First;

      Title := 'Nam ' + IntToStr(SupplierReview.QReport.FieldByName('Year').AsInteger) + ' 年';
      WorkSheet.Cells[3, 1] := Title;

      with Query2 do
      begin
        while not EOF do
        begin
          //---------------------------------------------------- Start
          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 1], WorkSheet.Cells[j, 5]];
          ExcelRange.MergeCells := True;
          WorkSheet.Cells[j, 1] := 'Ten nha cung ung 廠商名稱';

          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 6], WorkSheet.Cells[j, 17]];
          ExcelRange.MergeCells := True;
          WorkSheet.Cells[j, 6] := FieldByName('ZSYWJC').AsString;

          //----------------------------------------------------
          WorkSheet.Cells[j+1, 1] := 'Thanh tich 成績';

          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+1, 2], WorkSheet.Cells[j+1, 5]];
          ExcelRange.MergeCells := True;
          WorkSheet.Cells[j+1, 2] := 'Quy 1季';

          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+1, 6], WorkSheet.Cells[j+1, 9]];
          ExcelRange.MergeCells := True;
          WorkSheet.Cells[j+1, 6] := 'Quy 2季';

          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+1, 10], WorkSheet.Cells[j+1, 13]];
          ExcelRange.MergeCells := True;
          WorkSheet.Cells[j+1, 10] := 'Quy 3季';

          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+1, 14], WorkSheet.Cells[j+1, 17]];
          ExcelRange.MergeCells := True;
          WorkSheet.Cells[j+1, 14] := 'Quy 4季';

          //----------------------------------------------------

          WorkSheet.Cells[j+2, 1] := 'Thang 月份';

          WorkSheet.Cells[j+2, 2] := '1';

          WorkSheet.Cells[j+2, 3] := '2';

          WorkSheet.Cells[j+2, 4] := '3';

          WorkSheet.Cells[j+2, 5] := 'ok/ng';

          WorkSheet.Cells[j+2, 6] := '4';

          WorkSheet.Cells[j+2, 7] := '5';

          WorkSheet.Cells[j+2, 8] := '6';

          WorkSheet.Cells[j+2, 9] := 'ok/ng';

          WorkSheet.Cells[j+2, 10] := '7';

          WorkSheet.Cells[j+2, 11] := '8';

          WorkSheet.Cells[j+2, 12] := '9';

          WorkSheet.Cells[j+2, 13] := 'ok/ng';

          WorkSheet.Cells[j+2, 14] := '10';

          WorkSheet.Cells[j+2, 15] := '11';

          WorkSheet.Cells[j+2, 16] := '12';

          WorkSheet.Cells[j+2, 17] := 'ok/ng';


          //----------------------------------------------------

          WorkSheet.Cells[j+3, 1] := 'Chat luong 品質';

          WorkSheet.Cells[j+3, 2] := FieldByName('1_Quality').AsString;
          WorkSheet.Cells[j+3, 3] := FieldByName('2_Quality').AsString;
          WorkSheet.Cells[j+3, 4] := FieldByName('3_Quality').AsString;
          WorkSheet.Cells[j+3, 6] := FieldByName('4_Quality').AsString;
          WorkSheet.Cells[j+3, 7] := FieldByName('5_Quality').AsString;
          WorkSheet.Cells[j+3, 8] := FieldByName('6_Quality').AsString;
          WorkSheet.Cells[j+3, 10] := FieldByName('7_Quality').AsString;
          WorkSheet.Cells[j+3, 11] := FieldByName('8_Quality').AsString;
          WorkSheet.Cells[j+3, 12] := FieldByName('9_Quality').AsString;
          WorkSheet.Cells[j+3, 14] := FieldByName('10_Quality').AsString;
          WorkSheet.Cells[j+3, 15] := FieldByName('11_Quality').AsString;
          WorkSheet.Cells[j+3, 16] := FieldByName('12_Quality').AsString;
          
          //----------------------------------------------------

          WorkSheet.Cells[j+4, 1] := 'Giao hang 交期';

          WorkSheet.Cells[j+4, 2] := FieldByName('1_ETD').AsString;
          WorkSheet.Cells[j+4, 3] := FieldByName('2_ETD').AsString;
          WorkSheet.Cells[j+4, 4] := FieldByName('3_ETD').AsString;
          WorkSheet.Cells[j+4, 6] := FieldByName('4_ETD').AsString;
          WorkSheet.Cells[j+4, 7] := FieldByName('5_ETD').AsString;
          WorkSheet.Cells[j+4, 8] := FieldByName('6_ETD').AsString;
          WorkSheet.Cells[j+4, 10] := FieldByName('7_ETD').AsString;
          WorkSheet.Cells[j+4, 11] := FieldByName('8_ETD').AsString;
          WorkSheet.Cells[j+4, 12] := FieldByName('9_ETD').AsString;
          WorkSheet.Cells[j+4, 14] := FieldByName('10_ETD').AsString;
          WorkSheet.Cells[j+4, 15] := FieldByName('11_ETD').AsString;
          WorkSheet.Cells[j+4, 16] := FieldByName('12_ETD').AsString;

          //----------------------------------------------------

          WorkSheet.Cells[j+5, 1] := 'Phoi hop 配合度';

          WorkSheet.Cells[j+5, 2] := FieldByName('1_Cooperation').AsString;
          WorkSheet.Cells[j+5, 3] := FieldByName('2_Cooperation').AsString;
          WorkSheet.Cells[j+5, 4] := FieldByName('3_Cooperation').AsString;
          WorkSheet.Cells[j+5, 6] := FieldByName('4_Cooperation').AsString;
          WorkSheet.Cells[j+5, 7] := FieldByName('5_Cooperation').AsString;
          WorkSheet.Cells[j+5, 8] := FieldByName('6_Cooperation').AsString;
          WorkSheet.Cells[j+5, 10] := FieldByName('7_Cooperation').AsString;
          WorkSheet.Cells[j+5, 11] := FieldByName('8_Cooperation').AsString;
          WorkSheet.Cells[j+5, 12] := FieldByName('9_Cooperation').AsString;
          WorkSheet.Cells[j+5, 14] := FieldByName('10_Cooperation').AsString;
          WorkSheet.Cells[j+5, 15] := FieldByName('11_Cooperation').AsString;
          WorkSheet.Cells[j+5, 16] := FieldByName('12_Cooperation').AsString;

          //----------------------------------------------------

          WorkSheet.Cells[j+6, 1] := 'Tong cong 合計';

          WorkSheet.Cells[j+6, 2] := FieldByName('1_Total').AsString;
          WorkSheet.Cells[j+6, 3] := FieldByName('2_Total').AsString;
          WorkSheet.Cells[j+6, 4] := FieldByName('3_Total').AsString;
          WorkSheet.Cells[j+6, 6] := FieldByName('4_Total').AsString;
          WorkSheet.Cells[j+6, 7] := FieldByName('5_Total').AsString;
          WorkSheet.Cells[j+6, 8] := FieldByName('6_Total').AsString;
          WorkSheet.Cells[j+6, 10] := FieldByName('7_Total').AsString;
          WorkSheet.Cells[j+6, 11] := FieldByName('8_Total').AsString;
          WorkSheet.Cells[j+6, 12] := FieldByName('9_Total').AsString;
          WorkSheet.Cells[j+6, 14] := FieldByName('10_Total').AsString;
          WorkSheet.Cells[j+6, 15] := FieldByName('11_Total').AsString;
          WorkSheet.Cells[j+6, 16] := FieldByName('12_Total').AsString;
          
          //---------------------------------------------------- Merge cot ok/ng
          //Quy1
          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+3, 5], WorkSheet.Cells[j+6, 5]];
          ExcelRange.MergeCells := True;
          //Quy2
          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+3, 9], WorkSheet.Cells[j+6, 9]];
          ExcelRange.MergeCells := True;
          //Quy3
          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+3, 13], WorkSheet.Cells[j+6, 13]];
          ExcelRange.MergeCells := True;
          //Quy4
          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+3, 17], WorkSheet.Cells[j+6, 17]];
          ExcelRange.MergeCells := True;

           //----------------------------------------------------End

           
          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 1], WorkSheet.Cells[j + 6, 17]]; // Adjust the range as needed
          ExcelRange.Borders.LineStyle := 1;  // xlContinuous
          ExcelRange.Borders.Weight := 2;  // xlThin



          for i := 1 to 12 do
          begin
            if (Length(IntToStr(i)) = 1) then
              Month := '0' + IntToStr(i)
            else
              Month := IntToStr(i);

          end;

          for i := 1 to 4 do
          begin
            //WorkSheet.Cells[j + 13, i + 2] := FieldByName('Result_' + IntToStr(i)).AsString;
          end;

          SupplierIndex := SupplierIndex + 1;

          ExcelRange := WorkSheet.Range[WorkSheet.Cells[j, 1], WorkSheet.Cells[j + 6, 17]]; 
          ExcelRange.HorizontalAlignment := -4108;

          //Xong 1 bang roi moi tao bang tiep theo
          j := j + 9;

          Next;
        end;
         //----------------------------------------------------
        WorkSheet.Cells[j, 1] := 'Hang quy danh gia:';

        ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+1, 2], WorkSheet.Cells[j+1, 9]];
        ExcelRange.MergeCells := True;
        WorkSheet.Cells[j+1, 2] := 'OK: Tiep tuc giao dich';
        ExcelRange.HorizontalAlignment := -4152;
        ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+2, 2], WorkSheet.Cells[j+2, 9]];
        ExcelRange.MergeCells := True;
        WorkSheet.Cells[j+2, 2] := 'NG: Trinh tong giam doc quyet dinh';
        ExcelRange.HorizontalAlignment := -4152;
        ExcelRange := WorkSheet.Range[WorkSheet.Cells[j+3, 16], WorkSheet.Cells[j+3, 17]];
        ExcelRange.MergeCells := True;
        WorkSheet.Cells[j+3, 16] := 'T-DCC-028B';
        ExcelRange.HorizontalAlignment := -4152;
      end;

      // AutoFit columns for better display
      //WorkSheet.Columns.AutoFit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except
      on F: Exception do
        ShowMessage(F.Message);
    end;
  end;
end;


end.



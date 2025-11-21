unit SupplierReviewDevelop1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, ExtCtrls, ComCtrls, StdCtrls, GridsEh,
  DBGridEh, Buttons, DateUtils, math, fununit;

type
  TSupplierReviewDevelop = class(TForm)
    PC2: TPageControl;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    BD8: TBitBtn;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    Panel4: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Panel2: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB8: TBitBtn;
    TabSheet4: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    DTP3: TDateTimePicker;
    Button2: TButton;
    DTP4: TDateTimePicker;
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
    DBGridEh4: TDBGridEh;
    TabSheet6: TTabSheet;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    DBGridEh3: TDBGridEh;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    Panel6: TPanel;
    BS2: TBitBtn;
    BS3: TBitBtn;
    BS4: TBitBtn;
    BS5: TBitBtn;
    BS6: TBitBtn;
    BS7: TBitBtn;
    BS8: TBitBtn;
    UP_Supplier: TUpdateSQL;
    UP_SupplierS: TUpdateSQL;
    UP_Report: TUpdateSQL;
    UP_Quarter: TUpdateSQL;
    UP_SupList: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Resend: TMenuItem;
    DS1: TDataSource;
    DS2: TDataSource;
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
    QSupplierSZSYWJC: TStringField;
    QSupplierSSeq: TFloatField;
    QReport: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    QReportType: TStringField;
    QReportStatus: TStringField;
    QReportGSBH: TStringField;
    QReportflowflag: TStringField;
    QReportflowflag1: TStringField;
    QReportflowflag2: TStringField;
    QReportflowflag3: TStringField;
    QReportflowflag4: TStringField;
    QReportSFL: TStringField;
    DS3: TDataSource;
    DS4: TDataSource;
    QSupList: TQuery;
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
    QSupListGSBH: TStringField;
    QSupListSFL: TStringField;
    QQuarter: TQuery;
    QQuarterQuarter: TIntegerField;
    QQuarterMonth: TStringField;
    QQuarterResult: TStringField;
    QQuarterUserID: TStringField;
    QQuarterUserDate: TDateTimeField;
    QQuarterYN: TStringField;
    QQuarterYear: TStringField;
    QQuarterSupplierID: TStringField;
    QQuarterLNO: TStringField;
    QQuarterGSBH: TStringField;
    QQuarterSFL: TStringField;
    DS5: TDataSource;
    DS6: TDataSource;
    QReportS: TQuery;
    QReportSMonth: TStringField;
    QReportSQuality: TFloatField;
    QReportSETD: TFloatField;
    QReportSCooperation: TFloatField;
    QReportSTotal: TFloatField;
    QSearch: TQuery;
    Qtemp: TQuery;
    QSupplierSETD_within_3days: TIntegerField;
    QSupplierSETD_within_Leadtime: TIntegerField;
    QSupplierSETD_within_3days_score: TFloatField;
    QSupplierSETD_within_Leadtime_score: TFloatField;
    QSupListETD_within_3days: TIntegerField;
    QSupListETD_within_Leadtime: TIntegerField;
    QSupListETD_within_3days_score: TFloatField;
    QSupListETD_within_Leadtime_score: TFloatField;
    QReportSETD_within_3days_score: TFloatField;
    QReportSETD_within_Leadtime_score: TFloatField;
    QSupplier: TQuery;
    QSupplierLNO: TStringField;
    QSupplierType: TStringField;
    QSupplierYear: TStringField;
    QSupplierMonth: TStringField;
    QSupplierUserID: TStringField;
    QSupplierUserDate: TDateTimeField;
    QSupplierYN: TStringField;
    QSupplierStatus: TStringField;
    QSupplierflowflag: TStringField;
    QSupplierGSBH: TStringField;
    QSupplierSFL: TStringField;
    QSupplierStotalsamples: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure QSupplierAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
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
    procedure BB8Click(Sender: TObject);
    procedure BD8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BR2Click(Sender: TObject);
    procedure BR3Click(Sender: TObject);
    procedure BR4Click(Sender: TObject);
    procedure BR5Click(Sender: TObject);
    procedure BR6Click(Sender: TObject);
    procedure BR7Click(Sender: TObject);
    procedure QReportAfterOpen(DataSet: TDataSet);
    procedure PC2Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PC3Change(Sender: TObject);
    procedure PC3Changing(Sender: TObject; var AllowChange: Boolean);
    procedure QReportNewRecord(DataSet: TDataSet);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BS2Click(Sender: TObject);
    procedure BS4Click(Sender: TObject);
    procedure BS5Click(Sender: TObject);
    procedure BS6Click(Sender: TObject);
    procedure BS7Click(Sender: TObject);
    procedure QSupListAfterOpen(DataSet: TDataSet);
    procedure DBGridEh5EditButtonClick(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure ResendClick(Sender: TObject);
    procedure BR8Click(Sender: TObject);
    procedure BS8Click(Sender: TObject);
    procedure DBGridEh6Columns3UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure QSupplierSTotalChange(Sender: TField);
    procedure DBGridEh2Columns2UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns3UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns4UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns5UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns6UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns7UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns8UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns9UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns10UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns11UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh2Columns12UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierReviewDevelop: TSupplierReviewDevelop;

implementation

uses main1, SupplierReview_Supplier_Dev1,SupplierReviewDevelop_MonthlyReport1,
  SupplierReview_ZSDH1, Choose_Supplier_Dev1,
  SupplierReviewDevelop_SeasonalReport1;

{$R *.dfm}

procedure TSupplierReviewDevelop.FormClose(Sender: TObject;
  var Action: TCloseAction);
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

procedure TSupplierReviewDevelop.FormDestroy(Sender: TObject);
begin
  SupplierReviewDevelop := Nil;
end;

procedure TSupplierReviewDevelop.FormCreate(Sender: TObject);
var i: integer;
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
end;

procedure TSupplierReviewDevelop.Button1Click(Sender: TObject);
begin
  with QSupplier do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT LNO, GSBH, Type, Year, Month, UserID, UserDate, YN, CASE WHEN ISNULL(flowflag, '''') = '''' THEN ''未上呈'' ELSE CASE WHEN flowflag = ''Z'' THEN ''已結案'' ELSE CASE WHEN flowflag = ''X'' THEN ''已作廢'' ELSE ''審核中'' END END END AS Status,');
    SQL.Add('flowflag, SFL FROM WF_SupplierReview_Dev');
    SQL.Add('WHERE Type = ''Monthly'' AND CONVERT(SmallDateTime, Year + ''/'' + Month + ''/01'') BETWEEN ''' + FormatDateTime('yyyy/MM/DD', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/DD', DTP2.Date) + '''');
    SQL.Add('AND WF_SupplierReview_Dev.GSBH = '''+main.Edit2.Text+''' ');
    SQL.Add('ORDER BY Year, Month');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
  QSupplierS.Active := true;
end;

procedure TSupplierReviewDevelop.BB2Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BB3Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BB4Click(Sender: TObject);
begin
  if (QSupplier.FieldByName('flowflag').AsString <> '') then
  begin
    ShowMessage('This list is already submitted, can not be modify');
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

procedure TSupplierReviewDevelop.BB5Click(Sender: TObject);
var i: integer;
begin
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
              SQL.Add('SELECT CONVERT(VARCHAR, GETDATE(), 112) + ''-'' + RIGHT(''00000'' + CAST(ISNULL(MAX(CAST(SUBSTRING(LNO, 10, 5) AS INT)), 0) + 1 AS VARCHAR), 5) AS LNO FROM WF_SupplierReview_Dev');
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

procedure TSupplierReviewDevelop.BB6Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TSupplierReviewDevelop.QSupplierAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BB8.Enabled := true;
end;

procedure TSupplierReviewDevelop.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QSupplier.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TSupplierReviewDevelop.QSupplierNewRecord(DataSet: TDataSet);
begin
  QSupplier.FieldByName('LNO').Value := 'Auto-Generated';
end;

procedure TSupplierReviewDevelop.BD2Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BD3Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BD4Click(Sender: TObject);
begin
  if (QReport.FieldByName('Status').AsString = '已結案') or (QReport.FieldByName('Status').AsString = '審核中') then begin
    showmessage('This report cant Modify now!');
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

procedure TSupplierReviewDevelop.BD5Click(Sender: TObject);
var i: integer;
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

procedure TSupplierReviewDevelop.BD6Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BD7Click(Sender: TObject);
begin
  Close;
end;

procedure TSupplierReviewDevelop.QSupplierSAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;
  BD8.Enabled := true;
end;

procedure TSupplierReviewDevelop.PC1Change(Sender: TObject);
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

procedure TSupplierReviewDevelop.QSupplierSNewRecord(DataSet: TDataSet);
begin
  QSupplierS.FieldByName('LNO').Value := QSupplier.FieldByName('LNO').AsString;
end;

procedure TSupplierReviewDevelop.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QSupplierS.FieldByName('YN').AsString = '0') then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns0EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if (SupplierReview_Supplier_Dev <> Nil) then
    SupplierReview_Supplier_Dev.Close;
  SupplierReview_Supplier_Dev := TSupplierReview_Supplier_Dev.Create(Self);
  SupplierReview_Supplier_Dev.ShowModal;
end;

procedure TSupplierReviewDevelop.BB8Click(Sender: TObject);
begin
  if (QSupplier.Active) then
  begin
    SupplierReviewDevelop_MonthlyReport := TSupplierReviewDevelop_MonthlyReport.Create(Self);
    SupplierReviewDevelop_MonthlyReport.LoadData;
    SupplierReviewDevelop_MonthlyReport.QuickRep1.Prepare;
    SupplierReviewDevelop_MonthlyReport.QRPage.Expression := '''第'' + PAGENUMBER + ''頁/共' + IntToStr(SupplierReviewDevelop_MonthlyReport.QuickRep1.QRPrinter.PageCount) + '頁''';
    SupplierReviewDevelop_MonthlyReport.QuickRep1.Preview;
    SupplierReviewDevelop_MonthlyReport.Close;
  end;
end;

procedure TSupplierReviewDevelop.BD8Click(Sender: TObject);
begin
  BB8Click(Nil);
end;

procedure TSupplierReviewDevelop.Button2Click(Sender: TObject);
begin
  with QReport do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT LNO, GSBH, Type, Year, UserID, UserDate, YN, CASE WHEN ISNULL(flowflag, '''') = '''' THEN ''未上呈'' ELSE CASE WHEN flowflag = ''Z'' THEN ''已結案'' ELSE CASE WHEN flowflag = ''X'' THEN ''已作廢'' ELSE ''審核中'' END END END AS Status');
    SQL.Add(', flowflag, flowflag1, flowflag2, flowflag3, flowflag4, SFL ');
    SQL.Add('FROM WF_SupplierReview_Dev');
    SQL.Add('WHERE Type = ''Yearly'' AND CAST(Year AS INT) BETWEEN ' + FormatDateTime('yyyy', DTP3.Date) + ' AND ' + FormatDateTime('yyyy', DTP4.Date));
    SQL.Add('AND WF_SupplierReview_Dev.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('ORDER BY Year');
    Active := true;
  end;

  if (QReport.RecordCount > 0) then
  begin
    QSupList.Active := true;
  end
  else begin
    QSupList.Active := false;
  end;
end;

procedure TSupplierReviewDevelop.BR2Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BR3Click(Sender: TObject);
begin
  if (QReport.FieldByName('flowflag').AsString <> '') then
  begin
    ShowMessage('This list is already submitted, can not be deleted.');
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

procedure TSupplierReviewDevelop.BR4Click(Sender: TObject);
begin
  if (QReport.FieldByName('flowflag').AsString <> '') then
  begin
    ShowMessage('This list is already submitted, can not be modify.');
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

procedure TSupplierReviewDevelop.BR5Click(Sender: TObject);
var i: integer;
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
              SQL.Add('SELECT CONVERT(VARCHAR, GETDATE(), 112) + ''-'' + RIGHT(''00000'' + CAST(ISNULL(MAX(CAST(SUBSTRING(LNO, 10, 5) AS INT)), 0) + 1 AS VARCHAR), 5) AS LNO FROM WF_SupplierReview_Dev');
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

procedure TSupplierReviewDevelop.BR6Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BR7Click(Sender: TObject);
begin
  Close;
end;

procedure TSupplierReviewDevelop.QReportAfterOpen(DataSet: TDataSet);
begin
  BR2.Enabled := true;
  BR3.Enabled := true;
  BR4.Enabled := true;
  BR8.Enabled := true;  
end;

procedure TSupplierReviewDevelop.PC2Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BB5.Enabled) OR (BD5.Enabled) OR (BR5.Enabled) OR (BS5.Enabled) then
  begin
    ShowMessage('Please save the data before you change the tab.');
    AllowChange := false;
  end;
end;

procedure TSupplierReviewDevelop.PC1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BB5.Enabled) OR (BD5.Enabled) then
  begin
    ShowMessage('Please save the data before you change the tab.');
    AllowChange := false;
  end;
end;

procedure TSupplierReviewDevelop.PC3Change(Sender: TObject);
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

procedure TSupplierReviewDevelop.PC3Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  if (BR5.Enabled) OR (BS5.Enabled) then
  begin
    ShowMessage('Please save the data before you change the tab.');
    AllowChange := false;
  end;
end;

procedure TSupplierReviewDevelop.QReportNewRecord(DataSet: TDataSet);
begin
  QReport.FieldByName('LNO').Value := 'Auto-Generated';
end;

procedure TSupplierReviewDevelop.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QReport.FieldByName('YN').AsString = '0') then
    DBGridEh4.Canvas.Font.Color := clRed;
end;

procedure TSupplierReviewDevelop.BS2Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BS4Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BS5Click(Sender: TObject);
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
              sql.Add('select SupplierID from WF_SupplierReviewSS_Dev where LNO = '''+QSupList.FieldByName('LNO').Value+''' and SupplierID ='''+QSupList.FieldByName('SupplierID').OldValue+''' ');
              active:=true;
              if RecordCount>0 then
              begin
                Qtemp.Active:=false;
                Qtemp.SQL.Clear;
                Qtemp.SQL.Add('Delete from WF_SupplierReviewSS_Dev where LNO = '''+QSupList.FieldByName('LNO').Value+''' and SupplierID ='''+QSupList.FieldByName('SupplierID').OldValue+''' ');
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

procedure TSupplierReviewDevelop.BS6Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.BS7Click(Sender: TObject);
begin
  Close;
end;

procedure TSupplierReviewDevelop.QSupListAfterOpen(DataSet: TDataSet);
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

procedure TSupplierReviewDevelop.DBGridEh5EditButtonClick(Sender: TObject);
begin
  if (Choose_Supplier_Dev <> Nil) then
    Choose_Supplier_Dev.Close;
  Choose_Supplier_Dev := TChoose_Supplier_Dev.Create(Self);
  Choose_Supplier_Dev.ShowModal;
end;

procedure TSupplierReviewDevelop.Modify1Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.Save1Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.Cancel1Click(Sender: TObject);
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

procedure TSupplierReviewDevelop.ResendClick(Sender: TObject);
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
        SQL.Add('update WF_SupplierReview_Dev set flowflag = NULL where LNO ='''+QReport.FieldByName('LNO').AsString+''' and Type =''Yearly'' ');
        ExecSQL;
        active:=false;
      end;
      Button2Click(nil);
    end;
  end;
end;

procedure TSupplierReviewDevelop.BR8Click(Sender: TObject);
begin
  if (QReport.Active) then
  begin
    SupplierReviewDevelop_SeasonalReport := TSupplierReviewDevelop_SeasonalReport.Create(Self);
    SupplierReviewDevelop_SeasonalReport.LoadData;
    SupplierReviewDevelop_SeasonalReport.QuickRep1.Prepare;
    SupplierReviewDevelop_SeasonalReport.QRPage.Expression := '''第'' + PAGENUMBER + ''頁/共' + IntToStr(SupplierReviewDevelop_SeasonalReport.QuickRep1.QRPrinter.PageCount) + '頁''';
    SupplierReviewDevelop_SeasonalReport.QuickRep1.Preview;
    SupplierReviewDevelop_SeasonalReport.Close;
  end;
end;

procedure TSupplierReviewDevelop.BS8Click(Sender: TObject);
begin
  BR8Click(Nil);
end;

Function ERPTrunc(value:double;demical:integer):double;
var valueF:double;
begin
  valueF:=value*power(10,-1*demical)+0.5;
  valueF:=trunc(valueF);
  result:=valueF/power(10,-1*demical);
end;

procedure TSupplierReviewDevelop.DBGridEh6Columns3UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
begin
  if (QReportS.RecordCount = 0) then
  begin
    Text := '';
    ShowMessage('You can''t set a result to a supplier without any score');
  end;
end;

procedure TSupplierReviewDevelop.QSupplierSTotalChange(Sender: TField);
begin
  if  QSupplierS.FieldByName('Total').Value>100 then
  begin
    ShowMessage('The total score cannot be greater than 100.');
    Abort;
  end;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns2UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  val: integer;
  Total,Score : double;
begin
  if (Value = '') then          //Total samples
    val := 0
  else
    val := Value;
  Text := IntToStr(val);
  //
  if (QSupplierS.FieldByName('ETD_within_3days').IsNull = false) then
  begin
    if (QSupplierS.FieldByName('ETD_within_3days').AsInteger > val) then
      QSupplierS.FieldByName('ETD_within_3days').Value := val;

    Score := RoundTo((20 / val * QSupplierS.FieldByName('ETD_within_3days').AsInteger),-2);
    if (Score > 20) then
      QSupplierS.FieldByName('ETD_within_3days_score').Value := 20
    else
      QSupplierS.FieldByName('ETD_within_3days_score').Value := Score;
  end;

  if (QSupplierS.FieldByName('ETD_within_Leadtime').IsNull = false) then
  begin
    if (QSupplierS.FieldByName('ETD_within_Leadtime').AsInteger > val) then
      QSupplierS.FieldByName('ETD_within_Leadtime').Value := val;

    Score := RoundTo((20 / val * QSupplierS.FieldByName('ETD_within_Leadtime').AsInteger),-2);
    if (Score > 20) then
      QSupplierS.FieldByName('ETD_within_Leadtime_score').Value := 20
    else
      QSupplierS.FieldByName('ETD_within_Leadtime_score').Value := Score;
  end;

  Total := QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns3UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  val: integer;
  Total,Score : double;
begin
  if (Value = '') then             //Times
    val := 0
  else
    val := Value;
  Text := IntToStr(val);

  if (QSupplierS.FieldByName('Qualified').IsNull = false) then
  begin
    if (QSupplierS.FieldByName('Qualified').AsInteger > val) then
      QSupplierS.FieldByName('Qualified').Value := val;

    Score := RoundTo((20 / val * QSupplierS.FieldByName('Qualified').AsInteger),-2);
    if (Score > 20) then
      QSupplierS.FieldByName('Quality').Value := 20
    else
      QSupplierS.FieldByName('Quality').Value := Score;
  end;

  if (QSupplierS.FieldByName('OnTime').IsNull = false) then
  begin
    if (QSupplierS.FieldByName('OnTime').AsInteger > val) then
      QSupplierS.FieldByName('OnTime').Value := val;

    Score := RoundTo((20 / val * QSupplierS.FieldByName('OnTime').AsInteger),-2);
    if (Score > 20) then
      QSupplierS.FieldByName('ETD').Value := 20
    else
      QSupplierS.FieldByName('ETD').Value := Score;
  end;
  //
  Total := QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns4UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  val: integer;
  Total,Score : double;
begin
  if (Value = '') then                                     //Qualified
    val := 0
  else if (Value > QSupplierS.FieldByName('Times').AsInteger) then
    val := QSupplierS.FieldByName('Times').AsInteger
  else
    val := Value;
  Text := IntToStr(val);

  Score := RoundTo((20 / QSupplierS.FieldByName('Times').AsInteger * val),-2);
  if (Score > 20) then
    QSupplierS.FieldByName('Quality').Value := 20
  else
    QSupplierS.FieldByName('Quality').Value := Score;

  Total := QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns5UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  val: integer;
  Total, Score : double;
begin
  if (Value = '') then                    //On time
    val := 0
  else if (Value > QSupplierS.FieldByName('Times').AsInteger) then
    val := QSupplierS.FieldByName('Times').AsInteger
  else
    val := Value;
  Text := IntToStr(val);

  Score := RoundTo((20 / QSupplierS.FieldByName('Times').AsInteger * val),-2);
  if (Score > 20) then
    QSupplierS.FieldByName('ETD').Value := 20
  else
    QSupplierS.FieldByName('ETD').Value := Score;

  Total := QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns6UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  val: integer;
  Total, Score : double;
begin
  if (Value = '') then                   // ETD_within_3days
    val := 0
  else if (Value > QSupplierS.FieldByName('totalsamples').AsInteger) then
    val := QSupplierS.FieldByName('totalsamples').AsInteger
  else
    val := Value;
  Text := IntToStr(val);

  Score := RoundTo((20 / QSupplierS.FieldByName('totalsamples').AsInteger * val),-2);
  if (Score > 20) then
    QSupplierS.FieldByName('ETD_within_3days_score').Value := 20
  else
    QSupplierS.FieldByName('ETD_within_3days_score').Value := Score;

  Total := QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns7UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  val: integer;
  Total, Score : double;
begin
  if (Value = '') then            //ETD_within_Leadtime
    val := 0
  else if (Value > QSupplierS.FieldByName('totalsamples').AsInteger) then
    val := QSupplierS.FieldByName('totalsamples').AsInteger
  else
    val := Value;
  Text := IntToStr(val);

  Score := RoundTo((20 / QSupplierS.FieldByName('totalsamples').AsInteger * val),-2);
  if (Score > 20) then
    QSupplierS.FieldByName('ETD_within_Leadtime_score').Value := 20
  else
    QSupplierS.FieldByName('ETD_within_Leadtime_score').Value := Score;

  Total := QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns8UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  Total, val: double;
begin
  if QSupplierS.FieldByName('Remark').AsString='' then    //key in remark can modify Quality
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
  Text := FloatToStr(val);
  Total := val + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns9UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  Total, val: double;
begin
  if QSupplierS.FieldByName('Remark').AsString='' then   // key in remark can modify ETD
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
  Text := FloatToStr(val);
  Total := val + QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns10UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  Total, val: double;
begin
  if QSupplierS.FieldByName('Remark').AsString='' then   // key in remark can modify ETD_within_3days_score
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
  Text := FloatToStr(val);
  Total := val + QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns11UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  Total, val: double;
begin
  if QSupplierS.FieldByName('Remark').AsString='' then   // key in remark can modify ETD_within_Leadtime_score
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
  Text := FloatToStr(val);
  Total := val + QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('Cooperation').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

procedure TSupplierReviewDevelop.DBGridEh2Columns12UpdateData(
  Sender: TObject; var Text: String; var Value: Variant; var UseText,
  Handled: Boolean);
var
  Total, val: double;
begin
  if (Value = '') then      //Cooperation
    val := 0
  else if (Value > 20) then
    val := 20
  else
    val := Value;
  Text := FloatToStr(val);
  Total := val + QSupplierS.FieldByName('Quality').AsFloat + QSupplierS.FieldByName('ETD').AsFloat + QSupplierS.FieldByName('ETD_within_3days_score').AsFloat + QSupplierS.FieldByName('ETD_within_Leadtime_score').AsFloat;
  if (Total > 0) then
    QSupplierS.FieldByName('Total').Value := Total
  else
    QSupplierS.FieldByName('Total').Value := Null;
end;

end.

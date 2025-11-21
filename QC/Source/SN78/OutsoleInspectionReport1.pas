unit OutsoleInspectionReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBTables,
  GridsEh, comobj, DBGridEh, ComCtrls;

type
  TOutsoleInspectionReport = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Button1: TButton;
    DS1: TDataSource;
    QReport: TQuery;
    DTP1: TDateTimePicker;
    Button2: TButton;
    QReportCRCode: TStringField;
    QReportCampaign_Name: TStringField;
    QReportQuestionnaire_Name: TStringField;
    QReportUnit_Type_Code: TStringField;
    QReportShift: TStringField;
    QReportBottom_Part_Code: TStringField;
    QReportDefect_Code: TStringField;
    QReportModel_Name: TStringField;
    QReportModel_ID: TStringField;
    QReportMold_ID: TStringField;
    QReportMCS_Code: TStringField;
    QReportMultiple_MCS: TStringField;
    QReportComponent_Color_Code: TStringField;
    QReportQty: TFloatField;
    QReportDate: TStringField;
    QReportIndex: TStringField;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutsoleInspectionReport: TOutsoleInspectionReport;

implementation

uses
  main1;

{$R *.dfm}

procedure TOutsoleInspectionReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOutsoleInspectionReport.FormDestroy(Sender: TObject);
begin
  OutsoleInspectionReport := nil;
end;

procedure TOutsoleInspectionReport.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date-2;
  DTP2.Date := Date;
end;

procedure TOutsoleInspectionReport.Button1Click(Sender: TObject);
begin
  with QReport do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT ''VIN VIE'' AS CR_Code, ''Bottom Defect Data Collection - December 2022 - February 2023'' AS Campaign_Name, ');
    SQL.Add(' ''RSM Bottom Defects Form and KPIs'' AS Questionnaire_Name, CONVERT(varchar(10), WOPR_Outsole.UserDate, 101) AS Date, ');
    SQL.Add(' CASE WHEN WOPR_Outsole.Defect = ''Pass'' THEN ''100'' ELSE ''200'' END AS Unit_Type_Code, ');
    SQL.Add(' ''1'' AS Shift, ''200'' AS Bottom_Part_Code, CASE WHEN WOPR_Outsole.Defect = ''Pass'' THEN '''' ELSE WOPR_Outsole.Defect END AS Defect_Code, ');
    SQL.Add(' XXZL.XieMing AS Model_Name, '''' AS Model_ID, ''LYN-'' + WOPR_Outsole.DDMH + ''-'' + CAST(FLOOR(WOPR_Outsole.Size) AS varchar) + WOPR_Outsole.Appended_Mold_Number AS Mold_ID, Outsole_internal_formula.formula_id AS MCS_Code, ');
    SQL.Add(' '''' AS Multiple_MCS, '''' AS Component_Color_Code, SUM(ISNULL(WOPR_Outsole.Qty, 0)) AS Qty, '''' AS Index_Placeholder');
    SQL.Add('FROM WOPR_Outsole');
    SQL.Add('LEFT JOIN XXZL ON WOPR_Outsole.Article = XXZL.ARTICLE');
    SQL.Add('LEFT JOIN Outsole_internal_formula ON WOPR_Outsole.Article = Outsole_internal_formula.Article');
    SQL.Add('WHERE CONVERT(varchar, WOPR_Outsole.UserDate, 111) between :QueryStartDate and :QueryEndDate');
    ParamByName('QueryStartDate').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
    ParamByName('QueryEndDate').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
    SQL.Add('GROUP BY WOPR_Outsole.Article, CONVERT(varchar(10), WOPR_Outsole.UserDate, 101), WOPR_Outsole.Size, WOPR_Outsole.Appended_Mold_Number, ');
    SQL.Add('XXZL.XieMing, WOPR_Outsole.Defect, WOPR_Outsole.DDMH, Outsole_internal_formula.formula_id, WOPR_Outsole.Qty');
    SQL.Add('ORDER BY WOPR_Outsole.Date');
    Active := true;
  end;
end;

procedure TOutsoleInspectionReport.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if (QReport.Active) then
  begin
    if (QReport.RecordCount = 0) then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else
  begin
    ShowMessage('No record.');
    Abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK +
      MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal := '@';
    for i := 1 to QReport.fieldcount do
    begin
      eclApp.Cells(1, i) := QReport.Fields[i - 1].DisplayLabel;
    end;
    QReport.First;
    j := 2;
    while not QReport.Eof do
    begin
      for i := 1 to QReport.FieldCount do
      begin
        eclApp.Cells(j, i) := QReport.Fields[i - 1].Value;
        eclApp.Cells.Cells.item[j, i].font.size := '8';
      end;
      QReport.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    ShowMessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
      ShowMessage(F.Message);
  end;
end;

end.

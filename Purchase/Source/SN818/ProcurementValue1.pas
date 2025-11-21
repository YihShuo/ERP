unit ProcurementValue1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables,
  DateUtils, ComObj;

type
  TProcurementValue = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    ED_SupID: TEdit;
    Label4: TLabel;
    ED_SupName: TEdit;
    Button1: TButton;
    Button2: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1CQDH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1Total_USD: TFloatField;
    Query1Total_VND: TCurrencyField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1ZLBH: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1PlanDate: TDateTimeField;
    CB1: TCheckBox;
    ED_Days: TEdit;
    Query1Pairs: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProcurementValue: TProcurementValue;

implementation

uses
  main1;

{$R *.dfm}

procedure TProcurementValue.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TProcurementValue.FormDestroy(Sender: TObject);
begin
  ProcurementValue := Nil;
end;
       
procedure TProcurementValue.FormCreate(Sender: TObject);
begin
  DTP1.Date := StartOfTheMonth(Date);
  DTP2.Date := Date;
end;

procedure TProcurementValue.Button1Click(Sender: TObject);
var
  Days: integer;
begin
  if (TryStrToInt(ED_Days.Text, Days)) then
  begin
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ZSBH, ZSYWJC, ZLBH, Pairs, CLBH, YWPM, CQDH, Qty, USPrice, VNPrice, USPrice*Qty AS Total_USD, VNPrice*Qty AS Total_VND, YQDate, CFMDate, PlanDate, ShipDate FROM (');
      SQL.Add('  SELECT ZSBH, ZSYWJC, ZLBH, Pairs, CLBH, YWPM, CQDH, Qty, YQDate, CFMDate, PlanDate, ShipDate,');
      SQL.Add('  CASE WHEN ISNULL(USPrice, 0) > 0 THEN USPrice ELSE CASE WHEN ISNULL(VNPrice, 0) = 0 THEN ISNULL(LastUSPrice, 0) ELSE 0 END END AS USPrice,');
      SQL.Add('  CASE WHEN ISNULL(VNPrice, 0) > 0 THEN VNPrice ELSE CASE WHEN ISNULL(USPrice, 0) = 0 THEN ISNULL(LastVNPrice, 0) ELSE 0 END END AS VNPrice FROM (');
      SQL.Add('    SELECT CGZL.ZSBH, ZSZL.ZSYWJC, CGZLSS.ZLBH, DDZL.Pairs, CGZLS.CLBH, CLZL.YWPM, CLZL.CQDH, CGZLSS.Qty, CGZLS.USPrice, LastCost.LastUSPrice,');
      SQL.Add('    CGZLS.VNPrice, LastCost.LastVNPrice, CONVERT(SmallDateTime, CONVERT(VARCHAR, ISNULL(CGZLSS.YQDate, CGZLS.YQDate), 111)) AS YQDate,');
      SQL.Add('    ISNULL(CGZLSS.CFMDate, CGZLS.CFMDate) AS CFMDate, SCZLDate.ADate AS PlanDate, DDZL.ShipDate FROM CGZLS');
      SQL.Add('    LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLS.CGNO AND CGZLSS.CLBH = CGZLS.CLBH');
      SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
      SQL.Add('    LEFT JOIN SCZLDate ON SCZLDate.ZLBH = DDZL.DDBH');
      SQL.Add('    LEFT JOIN CGZL ON CGZL.CGNO = CGZLS.CGNO');
      SQL.Add('    LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH');
      SQL.Add('    LEFT JOIN CLZL ON CLZL.CLDH = CGZLS.CLBH');
      SQL.Add('    LEFT JOIN (');
      SQL.Add('      SELECT CLBH, USPrice AS LastUSPrice, VNPrice AS LastVNPrice FROM (');
      SQL.Add('        SELECT ROW_NUMBER() OVER(PARTITION BY CGZLS.CLBH ORDER BY CGZLS.UserDate DESC) AS Seq, CGZLS.CLBH, CGZLS.USPrice, CGZLS.VNPrice FROM CGZLS');
      SQL.Add('        LEFT JOIN CGZL ON CGZL.CGNO = CGZLS.CGNO');
      SQL.Add('        WHERE CGZL.CGLX IN (''1'', ''2'') AND ISNULL(CGZLS.USPrice, 0) > 0 OR ISNULL(CGZLS.VNPrice, 0) > 0');
      SQL.Add('      ) AS LastUSD');
      SQL.Add('      WHERE Seq = 1');
      SQL.Add('    ) AS LastCost ON LastCost.CLBH = CGZLS.CLBH');
      SQL.Add('    WHERE CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.CGLX IN (''1'', ''2'') AND CGZLS.Qty > 0');
      SQL.Add('    AND CONVERT(SmallDateTime, CONVERT(VARCHAR, ISNULL(CGZLSS.YQDate, CGZLS.YQDate), 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      if (ED_SupID.Text <> '') then
        SQL.Add('    AND CGZL.ZSBH LIKE ''' + ED_SupID.Text + '%''');
      if (ED_SupName.Text <> '') then
        SQL.Add('    AND ZSZL.ZSYWJC LIKE ''%' + ED_SupName.Text + '%''');
      if (CB1.Checked) then
        SQL.Add('    AND DATEDIFF(DAY, CONVERT(VARCHAR, ISNULL(CGZLSS.YQDate, CGZLS.YQDate), 111), DDZL.ShipDate) > ' + ED_Days.Text);
      SQL.Add('  ) AS CGZLS');
      SQL.Add(') AS CGZLS');
      Active := true;
    end;
  end
  else begin
    ShowMessage('Please enter a valid number.');
  end;
end;

procedure TProcurementValue.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: olevariant;
  Col, Row: integer;
begin
  if (Query1.Active) then
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
      for Col:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh1.Columns[Col].Title.Caption;
      end;

      Row := 2;
      Query1.First;
      while not Query1.Eof do
      begin
        for Col:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[Row, Col+1] := Query1.FieldByName(DBGridEh1.Columns[Col].FieldName).Value;
        end;
        Query1.Next;
        Inc(Row);
      end;

      eclApp.Columns.Autofit;
      ShowMessage('Succeed');
      eclApp.Visible := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TProcurementValue.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  Days: integer;
begin
  if (TryStrToInt(ED_Days.Text, Days)) then
  begin
    if (DaysBetween(Query1.FieldByName('YQDate').AsDateTime, Query1.FieldByName('ShipDate').AsDateTime) > Days) then
      DBGridEh1.Canvas.Font.Color := clRed;
  end;
end;

end.

unit UpperRYDialog1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls, DB, DBTables,
  DateUtils;

type
  TUpperRYDialog = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    Label3: TLabel;
    CB_Building: TComboBox;
    CB_Lean: TComboBox;
    Label4: TLabel;
    ED_RY: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    QSearch: TQuery;
    Query1building_no: TStringField;
    Query1lean_no: TStringField;
    Query1DAOMH: TStringField;
    Query1DDBH: TStringField;
    Query1schedule_date: TDateTimeField;
    Query1ARTICLE: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1country: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB_BuildingChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Source: string;
  end;

var
  UpperRYDialog: TUpperRYDialog;

implementation

uses
  ShoeUpperInventory1;

{$R *.dfm}

procedure TUpperRYDialog.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TUpperRYDialog.FormDestroy(Sender: TObject);
begin
  UpperRYDialog := Nil;
end;

procedure TUpperRYDialog.FormCreate(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT building_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date >= DATEADD(MM, DATEDIFF(MM, 0, GETDATE())-1, 0)');
    SQL.Add('ORDER BY building_no');
    Active := true;

    CB_Building.Clear;
    CB_Building.Items.Add('ALL'); 
    CB_Building.ItemIndex := 0;
    while not Eof do
    begin
      CB_Building.Items.Add(FieldByName('building_no').AsString);
      Next;
    end;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SUBSTRING(lean_no, 1, 6) AS lean_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date >= DATEADD(MM, DATEDIFF(MM, 0, GETDATE())-1, 0)');
    SQL.Add('ORDER BY SUBSTRING(lean_no, 1, 6)');
    Active := true;

    CB_Lean.Clear;
    CB_Lean.Items.Add('ALL');  
    CB_Lean.ItemIndex := 0;
    while not Eof do
    begin
      CB_Lean.Items.Add(FieldByName('lean_no').AsString);
      Next;
    end;
  end;
end;
  
procedure TUpperRYDialog.CB_BuildingChange(Sender: TObject);
var
  Lean: string;
begin
  Lean := CB_Lean.Text;

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SUBSTRING(lean_no, 1, 6) AS lean_no FROM schedule_crawler');
    SQL.Add('WHERE schedule_date >= DATEADD(MM, DATEDIFF(MM, 0, GETDATE())-1, 0)');
    if (CB_Building.ItemIndex > 0) then
      SQL.Add('AND building_no = ''' + CB_Building.Text + '''');
    SQL.Add('ORDER BY SUBSTRING(lean_no, 1, 6)');
    Active := true;

    CB_Lean.Clear;
    CB_Lean.Items.Add('ALL');  
    CB_Lean.ItemIndex := 0;
    while not Eof do
    begin
      CB_Lean.Items.Add(FieldByName('lean_no').AsString);
      if (FieldByName('lean_no').AsString = Lean) then
        CB_Lean.ItemIndex := CB_Lean.Items.Count - 1;
      Next;
    end;
  end;
end;

procedure TUpperRYDialog.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;

    if (Source = 'Stock-In') then
    begin
      SQL.Add('SELECT SC.building_no, SC.lean_no, XXZL.DAOMH, DDZL.DDBH, MIN(SC.schedule_date) AS schedule_date, XXZL.ARTICLE, DDZL.ShipDate, LBZLS.YWSM AS country FROM schedule_crawler AS SC');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN LBZLS ON LBZLS.LBDH = DDZL.DDGB AND LBZLS.LB = ''06''');
      SQL.Add('WHERE SC.schedule_date >= DATEADD(MM, DATEDIFF(MM, 0, GETDATE())-1, 0)');
      if (CB_Building.ItemIndex > 0) then
        SQL.Add('AND SC.building_no = ''' + CB_Building.Text + '''');
      if (CB_Lean.ItemIndex > 0) then
        SQL.Add('AND SC.lean_no = ''' + CB_Lean.Text + '''');
      if (ED_RY.Text <> '') then
        SQL.Add('AND DDZL.DDBH LIKE ''' + ED_RY.Text + '%''');
      SQL.Add('GROUP BY SC.building_no, SC.lean_no, XXZL.DAOMH, DDZL.DDBH, XXZL.ARTICLE, DDZL.ShipDate, LBZLS.YWSM');
      SQL.Add('ORDER BY SC.building_no, SC.lean_no, MIN(SC.schedule_date)');
    end
    else if (Source = 'Stock-Out') then
    begin
      SQL.Add('SELECT KCRK.Building AS building_no, KCRK.Lean AS lean_no, XXZL.DAOMH, KCRK.RY AS DDBH, MIN(SC.schedule_date) AS schedule_date, XXZL.ARTICLE, DDZL.ShipDate, LBZLS.YWSM AS country FROM (');
      SQL.Add('  SELECT DISTINCT KCRK.Building, KCRK.Lean, KCRK.RY FROM (');
      SQL.Add('    SELECT KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH, SUM(KCRKS_Upper.Pairs) AS Pairs FROM KCRK_Upper');
      SQL.Add('    LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
      if (ED_RY.Text <> '') then
        SQL.Add('    WHERE KCRK_Upper.RY LIKE ''' + ED_RY.Text + '%''');
      SQL.Add('    GROUP BY KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH');
      SQL.Add('  ) AS KCRK');
      SQL.Add('  LEFT JOIN (');
      SQL.Add('    SELECT KCLL_Upper.RY, KCLLS_Upper.DDBH, SUM(KCLLS_Upper.Pairs) AS Pairs FROM KCLL_Upper');
      SQL.Add('    LEFT JOIN KCLLS_Upper ON KCLLS_Upper.LLNO = KCLL_Upper.LLNO');
      if (ED_RY.Text <> '') then
        SQL.Add('    WHERE KCLL_Upper.RY LIKE ''' + ED_RY.Text + '%''');
      SQL.Add('    GROUP BY KCLL_Upper.RY, KCLLS_Upper.DDBH');
      SQL.Add('  ) AS KCLL ON KCLL.RY = KCRK.RY AND KCLL.DDBH = KCRK.DDBH');
      SQL.Add('  WHERE ISNULL(KCRK.Pairs, 0) > ISNULL(KCLL.Pairs, 0)');
      SQL.Add(') AS KCRK');
      SQL.Add('LEFT JOIN schedule_crawler AS SC ON SC.building_no = KCRK.Building AND SC.lean_no = KCRK.Lean');
      SQL.Add('AND CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END = KCRK.RY');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRK.RY');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN LBZLS ON LBZLS.LBDH = DDZL.DDGB AND LBZLS.LB = ''06''');
      SQL.Add('WHERE 1 = 1');
      if (CB_Building.ItemIndex > 0) then
        SQL.Add('AND KCRK.Building = ''' + CB_Building.Text + '''');
      if (CB_Lean.ItemIndex > 0) then
        SQL.Add('AND KCRK.Lean = ''' + CB_Lean.Text + '''');
      SQL.Add('GROUP BY KCRK.Building, KCRK.Lean, XXZL.DAOMH, KCRK.RY, XXZL.ARTICLE, DDZL.ShipDate, LBZLS.YWSM');
      SQL.Add('ORDER BY KCRK.Building, KCRK.Lean, MIN(SC.schedule_date)');
    end;

    Active := true;
  end;
end;

procedure TUpperRYDialog.DBGridEh1DblClick(Sender: TObject);
begin
  if (Source = 'Stock-In') then
  begin
    with ShoeUpperInventory.Q_UI do
    begin
      Edit;
      FieldByName('Building').Value := Query1.FieldByName('building_no').AsString;
      FieldByName('Lean').Value := Query1.FieldByName('lean_no').AsString;
      FieldByName('DAOMH').Value := Query1.FieldByName('DAOMH').AsString;
      FieldByName('RY').Value := Query1.FieldByName('DDBH').AsString;
      FieldByName('PlanDate').Value := Query1.FieldByName('schedule_date').AsDateTime;
      FieldByName('Article').Value := Query1.FieldByName('ARTICLE').AsString;
      FieldByName('ShipDate').Value := Query1.FieldByName('ShipDate').AsDateTime;
      FieldByName('country').Value := Query1.FieldByName('country').AsString;
    end;
  end
  else if (Source = 'Stock-Out') then
  begin
    with ShoeUpperInventory.Q_UO do
    begin
      Edit;
      FieldByName('Building').Value := Query1.FieldByName('building_no').AsString;
      FieldByName('Lean').Value := Query1.FieldByName('lean_no').AsString;
      FieldByName('DAOMH').Value := Query1.FieldByName('DAOMH').AsString;
      FieldByName('RY').Value := Query1.FieldByName('DDBH').AsString;
      FieldByName('PlanDate').Value := Query1.FieldByName('schedule_date').AsDateTime;
      FieldByName('Article').Value := Query1.FieldByName('ARTICLE').AsString;
      FieldByName('ShipDate').Value := Query1.FieldByName('ShipDate').AsDateTime;
      FieldByName('country').Value := Query1.FieldByName('country').AsString;
    end;
  end;

  Close;
end;

end.

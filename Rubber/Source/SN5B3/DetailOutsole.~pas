unit DetailOutsole;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, ExtCtrls,
  StdCtrls,GridsEh, DBGridEh,ComObj;

type
  TOutsole = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    Query1YSBH: TStringField;
    Query1OUTSOLE: TStringField;
    Query1Qty: TIntegerField;
    Query1InQty: TIntegerField;
    Query1LastInQty: TIntegerField;
    DBGridEh1: TDBGridEh;
    Query1XXCC: TStringField;
    Query1OutQty: TIntegerField;
    Query1LastOutQty: TIntegerField;
    Button1: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    //procedure FormActivate(Sender: TObject);
    //procedure miViewDetailClickClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Outsole: TOutsole;

implementation

uses QRReport1, main1;



{$R *.dfm}


procedure TOutsole.FormDestroy(Sender: TObject);
begin
Outsole:= nil;
end;


procedure TOutsole.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//Query1.Active := False;
  Action := caFree;
  Outsole:= nil;
end;

procedure TOutsole.FormCreate(Sender: TObject);
begin
Query1.active:=true;
end;


(*with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' SELECT B.ZLBH as YSBH,B.SCCX ,A.GJCCs as OUTSOLE,B.Qty,b.InQTy, b.LastInQty');
    sql.add(' FROM ( SELECT XieXing, XXCC, SUBSTRING(GJCC, 3, LEN(GJCC) - 2) AS GJCC, GJCC as GJCCs FROM TB_ERP.dbo.xxgjs WHERE XieXing IN (select XieXing  from DDZL ) AND gjlb = ''101'') A ');
    sql.add(' INNER JOIN ( SELECT b.ZLBH,a.ARTICLE,a.XieMing,c.YSSM,b.XieXing,a.QRCode,a.Qty,a.SCCX ,(sum(WIn)-sum(ROut)) InQTy,(sum(Qty)-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty, sum(ROut) OutQty, (sum(Qty)-sum(ROut)) as LastOutQty');
    sql.add(' FROM TB_DD.dbo.SMDDScanOut a ');
    sql.add(' INNER JOIN dbo.DDZL b ON a.YSBH = b.DDBH ');
    sql.add(' INNER JOIN dbo.xxzl c ON c.XieXing = b.XieXing AND b.SheHao = c.SheHao  ');
    sql.add(' GROUP BY b.ZLBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCode, a.Qty, a.SCCX');
    sql.add(') B ON A.GJCC = B.SCCX ');
    sql.add('  ORDER BY SCCX');
    active:=true;
  end; *)






procedure TOutsole.FormActivate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add(' SELECT B.ZLBH as YSBH,A.XXCC ,A.GJCCs as OUTSOLE,sum(B.Qty) as Qty ,sum (b.InQTy) as InQty, SUM ( b.LastInQty) as LastInQty, SUM ( b.OutQty) as OutQty,SUM ( b.LastOutQty) as LastOutQty ');
    sql.add(' FROM ( SELECT XieXing, XXCC, SUBSTRING(GJCC, 3, LEN(GJCC) - 2) AS GJCC, GJCC as GJCCs FROM TB_ERP.dbo.xxgjs WHERE XieXing IN (select XieXing  from DDZL where DDBH=:YSBH ) AND gjlb = ''101'') A ');
    sql.add(' INNER JOIN ( SELECT b.ZLBH,a.ARTICLE,a.XieMing,c.YSSM,b.XieXing,a.QRCode,a.Qty,a.SCCX ,(sum(WIn)-sum(ROut)) InQTy,(sum(Qty)-(sum(WIn)-sum(ROut))-sum(ROut)) as LastInQty, sum(ROut) OutQty, (sum(Qty)-sum(ROut)) as LastOutQty');
    sql.add(' FROM TB_DD.dbo.SMDDScanOut a ');
    sql.add(' INNER JOIN dbo.DDZL b ON a.YSBH = b.DDBH ');
    sql.add(' INNER JOIN dbo.xxzl c ON c.XieXing = b.XieXing AND b.SheHao = c.SheHao  ');
    sql.add(' where a.YSBH=:YSBH');
    sql.add(' GROUP BY b.ZLBH, a.ARTICLE, a.XieMing, c.YSSM, b.XieXing, a.QRCode, a.Qty, a.SCCX');
    sql.add(') B ON A.GJCC = B.SCCX ');
    sql.add('group by ZLBH,XXCC,GJCC,A.GJCCs');
    sql.add('  ORDER BY XXCC');
    active:=true;
  end;
end;





procedure TOutsole.Button1Click(Sender: TObject);
var
  eclApp, WorkBook, WorkSheet: OleVariant;
  i, j: Integer;
begin
  if not Query1.Active or (Query1.RecordCount = 0) then
  begin
    ShowMessage('No record.');
    Exit;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
  except
    Application.MessageBox('Microsoft Excel is not installed.', 'Error', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  try
    WorkBook := eclApp.Workbooks.Add;
    WorkSheet := WorkBook.Worksheets[1];

    // Ghi tieu ?? c?t
    for i := 0 to DBGridEh1.Columns.Count - 1 do
    begin
      WorkSheet.Cells[1, i + 1] := DBGridEh1.Columns[i].Title.Caption;
      WorkSheet.Cells[1, i + 1].Font.Name := 'Calibri';
      WorkSheet.Cells[1, i + 1].Font.Size := 10;
    end;

    // Ghi d? li?u
    Query1.First;
    j := 2;
    while not Query1.Eof do
    begin
      for i := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        WorkSheet.Cells[j, i + 1] := Query1.Fields[i].AsString;
        WorkSheet.Cells[j, i + 1].Font.Name := 'Calibri';
        WorkSheet.Cells[j, i + 1].Font.Size := 10;
      end;
      Query1.Next;
      Inc(j);
    end;

    // T? ??ng ?i?u ch?nh ?? r?ng c?t
    WorkSheet.Columns.AutoFit;

    ShowMessage('Export successful.');
    eclApp.Visible := True;
  except                                                                                            
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
  end;
end;

end.


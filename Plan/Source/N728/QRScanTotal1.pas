unit QRScanTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ExtCtrls,dateutils,ehlibBDE,comobj;
type
  TQRScanTotal = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit2: TEdit;
    QRScan: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    QRScanDDBH: TStringField;
    QRScanScanTotal_07: TIntegerField;
    QRScanScanInQty_07: TIntegerField;
    QRScanScanOutQty_07: TIntegerField;
    QRScanscantonkho_07: TIntegerField;
    QRScanScanTotal_075: TIntegerField;
    QRScanScanInQty_075: TIntegerField;
    QRScanScanOutQty_075: TIntegerField;
    QRScanscantonkho_075: TIntegerField;
    QRScanScanTotal_08: TIntegerField;
    QRScanScanInQty_08: TIntegerField;
    QRScanScanOutQty_08: TIntegerField;
    QRScanscantonkho_08: TIntegerField;
    QRScanScanTotal_085: TIntegerField;
    QRScanScanInQty_085: TIntegerField;
    QRScanScanOutQty_085: TIntegerField;
    QRScanscantonkho_085: TIntegerField;
    QRScanScanTotal_09: TIntegerField;
    QRScanScanInQty_09: TIntegerField;
    QRScanScanOutQty_09: TIntegerField;
    QRScanscantonkho_09: TIntegerField;
    QRScanScanTotal_095: TIntegerField;
    QRScanScanInQty_095: TIntegerField;
    QRScanScanOutQty_095: TIntegerField;
    QRScanscantonkho_095: TIntegerField;
    QRScanScanTotal_10: TIntegerField;
    QRScanScanInQty_10: TIntegerField;
    QRScanScanOutQty_10: TIntegerField;
    QRScanscantonkho_10: TIntegerField;
    QRScanScanTotal_105: TIntegerField;
    QRScanScanInQty_105: TIntegerField;
    QRScanScanOutQty_105: TIntegerField;
    QRScanscantonkho_105: TIntegerField;
    QRScanScanTotal_11: TIntegerField;
    QRScanScanInQty_11: TIntegerField;
    QRScanScanOutQty_11: TIntegerField;
    QRScanscantonkho_11: TIntegerField;
    QRScanScanTotal_115: TIntegerField;
    QRScanScanInQty_115: TIntegerField;
    QRScanScanOutQty_115: TIntegerField;
    QRScanscantonkho_115: TIntegerField;
    QRScanScanTotal_12: TIntegerField;
    QRScanScanInQty_12: TIntegerField;
    QRScanScanOutQty_12: TIntegerField;
    QRScanscantonkho_12: TIntegerField;
    QRScanScanTotal_125: TIntegerField;
    QRScanScanInQty_125: TIntegerField;
    QRScanScanOutQty_125: TIntegerField;
    QRScanscantonkho_125: TIntegerField;
    DBGrid1: TDBGridEh;
    QRScanScanTotal_035: TIntegerField;
    QRScanScanInQty_035: TIntegerField;
    QRScanScanOutQty_035: TIntegerField;
    QRScanscantonkho_035: TIntegerField;
    QRScanScanTotal_04: TIntegerField;
    QRScanScanInQty_04: TIntegerField;
    QRScanScanOutQty_04: TIntegerField;
    QRScanscantonkho_04: TIntegerField;
    QRScanScanTotal_045: TIntegerField;
    QRScanScanInQty_045: TIntegerField;
    QRScanScanOutQty_045: TIntegerField;
    QRScanscantonkho_045: TIntegerField;
    QRScanScanTotal_05: TIntegerField;
    QRScanScanInQty_05: TIntegerField;
    QRScanScanOutQty_05: TIntegerField;
    QRScanscantonkho_05: TIntegerField;
    QRScanScanTotal_055: TIntegerField;
    QRScanScanInQty_055: TIntegerField;
    QRScanScanOutQty_055: TIntegerField;
    QRScanscantonkho_055: TIntegerField;
    QRScanScanTotal_06: TIntegerField;
    QRScanScanInQty_06: TIntegerField;
    QRScanScanOutQty_06: TIntegerField;
    QRScanscantonkho_06: TIntegerField;
    QRScanScanTotal_065: TIntegerField;
    QRScanScanInQty_065: TIntegerField;
    QRScanScanOutQty_065: TIntegerField;
    QRScanscantonkho_065: TIntegerField;
    QRScanScanTotal_13: TIntegerField;
    QRScanScanInQty_13: TIntegerField;
    QRScanScanOutQty_13: TIntegerField;
    QRScanscantonkho_13: TIntegerField;
    QRScanScanTotal_14: TIntegerField;
    QRScanScanInQty_14: TIntegerField;
    QRScanScanOutQty_14: TIntegerField;
    QRScanscantonkho_14: TIntegerField;
    QRScanScanTotal_15: TIntegerField;
    QRScanScanInQty_15: TIntegerField;
    QRScanScanOutQty_15: TIntegerField;
    QRScanscantonkho_15: TIntegerField;
    QRScanScanTotal_16: TIntegerField;
    QRScanScanInQty_16: TIntegerField;
    QRScanScanOutQty_16: TIntegerField;
    QRScanscantonkho_16: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRScanAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRScanTotal: TQRScanTotal;

implementation
  uses FunUnit;
{$R *.dfm}

procedure TQRScanTotal.Button1Click(Sender: TObject);
begin
  if edit1.text=''
  then
  begin
    ShowMessage('Don hang khong duoc de trong!');
    exit;
  end;
  with QRScan do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('SELECT DDBH,');
    SQL.Add('SUM(CASE WHEN SIZE = ''03.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_03.5'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''03.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_03.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''03.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_03.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''03.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_03.5'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''04'' THEN Qty ELSE 0 END) AS ''ScanTotal_04'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''04'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_04'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''04'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_04'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''04'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_04'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''04.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_04.5'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''04.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_04.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''04.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_04.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''04.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_04.5'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''05'' THEN Qty ELSE 0 END) AS ''ScanTotal_05'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''05'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_05'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''05'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_05'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''05'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_05'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''05.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_05.5'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''05.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_05.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''05.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_05.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''05.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_05.5'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''06'' THEN Qty ELSE 0 END) AS ''ScanTotal_06'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''06'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_06'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''06'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_06'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''06'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_06'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''06.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_06.5'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''06.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_06.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''06.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_06.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''06.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_06.5'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''07'' THEN Qty ELSE 0 END) AS ''ScanTotal_07'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''07'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_07'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''07'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_07'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''07'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_07'',');

	  SQL.Add('SUM(CASE WHEN SIZE = ''07.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_07.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''07.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_07.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''07.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_07.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''07.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_07.5'',');

	  SQL.Add('SUM(CASE WHEN SIZE = ''08'' THEN Qty ELSE 0 END) AS ''ScanTotal_08'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''08'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_08'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''08'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_08'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''08'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_08'',');

	  SQL.Add('SUM(CASE WHEN SIZE = ''08.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_08.5'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''08.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_08.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''08.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_08.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''08.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_08.5'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''09'' THEN Qty ELSE 0 END) AS ''ScanTotal_09'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''09'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_09'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''09'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_09'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''09'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_09'',');

	  SQL.Add('SUM(CASE WHEN SIZE = ''09.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_09.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''09.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_09.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''09.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_09.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''09.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_09.5'',');

	  SQL.Add('SUM(CASE WHEN SIZE = ''10'' THEN Qty ELSE 0 END) AS ''ScanTotal_10'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''10'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_10'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''10'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_10'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''10'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_10'',');
    
	  SQL.Add('SUM(CASE WHEN SIZE = ''10.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_10.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''10.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_10.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''10.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_10.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''10.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_10.5'',');

	  SQL.Add('SUM(CASE WHEN SIZE = ''11'' THEN Qty ELSE 0 END) AS ''ScanTotal_11'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''11'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_11'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''11'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_11'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''11'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_11'',');

	  SQL.Add('SUM(CASE WHEN SIZE = ''11.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_11.5'',');
	  SQL.Add('SUM(CASE WHEN SIZE = ''11.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_11.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''11.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_11.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''11.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_11.5'',');
    
	  SQL.Add('SUM(CASE WHEN SIZE = ''12'' THEN Qty ELSE 0 END) AS ''ScanTotal_12'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''12'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_12'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''12'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_12'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''12'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_12'',');

	  SQL.Add('SUM(CASE WHEN SIZE = ''12.5'' THEN Qty ELSE 0 END) AS ''ScanTotal_12.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''12.5'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_12.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''12.5'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_12.5'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''12.5'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_12.5'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''13'' THEN Qty ELSE 0 END) AS ''ScanTotal_13'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''13'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_13'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''13'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_13'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''13'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_13'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''14'' THEN Qty ELSE 0 END) AS ''ScanTotal_14'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''14'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_14'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''14'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_14'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''14'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_14'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''15'' THEN Qty ELSE 0 END) AS ''ScanTotal_15'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''15'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_15'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''15'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_15'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''15'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_15'',');

    SQL.Add('SUM(CASE WHEN SIZE = ''16'' THEN Qty ELSE 0 END) AS ''ScanTotal_16'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''16'' THEN ScanInQty ELSE 0 END) AS ''ScanInQty_16'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''16'' THEN ScanOutQty ELSE 0 END) AS ''ScanOutQty_16'',');
    SQL.Add('SUM(CASE WHEN SIZE = ''16'' THEN (ScanInQty - ScanOutQty) ELSE 0 END) AS ''scantonkho_16''');
    SQL.Add('FROM CutDispatchSSS ');
    SQL.Add('where DDBH like ''%'+edit1.Text+'%'' and qty<>0 ');
    SQL.Add('and Size like ''%'+edit2.Text+'%'' ');
    SQL.Add('GROUP BY DDBH');
    SQL.Add('ORDER BY DDBH');
    active:=true;
  end;
end;

procedure TQRScanTotal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TQRScanTotal.FormDestroy(Sender: TObject);
begin
QRScanTotal:=nil;
end;

procedure TQRScanTotal.QRScanAfterOpen(DataSet: TDataSet);
var
  i: Integer;
  fieldName: string;
  hasData: Boolean;
begin
  if DataSet.IsEmpty then Exit; // ?? Không ki?m tra n?u d? li?u r?ng

  for i := 1 to DBGrid1.Columns.Count - 1 do
  begin
    fieldName := DBGrid1.Columns[i].FieldName; // L?y tên c?t t? DBGrid

    if Assigned(DataSet.FindField(fieldName)) then // Ki?m tra xem c?t có t?n t?i trong DataSet không
    begin
      hasData := False;
      DataSet.First; // L?p qua t?t c? dòng d? ki?m tra d? li?u
      while not DataSet.Eof do
      begin
        if DataSet.FieldByName(fieldName).AsInteger <> 0 then
        begin
          hasData := True;
          Break; // N?u tìm th?y giá tr? khác 0, d?ng ki?m tra
        end;
        DataSet.Next;
      end;

      DBGrid1.Columns[i].Visible := hasData; // ?n ho?c hi?n c?t theo d? li?u
    end;
  end;
end;



end.


unit ConfirmSwatchReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComObj;

type
  TConfirmSwatchReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_VENDOR: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1zsdhflex: TStringField;
    Query1ColorFlex: TStringField;
    Query1cldhFlexDes: TStringField;
    Query1cldhFlex: TStringField;
    Query1Season: TStringField;
    Query1DevCode: TStringField;
    Query1Article: TStringField;
    Query1DCName: TStringField;
    Query1Signed: TStringField;
    Query1ShippedDate: TDateTimeField;
    Query1SharedDCs: TStringField;
    Query1ExpiredDate: TDateTimeField;
    Query1ExcelUpdated: TStringField;
    Button2: TButton;
    Button3: TButton;
    Query1TrackingA4Comfirm: TStringField;
    Query1CLBH: TStringField;
    Label2: TLabel;
    ED_SR: TEdit;
    Query1JHDH: TStringField;
    Query1YWPM: TStringField;
    Query1Readable: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfirmSwatchReport: TConfirmSwatchReport;

implementation

uses Vendor1;

{$R *.dfm}
     
procedure TConfirmSwatchReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TConfirmSwatchReport.FormDestroy(Sender: TObject);
begin
  ConfirmSwatchReport := Nil;
end;

procedure TConfirmSwatchReport.Button1Click(Sender: TObject);
begin
  if (ED_VENDOR.Text <> '') OR (ED_SR.Text <> '') then
  begin
    with Query1 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT zszl_flex.zsdhflex, clzl_flex.ColorFlex, clzl_flexs.cldhFlexDes, clzl_flex.cldhFlex, ShoeTest.Season, kfxxzl.DevCode, YPZL.Article, cgzl_color2.TrackingA4Comfirm,');
      SQL.Add('clzl_flex.DCName, clzl_flex.Signed, clzl_flex.ShippedDate, clzl_flex.SharedDCs, clzl_flex.ExpiredDate, clzl_flex.ExcelUpdated, YPZLS.CLBH, CLZL_LS.JHDH, CLZL.YWPM, clzl_flex.Readable FROM YPZL');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT YPDH, CSBH, CLBH FROM (');
      SQL.Add('    SELECT YPDH, CSBH, CLBH FROM YPZLS');
      SQL.Add('    UNION ALL');
      SQL.Add('    SELECT YPZLS.YPDH, clzhzl.ZSDH, clzhzl.CLDH1 FROM YPZLS');
      SQL.Add('    LEFT JOIN clzhzl ON clzhzl.CLDH = YPZLS.CLBH');
      SQL.Add('    WHERE clzhzl.CLDH1 IS NOT NULL');
      SQL.Add('  ) AS YPZLS');
      SQL.Add('  GROUP BY YPDH, CSBH, CLBH');
      SQL.Add(') AS YPZLS ON YPZLS.YPDH = YPZL.YPDH');
      SQL.Add('LEFT JOIN CLZL_LS ON CLZL_LS.CLDH = YPZLS.CLBH');
      SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = YPZLS.CLBH');
      SQL.Add('LEFT JOIN zszl_flex ON zszl_flex.zsdh = YPZLS.CSBH');
      SQL.Add('LEFT JOIN clzl_flex ON clzl_flex.cldh = YPZLS.CLBH');
      SQL.Add('LEFT JOIN clzl_flexs ON clzl_flexs.CldhFlex = clzl_flex.CldhFlex');
      SQL.Add('LEFT JOIN cgzl_color2 ON cgzl_color2.CLBH = YPZLS.CLBH');
      SQL.Add('LEFT JOIN ShoeTest ON ShoeTest.YPDH = YPZL.YPDH');
      SQL.Add('LEFT JOIN kfxxzl ON kfxxzl.XieXing = YPZL.XieXing AND kfxxzl.SheHao = YPZL.SheHao');
      SQL.Add('WHERE YPZL.KFJD = ''CFM'' AND zszl_flex.zsdhflex = ''' + ED_VENDOR.Text + ''' AND kfxxzl.DevCode LIKE ''' + ED_SR.Text + '%''');
      SQL.Add('GROUP BY zszl_flex.zsdhflex, clzl_flex.ColorFlex, clzl_flexs.cldhFlexDes, clzl_flex.cldhFlex, ShoeTest.Season, kfxxzl.DevCode, YPZL.Article, cgzl_color2.TrackingA4Comfirm,');
      SQL.Add('clzl_flex.DCName, clzl_flex.Signed, clzl_flex.ShippedDate, clzl_flex.SharedDCs, clzl_flex.ExpiredDate, clzl_flex.ExcelUpdated, YPZLS.CLBH, CLZL_LS.JHDH, CLZL.YWPM, clzl_flex.Readable');
      SQL.Add('ORDER BY clzl_flex.cldhFlex, YPZL.Article, YPZLS.CLBH');
      Active := true;
    end;
  end;
end;

procedure TConfirmSwatchReport.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if Query1.Active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft Excel','Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      for i:=0 to Query1.fieldCount-1 do
      begin
        eclApp.Cells(1,i+1) := Copy(DBGridEh1.Columns[i].Title.Caption, Pos('|', DBGridEh1.Columns[i].Title.Caption)+1, Length(DBGridEh1.Columns[i].Title.Caption) - Pos('|', DBGridEh1.Columns[i].Title.Caption));
      end;
      Query1.First;
      j:=2;
      while not Query1.Eof do
      begin
        for i:=0 to Query1.FieldCount-1 do
        begin
          eclApp.Cells(j, i+1) := Query1.Fields[i].Value;
        end;
        Query1.Next;
        Inc(j);
      end;
      eclapp.Columns.Autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TConfirmSwatchReport.Button3Click(Sender: TObject);
begin
  Vendor := TVendor.Create(Self);
  Vendor.Show;
end;

end.

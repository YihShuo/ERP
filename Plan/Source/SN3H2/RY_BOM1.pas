unit RY_BOM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TRY_BOM = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1SIZE: TStringField;
    Query1CLSL: TFloatField;
    Query1CSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1Type: TStringField;
    Panel1: TPanel;
    CB1: TCheckBox;
    Query1DWBH: TStringField;
    Query1ZWSM: TStringField;
    Query1ZSJC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CB1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadData(RY: string);
  end;

var
  RY_BOM: TRY_BOM;

implementation

{$R *.dfm}

procedure TRY_BOM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRY_BOM.FormDestroy(Sender: TObject);
begin
  RY_BOM := Nil;
end;

procedure TRY_BOM.LoadData(RY: string);
begin
  Self.Caption := 'BOM - [' + RY + ']';

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZLZLS2.BWBH, BWZL.YWSM, BWZL.ZWSM, CASE WHEN ZLZLS2.MJBH = ''ZZZZZZZZZZ'' THEN CASE WHEN ZLZLS2.ZMLB = ''Y'' THEN ''PARENT'' ELSE ''NORMAL'' END ELSE ''CHILD'' END AS Type,');
    SQL.Add('ZLZLS2.CLBH, CLZL.YWPM, CASE WHEN ZLZLS2.SIZE = ''ZZZZZZ'' THEN ''No Size'' ELSE ZLZLS2.SIZE END AS SIZE, ZLZLS2.CLSL, CLZL.DWBH, ZLZLS2.CSBH, ZSZL.ZSYWJC, ZSZL.ZSJC FROM ZLZLS2');
    SQL.Add('LEFT JOIN BWZL ON BWZL.BWDH = ZLZLS2.BWBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = ZLZLS2.CSBH');
    SQL.Add('WHERE ZLZLS2.ZLBH = ''' + RY + ''' AND ZLZLS2.CLSL > 0');
    SQL.Add('ORDER BY ZLZLS2.BWBH, ZLZLS2.MJBH DESC, ZLZLS2.CLBH');
    Active := true;

    Filter := 'Type = ''PARENT'' OR Type = ''NORMAL''';
    Filtered := true;
  end;
end;

procedure TRY_BOM.CB1Click(Sender: TObject);
begin
  Query1.Filtered := not CB1.Checked;
end;

procedure TRY_BOM.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Column.Index > 2) AND (Query1.FieldByName('Type').AsString = 'CHILD') then
    DBGridEh1.Canvas.Font.Color := clGray
  else begin
    DBGridEh1.Canvas.Font.Style := [fsBold];
    DBGridEh1.Canvas.Font.Color := clNavy;
  end;
end;

procedure TRY_BOM.DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  if (Column.FieldName = 'YWSM') then
  begin
    DBGridEh1.Columns[1].Visible := false;
    DBGridEh1.Columns[2].Visible := true;
  end
  else if (Column.FieldName = 'ZWSM') then
  begin
    DBGridEh1.Columns[2].Visible := false;
    DBGridEh1.Columns[1].Visible := true;
  end
  else if (Column.FieldName = 'ZSYWJC') then
  begin
    DBGridEh1.Columns[10].Visible := false;
    DBGridEh1.Columns[11].Visible := true;
  end
  else if (Column.FieldName = 'ZSJC') then
  begin
    DBGridEh1.Columns[11].Visible := false;
    DBGridEh1.Columns[10].Visible := true;
  end;
end;

end.

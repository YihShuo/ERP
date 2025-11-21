unit MaterialList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TMaterialList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    EDIT1: TEdit;
    Edit3: TEdit;
    DBGridEh1: TDBGridEh;
    Query1CLDH: TStringField;
    Query1CLLB: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialList: TMaterialList;

implementation

uses NewMaterialOfSeason1;

{$R *.dfm}

procedure TMaterialList.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TMaterialList.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   edit3.SetFocus;
end;

procedure TMaterialList.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('  SELECT CLZL.CLDH, CLLB, YWPM, ZWPM, DWBH, CQDH FROM CLZL');
    SQL.Add('  LEFT JOIN CLZL_DEV ON CLZL_DEV.CLDH = CLZL.CLDH');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT DISTINCT CLBH FROM NewMaterialOfSeason WHERE JiJie = ''' + NewMaterialOfSeason.CB1.Text + '''');
    SQL.Add('  ) AS NewMaterialOfSeason ON NewMaterialOfSeason.CLBH = CLZL.CLDH');
    SQL.Add('  WHERE CLZL.CLDH LIKE ''' + Edit1.Text + '%''');
    SQL.Add('  AND NewMaterialOfSeason.CLBH IS NULL');
    if (NewMaterialOfSeason.InsertMatList <> '') then
      SQL.Add('  AND CLZL.CLDH NOT IN (' + NewMaterialOfSeason.InsertMatList + ')');
    SQL.Add('  AND YWPM LIKE ''%' + Edit2.Text + '%''');
    SQL.Add('  AND YWPM LIKE ''%' + Edit3.Text + '%''');
    SQL.Add('  AND (TYJH IS NULL OR TYJH = ''N'')');
    SQL.Add(') AS CLZL');
    Active := true;
  end;
end;

procedure TMaterialList.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then DBGridEh1DblClick(nil);
end;

procedure TMaterialList.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1Click(nil);
end;

procedure TMaterialList.FormDestroy(Sender: TObject);
begin
  MaterialList := nil;
end;

procedure TMaterialList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TMaterialList.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedIndex > 0) then
  begin
    with NewMaterialOfSeason.Query1 do
    begin
      Edit;
      FieldByName('JiJie').Value := NewMaterialOfSeason.CB1.Text;
      FieldByName('CLBH').Value := Query1.FieldByName('CLDH').Value;
      FieldByName('ywpm').Value := Query1.FieldByName('ywpm').Value;
      FieldByName('zwpm').Value := Query1.FieldByName('zwpm').Value;

      if (NewMaterialOfSeason.InsertMatList = '') then
        NewMaterialOfSeason.InsertMatList := '''' + Query1.FieldByName('cldh').AsString + ''''
      else
        NewMaterialOfSeason.InsertMatList := NewMaterialOfSeason.InsertMatList + ',''' + Query1.FieldByName('cldh').AsString + '''';
    end;
    Query1.Active := false;
    Close;
  end;
end;

end.

unit NewMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, DB, DBTables, StdCtrls;

type
  TNewMaterial = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CLBH: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Panel2: TPanel;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    Flag: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewMaterial: TNewMaterial;

implementation

uses main1, NewMaterialOfSeason1;

{$R *.dfm}

procedure TNewMaterial.FormCreate(Sender: TObject);
begin
  Flag := true;
end;
     
procedure TNewMaterial.FormDeactivate(Sender: TObject);
begin
  Close;
end;

procedure TNewMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (Flag) then
  begin
    NewMaterialOfSeason.BB2.Enabled := true;
    NewMaterialOfSeason.BB3.Enabled := true;
    NewMaterialOfSeason.BB4.Enabled := true;
    NewMaterialOfSeason.BB5.Enabled := false;
    NewMaterialOfSeason.BB6.Enabled := false;
  end
  else begin
    NewMaterialOfSeason.BB8.Enabled := false;
  end;
  Action := caFree;
end;

procedure TNewMaterial.FormDestroy(Sender: TObject);
begin
  NewMaterial := Nil;
end;

procedure TNewMaterial.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZLS.CLBH, CGZLS.ywpm, CGZLS.zwpm FROM (');
    SQL.Add('  SELECT CGZLS.CLBH, CLZL.ywpm, CLZL.zwpm, CGZL.Season, MIN(CGZL.CGDate) AS CGDate, CGZLS_OLD.CGDate_OLD FROM CGZLS');
    SQL.Add('  LEFT JOIN CGZL ON CGZL.CGNO = CGZLS.CGNO');
    SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = CGZLS.CLBH');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT CGZLS.CLBH, MIN(CGZL.CGDate) AS CGDate_OLD FROM CGZLS');
    SQL.Add('    LEFT JOIN CGZL ON CGZL.CGNO = CGZLS.CGNO');
    SQL.Add('    LEFT JOIN CLZL ON CLZL.CLDH = CGZLS.CLBH');
    SQL.Add('    WHERE CGZL.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('    AND ISNULL(CLZL.TYJH, '''') <> ''Y'' AND CLZL.CLZMLB = ''N''');
    SQL.Add('    GROUP BY CGZLS.CLBH');
    SQL.Add('  ) AS CGZLS_OLD ON CGZLS_OLD.CLBH = CGZLS.CLBH');
    SQL.Add('  WHERE CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.Season = ''' + Edit1.Text + '''');
    SQL.Add('  AND ISNULL(CLZL.TYJH, '''') <> ''Y'' AND CLZL.CLZMLB = ''N''');
    SQL.Add('  AND CGZLS.CLBH IN (');
    SQL.Add('    SELECT CASE WHEN CLZHZL.CLDH1 IS NOT NULL THEN CLZHZL.CLDH1 ELSE YPZLS.CLBH END AS CLBH FROM YPZLS');
    SQL.Add('    LEFT JOIN CLZHZL ON CLZHZL.CLDH = YPZLS.CLBH');
    SQL.Add('    LEFT JOIN YPZL ON YPZL.YPDH = YPZLS.YPDH');
    SQL.Add('    LEFT JOIN KFXXZL ON KFXXZL.XieXing = YPZL.XieXing AND KFXXZL.SheHao = YPZL.SheHao');
    SQL.Add('    WHERE KFJD = ''CFM'' AND JiJie = ''' + Edit1.Text + '''');
    SQL.Add('    GROUP BY CASE WHEN CLZHZL.CLDH1 IS NOT NULL THEN CLZHZL.CLDH1 ELSE YPZLS.CLBH END');
    SQL.Add('  )');
    SQL.Add('  GROUP BY CGZLS.CLBH, CLZL.ywpm, CLZL.zwpm, CGZL.Season, CGZLS_OLD.CGDate_OLD');
    SQL.Add(') AS CGZLS');
    SQL.Add('LEFT JOIN NewMaterialOfSeason ON NewMaterialOfSeason.CLBH = CGZLS.CLBH');
    SQL.Add('WHERE CGDate = CGDate_OLD AND NewMaterialOfSeason.CLBH IS NULL');
    SQL.Add('ORDER BY CGZLS.CLBH');
    Active := true;

    if RecordCount > 0 then
      Button2.Enabled := true
    else
      Button2.Enabled := false;
  end;
end;

procedure TNewMaterial.Button2Click(Sender: TObject);
begin
  Query1.First;
  NewMaterialOfSeason.Query2.Active := false;
  while not Query1.Eof do
  begin
    NewMaterialOfSeason.BB2Click(Nil);
    NewMaterialOfSeason.Query1.FieldByName('JiJie').Value := Edit1.Text;
    NewMaterialOfSeason.Query1.FieldByName('CLBH').Value := Query1.FieldByName('CLBH').Value;
    NewMaterialOfSeason.Query1.FieldByName('ywpm').Value := Query1.FieldByName('ywpm').Value;
    NewMaterialOfSeason.Query1.FieldByName('zwpm').Value := Query1.FieldByName('zwpm').Value;
    Query1.Next;
  end;
  NewMaterialOfSeason.Query2.Active := true;

  Flag := false;
  Close;
end;

end.

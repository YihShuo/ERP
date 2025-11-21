unit ModelCuttingBom1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TModelCuttingBom = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Panel1: TPanel;
    Button1: TButton;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Type: TStringField;
    Query1piece: TIntegerField;
    Query1XieXing: TStringField;
    QUpdate: TQuery;
    Query1SheHao: TStringField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1pieceChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadData(RY: string);
  end;

var
  ModelCuttingBom: TModelCuttingBom;

implementation

uses
  main1, RYTracking1;

{$R *.dfm}

procedure TModelCuttingBom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TModelCuttingBom.FormDestroy(Sender: TObject);
begin
  ModelCuttingBom := Nil;
end;

procedure TModelCuttingBom.LoadData(RY: string);
begin
  Self.Caption := RY + ' Cutting Components';

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ZLZLS2.BWBH, BWZL.YWSM, ZLZLS2.CLBH, CLZL.YWPM, CLZL.DWBH, CASE WHEN ISNULL(KT_SOPCut.piece, 0) > 0 THEN KT_SOPCut.Type END AS Type,');
    SQL.Add('CASE WHEN ISNULL(KT_SOPCut.piece, 0) > 0 THEN KT_SOPCut.piece END AS piece, DDZL.XieXing, DDZL.SheHao, KT_SOPCut.YN FROM DDZL');
    SQL.Add('LEFT JOIN ZLZLS2 ON ZLZLS2.ZLBH = DDZL.DDBH');
    SQL.Add('LEFT JOIN KT_SOPCut ON KT_SOPCut.XieXing = DDZL.XieXing AND KT_SOPCut.SheHao = DDZL.SheHao AND KT_SOPCut.BWBH = ZLZLS2.BWBH');
    SQL.Add('LEFT JOIN BWZL ON BWZL.BWDH = ZLZLS2.BWBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = ZLZLS2.CLBH');
    SQL.Add('WHERE DDZL.DDBH = ''' + RY + ''' AND ZLZLS2.ZMLB = ''N'' AND ZLZLS2.CSBH NOT LIKE ''JNG%'' AND ISNULL(ZLZLS2.CLSL, 0) > 0');
    SQL.Add('ORDER BY CASE WHEN ISNULL(KT_SOPCut.piece, 0) > 0 THEN 0 ELSE 1 END, ZLZLS2.BWBH');
    Active := true;

    CachedUpdates := true;
    RequestLive := true;
    Edit;
  end;
end;

procedure TModelCuttingBom.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    First;
    while not Eof do
    begin
      case UpdateStatus of
        usModified:
        begin
          if (Query1.FieldByName('YN').IsNull) AND (Query1.FieldByName('Type').AsString <> '') AND (Query1.FieldByName('piece').AsInteger > 0) then
          begin
            with QUpdate do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('INSERT INTO KT_SOPCut (XieXing, SheHao, BWBH, Type, piece, layer, joinnum, LRcom, PartID, IMGName, USERID, USERDATE, YN)');
              SQL.Add('VALUES (');
              SQL.Add('  ''' + Query1.FieldByName('XieXing').AsString + ''',');
              SQL.Add('  ''' + Query1.FieldByName('SheHao').AsString + ''',');
              SQL.Add('  ''' + Query1.FieldByName('BWBH').AsString + ''',');
              SQL.Add('  ''' + Query1.FieldByName('Type').AsString + ''',');
              SQL.Add('  ' + Query1.FieldByName('piece').AsString + ',');
              SQL.Add('  NULL,');
              SQL.Add('  NULL,');
              SQL.Add('  NULL,');
              SQL.Add('  NULL,');
              SQL.Add('  NULL,');
              SQL.Add('  ''' + main.Edit1.Text + ''',');
              SQL.Add('  GETDATE(),');
              SQL.Add('  ''1''');
              SQL.Add(')');
              ExecSQL;
            end;
          end
          else begin
            with QUpdate do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('UPDATE KT_SOPCut SET');
              if (Query1.FieldByName('piece').AsInteger > 0) then
              begin
                SQL.Add('  Type = ''' + Query1.FieldByName('Type').AsString + ''',');
                SQL.Add('  piece = ' + Query1.FieldByName('piece').AsString + ',');
              end
              else begin
                SQL.Add('  Type = NULL,');
                SQL.Add('  piece = 0,');
              end;

              SQL.Add('  UserID = ''' + main.Edit1.Text + ''',');
              SQL.Add('  UserDate = GETDATE()');
              SQL.Add('WHERE XieXing = ''' + Query1.FieldByName('XieXing').AsString + ''' AND SheHao = ''' + Query1.FieldByName('SheHao').AsString + ''' AND BWBH = ''' + Query1.FieldByName('BWBH').AsString + ''';');

              SQL.Add('DELETE FROM KT_SOPCutS');
              SQL.Add('WHERE XieXing = ''' + Query1.FieldByName('XieXing').AsString + ''' AND SheHao = ''' + Query1.FieldByName('SheHao').AsString + ''' AND BWBH = ''' + Query1.FieldByName('BWBH').AsString + ''';');

              if (Query1.FieldByName('piece').AsInteger > 0) then
              begin
                SQL.Add('INSERT INTO KT_SOPCutS (XieXing, SheHao, BWBH, SIZE, XXCC, UserID, UserDate, YN)');
                SQL.Add('Select ''' + Query1.FieldByName('XieXing').AsString + ''' AS XieXing, ''' + Query1.FieldByName('SheHao').AsString + '''AS SheHao, ''' + Query1.FieldByName('BWBH').AsString + ''' AS BWBH, XXCC AS SIZE, GJCC AS XXCC, ''' + main.Edit1.Text + ''' AS USERID, GetDate() AS USERDATE, ''1'' AS YN FROM XXGJS');
                SQL.Add('WHERE XieXing = ''' + Query1.FieldByName('XieXing').AsString + ''' AND GJLB = ''100'';');
              end;

              ExecSQL;
            end;
          end;
        end;
      end;

      Next;
    end;
  end;

  RYTracking.Query2.Active := false;
  RYTracking.Query2.Active := true;
  Close;
end;

procedure TModelCuttingBom.Query1pieceChange(Sender: TField);
begin
  if (Query1.FieldByName('piece').AsInteger < 0) OR (Query1.FieldByName('piece').AsInteger > 10) then
    Query1.FieldByName('piece').Value := 0;
end;

end.

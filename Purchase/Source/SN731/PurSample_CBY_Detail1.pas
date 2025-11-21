unit PurSample_CBY_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids;

type
  TPurSample_CBY_Detail = class(TForm)
    DBGrid1: TDBGrid;
    CGZLSSQry: TQuery;
    DS: TDataSource;
    CGZLSSQryCGNO: TStringField;
    CGZLSSQryokQty: TCurrencyField;
    CGZLSSQryCLBH: TStringField;
    CGZLSSQryZLBH: TStringField;
    CGZLSSQryYWPM: TStringField;
    CGZLSSQryDWBH: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_CBY_Detail: TPurSample_CBY_Detail;

implementation

uses
  main1, PurSample_CBY1;

{$R *.dfm}

procedure TPurSample_CBY_Detail.FormCreate(Sender: TObject);
begin
  with CGZLSSQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZLSS.CGNO, CGZLSS.Qty AS okQty, CGZLSS.CLBH, CGZLSS.ZLBH, CLZL.YWPM, CLZL.DWBH FROM CGZLSS');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('WHERE CGZLSS.CLBH = :CLBH');
    SQL.Add('AND CGZL.SEASON = ''' + PurSample_CBY.SeasonEdit.Text + '''');
    SQL.Add('AND CGZL.PURPOSE = ''' + PurSample_CBY.StageEdit.Text + '''');
    Active := true;
  end;
end;

end.

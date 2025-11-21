unit OutsoleInspection_SKU1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, Math, StdCtrls, GridsEh, DBGridEh;

type
  TOutsoleInspection_SKU = class(TForm)
    Panel1: TPanel;
    QSKU: TQuery;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Label1: TLabel;
    ED_SKU: TEdit;
    Button1: TButton;
    QSKUArticle: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutsoleInspection_SKU: TOutsoleInspection_SKU;

implementation

uses
  OutsoleInspection1;

{$R *.dfm}

procedure TOutsoleInspection_SKU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOutsoleInspection_SKU.FormDestroy(Sender: TObject);
begin
  OutsoleInspection_SKU := Nil;
end;

procedure TOutsoleInspection_SKU.FormCreate(Sender: TObject);
begin
  with QSKU do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Article FROM XXZL');
    SQL.Add('WHERE KHDH = ''036'' AND Article LIKE ''%C'' AND ISNULL(DDMH, '''') = ''' + OutsoleInspection.Outsole_Mold_No + ''' AND Article LIKE ''' + ED_SKU.Text + '%''');
    SQL.Add('ORDER BY Article');
    Active := true;
  end;
end;

procedure TOutsoleInspection_SKU.Button1Click(Sender: TObject);
begin
  with QSKU do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Article FROM XXZL');
    SQL.Add('WHERE KHDH = ''036'' AND Article LIKE ''%C'' AND ISNULL(DDMH, '''') = ''' + OutsoleInspection.Outsole_Mold_No + ''' AND Article LIKE ''' + ED_SKU.Text + '%''');
    SQL.Add('ORDER BY Article');
    Active := true;
  end;
end;

procedure TOutsoleInspection_SKU.DBGridEh1DblClick(Sender: TObject);
begin
  OutsoleInspection.ED_SKU.Text := QSKU.FieldByName('Article').AsString;
  Close;
end;

end.

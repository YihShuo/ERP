unit OutsoleInspection_OutSole1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, Math, StdCtrls, GridsEh, DBGridEh;

type
  TOutsoleInspection_OutSole = class(TForm)
    Panel1: TPanel;
    QOutsole: TQuery;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Label1: TLabel;
    ED_OutSole: TEdit;
    Button1: TButton;
    QOutsoleDDMH: TStringField;
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
  OutsoleInspection_OutSole: TOutsoleInspection_OutSole;

implementation

uses
  OutsoleInspection1;

{$R *.dfm}

procedure TOutsoleInspection_OutSole.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOutsoleInspection_OutSole.FormDestroy(Sender: TObject);
begin
  OutsoleInspection_OutSole := nil;
end;

procedure TOutsoleInspection_OutSole.FormCreate(Sender: TObject);
begin
  with QOutsole do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT DDMH FROM XXZL');
    SQL.Add('WHERE KHDH = ''036'' AND Article LIKE ''%C'' AND ISNULL(DDMH, '''') <> '''' AND DDMH LIKE ''' + ED_Outsole.Text +
      '%''');
    SQL.Add('ORDER BY DDMH');
    Active := true;
  end;
end;

procedure TOutsoleInspection_OutSole.Button1Click(Sender: TObject);
begin
  with QOutsole do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT DDMH FROM XXZL');
    SQL.Add('WHERE KHDH = ''036'' AND Article LIKE ''%C'' AND ISNULL(DDMH, '''') <> '''' AND DDMH LIKE ''' + ED_Outsole.Text +
      '%''');
    SQL.Add('ORDER BY DDMH');
    Active := true;
  end;
end;

procedure TOutsoleInspection_OutSole.DBGridEh1DblClick(Sender: TObject);
var
  appendedMoldNumberUserInput: string;
begin
  appendedMoldNumberUserInput := InputBox('Please Input Appended Mold Number', 'Appended Mold Number¡G', '');
  if appendedMoldNumberUserInput = '' then
  begin
    Abort;
  end
  else
  begin
    OutsoleInspection.ED_Outsole.Text := QOutsole.FieldByName('DDMH').AsString + '|' + appendedMoldNumberUserInput;
    OutsoleInspection.ED_SKU.Text := '';
    Close;
  end
end;

end.

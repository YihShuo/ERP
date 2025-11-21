unit AndonDefect1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, jpeg, DB, DBTables, GridsEh,
  DBGridEh;

type
  TAndonDefect = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AndonDefect: TAndonDefect;

implementation

uses
  AndonAlarmSetting1, main1;

{$R *.dfm}

procedure TAndonDefect.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT QCBLYY.YYBH, QCBLYY.YWSM, QCBLYY.ZWSM FROM QCBLYY');
    SQL.Add('WHERE QCBLYY.DFL = ''AR'' AND QCBLYY.GSBH = ''' + main.Edit2.Text + ''' AND QCBLYY.YN = ''2''');
    SQL.Add('ORDER BY QCBLYY.YYBH');
    Active := true;
  end;
end;

procedure TAndonDefect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TAndonDefect.FormDestroy(Sender: TObject);
begin
  AndonDefect := Nil;
end;

procedure TAndonDefect.DBGridEh1DblClick(Sender: TObject);
begin
  AndonAlarmSetting.QAndon.FieldByName('Defect').Value := Query1.FieldByName('YYBH').AsString;
  AndonAlarmSetting.QAndon.FieldByName('YWSM').Value := Query1.FieldByName('YWSM').AsString;
  AndonAlarmSetting.QAndon.FieldByName('ZWSM').Value := Query1.FieldByName('ZWSM').AsString;
  Close;
end;

end.


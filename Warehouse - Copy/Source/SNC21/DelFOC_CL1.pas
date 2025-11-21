unit DelFOC_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDelFOC_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    Query1CLBH: TStringField;
    Query1ZWPM: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    DBGridEh1: TDBGridEh;
    Query1KCQty: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelFOC_CL: TDelFOC_CL;

implementation

uses FunUnit, main1, DelFOC1;

{$R *.dfm}

procedure TDelFOC_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TDelFOC_CL.FormDestroy(Sender: TObject);
begin
  DelFOC_CL := nil;
end;

procedure TDelFOC_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TDelFOC_CL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CLZL.CLDH, CLZL.ZWPM, CLZL.YWPM, CLZL.DWBH, KCQty FROM CLZL');
    SQL.Add('LEFT JOIN KCZLS_FOC KCZLS on KCZLS.CLBH=CLZL.CLDH');
    SQL.Add('WHERE CLZL.CLDH LIKE' + '''' + edit1.Text + '%' + '''');
    SQL.Add('AND CLZL.ZWPM LIKE' + '''' + '%' + edit2.Text + '%' + '''');
    SQL.Add('AND CLZL.YWPM LIKE' + '''' + '%' + edit3.Text + '%' + '''');
    SQL.Add('ORDER BY CLZL.CLDH DESC');
    Active := true;
  end;
end;

procedure TDelFOC_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not Query1.Active) then
  begin
    Abort;
  end;
  if (Query1.recordcount < 1) then
  begin
    Abort;
  end;
  with DelFOC.DelDet do
  begin
    Insert;
    FieldByName('CLBH').Value := Query1.FieldByName('CLDH').Value;
    FieldByName('ZWPM').Value := Query1.FieldByName('ZWPM').Value;
    FieldByName('YWPM').Value := Query1.FieldByName('YWPM').Value;
    FieldByName('DWBH').Value := Query1.FieldByName('DWBH').Value;
    POST;
  end;
  ShowMessage('Succeed.');
end;

end.

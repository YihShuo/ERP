unit SETRSL_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TSETRSL_CL = class(TForm)
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
  SETRSL_CL: TSETRSL_CL;

implementation

uses main1, SetRSL1, FunUnit;

{$R *.dfm}

procedure TSETRSL_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TSETRSL_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   edit3.SetFocus;
end;

procedure TSETRSL_CL.Button1Click(Sender: TObject);
var a,b : string;
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('  SELECT CLZL.CLDH, CLLB, YWPM, ZWPM, DWBH, CQDH FROM CLZL');
    SQL.Add('  LEFT JOIN CLZL_DEV ON CLZL_DEV.CLDH = CLZL.CLDH');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT DISTINCT CLDH FROM RSTList WHERE GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('  ) AS RSTList ON RSTList.CLDH = CLZL.CLDH');
    SQL.Add('  WHERE CLZL.CLDH LIKE ''' + Edit1.Text + '%''');
    if SETRSL.PC1.ActivePageIndex = 2 then
    begin
      SQL.Add('  AND (RSTList.CLDH IS NULL OR RSTList.CLDH LIKE ''W%'' )');
      if ( (SETRSL.InsertMatList <> '') AND (copy(SETRSL.InsertMatList,1,1) <> 'W') ) then
        SQL.Add('  AND CLZL.CLDH NOT IN (' + SETRSL.InsertMatList + ')');
    end else
    begin
      SQL.Add('  AND RSTList.CLDH IS NULL');
      if (SETRSL.InsertMatList <> '') then
        SQL.Add('  AND CLZL.CLDH NOT IN (' + SETRSL.InsertMatList + ')');
    end;
    SQL.Add('  AND YWPM LIKE ''%' + Edit2.Text + '%''');
    SQL.Add('  AND YWPM LIKE ''%' + Edit3.Text + '%''');
    SQL.Add('  AND (TYJH IS NULL OR TYJH = ''N'')');
    SQL.Add(') AS CLZL');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TSETRSL_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TSETRSL_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1Click(nil);
end;

procedure TSETRSL_CL.FormDestroy(Sender: TObject);
begin
  SETRSL_CL:=nil;
end;

procedure TSETRSL_CL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TSETRSL_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedIndex > 0) then
  begin
    with SETRSL.CLZL do
    begin
      Edit;
      FieldByName('cldh').Value := Query1.FieldByName('cldh').Value;
      FieldByName('cllb').Value := Query1.FieldByName('cllb').Value;
      FieldByName('ywpm').Value := Query1.FieldByName('ywpm').Value;
      FieldByName('zwpm').Value := Query1.FieldByName('zwpm').Value;
      FieldByName('dwbh').Value := Query1.FieldByName('dwbh').Value;
      FieldByName('cqdh').Value := Query1.FieldByName('cqdh').Value;

      if (SETRSL.InsertMatList = '') then
        SETRSL.InsertMatList := '''' + Query1.FieldByName('cldh').AsString + ''''
      else
        SETRSL.InsertMatList := SETRSL.InsertMatList + ',''' + Query1.FieldByName('cldh').AsString + '''';

      if (SETRSL.PC1.ActivePage = SETRSL.TS2) then FieldByName('DCYN').Value := 'Y';
      if (SETRSL.PC1.ActivePage = SETRSL.TS3) then FieldByName('PDYN').Value := 'Y';
    end;
    Query1.Active := false;
    Close;
  end;
end;

end.

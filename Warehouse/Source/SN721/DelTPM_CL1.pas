unit DelTPM_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDelTPM_CL = class(TForm)
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
    CB1: TCheckBox;
    Query1CLBH: TStringField;
    Query1ZWPM: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    DBGridEh1: TDBGridEh;
    Query1UnLLQty: TCurrencyField;
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
  DelTPM_CL: TDelTPM_CL;

implementation

uses DelTPM1, FunUnit, main1;

{$R *.dfm}

procedure TDelTPM_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TDelTPM_CL.FormDestroy(Sender: TObject);
begin
  DelTPM_CL := nil;
end;

procedure TDelTPM_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TDelTPM_CL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CLZL.CLDH, CLZL.ZWPM, CLZL.YWPM, CLZL.DWBH, (KCRKS_TPM.Qty - ISNULL(YnKCLL.YnLLQty, 0)) AS KCQty, UnKCLL.UnLLQty, ( ISNULL(KCRKS_TPM.Qty, 0) - (ISNULL(UnKCLL.UnLLQty, 0) + ISNULL(YnKCLL.YnLLQty, 0)) ) as AvailQty FROM CLZL');
    SQL.Add('LEFT JOIN ( SELECT KCRKS_TPM.CLBH, SUM(KCRKS_TPM.Qty) AS Qty FROM KCRKS_TPM GROUP BY KCRKS_TPM.CLBH ) KCRKS_TPM ON KCRKS_TPM.CLBH = CLZL.CLDH');
    SQL.Add('LEFT JOIN ( SELECT KCLLS_TPM.CLBH, Sum(KCLLS_TPM.Qty) AS YnLLQty FROM KCLLS_TPM, KCLL_TPM WHERE KCLLS_TPM.LLNO = KCLL_TPM.LLNO and KCLL_TPM.CFMID <> ''NO'' GROUP BY KCLLS_TPM.CLBH ) YnKCLL ON YnKCLL.CLBH = CLZL.CLDH');
    SQL.Add('LEFT JOIN ( SELECT KCLLS_TPM.CLBH, Sum(KCLLS_TPM.Qty) AS UnLLQty FROM KCLLS_TPM, KCLL_TPM WHERE KCLLS_TPM.LLNO = KCLL_TPM.LLNO and KCLL_TPM.CFMID = ''NO'' GROUP BY KCLLS_TPM.CLBH ) UnKCLL ON UnKCLL.CLBH = CLZL.CLDH');
    SQL.Add('WHERE CLZL.CLDH LIKE' + '''' + edit1.Text + '%' + '''');
    SQL.Add('AND CLZL.ZWPM LIKE' + '''' + '%' + edit2.Text + '%' + '''');
    SQL.Add('AND CLZL.YWPM LIKE' + '''' + '%' + edit3.Text + '%' + '''');
    if CB1.Checked = true then
    begin
      SQL.Add('AND ISNULL(KCRKS_TPM.Qty, 0) - ISNULL(YnKCLL.YnLLQty, 0) > 0 ');
    end;
    SQL.Add('ORDER BY CLZL.CLDH DESC');
    Active := true;
  end;
end;

procedure TDelTPM_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not Query1.Active) then
  begin
    Abort;
  end;
  if (Query1.recordcount < 1) then
  begin
    Abort;
  end;
  if (Query1.FieldByName('AvailQty').Value <= 0) then
  begin
    ShowMessage('khong con ton kho, khong cho phep  mo phieu');
    if (CB1.Checked = true) then
    begin
      Exit;
    end;
  end;

  with DelTPM.DelDet do
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

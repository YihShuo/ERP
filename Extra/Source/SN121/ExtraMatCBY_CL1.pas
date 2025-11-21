unit ExtraMatCBY_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls,math;

type
  TExtraMatCBY_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ED_MatName: TEdit;
    ED_MatNo: TEdit;
    CB1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    DBGrid1: TDBGridEh;
    Label4: TLabel;
    ED_MOrder: TEdit;
    Label8: TLabel;
    ED_SupID: TEdit;
    Query1MasterOrder: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TCurrencyField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ED_MOrderKeyPress(Sender: TObject; var Key: Char);
    procedure ED_SupIDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMatCBY_CL: TExtraMatCBY_CL;

implementation

uses ExtraMaterial1, FunUnit, main1;

{$R *.dfm}

procedure TExtraMatCBY_CL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CBY_Orders.MasterOrder, CBY_Orders.CLBH, CBY_Orders.YWPM, CBY_Orders.DWBH, CBY_Orders.CQDH, SUM(CLSL) AS CLSL, CBY_Orders.okQty FROM (');
    SQL.Add('  SELECT CBY_Orders.MasterOrder, CBY_Orders.CLBH, CBY_Orders.YWPM, CBY_Orders.DWBH, CBY_Orders.CQDH, CBY_Orders.CLSL, ISNULL(JGZL.okQty, 0) AS okQty, ISNULL(JGZL.oldCLSL, 0) AS oldCLSL FROM (');
    SQL.Add('	   SELECT CBY_Orders.MasterOrder, CBY_Orders.MJBH, CBY_Orders.Parent, CBY_Orders.DType, CBY_Orders.CLBH, CBY_Orders.CLSL,');
    SQL.Add('	   CLZL.YWPM, CLZL.DWBH, CLZL.CQDH, CBY_Orders.CLZMLB FROM (');
    SQL.Add('	     SELECT CBY_Orders.MasterOrder, CBY_Orders.MJBH, CBY_Orders.Parent, CBY_Orders.DType, CBY_Orders.CLBH, CBY_Orders.CLZMLB, Sum(CBY_Orders.CLSL) AS CLSL FROM (');
    SQL.Add('		     SELECT CBY_Orders.MasterOrder, CBY_Orders_ZLZLS2.XH, CBY_Orders_ZLZLS2.CLBH AS MJBH, CBY_Orders_ZLZLS2.CLBH AS Parent, ''Assembly'' AS DType, CBY_Orders_ZLZLS2.CLBH, CBY_Orders_ZLZLS2.CLSL, CLZL.CLZMLB FROM CBY_Orders_ZLZLS2');
    SQL.Add('		     LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_ZLZLS2.workorderId');
    SQL.Add('	       LEFT JOIN CLZL ON CLZL.CLDH = CBY_Orders_ZLZLS2.CLBH');
    SQL.Add('	       WHERE CBY_Orders.MasterOrder LIKE ''' + ED_MOrder.Text + '%''');
    SQL.Add('	       AND CLZL.CLDH LIKE ''' + ED_MatNo.Text + '%''');
    if (ED_SupID.Text <> '') then
      SQL.Add('	       AND CBY_Orders_ZLZLS2.CSBH LIKE ''' + ED_SupID.Text + '%''');
    SQL.Add('	       UNION ALL');
    SQL.Add('	       SELECT CBY_Orders.MasterOrder, CBY_Orders_ZLZLS2.XH, CLZHZL.CLDH AS MJBH, CBY_Orders_ZLZLS2.CLBH AS Parent, ''Gia cong'' AS DType, CLZHZL.CLDH1 AS CLBH, ROUND(CBY_Orders_ZLZLS2.CLSL * CLZHZL.SYL, 2) AS CLSL, CLZL.CLZMLB FROM CBY_Orders_ZLZLS2');
    SQL.Add('	       LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_ZLZLS2.workorderId');
    SQL.Add('	       LEFT JOIN CLZHZL ON CLZHZL.CLDH = CBY_Orders_ZLZLS2.CLBH');
    SQL.Add('	       LEFT JOIN CLZL ON  CLZL.CLDH = CLZHZL.CLDH1');
    SQL.Add('	       WHERE CBY_Orders.MasterOrder LIKE ''' + ED_MOrder.Text + '%'' AND CLZHZL.SYL > 0');
    SQL.Add('	       AND CLZL.CLDH LIKE ''' + ED_MatNo.Text + '%''');
    if (ED_SupID.Text <> '') then
      SQL.Add('        AND CBY_Orders_ZLZLS2.CSBH LIKE ''' + ED_SupID.Text + '%''');
    SQL.Add('	       UNION ALL');
    SQL.Add('	       SELECT CLZHZL2.MasterOrder, CLZHZL2.XH, CLZHZL.CLDH AS MJBH, CLZHZL2.Parent, CLZHZL2.DType, CLZHZL.CLDH1 AS CLBH, Round(CLZHZL2.CLSL * CLZHZL.SYL, 2) AS CLSL, CLZL.CLZMLB FROM (');
    SQL.Add('	         SELECT CBY_Orders.MasterOrder, CBY_Orders_ZLZLS2.XH, CBY_Orders_ZLZLS2.CLBH AS Parent, ''Gia cong'' AS DType, CLZHZL.CLDH1 AS CLBH, ROUND(CBY_Orders_ZLZLS2.CLSL * CLZHZL.SYL, 2) AS CLSL FROM CBY_Orders_ZLZLS2');
    SQL.Add('	         LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_ZLZLS2.workorderId');
    SQL.Add('	         LEFT JOIN CLZHZL ON CLZHZL.CLDH = CBY_Orders_ZLZLS2.CLBH');
    SQL.Add('	         LEFT JOIN CLZL ON  CLZL.CLDH = CLZHZL.CLDH1');
    SQL.Add('	         WHERE CBY_Orders.MasterOrder LIKE ''' + ED_MOrder.Text + '%'' AND CLZHZL.SYL > 0 AND CLZL.CLZMLB = ''Y''');
    if (ED_SupID.Text <> '') then
      SQL.Add('	         AND CLZHZL.ZSDH LIKE ''' + ED_SupID.Text + '%''');
    SQL.Add('	       ) AS CLZHZL2');
    SQL.Add('	       INNER JOIN CLZHZL ON CLZHZL.CLDH = CLZHZL2.CLBH');
    SQL.Add('	       LEFT JOIN CLZL ON CLZL.CLDH = CLZHZL.CLDH1');
    SQL.Add('	       WHERE CLZL.CLDH LIKE ''' + ED_MatNo.Text + '%''');
    SQL.Add('	     ) AS CBY_Orders');
    SQL.Add('      GROUP BY CBY_Orders.MasterOrder, CBY_Orders.MJBH, CBY_Orders.Parent, CBY_Orders.DType, CBY_Orders.CLBH, CBY_Orders.CLZMLB');
    SQL.Add('    ) AS CBY_Orders');
    SQL.Add('    LEFT JOIN CLZL ON CLZL.CLDH = CBY_Orders.CLBH');
    SQL.Add('	   WHERE CBY_Orders.MasterOrder LIKE ''' + ED_MOrder.Text + '%''');
    if not (CB1.Checked) then
      SQL.Add('    AND CBY_Orders.CLZMLB = ''Y'' ');
    SQL.Add('  ) AS CBY_Orders');
    SQL.Add('  LEFT JOIN (');
    SQL.Add('    SELECT JGZLSS.ZLBH, JGZLSS.CLBH, SUM(JGZLSS.Qty) AS okQty, SUM(JGZLSS.CLSL) AS oldCLSL FROM JGZLSS');
    SQL.Add('    left join JGZL on JGZL.JGNO = JGZLSS.JGNO');
    SQL.Add('    LEFT JOIN CLZL ON CLZL.CLDH = JGZLSS.CLBH');
    SQL.Add('    WHERE JGZLSS.ZLBH LIKE ''' + ED_MOrder.Text + '%''');
    SQL.Add('    AND JGZLSS.CLBH LIKE ''' + ED_MatNo.Text + '%''');
    SQL.Add('    AND CLZL.YWPM LIKE ''%' + ED_MatName.Text + '%''');
    SQL.Add('    AND Isnull(JGZL.flowflag,'''')<>''X'' ');
    SQL.Add('    GROUP BY JGZLSS.ZLBH, JGZLSS.CLBH');
    SQL.Add('  ) AS JGZL ON JGZL.CLBH = CBY_Orders.CLBH AND JGZL.ZLBH = CBY_Orders.MasterOrder');
    SQL.Add(') AS CBY_Orders');
    SQL.Add('GROUP BY CBY_Orders.MasterOrder, CBY_Orders.CLBH, CBY_Orders.YWPM, CBY_Orders.DWBH, CBY_Orders.CQDH, CBY_Orders.okQty');
    Active := true;
  end;
end;

procedure TExtraMatCBY_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TExtraMatCBY_CL.FormDestroy(Sender: TObject);
begin
  ExtraMatCBY_CL := Nil;
end;

procedure TExtraMatCBY_CL.DBGrid1DblClick(Sender: TObject);
begin
  if (not Query1.Active) then
  begin
    Abort;
  end;
  if (Query1.recordcount < 1) then
  begin
    Abort;
  end;
  with ExtraMaterial.JGDet do
  begin
    Insert;
    FieldByName('CLBH').Value := Query1.FieldByName('CLBH').Value;
    FieldByName('YWPM').Value := Query1.FieldByName('YWPM').Value;
    FieldByName('DWBH').Value := Query1.FieldByName('DWBH').Value;
    Post;
  end;
  ShowMessage('Succeed.');
end;

procedure TExtraMatCBY_CL.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('CLSL').Value = Query1.FieldByName('okQty').Value) then
  begin
    DBGrid1.Canvas.Font.Color := clBlue;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if (Query1.FieldByName('CLSL').Value < Query1.FieldByName('okQty').Value) then
  begin
    DBGrid1.Canvas.Font.Color := clRed;
    DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TExtraMatCBY_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    DBGrid1DblClick(Nil);
end;

procedure TExtraMatCBY_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TExtraMatCBY_CL.ED_MOrderKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
    Button1Click(Nil);
end;

procedure TExtraMatCBY_CL.ED_SupIDKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
    Button1Click(Nil);
end;

end.

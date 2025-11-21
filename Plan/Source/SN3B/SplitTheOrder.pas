unit SplitTheOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh, ComCtrls,
  DateUtils;

type
  TF_SplitTheOrder = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Button1: TButton;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    EditA: TEdit;
    QUpdate: TQuery;
    Query1DDBH: TStringField;
    Query1Qty: TIntegerField;
    Query1RPlanDate: TDateTimeField;
    Query1Checked: TBooleanField;
    UpdateSQL1: TUpdateSQL;
    Query1DepName: TStringField;
    DTP1: TDateTimePicker;
    DBGridEh2: TDBGridEh;
    Query3: TQuery;
    DataSource2: TDataSource;
    Query3XXCC: TStringField;
    Query3Qty: TIntegerField;
    EditS: TEdit;
    EditC: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
  end;

var
  F_SplitTheOrder: TF_SplitTheOrder;

implementation

{$R *.dfm}
uses
  main1, PreArrange;

procedure TF_SplitTheOrder.FormCreate(Sender: TObject);
begin
  Query1.CachedUpdates := true;
  Query1.RequestLive := true;

  LoadData();

  //Combobox1載入線別選項
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT DepName FROM BDepartment');
    SQL.Add(' WHERE GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''A'' ');
    SQL.Add(' AND ProYN = 1 AND YN = 1 AND sumline IS NOT NULL');
    Active := true;
    First;

    while not eof do
    begin
      ComboBox1.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;

    ComboBox1.Text := '';
  end;
end;

procedure TF_SplitTheOrder.Button1Click(Sender: TObject);
var
  DepID_C, DepID_S, DepID_A: string;
  ROrder_C, ROrder_S, ROrder_A, Col, Row: integer;
  PlanDate_C, PlanDate_S, PlanDate_A: TDateTime;
begin
  DepID_A := EditA.Text;
  DepID_S := EditS.Text; 
  DepID_C := EditC.Text;

  PlanDate_C := IncDay(DTP1.DateTime, -3);
  PlanDate_S := IncDay(DTP1.DateTime, -1);
  PlanDate_A := DTP1.DateTime;

  ROrder_C := 0;
  ROrder_S := 0;
  ROrder_A := 0;

  //更新選擇的輪轉編號的分配線別及日期
  if (Combobox1.Text <> '') then
  begin
    with Query2 do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ISNULL(MAX(ROrder),0) AS ROrder FROM SMDD WHERE DDBH LIKE ''' + PreArrange.YSBHSplit + '%'' AND RDepNO = ''' + DepID_A + ''' AND RPlanDate = ''' + DateToStr(PlanDate_A) + ''' AND GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + ''' ');
      Active := true;

      if (FieldByName('Rorder').AsInteger = 0) then
      begin
        ROrder_A := 1;
      end
      else if (FieldByName('Rorder').AsInteger > 0) then
      begin
        ROrder_A := FieldByName('Rorder').AsInteger;
      end;

      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ISNULL(MAX(ROrder),0) AS ROrder FROM SMDD WHERE DDBH LIKE ''' + PreArrange.YSBHSplit + '%'' AND RDepNO = ''' + DepID_S + ''' AND RPlanDate = ''' + DateToStr(PlanDate_S) + ''' AND GXLB = ''S'' AND GSBH = ''' + main.Edit2.Text + ''' ');
      Active := true;

      if (FieldByName('Rorder').AsInteger = 0) then
      begin
        ROrder_S := 1;
      end
      else if (FieldByName('Rorder').AsInteger > 0) then
      begin
        ROrder_S := FieldByName('Rorder').AsInteger;
      end;

      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ISNULL(MAX(ROrder),0) AS ROrder FROM SMDD WHERE DDBH LIKE ''' + PreArrange.YSBHSplit + '%'' AND RDepNO = ''' + DepID_C + ''' AND RPlanDate = ''' + DateToStr(PlanDate_C) + ''' AND GXLB = ''C'' AND GSBH = ''' + main.Edit2.Text + ''' ');
      Active := true;

      if (FieldByName('Rorder').AsInteger = 0) then
      begin
        ROrder_C := 1;
      end
      else if (FieldByName('Rorder').AsInteger > 0) then
      begin
        ROrder_C := FieldByName('Rorder').AsInteger;
      end;
    end;

    Query3.Close;
    with Query1 do
    begin
      First;

      while not eof do
      begin
        if FieldByName('Checked').AsBoolean then
        begin
          QUpdate.SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_A + ''', RPlanDate = ''' + DateToStr(PlanDate_A) + ''', ROrder = ''' + IntToStr(ROrder_A) + ''' WHERE DDBH = ''' + FieldByName('DDBH').AsString + ''' AND GXLB = ''A'';');
          QUpdate.SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_S + ''', RPlanDate = ''' + DateToStr(PlanDate_S) + ''', ROrder = ''' + IntToStr(ROrder_S) + ''' WHERE DDBH = ''' + FieldByName('DDBH').AsString + ''' AND GXLB = ''S'';');
          QUpdate.SQL.Add('UPDATE SMDD SET RDepNO = ''' + DepID_C + ''', RPlanDate = ''' + DateToStr(PlanDate_C) + ''', ROrder = ''' + IntToStr(ROrder_C) + ''' WHERE DDBH = ''' + FieldByName('DDBH').AsString + ''' AND GXLB = ''C'';');
        end;
        Next;
      end;
      First;

      QUpdate.ExecSQL;
      LoadData();

      for Col := 1 to F_PreArrange.StringGrid1.ColCount-1 do
      begin
        for Row := 3 to 12 do
        begin
          F_PreArrange.StringGrid1.Cells[Col, Row] := '';
        end;
      end;
      F_PreArrange.SetDataRow;
      ShowMessage('Succeed!');
    end;
    Query3.Open;
  end
  else begin
    ShowMessage('Please select a department first');
  end;
end;

procedure TF_SplitTheOrder.ComboBox1Change(Sender: TObject);
begin
  //Combobox1選擇選項後將ID存入隱藏的Edit1
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT ID, GXLB FROM BDepartment');
    SQL.Add(' WHERE GSBH = ''' + main.Edit2.Text + ''' AND DepName LIKE ''' + COPY(Combobox1.Text, 1, 11) + '%'' ');
    SQL.Add(' AND ProYN = 1 AND YN = 1 AND sumline IS NOT NULL');
    Active := true;

    while not eof do
    begin
      if (FieldByName('GXLB').AsString = 'A') then
        EditA.Text := FieldByName('ID').AsString
      else if (FieldByName('GXLB').AsString = 'S') then
        EditS.Text := FieldByName('ID').AsString
      else if (FieldByName('GXLB').AsString = 'C') then
        EditC.Text := FieldByName('ID').AsString;
      Next;
    end;
  end;
end;

procedure TF_SplitTheOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := caFree;
  F_SplitTheOrder := nil;
end;

procedure TF_SplitTheOrder.LoadData;
begin
  //載入訂單內的所有輪轉
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT CAST(0 AS BIT) AS Checked, S.DDBH, S.Qty, B.DepName, S.RPlanDate FROM SMDD S');
    SQL.Add(' LEFT JOIN BDepartment B ON B.ID = S.RDepNO AND B.GSBH = S.GSBH');
    SQL.Add(' WHERE S.DDBH LIKE ''' + PreArrange.YSBHSplit + '%'' AND S.GSBH = ''VA12'' AND S.GXLB = ''A'' ');
    Active := true;

    DTP1.Date := FieldByName('RPlanDate').AsDateTime;
  end;

  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT XXCC, Qty FROM SMDDS WHERE DDBH = :DDBH');
    Active := true;
  end;
end;

end.

unit ProcessingListConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls;

type
  TProcessingListConfirm = class(TForm)
    Panel1: TPanel;
    DS1: TDataSource;
    DS2: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    UpdateSQL1: TUpdateSQL;
    Query1DLNO: TStringField;
    Query1GSBH: TStringField;
    Query1DepID: TStringField;
    Query1PlanDate: TDateTimeField;
    Query1Memo: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1YN: TStringField;
    Query2DLNO: TStringField;
    Query2ZLBH: TStringField;
    Query2GCBWBH: TStringField;
    Query2SIZE: TStringField;
    Query2BWBH: TStringField;
    Query2Qty: TIntegerField;
    Query2USERDATE: TDateTimeField;
    Query2USERID: TStringField;
    Query2YN: TStringField;
    Query2TmpQty: TIntegerField;
    Label3: TLabel;
    QSearch: TQuery;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    Query1DepName: TStringField;
    Query2ywsm: TStringField;
    Query2zwsm: TStringField;
    Query2bywsm: TStringField;
    Query2bzwsm: TStringField;
    QUpdate: TQuery;
    CB1: TCheckBox;
    CB2: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProcessingListConfirm: TProcessingListConfirm;

implementation

uses main1, FunUnit;
{$R *.dfm}

procedure TProcessingListConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TProcessingListConfirm.FormDestroy(Sender: TObject);
begin
  ProcessingListConfirm := Nil;
end;

procedure TProcessingListConfirm.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatch_GC.*,BDepartment.DepName');
    SQL.Add('FROM CutDispatch_GC');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CutDispatch_GC.DepID');
    SQL.Add('WHERE 1 = 1');
    if (CB2.Checked) then
      SQL.Add('AND CONVERT(SmallDateTime, CONVERT(VARCHAR, CutDispatch_GC.PlanDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.DateTime) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.DateTime) + '''');
    if (Edit1.Text <> '') then
      SQL.Add('AND DLNO = ''' + Edit1.Text + '''');
    SQL.Add('ORDER BY CFMID DESC, DLNO');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;

  if (CB1.Checked) then Button2Click(Nil);

  Query2.Active := true;
  DBGridEh1.SetFocus;
end;

procedure TProcessingListConfirm.Button2Click(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Add('SELECT REPLACE(CONVERT(VARCHAR, GETDATE(), 120), ''-'', ''/'') AS NDate');
    Active := true;
  end;

  try
    with Query1 do
    begin
      Edit;
      FieldByName('CFMID').Value := main.Edit1.Text;
      FieldByName('CFMDate').Value := QSearch.FieldByName('NDate').AsString;
      UpdateSQL1.Apply(ukModify);
      QUpdate.SQL.Clear;
      QUpdate.SQL.Add('UPDATE CutDispatchS_GC SET Qty = TmpQty WHERE DLNO = ''' + FieldByName('DLNO').AsString + ''';');
      QUpdate.SQL.Add('UPDATE CutDispatchSS_GC SET ScanQty = Qty WHERE DLNO = ''' + FieldByName('DLNO').AsString + ''';');
      QUpdate.ExecSQL;
      QUpdate.SQL.Clear;
      Active := false;
      Active := true;
    end;

    ShowMessage('Succeed.');
  except
    ShowMessage('Error.');
  end;
  DBGridEh1.SetFocus;
end;

procedure TProcessingListConfirm.Button3Click(Sender: TObject);
begin
  Query1.Active := false;
  Query2.Active := false;
  Query1.Active := true;
  Query2.Active := true;
  DBGridEh1.SetFocus;
end;

procedure TProcessingListConfirm.Button4Click(Sender: TObject);
begin
  try
    with Query1 do
    begin
      Edit;
      FieldByName('CFMID').Value := 'NO';
      FieldByName('CFMDate').Value := Null;
      UpdateSQL1.Apply(ukModify);
      QUpdate.SQL.Clear;
      QUpdate.SQL.Add('UPDATE CutDispatchS_GC SET Qty = 0 WHERE DLNO = ''' + FieldByName('DLNO').AsString + ''';');
      QUpdate.SQL.Add('UPDATE CutDispatchSS_GC SET ScanQty = 0 WHERE DLNO = ''' + FieldByName('DLNO').AsString + ''';');
      QUpdate.ExecSQL;
      QUpdate.SQL.Clear;
      Active := false;
      Active := true;
    end;

    ShowMessage('Succeed.');
  except
    ShowMessage('Error.');
  end;
  DBGridEh1.SetFocus;
end;

procedure TProcessingListConfirm.FormCreate(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.add('SELECT GETDATE() AS NDate');
    Active := true;
  end;

  DTP1.Date := QSearch.FieldByName('NDate').Value - 3;
  DTP2.Date := QSearch.FieldByName('NDate').Value;
end;

procedure TProcessingListConfirm.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('CFMID').AsString <> 'NO') then
  begin
    DBGridEh1.Canvas.Font.Color := clLime;
  end;
end;

procedure TProcessingListConfirm.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TProcessingListConfirm.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) AND (CB1.Checked) then
  begin
    Button1Click(Nil);
    Edit1.Text := '';
  end;
end;

end.

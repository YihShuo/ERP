unit DeliverConfirmTPM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TDeliverConfirmTPM = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid2: TDBGridEh;
    DS1: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS2: TDataSource;
    Qtemp: TQuery;
    DelDet: TQuery;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetQty: TCurrencyField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetZWPM: TStringField;
    UPDet: TUpdateSQL;
    DelMasGSBH: TStringField;
    DelDetKCQty: TFloatField;
    DelMasMEMO: TStringField;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverConfirmTPM: TDeliverConfirmTPM;
  NDate: TDate;

implementation

uses main1;

{$R *.dfm}

procedure TDeliverConfirmTPM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TDeliverConfirmTPM.FormCreate(Sender: TObject);
begin
  with Qtemp do // 取服務器的年月值
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT year(getdate()) as FY,month(getdate()) as FM , getdate() as NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    Active := false;
  end;
  DTP1.Date := NDate - 2;
  DTP2.Date := NDate;
end;

procedure TDeliverConfirmTPM.FormDestroy(Sender: TObject);
begin
  {}
  DeliverConfirmTPM := nil;
end;

procedure TDeliverConfirmTPM.Button1Click(Sender: TObject);
begin

  with DelMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCLL_TPM.*, BDepartment.DepName');
    SQL.Add('FROM KCLL_TPM');
    SQL.Add('LEFT JOIN BDepartment on KCLL_TPM.DepID = BDepartment.ID');
    if (CheckBox1.Checked = true) then
    begin
      SQL.Add('WHERE KCLL_TPM.CFMID <> ''NO''');
    end
    else
    begin
      SQL.Add('WHERE KCLL_TPM.CFMID = ''NO''');
    end;
    SQL.Add('AND convert(smalldatetime,convert(varchar,KCLL_TPM.USERDATE,111)) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + '''');
    SQL.Add('AND ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + '''');
    SQL.Add('AND KCLL_TPM.LLNO LIKE ''' + edit1.Text + '%''');
    SQL.Add('ORDER BY KCLL_TPM.LLNO  ');
    Active := true;
  end;

  DelDet.Active := true;
end;

procedure TDeliverConfirmTPM.Button2Click(Sender: TObject);
var
  y1, m1, d1, y2, m2, d2: word;
  i: integer;
begin
  if (DelMas.FieldByName('LLNO').IsNull) then
  begin
    Abort;
  end;
  while not DelDet.Eof do
  begin
    if (DelDet.FieldByName('Qty').IsNull) then
    begin
      ShowMessage('Qty can not be empty.');
      Abort;
    end;
    if (DelDet.FieldByName('Qty').Value > DelDet.FieldByName('KCQty').Value)
      then
    begin
      ShowMessage('Not enough material to deliver. 庫存數量不夠發');
      Abort;
    end;
    DelDet.Next;
  end;

  if (MessageDlg('Confirm or not ?', mtInformation, [mbYes, mbNo], 0) = mrNo)
    then
  begin
    Abort;
  end;

  try
    with DelMas do
    begin
      Edit;
      FieldByName('CFMID').Value := main.edit1.text;
      FieldByName('CFMDATE').Value := Ndate;
      UPMas.Apply(ukmodify);
      Active := false;
      Active := true;
    end;
  except
    on E: Exception do
    begin
      Showmessage('Have wrong.' + E.Message);
    end;
  end;
end;

procedure TDeliverConfirmTPM.Button3Click(Sender: TObject);
begin
  if (DelMas.Active) then
  begin
    DelDet.Active := false;
    DelMas.Active := false;
    DelMas.Active := true;
    DelDet.Active := true;
  end;
end;

end.

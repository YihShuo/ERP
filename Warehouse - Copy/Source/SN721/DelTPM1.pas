unit DelTPM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TDelTPM = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    Panel6: TPanel;
    Label17: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT1: TBitBtn;
    BDT2: TBitBtn;
    BDT3: TBitBtn;
    BDT4: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Panel4: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    BBTT1: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CBX1: TComboBox;
    Check: TCheckBox;
    DBGridEh1: TDBGridEh;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBGridEh2: TDBGridEh;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    DelMasGSBH: TStringField;
    UpMas: TUpdateSQL;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetQty: TCurrencyField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetZWPM: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DelMasMEMO: TStringField;
    BDelRec: TQuery;
    Qtemp: TQuery;
    DelMasMaintenanceID: TStringField;
    BDT5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure BDT5Click(Sender: TObject);
  private
    { Private declarations }
    sYear, sMonth: string;
  public
    { Public declarations }
  end;

var
  DelTPM: TDelTPM;
  NDate: TDate;

implementation

uses main1, DelTPM_Dep1, DelTPM_CL1, DelTPM_Maintenance1, DelTPM_Print1;

{$R *.dfm}

procedure TDelTPM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('You have to save data Record of report first.', mtWarning,
      [mbyes], 0);
    PC1.ActivePage := TS3;
    panel1.Visible := true;
    panel6.Visible := false;
    Action := canone;
  end
  else
  begin
    if (BD5.Enabled) then
    begin
      MessageDlg('You have to save data Report first.', mtWarning, [mbyes], 0);
      PC1.ActivePage := TS4;
      panel6.Visible := true;
      panel1.Visible := false;
      Action := canone;
    end
    else
    begin
      Action := Cafree;
    end;
  end;
end;

procedure TDelTPM.FormCreate(Sender: TObject);
var
  i: integer;
begin
  with Qtemp do
  begin
    // 取部門選項
    Active := false;
    SQL.Clear;
    SQL.Add('select ID,DepName from BDepartment');
    SQL.Add('where GSBH=' + '''' + main.Edit2.Text + '''');
    SQL.Add('order by ID');
    Active := true;
    for i := 1 to RecordCount do
    begin
      CBX1.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
    CBX1.ItemIndex := 0;

    // 取服務器的年月值
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT year(getdate()) as FY,month(getdate()) as FM , getdate() as NDate');
    Active := true;
    sYear := FieldByName('FY').AsString;
    sMonth := FieldByName('FM').AsString;
    NDate := FieldByName('NDate').Value;
    Active := false;
  end;
  DTP1.Date := NDate - 2;
  DTP2.Date := NDate;
end;

procedure TDelTPM.FormDestroy(Sender: TObject);
begin
  DelTPM := nil;
end;

procedure TDelTPM.BB1Click(Sender: TObject);
begin
  {Query}
  Panel2.Visible := true;
end;

procedure TDelTPM.BB2Click(Sender: TObject);
begin
  {Insert}
  with DelMas do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  BBTT1.Visible := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh1.columns[5].ButtonStyle := cbsEllipsis;
end;

procedure TDelTPM.BB3Click(Sender: TObject);
begin
  {Delete}
  if (DelDet.RecordCount = 0) then
  begin
    with DelMas do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Edit;
      FieldByName('YN').Value := '0';
    end;
  end
  else
  begin
    ShowMessage('Please delete the Deliver Detail first.')
  end;
  BBTT1.Visible := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDelTPM.BB4Click(Sender: TObject);
begin
  {Modify}
  with DelMas do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  BBTT1.Visible := true;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh1.columns[5].ButtonStyle := cbsEllipsis;
end;

procedure TDelTPM.BB5Click(Sender: TObject);
var
  LLNO: string;
  i: integer;
begin
  {Save}
  if (length(sMonth) < 2) then
  begin
    sMonth := '0' + sMonth;
  end;
  try
    DelDet.Active := false;
    DelMas.First;
    for i := 1 to DelMas.RecordCount do
    begin
      case DelMas.UpdateStatus of
        usinserted:
          begin
            if (DelMas.FieldByName('DepID').IsNull) then
            begin
              ShowMessage('DepID can not be empty.');
              Abort;
            end;
            if (DelMas.FieldByName('MaintenanceID').IsNull) then
            begin
              ShowMessage('MaintenanceID can not be empty.');
              Abort;
            end;

            with Qtemp do // 計算領料單流水號
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT LLNO FROM KCLL_TPM WHERE LLNO LIKE ''' + sYear +
                sMonth + '%''');
              SQL.Add('ORDER BY LLNO');
              Active := true;
              if (recordcount > 0) then
              begin
                Last;
                LLNO := FieldByName('LLNO').AsString;
                LLNO := copy(LLNO, 7, 5);
                LLNO := IntToStr(strtoint(LLNO) + 1);
                while (length(LLNO) < 5) do
                begin
                  LLNO := '0' + LLNO;
                end;
              end
              else
              begin
                LLNO := '00001';
              end;
              LLNO := sYear + sMonth + LLNO;
              Active := false;
              SQL.Clear;
            end;
            DelMas.Edit;
            DelMas.FieldByName('LLNO').Value := LLNO;
            DelMas.FieldByName('GSBH').Value := main.Edit2.text;
            DelMas.FieldByName('USERID').Value := main.edit1.text;
            DelMas.FieldByName('USERDATE').Value := FormatDateTime('yyyy/MM/dd',
              Ndate);
            DelMas.FieldByName('CFMID').Value := 'NO';
            DelMas.FieldByName('YN').Value := '1';
            UpMas.Apply(ukinsert);
          end; // usinserted
        usmodified:
          begin
            if (DelMas.FieldByName('YN').Value = '0') then
            begin
              with BDelRec do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('INSERT INTO BDelRec ');
                SQL.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                SQL.Add('values (' + '''' + 'KCLL_TPM' + '''' + ',' + '''' +
                  DelMas.FieldByName('LLNO').Value + '''');
                SQL.Add(',' + '''' + '' + '''' + ',' + '''' +
                  DelMas.FieldByName('USERID').Value + '''' + ',');
                SQL.Add('''' + main.Edit1.Text + '''' + ',getdate())');
                ExecSQL;
                Active := false;
              end;
              UpMas.Apply(ukdelete);
            end
            else
            begin
              if (DelMas.FieldByName('CFMID').value = 'NO') then
              begin
                if ((NDate - DelMas.FieldByName('USERDATE').value) <= 3) then
                begin
                  if (DelMas.FieldByName('USERID').Value = main.Edit1.Text) then
                  begin
                    DelMas.Edit;
                    DelMas.FieldByName('USERID').Value := main.edit1.text;
                    DelMas.FieldByName('USERDATE').Value :=
                      FormatDateTime('yyyy/MM/dd', Ndate);
                    UpMas.Apply(ukmodify);
                  end
                  else
                  begin
                    ShowMessage('It is not yours, can not modify.');
                  end;
                end
                else
                begin
                  ShowMessage('Date>3, can not modify.');
                end;
              end
              else
              begin
                ShowMessage('Already confirmed, can not modify.');
              end;
            end;
          end; // usmodified
      end; // case end
      DelMas.Next;
    end; // for loop end
    DelMas.Active := false;
    DelMas.CachedUpdates := false;
    DelMas.RequestLive := false;
    DelMas.Active := true;
    DelDet.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    ShowMessage('Succeed.');
  except
    MessageDlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TDelTPM.BB6Click(Sender: TObject);
begin
  {Cancel}
  with DelMas do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  bb5.Enabled := false;
  bb6.Enabled := false;
  BBTT1.Visible := false;
  DBGridEh1.columns[2].ButtonStyle := cbsnone;
  DBGridEh1.columns[5].ButtonStyle := cbsnone;
end;

procedure TDelTPM.BB7Click(Sender: TObject);
begin
  {Exit}
  Close;
end;

procedure TDelTPM.BBT1Click(Sender: TObject);
begin
  {First}
  DelMas.First;
end;

procedure TDelTPM.BBT2Click(Sender: TObject);
begin
  {Prior}
  DelMas.Prior;
end;

procedure TDelTPM.BBT3Click(Sender: TObject);
begin
  {Next}
  DelMas.Next;
end;

procedure TDelTPM.BBT4Click(Sender: TObject);
begin
  {Last}
  DelMas.Last;
end;

procedure TDelTPM.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePage = TS4) then
  begin
    panel6.Visible := true;
    panel1.Visible := false;
  end
  else
  begin
    panel6.Visible := false;
    panel1.Visible := true;
  end;
end;

procedure TDelTPM.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCLL_TPM.*,BDepartment.DepName  ');
    SQL.Add('FROM KCLL_TPM');
    SQL.Add('LEFT JOIN BDEPARTMENT ON KCLL_TPM.DepID=BDepartment.ID');
    SQL.Add('WHERE KCLL_TPM.LLNO LIKE ');
    SQL.Add('''' + edit1.Text + '%' + '''');
    if (CBX1.ItemIndex <> 0) then
    begin
      SQL.Add('AND BDepartment.DepName like ');
      SQL.Add('''' + CBX1.Text + '%' + '''');
    end;
    SQL.Add('AND convert(smalldatetime,convert(varchar,KCLL_TPM.USERDATE,111)) between ');
    SQL.Add('''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + '''' + ' and ' +
      '''' + formatdatetime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('AND KCLL_TPM.GSBH=' + '''' + main.Edit2.Text + '''');
    if Check.Checked then
    begin
      SQL.Add('and KCLL_TPM.USERID=' + '''' + main.Edit1.Text + '''');
    end;
    SQL.Add('ORDER BY LLNO');
    Active := true;
  end;
  panel2.Visible := false;
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BBT1.Enabled := true;
  BBT2.Enabled := true;
  BBT3.Enabled := true;
  BBT4.Enabled := true;
  check.Checked := true;
  DelDet.Active := true;
end;

procedure TDelTPM.BBTT1Click(Sender: TObject);
begin
  DelTPM_Dep := TDelTPM_Dep.Create(self);
  DelTPM_Dep.Show;
end;

procedure TDelTPM.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'DepID') then
  begin
    DelTPM_Dep := TDelTPM_Dep.Create(self);
    DelTPM_Dep.Show;
  end;
  if (DBGridEh1.SelectedField.FieldName = 'MaintenanceID') then
  begin
    DelTPM_Maintenance := TDelTPM_Maintenance.Create(self);
    DelTPM_Maintenance.Show;
  end;
end;

procedure TDelTPM.DBGridEh1DblClick(Sender: TObject);
begin
  if (DelMas.Active) then
  begin
    if (DelMas.RecordCount > 0) then
    begin
      PC1.ActivePage := TS4;
      panel1.Visible := false;
      panel6.Visible := true;
    end;
  end;
end;

procedure TDelTPM.BD2Click(Sender: TObject);
begin
  {Insert}
  if (DelMas.RequestLive) then
  begin
    ShowMessage('Please save Master data first.');
    PC1.ActivePage := TS3;
    panel6.Visible := false;
    panel1.Visible := true;
    Abort;
  end;

  with DelDet do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
  DBGridEh2.columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TDelTPM.BD3Click(Sender: TObject);
begin
  {Delete}
  if (DelMas.RequestLive) then
  begin
    ShowMessage('Please save Master data first.');
    PC1.ActivePage := TS3;
    panel6.Visible := false;
    panel1.Visible := true;
    Abort;
  end;

  with DelDet do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TDelTPM.BD4Click(Sender: TObject);
begin
  {Modify}
  if (DelMas.RequestLive) then
  begin
    ShowMessage('Please save Master data first.');
    PC1.ActivePage := TS3;
    panel6.Visible := false;
    panel1.Visible := true;
    Abort;
  end;

  with DelDet do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
  DBGridEh2.columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TDelTPM.BD5Click(Sender: TObject);
var
  i: integer;
begin
  {Save}
  with DelDet do
  begin
    First;
    while not DelDet.Eof do
    begin
      if (DelDet.FieldByName('Qty').IsNull) then
      begin
        ShowMessage('The Qty can not be empty.');
        Abort;
      end;
      Next;
    end;
  end;

  try
    DelDet.First;
    for i := 1 to DelDet.RecordCount do
    begin
      case DelDet.UpdateStatus of
        usinserted:
          begin
            if (DelMas.FieldByName('USERID').Value <> main.Edit1.Text) then
            begin
              ShowMessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if (DelDet.fieldbyname('CLBH').isnull) then
              begin
                DelDet.Delete;
              end
              else
              begin
                DelDet.Edit;
                DelDet.FieldByName('LLNO').Value :=
                  DelMas.FieldByName('LLNO').Value;
                DelDet.FieldByName('Qty').Value := FormatFloat('#,##0.##',
                  Deldet.FieldByName('Qty').Value); // 四捨五入到小數第二位
                DelDet.FieldByName('USERID').Value := main.edit1.text;
                DelDet.FieldByName('USERDATE').Value := Ndate;
                DelDet.FieldByName('YN').Value := '1';
                UPDet.Apply(ukinsert);
              end;
            end;
          end; // usinserted
        usmodified:
          begin
            if (DelDet.FieldByName('USERID').value <> main.Edit1.Text) then
            begin
              ShowMessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
            end
            else
            begin
              if (DelDet.fieldbyname('YN').value = '0') then
              begin
                with BDelRec do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('INSERT INTO BDelRec ');
                  SQL.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  SQL.Add('VALUES (' + '''' + 'KCLLS_TPM' + '''' + ',' + '''' +
                    DelDet.FieldByName('LLNO').Value + '''');
                  SQL.Add(',' + '''' + DelDet.FieldByName('CLBH').Value + '''' +
                    ',' + '''' + DelDet.FieldByName('USERID').Value + '''' +
                    ',');
                  SQL.Add('''' + main.Edit1.Text + '''' + ',getdate())');
                  ExecSQL;
                  Active := false;
                end;
                UPDet.Apply(ukdelete);
              end
              else
              begin
                DelDet.Edit;
                DelDet.FieldByName('LLNO').Value :=
                  DelMas.FieldByName('LLNO').Value;
                DelDet.FieldByName('Qty').Value := FormatFloat('#,##0.##',
                  Deldet.FieldByName('Qty').Value); // 四捨五入到小數第二位
                DelDet.FieldByName('USERID').Value := main.edit1.text;
                DelDet.FieldByName('USERDATE').Value := Ndate;
                UPDet.Apply(ukmodify);
              end;
            end;
          end; // usmodified
      end; // case end
      DelDet.Next;
    end; // for end
    DelDet.Active := false;
    DelDet.CachedUpdates := false;
    DelDet.RequestLive := false;
    DelDet.Active := true;
    bb6.Enabled := false;
    BD5.Enabled := false;
    BD6.Enabled := false;
    DBGridEh2.columns[0].ButtonStyle := cbsNone;
    ShowMessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TDelTPM.BD6Click(Sender: TObject);
begin
  {Cancel}
  with DelDet do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TDelTPM.BD7Click(Sender: TObject);
begin
  {Exit}
  Close;
end;

procedure TDelTPM.BDT1Click(Sender: TObject);
begin
  {First}
  DelDet.First;
end;

procedure TDelTPM.BDT2Click(Sender: TObject);
begin
  {Prior}
  DelDet.Prior;
end;

procedure TDelTPM.BDT3Click(Sender: TObject);
begin
  {Next}
  DelDet.Next;
end;

procedure TDelTPM.BDT4Click(Sender: TObject);
begin
  {Last}
  DelDet.Last;
end;

procedure TDelTPM.BDT5Click(Sender: TObject);
begin
  {Print}
  if (DelDet.RequestLive) then
  begin
    showMessage('Please save data first.');
    Abort;
  end
  else
  begin
    with DelDet do
    begin
      DelTPM_Print := TDelTPM_Print.Create(nil);
      DelTPM_Print.QuickRep1.Prepare;
      DelTPM_Print.QuickRep1.Preview;
      Active := false;
      Active := true;
      DelTPM_Print.Free;
    end;
  end;
end;

procedure TDelTPM.DelDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;
  BDT1.Enabled := true;
  BDT2.Enabled := true;
  BDT3.Enabled := true;
  BDT4.Enabled := true;
  BDT5.Enabled := true;
  if ((NDate - DelMas.FieldByName('USERDATE').value) > 2) then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;
  if (DelMas.FieldByName('CFMID').value <> 'NO') then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;
  if (DelMas.FieldByName('USERID').value <> main.edit1.text) then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;
  if (DelMas.CachedUpdates) then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;

  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TDelTPM.DBGridEh2EditButtonClick(Sender: TObject);
begin
  if (DBGridEh2.SelectedField.FieldName = 'CLBH') then
  begin
    DelTPM_CL := TDelTPM_CL.Create(self);
    DelTPM_CL.Show;
  end;
end;

end.

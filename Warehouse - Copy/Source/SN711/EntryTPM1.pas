unit EntryTPM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables;

type
  TEntryTPM = class(TForm)
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
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    Button1: TButton;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    TS4: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    ENMas: TQuery;
    ENMasRKNO: TStringField;
    ENMasGSBH: TStringField;
    ENMasUSERDATE: TDateTimeField;
    ENMasYN: TStringField;
    DS4: TDataSource;
    ENDet: TQuery;
    ENDetRKNO: TStringField;
    ENDetCLBH: TStringField;
    ENDetYWPM: TStringField;
    ENDetZWPM: TStringField;
    ENDetQty: TCurrencyField;
    ENDetUSERDATE: TDateTimeField;
    ENDetYN: TStringField;
    UPDet: TUpdateSQL;
    ENDetUSERID: TStringField;
    UpMas: TUpdateSQL;
    Qtemp: TQuery;
    BDelRec: TQuery;
    ENMasMEMO: TStringField;
    ENMasUSERID: TStringField;
    ENDetDWBH: TStringField;
    QExec: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure ENDetAfterOpen(DataSet: TDataSet);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BDT1Click(Sender: TObject);
    procedure BDT2Click(Sender: TObject);
    procedure BDT3Click(Sender: TObject);
    procedure BDT4Click(Sender: TObject);
    procedure DBGridEh3EditButtonClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
    sYear,sMonth: String;
  public
    { Public declarations }
  end;

var
  EntryTPM: TEntryTPM;
  NDate:TDate;

implementation

uses main1, EntryTPM_VN1;

{$R *.dfm}

procedure TEntryTPM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TEntryTPM.FormCreate(Sender: TObject);
begin
  with Qtemp do  // 取服務器的年月值
  begin
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

procedure TEntryTPM.FormDestroy(Sender: TObject);
begin
  EntryTPM := nil;
end;

procedure TEntryTPM.BB1Click(Sender: TObject);
begin
  panel2.Visible := true;
end;

procedure TEntryTPM.BB2Click(Sender: TObject);
begin
  with ENMas do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TEntryTPM.BB3Click(Sender: TObject);
begin
  if (ENDet.recordcount = 0) then
  begin
    with ENMas do
      begin
        if (FieldByName('USERID').value = main.edit1.Text) then
          begin
            RequestLive := true;
            CachedUpdates := true;
            Edit;
            FieldByName('YN').Value := '0';
          end
        else
          begin
            ShowMessage('It is not yours, can not delete.');
          end;
      end;
  end
  else
    begin
      ShowMessage('Please delete the Entry Detail first.')
    end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[1].ButtonStyle := cbsEllipsis;
end;

procedure TEntryTPM.BB4Click(Sender: TObject);
begin
 with ENMas do
 begin
   RequestLive := true;
   CachedUpdates := true;
   Edit;
 end;
 BB5.Enabled := true;
 BB6.Enabled := true;
 DBGridEh1.columns[2].ReadOnly := true;
end;

procedure TEntryTPM.BB5Click(Sender: TObject);
var RKNO: String; i: integer; j: integer;
begin

  if (length(sMonth) < 2) then
  begin
    sMonth := '0' + sMonth;
  end;

  try
    ENDet.Active := false;
    ENMas.First;
    for i := 1 to ENMas.RecordCount do
    begin
      case ENMas.updatestatus of
        usinserted:
        begin
          with Qtemp do
          begin
            // 計算領料單流水號
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT RKNO FROM KCRK_TPM WHERE RKNO LIKE ''' + sYear + sMonth + '%''');
            SQL.Add('ORDER BY RKNO');
            Active := true;
            if (recordcount > 0) then
            begin
              Last;
              RKNO := FieldByName('RKNO').AsString;
              RKNO := copy(RKNO, 7, 5);
              RKNO := IntToStr(strtoint(RKNO) + 1);
              while (length(RKNO) < 5) do
              begin
                RKNO:= '0' + RKNO;
              end;
            end
            else
            begin
              RKNO := '00001';
            end;
            RKNO := sYear + sMonth + RKNO;
            Active := false;
            SQL.Clear;

            // 撈取領料單明細
            SQL.Add('SELECT KCRKS_TPM.RKNO FROM KCRKS_TPM WHERE KCRKS_TPM.RKNO = ' + RKNO);
            Active := true;
            
            if ((not ENMas.FieldByName('LLNO').IsNull) and (QTemp.RecordCount = 0)) then
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT KCLLS.LLNO, KCLLS.CLBH, KCLLS.Qty');
              SQL.Add('FROM (SELECT KCLLS.LLNO, KCLLS.CLBH, SUM(KCLLS.Qty) AS Qty FROM KCLLS');
              SQL.Add('WHERE KCLLS.LLNO=' + ENMas.FieldByName('LLNO').Value);
              SQL.Add('GROUP BY KCLLS.LLNO, KCLLS.CLBH) KCLLS');
              SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = KCLLS.CLBH');
              Active := true;

              if (QTemp.RecordCount > 0) then
              begin
                QTemp.First;
                for j := 1 to QTemp.RecordCount do
                begin
                  with QExec do
                  begin
                   Active := false;
                   SQL.Clear;
                   SQL.Add('INSERT INTO KCRKS_TPM (RKNO, CLBH, Qty, USERID, USERDATE, YN)');
                   SQL.Add('VALUES (' + '''' + RKNO + '''' +  ',' + '''' + QTemp.FieldByName('CLBH').Value + '''' +  ',' + '''' + QTemp.FieldByName('Qty').AsString + '''' + ',' +  '''' + main.edit1.text + '''');
                   SQL.Add(',' + 'getdate()' + ',' + '1)');
                   ExecSQL;
                   Active := false;
                  end;
                  QTemp.Next;
                end;
              end else
              begin
                ShowMessage('The LLNO data count < 0, Please change others LLNO or keep empty.');
                ENDet.Active := true;
                Abort;
              end;
            end;
          end;
        ENMas.Edit;
        ENMas.FieldByName('RKNO').Value := RKNO;
        ENMas.FieldByName('GSBH').Value := main.Edit2.text;
        ENMas.FieldByName('USERID').Value := main.edit1.text;
        ENMas.FieldByName('USERDATE').Value := FormatDateTime('yyyy/MM/dd', Ndate);
        ENMas.FieldByName('YN').Value := '1';
        UpMas.Apply(ukinsert);
        end; // usinserted
        usmodified:
        begin
            if (ENMas.FieldByName('YN').Value = '0') then
            begin
              with BDelRec do
              begin
                Active := false;
                SQL.Clear;
                SQL.Add('INSERT INTO BDelRec ');
                SQL.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                SQL.Add('values ('+''''+'KCRK_TPM'+''''+','+''''+ENMas.FieldByName('RKNO').Value+'''');
                SQL.Add(','+''''+''+''''+','+''''+ENMas.FieldByName('USERID').Value+''''+',');
                SQL.Add(''''+main.Edit1.Text+''''+',getdate())');
                ExecSQL;
                Active := false;
              end;
              UpMas.Apply(ukdelete);
            end else
            begin
              if (NDate-ENMas.FieldByName('USERDATE').value)<=7  then
              begin
                if (ENMas.FieldByName('USERID').Value = main.Edit1.Text) then
                begin
                  ENMas.Edit;
                  ENMas.FieldByName('USERID').Value := main.edit1.text;
                  ENMas.FieldByName('USERDATE').Value := FormatDateTime('yyyy/MM/dd', Ndate);
                  UpMas.Apply(ukmodify);
                end else
                begin
                  ShowMessage('It is not yours, can not modify.');
                end;
              end else
              begin
                ShowMessage('Date > 7, can not modify.');
              end;
            end;
        end; // usmodified
      end; // case end
      ENMas.Next;
    end; // for loop end
  ENMas.Active := false;
  ENMas.CachedUpdates := false;
  ENMas.RequestLive := false;
  ENMas.Active := true;
  ENDet.Active := true;
  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGridEh1.columns[2].ReadOnly := false;
  ShowMessage('Succeed.');
  except
    MessageDlg('Have wrong, can not save data!', mtwarning,[mbyes], 0);
  end;
end;

procedure TEntryTPM.BB6Click(Sender: TObject);
begin
  with ENMas do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGridEh1.columns[2].ReadOnly := false;
end;

procedure TEntryTPM.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryTPM.BBT1Click(Sender: TObject);
begin
  ENMas.First;
end;

procedure TEntryTPM.BBT2Click(Sender: TObject);
begin
  ENMas.Prior;
end;

procedure TEntryTPM.BBT3Click(Sender: TObject);
begin
  ENMas.Next;
end;

procedure TEntryTPM.BBT4Click(Sender: TObject);
begin
  ENMas.Last;
end;

procedure TEntryTPM.BD2Click(Sender: TObject);
begin
  if (ENMas.RequestLive) then
  begin
    ShowMessage('Please save Master data first.');
    PC1.ActivePage := TS3;
    panel6.Visible := false;
    panel1.Visible := true;
    Abort;
  end;

  with ENDet do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
  DBGridEh3.columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TEntryTPM.BD3Click(Sender: TObject);
begin
  if (ENMas.RequestLive) then
  begin
    ShowMessage('Please save Master data first.');
    PC1.ActivePage := TS3;
    panel6.Visible := false;
    panel1.Visible := true;
    Abort;
  end;

  with ENDet do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
  DBGridEh3.columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TEntryTPM.BD4Click(Sender: TObject);
begin
  if (ENMas.RequestLive) then
  begin
    ShowMessage('Please save Master data first.');
    PC1.ActivePage := TS3;
    panel6.Visible := false;
    panel1.Visible := true;
    Abort;
  end;

  with ENDet do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  BD5.Enabled := true;
  BD6.Enabled := true;
  DBGridEh3.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryTPM.BD5Click(Sender: TObject);
var i: integer;
begin
  try
  ENDet.First;
  for i := 1 to ENDet.RecordCount do
  begin
    case ENDet.updatestatus of
      usinserted:
      begin
        if (ENDet.FieldByName('CLBH').IsNull) then
        begin
          ENDet.Delete;
        end else
        begin
          ENDet.Edit;
          ENDet.FieldByName('RKNO').Value := ENMas.FieldByName('RKNO').Value;
          if (ENDet.FieldByName('Qty').IsNull) then
          begin
            ShowMessage('Qty can not be empty.');
            Abort;
          end;
          ENDet.FieldByName('USERID').Value := main.edit1.text;
          ENDet.FieldByName('USERDATE').Value := FormatDateTime('yyyy/MM/dd', Ndate);
          ENDet.FieldByName('YN').Value := '1';
          UPDet.Apply(ukinsert);
        end;
      end; // usinserted
      usmodified:
      begin
        if (ENDet.FieldByName('YN').Value = '0') then
        begin
          with BDelRec do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('INSERT INTO BDelRec ');
            SQL.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
            SQL.Add('values ('+''''+'KCRKS_TPM'+''''+','+''''+ENMas.FieldByName('RKNO').Value+'''');
            SQL.Add(','+''''+''+''''+','+''''+ENMas.FieldByName('USERID').Value+''''+',');
            SQL.Add(''''+main.Edit1.Text+''''+',getdate())');
            ExecSQL;
            Active := false;
          end;
          UPDet.Apply(ukdelete);
        end else
        begin
            ENDet.Edit;
            ENDet.FieldByName('USERID').Value:=main.Edit1.Text;
            ENDet.FieldByName('USERDATE').Value:=FormatDateTime('yyyy/MM/dd',Ndate);
            UPDet.Apply(ukmodify);
        end;
      end; // usmodified
    end; // case end
    ENDet.Next;
  end; // for loop end
  Qtemp.Active := false;
  ENDet.Active := false;
  ENDet.CachedUpdates := false;
  ENDet.RequestLive := false;
  ENDet.Active := true;
  bb6.Enabled := false;
  BD5.Enabled := false;
  BD6.Enabled := false;
  ShowMessage('Succeed.');
  except
    MessageDlg('Have wrong, can not save data!', mtwarning,[mbyes], 0);
  end;
end;

procedure TEntryTPM.BD6Click(Sender: TObject);
begin
  with ENDet do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  BD5.Enabled := false;
  BD6.Enabled := false;
  DBGridEh3.columns[0].ButtonStyle := cbsNone;
end;

procedure TEntryTPM.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryTPM.BDT1Click(Sender: TObject);
begin
  ENDet.First;
end;

procedure TEntryTPM.BDT2Click(Sender: TObject);
begin
  ENDet.Prior;
end;

procedure TEntryTPM.BDT3Click(Sender: TObject);
begin
  ENDet.Next;
end;

procedure TEntryTPM.BDT4Click(Sender: TObject);
begin
  ENDet.Last;
end;

procedure TEntryTPM.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePage=TS4) then
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

procedure TEntryTPM.Button1Click(Sender: TObject);
begin
  with ENMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCRK_TPM.* FROM KCRK_TPM');
    {RKNO}
    SQL.Add('WHERE KCRK_TPM.RKNO LIKE' +  '''' + '%' + Edit1.Text + '%' + '''');
    {Date Range}
    SQL.Add('AND CONVERT(smalldatetime,CONVERT(varchar,KCRK_TPM.USERDATE,111)) BETWEEN ');
    SQL.Add('''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''' + ' AND ' + '''' + formatdatetime('yyyy/MM/dd',DTP2.Date) + '''');
    {Mine}
    if (Check.Checked) then
    begin
      SQL.Add('AND KCRK_TPM.USERID=' + '''' + main.Edit1.Text + '''');
    end;
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
  ENDet.Active := true;
end;

procedure TEntryTPM.ENDetAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;
  BDT1.Enabled := true;
  BDT2.Enabled := true;
  BDT3.Enabled := true;
  BDT4.Enabled := true;
  if (((NDate-ENMas.FieldByName('USERDATE').value) > 7) and (formatdatetime('yyyy/MM/dd',NDate) >= '2008/12/01'))  then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;
  if ENMas.FieldByName('USERID').value <> main.edit1.text then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;
  if ENMas.CachedUpdates then
  begin
    BD2.Enabled := false;
    BD3.Enabled := false;
    BD4.Enabled := false;
  end;
end;

procedure TEntryTPM.DBGridEh3EditButtonClick(Sender: TObject);
begin
 if (DBGridEh3.SelectedField.FieldName = 'CLBH') then
 begin
 EntryTPM_VN := TEntryTPM_VN.Create(self);
 EntryTPM_VN.show;
 end;
end;

procedure TEntryTPM.DBGridEh1DblClick(Sender: TObject);
begin
  if (ENMas.Active) then
  begin
    if (ENMas.RecordCount > 0) then
      begin
        PC1.ActivePage := TS4;
        panel1.Visible := false;
        panel6.Visible := true;
      end;
  end;
end;

end.

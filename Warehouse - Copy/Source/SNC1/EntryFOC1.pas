unit EntryFOC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, GridsEh, DBGridEh, ComCtrls, Mask, Buttons,
  ExtCtrls, DB, DBTables,comobj;

type
  TEntryFOC = class(TForm)
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
    ENMasCKBH: TStringField;
    ENMasZSBH: TStringField;
    ENMasZSNO: TStringField;
    ENMasZSYWJC: TStringField;
    Label2: TLabel;
    Edit2: TEdit;
    ENDetMemo: TStringField;
    ENDetoldQty: TCurrencyField;
    bbt6: TBitBtn;
    BTD6: TBitBtn;
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
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure ENMasZSNOSetText(Sender: TField; const Text: String);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BTD6Click(Sender: TObject);
  private
    { Private declarations }
    sYear,sMonth: String;
    procedure SetZSNOText(ZSNO:string);
  public
    { Public declarations }
  end;

var
  EntryFOC: TEntryFOC;
  NDate:TDate;

implementation

uses main1, EntryTPM_VN1, EntryFOC_ZSBH1,fununit, EntryFOC_Mat1,
  EntryFOC_Sample1;

{$R *.dfm}

procedure TEntryFOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TEntryFOC.FormCreate(Sender: TObject);
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
  PC1.ActivePage:=TS3;
  DTP1.Date := NDate - 2;
  DTP2.Date := NDate;
end;

procedure TEntryFOC.FormDestroy(Sender: TObject);
begin
  EntryFOC := nil;
end;

procedure TEntryFOC.BB1Click(Sender: TObject);
begin
  panel2.Visible := true;
end;

procedure TEntryFOC.BB2Click(Sender: TObject);
begin
  with ENMas do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryFOC.BB3Click(Sender: TObject);
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
        end else
        begin
          ShowMessage('It is not yours, can not delete.');
        end;
    end;
  end else
  begin
    ShowMessage('Please delete the Entry Detail first.')
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[1].ButtonStyle := cbsEllipsis;
end;

procedure TEntryFOC.BB4Click(Sender: TObject);
begin
 with ENMas do
 begin
   RequestLive := true;
   CachedUpdates := true;
   Edit;
 end;
 BB5.Enabled := true;
 BB6.Enabled := true;
 DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TEntryFOC.BB5Click(Sender: TObject);
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
            SQL.Add('SELECT RKNO FROM KCRK_FOC WHERE RKNO LIKE ''' + sYear + sMonth + '%''');
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
            end else
            begin
              RKNO := '00001';
            end;
            RKNO := sYear + sMonth + RKNO;
            Active := false;
            SQL.Clear;
          end;

          ENMas.Edit;
          ENMas.FieldByName('RKNO').Value := RKNO;
          ENMas.FieldByName('GSBH').Value := main.Edit2.text;
          if EnMas.FieldByName('ZSNO').AsString='' then ENMas.fieldbyname('ZSNO').Value:='ZZZZZZZZZZ';
          ENMas.FieldByName('CKBH').Value := 'FOC';
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
                {SQL.Add('INSERT INTO BDelRec ');
                SQL.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                SQL.Add('values ('+''''+'KCRK_FOC'+''''+','+''''+ENMas.FieldByName('RKNO').Value+'''');
                SQL.Add(','+''''+''+''''+','+''''+ENMas.FieldByName('USERID').Value+''''+',');
                SQL.Add(''''+main.Edit1.Text+''''+',getdate())'); }
                SQL.Add('UPDATE KCRK_FOC SET flowflag = ''X'' WHERE RKNO = ''' + ENMas.fieldbyname('RKNO').AsString+''' ');
                ExecSQL;
                Active := false;
              end;
              //UpMas.Apply(ukdelete);
            end else
            begin
              if (NDate-ENMas.FieldByName('USERDATE').value)<=7  then
              begin
                if (ENMas.FieldByName('USERID').Value = main.Edit1.Text) then
                begin
                  ENMas.Edit;
                  if EnMas.FieldByName('ZSNO').AsString='' then ENMas.fieldbyname('ZSNO').Value:='ZZZZZZZZZZ';
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
  DBGridEh1.columns[1].ButtonStyle:=cbsnone;
  ShowMessage('Succeed.');
  except
    MessageDlg('Have wrong, can not save data!', mtwarning,[mbyes], 0);
  end;
end;

procedure TEntryFOC.BB6Click(Sender: TObject);
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

procedure TEntryFOC.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryFOC.BBT1Click(Sender: TObject);
begin
  ENMas.First;
end;

procedure TEntryFOC.BBT2Click(Sender: TObject);
begin
  ENMas.Prior;
end;

procedure TEntryFOC.BBT3Click(Sender: TObject);
begin
  ENMas.Next;
end;

procedure TEntryFOC.BBT4Click(Sender: TObject);
begin
  ENMas.Last;
end;

procedure TEntryFOC.BD2Click(Sender: TObject);
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

procedure TEntryFOC.BD3Click(Sender: TObject);
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

procedure TEntryFOC.BD4Click(Sender: TObject);
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

procedure TEntryFOC.BD5Click(Sender: TObject);
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
          with BDelRec do
          begin
            active:=false;
            sql.clear;
            sql.Add('IF NOT EXISTS (Select * from KCZLS_FOC where CLBH='''+EnDet.FieldByName('CLBH').Value+''' and CKBH='''+Enmas.fieldbyname('CKBH').Value+''')');
            SQL.Add('Begin ');
            SQL.Add('Insert into KCZLS_FOC (CLBH, CKBH, USERID, USERDATE, YN)');
            SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+Enmas.FieldByName('CKBH').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
            SQl.Add('End ');
            if SQl.Text<>'' then ExecSQL();
            active:=false;
            sql.clear;
            sql.add('update KCZLS_FOC ');
            sql.add('set KCQty=Isnull(KCQty,0)+'+EnDet.fieldbyname('Qty').asstring);
            SQL.add('where CKBH='+''''+EnMas.fieldbyname('CKBH').Value+'''');
            SQL.add('      and CLBH='+''''+EnDet.fieldbyname('CLBH').Value+'''');
            //funcobj.WriteErrorLog(sql.Text);
            execsql;
            active:=false;
          end;
          UPDet.Apply(ukinsert);
        end;
      end; // usinserted
      usmodified:
      begin
        if (ENDet.FieldByName('YN').Value = '0') then
        begin
        with BDelRec do
        begin
          active:=false;
          sql.clear;
          sql.Add('IF NOT EXISTS (Select * from KCZLS_FOC where CLBH='''+EnDet.FieldByName('CLBH').Value+''' and CKBH='''+Enmas.fieldbyname('CKBH').Value+''')');
          SQL.Add('Begin ');
          SQL.Add('Insert into KCZLS_FOC (CLBH, CKBH, USERID, USERDATE, YN)');
          SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+Enmas.FieldByName('CKBH').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
          SQl.Add('End ');
          if SQl.Text<>'' then ExecSQL();
          active:=false;
          sql.clear;
          sql.add('update KCZLS_FOC ');
          sql.add('set KCQty=Isnull(KCQty,0)-'+EnDet.fieldbyname('Qty').asstring);
          SQL.add('where CKBH='+''''+EnMas.fieldbyname('CKBH').Value+'''');
          SQL.add('      and CLBH='+''''+EnDet.fieldbyname('CLBH').Value+'''');
          execsql;
          active:=false;
        end;
        with BDelRec do
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('INSERT INTO BDelRec ');
          SQL.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          SQL.Add('values ('+''''+'KCRKS_FOC'+''''+','+''''+ENMas.FieldByName('RKNO').Value+'''');
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
            with BDelRec do
            begin
              active:=false;
              sql.clear;
              sql.Add('IF NOT EXISTS (Select * from KCZLS_FOC where CLBH='''+EnDet.FieldByName('CLBH').Value+''' and CKBH='''+Enmas.fieldbyname('CKBH').Value+''')');
              SQL.Add('Begin ');
              SQL.Add('Insert into KCZLS_FOC (CLBH, CKBH, USERID, USERDATE, YN)');
              SQL.Add('Values( '''+EnDet.FieldByName('CLBH').Value+''','''+Enmas.FieldByName('CKBH').Value+''','''+main.Edit1.Text+''',Getdate(),1)');
              SQl.Add('End ');
              if SQl.Text<>'' then ExecSQL();
              active:=false;
              sql.clear;
              sql.add('update KCZLS_FOC ');
              sql.add('set KCQty=Isnull(KCQty,0)+'+EnDet.fieldbyname('Qty').asstring+'-'+EnDet.fieldbyname('oldQty').asstring);
              SQL.add('where CKBH='+''''+EnMas.fieldbyname('CKBH').Value+'''');
              SQL.add('      and CLBH='+''''+EnDet.fieldbyname('CLBH').Value+'''');
              execsql;
              active:=false;
            end;
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

procedure TEntryFOC.BD6Click(Sender: TObject);
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

procedure TEntryFOC.BD7Click(Sender: TObject);
begin
  close;
end;

procedure TEntryFOC.BDT1Click(Sender: TObject);
begin
  ENDet.First;
end;

procedure TEntryFOC.BDT2Click(Sender: TObject);
begin
  ENDet.Prior;
end;

procedure TEntryFOC.BDT3Click(Sender: TObject);
begin
  ENDet.Next;
end;

procedure TEntryFOC.BDT4Click(Sender: TObject);
begin
  ENDet.Last;
end;

procedure TEntryFOC.PC1Change(Sender: TObject);
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

procedure TEntryFOC.Button1Click(Sender: TObject);
begin
  with ENMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCRK_FOC.*,ZSZL.ZSYWJC   ');
    SQL.Add('FROM KCRK_FOC');
    SQL.Add('LEFT JOIN ZSZL on KCRK_FOC.ZSBH=ZSZL.ZSDH');
    SQL.Add('WHERE ISNULL(flowflag,'''')<>''X'' and KCRK_FOC.RKNO LIKE  ''%' + Edit1.Text + '%'' ');
    SQL.Add('AND KCRK_FOC.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('AND CONVERT(smalldatetime,CONVERT(varchar,KCRK_FOC.USERDATE,111)) BETWEEN ');
    SQL.Add(' ''' + formatdatetime('yyyy/MM/dd',DTP1.Date) + '''  AND  ''' + formatdatetime('yyyy/MM/dd',DTP2.Date) + ''' ');
    if edit2.Text<> '' then
      SQL.Add('AND ZSZL.ZSYWJC like ''%' + Edit2.Text+ '%'' ');
    if (Check.Checked) then
    begin
      SQL.Add('AND KCRK_FOC.USERID=''' + main.Edit1.Text + ''' ');
    end;
    sql.add('order by RKNO Desc');
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

procedure TEntryFOC.ENDetAfterOpen(DataSet: TDataSet);
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

procedure TEntryFOC.DBGridEh3EditButtonClick(Sender: TObject);
begin
 if (DBGridEh3.SelectedField.FieldName = 'CLBH') then
 begin
  if EntryFOC.ENMas.fieldbyname('ZSNO').Value ='ZZZZZZZZZZ' then
  begin
    EntryFOC_Mat := TEntryFOC_Mat.Create(self);
    EntryFOC_Mat.show;
  end else
  begin
    EntryFOC_Sample :=TEntryFOC_Sample.create(self);
    if not EntryFOC.EnMas.fieldbyname('ZSNO').isnull then
    begin
      EntryFOC_Sample.EDIT2.text:=EntryFOC.EnMas.fieldbyname('ZSNO').value;
    end;
    EntryFOC_Sample.button1click(nil);
    EntryFOC_Sample.Show;
  end;
 end;
end;

procedure TEntryFOC.DBGridEh1DblClick(Sender: TObject);
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

procedure TEntryFOC.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if  DBGridEh1.SelectedField.FieldName='ZSBH' then
  begin
     EntryFOC_ZSBH:=TEntryFOC_ZSBH.create(self);
     EntryFOC_ZSBH.show;
  end;
end;
procedure TEntryFOC.SetZSNOText(ZSNO:string);
begin
  with Qtemp do
  begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select Case when  IsNull(Pay.ZSDH,'''')='''' then ');
      SQL.Add('              Case when  ZSZL.YN=2 then ZSZL.ZSDH else null end ');
      SQL.Add('		    else Pay.ZSDH end as ZSDH');
      SQL.Add('           ,Case when  IsNull(Pay.ZSDH,'''')='''' then ');
      SQL.Add('              Case when  ZSZL.YN=2 then ZSZL.ZSYWJC else null end ');
      SQL.Add('		    else Pay.ZSYWJC end as ZSYWJC');
      SQL.Add('from CGZL  ');
      SQL.Add('left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH');
      SQL.Add('left join ZSZL_DEV on  ZSZL_DEV.ZSDH=CGZL.ZSBH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
      SQL.Add('left join ZSZL Pay on Pay.ZSDH=ZSZL_DEV.ZSDH_TW ');
      SQL.Add('where CGZL.CGNO='''+ZSNO+''' and CGZL.GSBH='''+main.Edit2.Text+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      if RecordCount>0 then
      begin
        ENMas.Edit;
        ENMas.FieldByName('ZSBH').Value:=Qtemp.FieldByName('ZSDH').Value;
        ENMas.FieldByName('ZSYWJC').Value:=Qtemp.FieldByName('ZSYWJC').Value;
        ENMas.Post;
      end else
      begin
        //必須存在採購單號否則為ZZZZZZZZ
        Active:=false;
        SQL.Clear;
        SQL.Add('Select CGNO from CGZL ');
        SQL.Add('where CGZL.CGNO='''+ZSNO+''' and CGZL.GSBH='''+main.Edit2.Text+'''  ');
        Active:=true;
        if RecordCount=0 then
        begin
          ENMas.Edit;
          ENMas.FieldByName('ZSNO').Value:='ZZZZZZZZZZ'; //無系統採購單號
          ENMas.Post;
        end;
      end;
      Active:=false;
    end;
end;
procedure TEntryFOC.ENMasZSNOSetText(Sender: TField; const Text: String);
begin
  Sender.Value:=Text;
  SetZSNOText(Sender.Value);
end;
procedure TEntryFOC.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if EnMas.Active then
  begin
    if EnMas.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
    begin
      showmessage('No record.');
      abort;
    end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    EnDet.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal:='@';
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   EnMas.fieldcount   do
    begin
        eclApp.Cells(1,i+1):=EnMas.fields[i-1].FieldName;
    end;
    EnMas.First;
    j:=2;
    while   not  EnMas.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   EnMas.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=EnMas.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        EnMas.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    EnDet.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TEntryFOC.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ENMas.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryFOC.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if EnDet.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
    //dbgrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TEntryFOC.BTD6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  ENDet.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    //
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=1   to   ENDet.fieldcount   do
          begin
            eclApp.Cells(1,i):=ENDet.fields[i-1].FieldName;
          end;
        //
        ENDet.First;
        j:=2;
        while   not   ENDet.Eof   do
        begin
          for   i:=1   to  ENDet.fieldcount  do
          begin
            eclApp.Cells(j,i):=ENDet.Fields[i-1].Value;
          end;
        ENDet.Next;
        inc(j);
        end;
       eclapp.columns.autofit;
       showmessage('Succeed.');
       eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;

end.

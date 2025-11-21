unit RepairDevice1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Bde.DBTables, Vcl.Buttons, Vcl.StdCtrls;

type
  TRepairDevice = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    UpMas: TUpdateSQL;
    TSCD_Fault: TQuery;
    TSCD_FaultChinese_Fault: TStringField;
    TSCD_FaultUSERID: TStringField;
    TSCD_FaultUSERDATE: TDateTimeField;
    TSCD_FaultYN: TStringField;
    TSCD_FaultFault_NO: TAutoIncField;
    DS1: TDataSource;
    DS2: TDataSource;
    Splitter1: TSplitter;
    TSCD_FaultVN_Fault: TStringField;
    CBLSBH: TComboBox;
    LSBHQuery: TQuery;
    Panel3: TPanel;
    DBG1: TDBGrid;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB3: TBitBtn;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    TIB1: TBitBtn;
    TMB1: TBitBtn;
    TSB1: TBitBtn;
    TCB1: TBitBtn;
    TDB1: TBitBtn;
    Panel6: TPanel;
    Panel7: TPanel;
    TIB2: TBitBtn;
    TMB2: TBitBtn;
    TSB2: TBitBtn;
    TCB2: TBitBtn;
    BitBtn13: TBitBtn;
    TDB2: TBitBtn;
    Splitter2: TSplitter;
    DBG2: TDBGrid;
    CBLSBH1: TComboBox;
    UpFaults: TUpdateSQL;
    TSCDFaultss: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    AutoIncField2: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DS3: TDataSource;
    UpFaultss: TUpdateSQL;
    TSCD_FaultUPID: TIntegerField;
    BB7: TBitBtn;
    TSCD_Fault1: TQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField1: TDateTimeField;
    StringField6: TStringField;
    AutoIncField1: TAutoIncField;
    StringField9: TStringField;
    IntegerField2: TIntegerField;
    TSCDFaultssUSERDATE: TStringField;
    Query1: TQuery;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure DBG1CellClick(Column: TColumn);
    procedure BB3Click(Sender: TObject);
    procedure TIB1Click(Sender: TObject);
    procedure TMB1Click(Sender: TObject);
    procedure TSB1Click(Sender: TObject);
    procedure TCB1Click(Sender: TObject);
    procedure TDB1Click(Sender: TObject);
    procedure TDB2Click(Sender: TObject);
    procedure TIB2Click(Sender: TObject);
    procedure TMB2Click(Sender: TObject);
    procedure TSB2Click(Sender: TObject);
    procedure TCB2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepairDevice: TRepairDevice;

implementation

{$R *.dfm}

uses main1;

procedure TRepairDevice.BB2Click(Sender: TObject);
begin
  with TSCD_Fault do
  begin
    requestlive := true;
    cachedupdates := true;
    active:=true;
    insert;
  end;
    BB5.Enabled := true;
    BB6.Enabled := true;
    BB2.Enabled := false;
    BB3.Enabled := false;
    BB4.Enabled := false;
end;

procedure TRepairDevice.BB3Click(Sender: TObject);
begin
  with TSCD_Fault do
  begin
    if (fieldbyname('USERID').Value = main.Edit1.Text) and (recordcount>0) then
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := 'N';
      post;
    end
    else
    begin
      showmessage('It is not yours,can not delete.');
      abort;
    end;
  end;
    BB5.Enabled := true;
    BB6.Enabled := true;
    BB2.Enabled := false;
    BB3.Enabled := false;
    BB4.Enabled := false;
end;

procedure TRepairDevice.BB4Click(Sender: TObject);
begin
  if (TSCD_Fault.Active) and (TSCD_Fault.RecordCount>0) then
  begin
    with TSCD_Fault do
    begin
        requestlive := true;
        cachedupdates := true;
        edit;
    end;
    BB5.Enabled := true;
    BB6.Enabled := true;
    BB2.Enabled := false;
    BB3.Enabled := false;
    BB4.Enabled := false;
  end;
end;

procedure TRepairDevice.BB5Click(Sender: TObject);
var
  i: integer;
begin
  try
    TSCD_Fault.first;
    for i := 1 to TSCD_Fault.RecordCount do
    begin
      case TSCD_Fault.updatestatus of
        usinserted:
          begin
            TSCD_Fault.edit;
            TSCD_Fault.fieldbyname('USERID').Value := main.Edit1.Text;
            UpMas.apply(ukinsert);
            LSBHQuery.Active:=false;
            LSBHQuery.SQL.Clear;
            LSBHQuery.SQL.Add('SELECT [Chinese_Fault],[VN_Fault] FROM [TSCD_Fault] where [YN]=''Y'' and [UPID]=0');
            LSBHQuery.Active:=true;
            CBLSBH.Items.Clear;
            CBLSBH.Items.Add('');
            CBLSBH1.Items.Clear;
            CBLSBH1.Items.Add('');
            while NOT LSBHQuery.Eof DO
            begin
               CBLSBH.Items.Add(LSBHQuery.FieldByName('VN_Fault').AsString);
               CBLSBH1.Items.Add(LSBHQuery.FieldByName('Chinese_Fault').AsString);
               LSBHQuery.Next;
            end;
          end;
        usmodified:
          begin
            TSCD_Fault.edit;
            TSCD_Fault.fieldbyname('USERID').Value := main.Edit1.Text;
            UpMas.apply(ukmodify);
            if TSCD_Fault.fieldbyname('YN').Value='N' then
            begin
              LSBHQuery.Active:=false;
              LSBHQuery.SQL.Clear;
              LSBHQuery.SQL.Add('SELECT [Fault_NO] from [TSCD_Fault] where UPID='+TSCD_Fault.fieldbyname('Fault_NO').AsString);
              LSBHQuery.Active:=true;
              while NOT LSBHQuery.Eof do
              begin
                Query1.Active:=false;
                Query1.SQL.clear;
                Query1.SQL.Add('update [TSCD_Faults] set [YN]=''N'' where Fault_NO='+LSBHQuery.fieldbyname('Fault_NO').AsString);
                Query1.SQL.Add(';update [TSCD_Fault] set [YN]=''N'' where Fault_NO='+LSBHQuery.fieldbyname('Fault_NO').AsString);
                Query1.ExecSQL;
                LSBHQuery.Next;
              end;
            end;
          end;
      end;
      TSCD_Fault.next;
    end;
    TSCD_Fault.active := false;
    TSCD_Fault.cachedupdates := false;
    TSCD_Fault.requestlive := false;
    TSCD_Fault.active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;
procedure TRepairDevice.BB6Click(Sender: TObject);
begin
 with TSCD_Fault do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
    BB5.Enabled := false;
    BB6.Enabled := false;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
end;

procedure TRepairDevice.BB7Click(Sender: TObject);
begin
Close;
end;

procedure TRepairDevice.Button1Click(Sender: TObject);
begin
  if (Length(CBLSBH.Text) > 1) or (Length(CBLSBH1.Text) > 1) then
  begin
    with TSCD_Fault do
    begin
      active := false;
      sql.Clear;
      sql.Add('select * from TSCD_Fault where UPID=0 and YN=''Y''');
      if Length(CBLSBH.Text) >1 then sql.Add(' and [VN_Fault] like ''%' + CBLSBH.Text + '%''');
      if Length(CBLSBH1.Text) >1 then sql.Add(' and TSCD_Fault.Chinese_Fault like ''%' + CBLSBH1.Text + '%''');
      sql.Add(' order by [VN_Fault]');
      //showmessage(sql.Text);
      active := true;
      TSCD_Fault1.active:=true;
      TSCDFaultss.active:=true;
    end;
    if TSCD_Fault.RecordCount>0 then
    begin
      BB5.Enabled := false;
      BB6.Enabled := false;
      BB2.Enabled := true;
      BB3.Enabled := true;
      BB4.Enabled := true;
      TIB1.Enabled := true;
      TMB1.Enabled := true;
      TDB1.Enabled := true;
      TSB1.Enabled := false;
      TCB1.Enabled := false;
      TIB2.Enabled := true;
      TMB2.Enabled := true;
      TDB2.Enabled := true;
      TSB2.Enabled := false;
      TCB2.Enabled := false;
    end;
  end
  else
  begin
    showmessage('LSBH length must > 1 !!!');
  end;
end;

procedure TRepairDevice.DBG1CellClick(Column: TColumn);
begin
(*if (TSCD_Fault.RecordCount>0) and (Column.FieldName='LSBH') and (BB2.Enabled) then
  with TSCD_Fault1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select [Fault_NO],[Repair_NO],[Repair_Item],[Chinese_Repair],[VN_Repair]');
    sql.Add(',[USERID],[USERDATE],[YN] from TSCD_Faults WHERE [Fault_NO]='''+TSCD_Fault.FieldByName('Fault_NO').AsString+'''');
    active:=true;
  end;*)
end;

procedure TRepairDevice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
TSCDFaultss.Active:=false;
TSCD_Fault.Active:=false;
TSCD_Fault1.Active:=false;
Action:=CaFree;
end;

procedure TRepairDevice.FormCreate(Sender: TObject);
begin
  CBLSBH.Items.Clear;
  CBLSBH.Items.Add('');
  CBLSBH1.Items.Clear;
  CBLSBH1.Items.Add('');
  LSBHQuery.Active:=true;
  while NOT LSBHQuery.Eof DO
  begin
     CBLSBH.Items.Add(LSBHQuery.FieldByName('VN_Fault').AsString);
     CBLSBH1.Items.Add(LSBHQuery.FieldByName('Chinese_Fault').AsString);
     LSBHQuery.Next;
  end;
end;

procedure TRepairDevice.FormDestroy(Sender: TObject);
begin
    RepairDevice:=nil;
end;

procedure TRepairDevice.TCB1Click(Sender: TObject);
begin
 with TSCD_Fault1 do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  TIB1.Enabled := true;
  TMB1.Enabled := true;
  TSB1.Enabled := false;
  TCB1.Enabled := false;
end;

procedure TRepairDevice.TCB2Click(Sender: TObject);
begin
 with TSCDFaultss do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  TIB2.Enabled := true;
  TMB2.Enabled := true;
  TSB2.Enabled := false;
  TCB2.Enabled := false;
end;

procedure TRepairDevice.TDB1Click(Sender: TObject);
begin
  with TSCD_Fault1 do
  begin
    if fieldbyname('USERID').Value = main.Edit1.Text then
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := 'N';
    end
    else
    begin
      showmessage('It is not yours,can not delete.');
    end;
  end;
  TIB1.Enabled := false;
  TMB1.Enabled := false;
  TDB1.Enabled := false;
  TSB1.Enabled := true;
  TCB1.Enabled := true;
end;

procedure TRepairDevice.TDB2Click(Sender: TObject);
begin
 if (TSCDFaultss.Active) and (TSCDFaultss.RecordCount>0)then
  begin
  with TSCDFaultss do
  begin
    if fieldbyname('USERID').Value = main.Edit1.Text then
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := 'N';
    end
    else
    begin
      showmessage('It is not yours,can not delete.');
    end;
  end;
  TIB2.Enabled := false;
  TMB2.Enabled := false;
  TDB2.Enabled := false;
  TSB2.Enabled := true;
  TCB2.Enabled := true;
  end;
end;

procedure TRepairDevice.TIB1Click(Sender: TObject);
begin
  if (TSCD_Fault.Active) and (TSCD_Fault.RecordCount>0) then
  begin
  with TSCD_Fault1 do
  begin
    requestlive := true;
    cachedupdates := true;
    active:=true;
    insert;
  end;
  TIB1.Enabled := false;
  TDB1.Enabled := false;
  TMB1.Enabled := false;
  TSB1.Enabled := true;
  TCB1.Enabled := true;
  end;
end;

procedure TRepairDevice.TIB2Click(Sender: TObject);
begin
  if (TSCD_Fault1.Active) and (TSCD_Fault1.RecordCount>0) then
  begin
  with TSCDFaultss do
  begin
    requestlive := true;
    cachedupdates := true;
    active:=true;
    insert;
  end;
  TIB2.Enabled := false;
  TDB2.Enabled := false;
  TMB2.Enabled := false;
  TSB2.Enabled := true;
  TCB2.Enabled := true;
  end;
end;

procedure TRepairDevice.TMB1Click(Sender: TObject);
begin
if (TSCD_Fault1.Active) and (TSCD_Fault1.RecordCount>0)then
  begin
  with TSCD_Fault1 do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  TIB1.Enabled := false;
  TMB1.Enabled := false;
  TDB1.Enabled := false;
  TSB1.Enabled := true;
  TCB1.Enabled := true;
  end;
end;

procedure TRepairDevice.TMB2Click(Sender: TObject);
begin
  if (TSCDFaultss.Active) and (TSCDFaultss.RecordCount>0)then
  begin
  with TSCDFaultss do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  TIB2.Enabled := false;
  TMB2.Enabled := false;
  TDB2.Enabled := false;
  TSB2.Enabled := true;
  TCB2.Enabled := true;
  end;
end;

procedure TRepairDevice.TSB1Click(Sender: TObject);
var
  i: integer;
begin
  try
    with TSCD_Fault1 do
    begin
      first;
      for i := 1 to RecordCount do
      begin
        case updatestatus of
          usinserted:
            begin
              edit;
              fieldbyname('USERID').Value := main.Edit1.Text;
              fieldbyname('UPID').Value := TSCD_Fault.fieldbyname('Fault_NO').AsInteger;
              UpFaults.apply(ukinsert);
            end;
          usmodified:
            begin
              edit;
              fieldbyname('USERID').Value := main.Edit1.Text;
              UpFaults.apply(ukmodify);
              if TSCD_Fault1.fieldbyname('YN').Value='N' then
              begin
                Query1.Active:=false;
                Query1.SQL.clear;
                Query1.SQL.Add('update [TSCD_Faults] set [YN]=''N'' where Fault_NO='+TSCD_Fault1.fieldbyname('Fault_NO').AsString);
                Query1.ExecSQL;
                LSBHQuery.Next;
              end;
            end;
        end;
        next;
      end;
    end;
    TSCD_Fault1.active := false;
    TSCD_Fault1.cachedupdates := false;
    TSCD_Fault1.requestlive := false;
    TSCD_Fault1.active := true;
    TIB1.Enabled := true;
    TDB1.Enabled := true;
    TMB1.Enabled := true;
    TSB1.Enabled := false;
    TCB1.Enabled := false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TRepairDevice.TSB2Click(Sender: TObject);
var
  i: integer;
begin
  try
    with TSCDFaultss do
    begin
      first;
      for i := 1 to RecordCount do
      begin
        case updatestatus of
          usinserted:
            begin
              edit;
              fieldbyname('USERID').Value := main.Edit1.Text;
              fieldbyname('Fault_NO').Value := TSCD_Fault1.fieldbyname('Fault_NO').AsInteger;
              UpFaultss.apply(ukinsert);
            end;
          usmodified:
            begin
              edit;
              fieldbyname('USERID').Value := main.Edit1.Text;
              UpFaultss.apply(ukmodify);
            end;
        end;
        next;
      end;
    end;
    TSCDFaultss.active := false;
    TSCDFaultss.cachedupdates := false;
    TSCDFaultss.requestlive := false;
    TSCDFaultss.active := true;
    TIB2.Enabled := true;
    TDB2.Enabled := true;
    TMB2.Enabled := true;
    TSB2.Enabled := false;
    TCB2.Enabled := false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

end.

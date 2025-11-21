unit Fault_item1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Mask, DBCtrls, StdCtrls,
  ComCtrls, Buttons, ExtCtrls, Comobj, Menus, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, DBAxisGridsEh;

type
  TFault_item = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    TSCD_Fault: TQuery;
    UpMas: TUpdateSQL;
    DS1: TDataSource;
    TmpQuery: TQuery;
    TSCD_FaultLSBH: TStringField;
    TSCD_FaultFault_item: TStringField;
    TSCD_FaultChinese_Fault: TStringField;
    TSCD_FaultUSERID: TStringField;
    TSCD_FaultUSERDATE: TDateTimeField;
    TSCD_FaultYN: TStringField;
    TSCD_FaultFault_NO: TAutoIncField;
    Splitter1: TSplitter;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    DBGridEh2: TDBGridEh;
    TSCD_Faults: TQuery;
    UpdateSQL1: TUpdateSQL;
    DS2: TDataSource;
    TSCD_FaultsFault_NO: TIntegerField;
    TSCD_FaultsRepair_NO: TAutoIncField;
    TSCD_FaultsRepair_Item: TStringField;
    TSCD_FaultsChinese_Repair: TStringField;
    TSCD_FaultsUSERID: TStringField;
    TSCD_FaultsUSERDATE: TDateTimeField;
    TSCD_FaultsYN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure TSCD_FaultAfterOpen(DataSet: TDataSet);
    procedure TSCD_FaultBeforeInsert(DataSet: TDataSet);
    procedure TSCD_FaultAfterInsert(DataSet: TDataSet);
  private
    NDate: TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fault_item: TFault_item;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TFault_item.FormCreate(Sender: TObject);
begin
  with TmpQuery do
  begin
    active := false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active := true;
    NDate := fieldbyname('NDate').Value;
    active := false;
  end;
end;

procedure TFault_item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

procedure TFault_item.FormDestroy(Sender: TObject);
begin
  Fault_item := nil;
end;

procedure TFault_item.Button1Click(Sender: TObject);
var
  inval: string;
begin
  if Length(Edit1.Text) > 3 then
  begin
    with TSCD_Fault do
    begin
      active := false;
      sql.Clear;
      sql.Add('select * from TSCD_Fault');
      sql.Add(' where TSCD_Fault.LSBH = ''' + Edit1.Text + ''' ');
      if Edit2.Text <> '' then
        sql.Add('   and ((TSCD_Fault.Fault_item like ''%' + Edit2.Text +
          '%'') or (TSCD_Fault.Chinese_Fault like ''%' + Edit2.Text + '%'')) ');
      sql.Add(' order by TSCD_Fault.LSBH');
      // funcObj.WriteErrorLog(sql.Text);
      // showmessage(sql.Text);
      active := true;
    end;
  end
  else
  begin
    showmessage('LSBH length must > 3 !!!');
  end;
  // Panel2.Visible:=false;
end;

procedure TFault_item.BB2Click(Sender: TObject);
begin
  with TSCD_Fault do
  begin
    requestlive := true;
    cachedupdates := true;
    insert;
    TSCD_Fault.fieldbyname('LSBH').Value := Edit1.Text;
    TSCD_Fault.fieldbyname('Mon').Value := 0;
    TSCD_Fault.fieldbyname('Sea').Value := 0;
    TSCD_Fault.fieldbyname('Years').Value := 0;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TFault_item.BB3Click(Sender: TObject);
begin
  with TSCD_Fault do
  begin
    if fieldbyname('USERID').Value = main.Edit1.Text then
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := '0';
    end
    else
    begin
      showmessage('It is not yours,can not delete.');
    end;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TFault_item.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TFault_item.BB5Click(Sender: TObject);
var
  i: integer;
  rows: integer;
begin
  try
    TSCD_Fault.first;
    for i := 1 to TSCD_Fault.RecordCount do
    begin
      rows := 0;
      case TSCD_Fault.updatestatus of
        usinserted:
          begin
            with TmpQuery do
            begin
              active := false;
              sql.Clear;
              sql.Add('Select LSBH from TSCD_Fault where LSBH=''' +
                TSCD_Fault.fieldbyname('LSBH').AsString + ''' and Fault_item='''
                + TSCD_Fault.fieldbyname('Fault_item').AsString + '''');
              active := true;
            end;
            if TmpQuery.RecordCount = 0 then
            begin
              //
              TSCD_Fault.edit;
              TSCD_Fault.fieldbyname('USERID').Value := main.Edit1.Text;
              TSCD_Fault.fieldbyname('USERDATE').Value := NDate;
              TSCD_Fault.fieldbyname('YN').Value := '1';
              UpMas.apply(ukinsert);
            end
            else
            begin
              showmessage('Fault_item is exists!');
            end;
            TmpQuery.active := false;
          end;
        usmodified:
          begin
            if rows = 1 then
            begin
              if TSCD_Fault.fieldbyname('YN').Value = '0' then
              begin
                with TmpQuery do
                begin
                  active := false;
                  sql.Clear;
                  sql.Add('insert into BDelRec ');
                  sql.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.Add('values (' + '''' + 'LSBH' + '''' + ',' + '''' +
                    TSCD_Fault.fieldbyname('LSBH').Value + '''');
                  sql.Add(',' + '''' + ' ' + '''' + ',' + '''' +
                    TSCD_Fault.fieldbyname('USERID').Value + '''' + ',');
                  sql.Add('''' + main.Edit1.Text + '''' + ',getdate())');
                  execsql;
                  active := false;
                end;
                UpMas.apply(ukdelete);
              end
              else
              begin
                TSCD_Fault.edit;
                TSCD_Fault.fieldbyname('USERID').Value := main.Edit1.Text;
                TSCD_Fault.fieldbyname('USERDATE').Value := NDate;
                UpMas.apply(ukmodify);
              end;
            end
            else
            begin
              showmessage('Check type error !!!!');
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
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
end;

procedure TFault_item.BB6Click(Sender: TObject);
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
  { DBGridEh1.columns[0].ButtonStyle:=cbsNone;
    DBGridEh1.columns[8].ButtonStyle:=cbsNone; }
end;

procedure TFault_item.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if TSCD_Fault.fieldbyname('YN').Value = '0' then
  begin
    DBGridEh1.canvas.font.color := clred;
  end;
end;

procedure TFault_item.BB4Click(Sender: TObject);
begin
  with TSCD_Fault do
  begin
    if fieldbyname('USERID').Value = main.Edit1.Text then
    begin
      requestlive := true;
      cachedupdates := true;
      edit;
      fieldbyname('YN').Value := '0';
    end
    else
    begin
      showmessage('It is not yours,can not Modify.');
    end;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TFault_item.bbt6Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if TSCD_Fault.active then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel', 'Microsoft   Excel',
        MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i := 0 to TSCD_Fault.fieldcount - 1 do
      begin
        eclApp.Cells(1, i + 1) := TSCD_Fault.fields[i].FieldName;
      end;
      TSCD_Fault.first;
      j := 2;
      while not TSCD_Fault.Eof do
      begin
        for i := 0 to TSCD_Fault.fieldcount - 1 do
        begin
          eclApp.Cells(j, i + 1) := TSCD_Fault.fields[i].AsString;
        end;
        TSCD_Fault.next;
        inc(j);
      end;
      eclApp.columns.autofit;
      eclApp.Visible := true;
      showmessage('Succeed');
    except
      on F: Exception do
        showmessage(F.Message);
    end;
  end;
end;

procedure TFault_item.TSCD_FaultAfterInsert(DataSet: TDataSet);
begin
  TSCD_Fault.fieldbyname('LSBH').AsString := Edit1.Text;
end;

procedure TFault_item.TSCD_FaultAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  BitBtn1.Enabled := true;
  if not TSCD_Fault.IsEmpty then begin
    BitBtn2.Enabled := true;
    BitBtn3.Enabled := true;
  end;
end;

procedure TFault_item.TSCD_FaultBeforeInsert(DataSet: TDataSet);
begin
  TmpQuery.active := false;
  TmpQuery.sql.Clear;
  TmpQuery.sql.Add('Select top 1 * from TSCD_SB where LSBH = ''' +
    Edit1.Text + '''');
  TmpQuery.active := true;
  if TmpQuery.IsEmpty then
  begin
    showmessage('There is no LSBH Data in DataBase!');
    Exit;
  end;
end;

end.

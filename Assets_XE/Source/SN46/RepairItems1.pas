unit RepairItems1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  Bde.DBTables, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TRepairItems = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Label4: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    Label2: TLabel;
    CBLSBH: TComboBox;
    Label1: TLabel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    TSCD_Faults: TQuery;
    TSCD_FaultsFault_NO: TIntegerField;
    TSCD_FaultsRepair_NO: TAutoIncField;
    TSCD_FaultsRepair_Item: TStringField;
    TSCD_FaultsChinese_Repair: TStringField;
    TSCD_FaultsUSERID: TStringField;
    TSCD_FaultsUSERDATE: TDateTimeField;
    DS2: TDataSource;
    UpdateSQL1: TUpdateSQL;
    LSBHQuery: TQuery;
    IntegerField1: TIntegerField;
    TSCD_FaultsVN_Repair: TStringField;
    LSBHQueryLSBH: TStringField;
    LSBHQueryFault_item: TStringField;
    LSBHQueryChinese_Fault: TStringField;
    LSBHQueryVN_Fault: TStringField;
    TmpQuery: TQuery;
    TSCD_FaultsYN: TStringField;
    BB7: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBLSBHChange(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepairItems: TRepairItems;

implementation

{$R *.dfm}
 uses main1;
procedure TRepairItems.BB2Click(Sender: TObject);
begin
  if CBLSBH.ItemIndex>0 then
  begin
    with TSCD_Faults do
    begin
      requestlive := true;
      cachedupdates := true;
      active:=true;
      with TmpQuery do
      begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT [Fault_NO],[Repair_NO],[Repair_Item],[Chinese_Repair],[VN_Repair]');
        sql.Add(' FROM [TSCD_Faults] where [Fault_NO]='+LSBHQuery.FieldByName('Fault_NO').AsString);
        active:=true;
      end;
      if TmpQuery.RecordCount>0 then
      begin
        edit;
        TSCD_Faults.fieldbyname('Repair_Item').Value := TmpQuery.fieldbyname('Repair_Item').AsString;
        TSCD_Faults.fieldbyname('Chinese_Repair').Value := TmpQuery.fieldbyname('Chinese_Repair').AsString;
        TSCD_Faults.fieldbyname('VN_Repair').Value := TmpQuery.fieldbyname('VN_Repair').AsString;
      end
      else
      begin
        insert;
      end;
      TSCD_Faults.fieldbyname('Fault_NO').Value := LSBHQuery.FieldByName('Fault_NO').AsInteger;
    end;
    TmpQuery.Active:=false;
    TmpQuery.SQL.Clear;
    BB5.Enabled := true;
    BB6.Enabled := true;
    BB2.Enabled := false;
    BB3.Enabled := false;
    BB4.Enabled := false;
  end;
end;

procedure TRepairItems.BB3Click(Sender: TObject);
begin
  with TSCD_Faults do
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

procedure TRepairItems.BB4Click(Sender: TObject);
begin
  with TSCD_Faults do
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
  BB2.Enabled := false;
  BB3.Enabled := false;
  BB4.Enabled := false;
end;

procedure TRepairItems.BB5Click(Sender: TObject);
var
  i: integer;
  rows: integer;
begin
  try
    TSCD_Faults.first;
    for i := 1 to TSCD_Faults.RecordCount do
    begin
      rows := 0;
      case TSCD_Faults.updatestatus of
        usinserted:
          begin
            with TmpQuery do
            begin
              active := false;
              sql.Clear;
              sql.Add('Select LSBH from TSCD_Fault where LSBH=''' +
                TSCD_Faults.fieldbyname('Fault_NO').AsString + ''' and Fault_item='''
                + TSCD_Faults.fieldbyname('Fault_item').AsString + '''');
              active := true;
            end;
            if TmpQuery.RecordCount = 0 then
            begin
              //
              TSCD_Faults.edit;
              TSCD_Faults.fieldbyname('USERID').Value := main.Edit1.Text;
              TSCD_Faults.fieldbyname('USERDATE').Value := 'NDate';
              TSCD_Faults.fieldbyname('YN').Value := '1';
              UpdateSQL1.apply(ukinsert);
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
              if TSCD_Faults.fieldbyname('YN').Value = '0' then
              begin
                with TmpQuery do
                begin
                  active := false;
                  sql.Clear;
                  sql.Add('insert into BDelRec ');
                  sql.Add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                  sql.Add('values (' + '''' + 'LSBH' + '''' + ',' + '''' +
                    TSCD_Faults.fieldbyname('LSBH').Value + '''');
                  sql.Add(',' + '''' + ' ' + '''' + ',' + '''' +
                    TSCD_Faults.fieldbyname('USERID').Value + '''' + ',');
                  sql.Add('''' + main.Edit1.Text + '''' + ',getdate())');
                  execsql;
                  active := false;
                end;
                UpdateSQL1.apply(ukdelete);
              end
              else
              begin
                TSCD_Faults.edit;
                TSCD_Faults.fieldbyname('USERID').Value := main.Edit1.Text;
                TSCD_Faults.fieldbyname('USERDATE').Value := 'NDate';
                UpdateSQL1.apply(ukmodify);
              end;
            end
            else
            begin
              showmessage('Check type error !!!!');
            end;
          end;
      end;
      TSCD_Faults.next;
    end;
    TSCD_Faults.active := false;
    TSCD_Faults.cachedupdates := false;
    TSCD_Faults.requestlive := false;
    TSCD_Faults.active := true;
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

procedure TRepairItems.BB6Click(Sender: TObject);
begin
 with TSCD_Faults do
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

procedure TRepairItems.BB7Click(Sender: TObject);
begin
Close;
end;

procedure TRepairItems.Button1Click(Sender: TObject);
begin
  if Length(CBLSBH.Text) > 3 then
  begin
    with TSCD_Faults do
    begin
      active := false;
      sql.Clear;
      sql.Add('select * from TSCD_Faults');
      sql.Add(' where TSCD_Faults.Fault_NO = ' + LSBHQuery.FieldByName('Fault_NO').AsString);
      if Edit2.Text <> '' then
        sql.Add(' and ((Repair_Item like ''%' + Edit2.Text + '%'') or ([Chinese_Repair] like ''%' + Edit2.Text + '%'')) or ([VN_Repair] like ''%' + Edit2.Text + '%'')) ');
      sql.Add(' order by TSCD_Faults.Fault_NO');
      // showmessage(sql.Text);
      active := true;
    end;
    if TSCD_Faults.RecordCount>0 then
    begin
    BB5.Enabled := false;
    BB6.Enabled := false;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
    end;
  end
  else
  begin
    showmessage('LSBH length must > 3 !!!');
  end;
end;

procedure TRepairItems.CBLSBHChange(Sender: TObject);
var
  index:integer;
begin
  Label4.Caption:='';
  Label3.Caption:='';
  index:=CBLSBH.ItemIndex-1;
  if index>-1 then
  begin
    LSBHQuery.First;
    LSBHQuery.MoveBy(index) ;
    Label4.Caption:=LSBHQuery.FieldByName('VN_Fault').AsString ;
    Label3.Caption:=LSBHQuery.FieldByName('Chinese_Fault').AsString ;
  end;
end;

procedure TRepairItems.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TSCD_Faults.Active:=false;
  LSBHQuery.Active:=false;
  Action:=CaFree;
end;

procedure TRepairItems.FormCreate(Sender: TObject);
begin
  CBLSBH.Items.Clear;
  CBLSBH.Items.Add('');
  LSBHQuery.Active:=true;
  while NOT LSBHQuery.Eof DO
  begin
     CBLSBH.Items.Add(LSBHQuery.FieldByName('LSBH').AsString);
     LSBHQuery.Next;
  end;
end;

procedure TRepairItems.FormDestroy(Sender: TObject);
begin
    RepairItems:=nil;
end;

end.

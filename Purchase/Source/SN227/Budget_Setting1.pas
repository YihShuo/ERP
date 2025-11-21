unit Budget_Setting1;

interface             

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  Menus, GridsEh, DBGridEh, ComCtrls, DateUtils;

type
  TBudget_Setting = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1ID: TStringField;
    Query1YM: TStringField;
    Query1Season: TStringField;
    Query1DepMemo: TStringField;
    Query1Budget: TIntegerField;
    Query1Budget_B: TIntegerField;
    Query1Budget_S: TIntegerField;
    Qtmp: TQuery;
    Query1DepMemo_1: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB1: TBitBtn;
    DTP1: TDateTimePicker;
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Panel5: TPanel;
    DBGridEh1: TDBGridEh;
    Panel6: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    UPSQL2: TUpdateSQL;
    DS2: TDataSource;
    ComboBox1: TComboBox;
    Query1Budget_02: TIntegerField;
    Query1Budget_03: TIntegerField;
    Query1Budget_04: TIntegerField;
    Query1Budget_05: TIntegerField;
    Query1Budget_09: TIntegerField;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel7: TPanel;
    Panel8: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Query3: TQuery;
    UPSQL3: TUpdateSQL;
    DS3: TDataSource;
    DBGridEh2: TDBGridEh;
    Query3ID: TStringField;
    Query3YM: TStringField;
    Query3Season: TStringField;
    Query3Serno: TIntegerField;
    Query3Items: TStringField;
    Query3Qty: TFloatField;
    Query3US_Price: TFloatField;
    Query3US_Total: TFloatField;
    Query3Memo: TStringField;
    Query1Budget_01: TIntegerField;
    Query3Need_Month: TStringField;
    Query3Need_Season: TStringField;
    Query3Pay_Month: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure Query2AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Budget_Setting: TBudget_Setting;

implementation

uses main1;

{$R *.dfm}

procedure TBudget_Setting.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end else
   action:=Cafree;
end;

procedure TBudget_Setting.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
end;

procedure TBudget_Setting.FormCreate(Sender: TObject);
begin
  query1.Active:=false;
  DTP1.Date := now;
  Edit1.Text := formatdatetime('YYYY',now);
  Edit3.Text := formatdatetime('YYYY',now);
  Edit2.Text := formatdatetime('MM',now);
  PageControl1.ActivePageIndex := 0;
end;            

procedure TBudget_Setting.BB2Click(Sender: TObject);
begin
  with Qtmp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from SGDH_Budget where YM = '''+formatdatetime('YYYY',DTP1.Date)+''' and Season = '''+formatdatetime('MM',DTP1.Date)+'''');
    Active := true;
    if not IsEmpty then begin
      if (MessageDlg(formatdatetime('YYYY/MM',DTP1.Date)+' have data，Do you want to replace?(已有資料，是否要覆蓋?)', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Delete from SGDH_Budget where YM = '''+formatdatetime('YYYY',DTP1.Date)+''' and Season = '''+formatdatetime('MM',DTP1.Date)+'''');
        ExecSQL;
      end
      else
        exit;
    end;
    Active := false;
    SQL.Clear;
    SQL.Add('Insert into SGDH_Budget (ID,YM,Season,DepMemo,Budget,Budget_B,Budget_S,Budget_01,Budget_02,Budget_03,Budget_04,Budget_05,Budget_09)');
    if formatdatetime('MM',startofthemonth(DTP1.Date)-1) <> '12' then
      SQL.Add('select ID,'''+formatdatetime('YYYY',DTP1.Date)+''','''+formatdatetime('MM',DTP1.Date)+''',DepMemo,Budget,Budget_B,Budget_S,Budget_01,Budget_02,Budget_03,Budget_04,Budget_05,Budget_09 from SGDH_Budget where YM = '''+formatdatetime('YYYY',DTP1.Date)+''' and Season = '''+formatdatetime('MM',startofthemonth(DTP1.Date)-1)+'''')
    else
      SQL.Add('select ID,'''+formatdatetime('YYYY',DTP1.Date)+''','''+formatdatetime('MM',DTP1.Date)+''',DepMemo,Budget,Budget_B,Budget_S,Budget_01,Budget_02,Budget_03,Budget_04,Budget_05,Budget_09 from SGDH_Budget where YM = '''+formatdatetime('YYYY',startofthemonth(DTP1.Date)-1)+''' and Season = '''+formatdatetime('MM',startofthemonth(DTP1.Date)-1)+'''');
    //showmessage(SQL.Text);
    ExecSQL;
  end;
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select SGDH_Budget.*,BDepartment.DepMemo from SGDH_Budget  ');
    sql.add('left join BDepartment on BDepartment.ID = SGDH_Budget.ID ');
    sql.add('where YM = '''+formatdatetime('YYYY',DTP1.Date)+''' and Season = '''+formatdatetime('MM',DTP1.Date)+'''');
    sql.add('order by YM DESC,season desc,SGDH_Budget.DEPMEMO');
    active:=true;
  end;
//  panel3.visible:=false;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TBudget_Setting.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
end;

procedure TBudget_Setting.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
        case query1.updatestatus of
          usmodified:
          begin
            query1.edit;
            query1.FieldByName('Budget_B').Value :=query1.FieldByName('Budget_B').Value;
            query1.FieldByName('Budget_S').Value :=query1.FieldByName('Budget_S').Value;
            query1.FieldByName('Budget').Value :=query1.FieldByName('Budget_B').Value + query1.FieldByName('Budget_S').Value + query1.FieldByName('Budget_01').Value + query1.FieldByName('Budget_02').Value
                                                 + query1.FieldByName('Budget_03').Value + query1.FieldByName('Budget_04').Value + query1.FieldByName('Budget_05').Value + query1.FieldByName('Budget_09').Value;
            upsql1.apply(ukmodify);
          end;
        end;
      query1.next;
    end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    bb5.enabled:=false;
    bb6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TBudget_Setting.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select SGDH_Budget.*,BDepartment.DepMemo from SGDH_Budget  ');
    sql.add('left join BDepartment on BDepartment.ID = SGDH_Budget.ID ');
    sql.add('where YM like '''+edit1.Text+'%'+'''');
    sql.add('and Season like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by YM DESC,season desc,SGDH_Budget.DEPMEMO,BDepartment.DepMemo');
    active:=true;
  end;
//  panel3.visible:=false;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TBudget_Setting.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TBudget_Setting.FormDestroy(Sender: TObject);
begin
  Budget_Setting:=nil;
end;

procedure TBudget_Setting.Button2Click(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    sql.clear;
    sql.add('select SGDH_Capex.*,BDepartment.DepMemo from SGDH_Capex  ');
    sql.add('left join BDepartment on BDepartment.ID = SGDH_Capex.ID ');
    sql.add('where YM like '''+edit1.Text+'%'+'''');
    sql.add('and Season like ');
    sql.add(''''+'%'+ComboBox1.Text+'%'+'''');
    sql.add('order by YM DESC,season desc,SGDH_Capex.DEPMEMO,BDepartment.DepMemo');
    active:=true;
  end;
//  panel3.visible:=false;
  BitBtn3.enabled:=true;
  BitBtn4.enabled:=false;
  BitBtn5.enabled:=false;
  Query3.Active := true;
end;

procedure TBudget_Setting.BitBtn1Click(Sender: TObject);
var YM,Season: String;
begin
  with Qtmp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select top 1 * from SGDH_Capex order by ym desc,season desc');
    Active := true;
    YM := fieldbyname('YM').AsString;
    Season := fieldbyname('Season').AsString;

    Active := false;
    SQL.Clear;
    SQL.Add('Insert into SGDH_Capex (ID,YM,Season,DepMemo,Budget)');
    if season = '02' then
      SQL.Add('select ID,'''+inttostr(strtoint(YM)+1)+''',''01'',DepMemo,Budget from SGDH_Capex where YM = '''+YM+''' and Season = '''+Season+'''')
    else
      SQL.Add('select ID,'''+YM+''',''02'',DepMemo,Budget from SGDH_Capex where YM = '''+YM+''' and Season = '''+Season+'''');
    ExecSQL;
  end;
  with Query2 do
  begin
    active:=false;
    sql.clear;
    sql.add('select SGDH_Capex.*,BDepartment.DepMemo from SGDH_Capex  ');
    sql.add('left join BDepartment on BDepartment.ID = SGDH_Capex.ID ');
    if season = '02' then
      sql.add('where YM = '''+inttostr(strtoint(YM)+1)+''' and Season = ''01''')
    else
      sql.add('where YM = '''+YM+''' and Season = ''02''');
    sql.add('order by YM DESC,season desc,SGDH_Capex.DEPMEMO');
    active:=true;
  end;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
end;

procedure TBudget_Setting.BitBtn3Click(Sender: TObject);
begin
  with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query2.edit;
  end;
  BitBtn4.enabled:=true;
  BitBtn5.enabled:=true;
end;

procedure TBudget_Setting.BitBtn5Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BitBtn4.enabled:=false;
  BitBtn5.enabled:=false;
end;

procedure TBudget_Setting.BitBtn4Click(Sender: TObject);
var i:integer;
begin
  try
    query2.first;
    for i:=1 to query2.RecordCount do
    begin
        case query2.updatestatus of
          usmodified:
          begin
            query2.edit;
            query2.FieldByName('Budget').Value :=query2.FieldByName('Budget').Value;
            upsql2.apply(ukmodify);
          end;
        end;
      query2.next;
    end;
    query2.active:=false;
    query2.cachedupdates:=false;
    query2.requestlive:=false;
    query2.active:=true;
    BitBtn4.enabled:=false;
    BitBtn5.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TBudget_Setting.BitBtn9Click(Sender: TObject);
begin
  with query3 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query3.edit;
  end;
  BitBtn10.enabled:=true;
  BitBtn11.enabled:=true;
end;

procedure TBudget_Setting.BitBtn10Click(Sender: TObject);
var i : Integer;
begin
  try
    query3.first;
    for i:=1 to query3.RecordCount do
    begin
        case query3.updatestatus of
          usmodified:
          begin
            query3.edit;
            query3.FieldByName('Items').Value :=query3.FieldByName('Items').Value;
            query3.FieldByName('Qty').Value :=query3.FieldByName('Qty').Value;
            query3.FieldByName('US_Price').Value :=query3.FieldByName('US_Price').Value;
            query3.FieldByName('US_Total').Value :=query3.FieldByName('US_Total').Value;
            query3.FieldByName('Need_Month').Value :=query3.FieldByName('Need_Month').Value;
            query3.FieldByName('Need_Season').Value :=query3.FieldByName('Need_Season').Value;
            query3.FieldByName('Pay_Month').Value :=query3.FieldByName('Pay_Month').Value;
            query3.FieldByName('Memo').Value :=query3.FieldByName('Memo').Value;
            upsql3.apply(ukmodify);
          end;
        end;
      query3.next;
    end;
    query3.active:=false;
    query3.cachedupdates:=false;
    query3.requestlive:=false;
    query3.active:=true;
    BitBtn10.enabled:=false;
    BitBtn11.enabled:=false;
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;
end;

procedure TBudget_Setting.BitBtn11Click(Sender: TObject);
begin
  with query3 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BitBtn10.enabled:=false;
  BitBtn11.enabled:=false;
end;

procedure TBudget_Setting.Query2AfterScroll(DataSet: TDataSet);
begin
  if not Query2.IsEmpty then
    Query3.Active := true; 
end;

end.

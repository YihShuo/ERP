unit EquipmentCode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, Buttons, ExtCtrls, StdCtrls, DBTables, DB,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TEquipmentCode = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Panel5: TPanel;
    Panel3: TPanel;
    BA2: TBitBtn;
    BA3: TBitBtn;
    BA4: TBitBtn;
    BA5: TBitBtn;
    BA6: TBitBtn;
    DBGrid1: TDBGridEh;
    Panel6: TPanel;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    DBGrid3: TDBGridEh;
    Panel7: TPanel;
    Splitter2: TSplitter;
    Panel8: TPanel;
    Splitter3: TSplitter;
    Panel9: TPanel;
    Panel10: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBGrid2: TDBGridEh;
    Panel11: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    DBGrid4: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1LB: TStringField;
    Query1LBDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    UpLB1: TUpdateSQL;
    TmpQuery: TQuery;
    UpLB2: TUpdateSQL;
    DS2: TDataSource;
    Query2: TQuery;
    Query2LB: TStringField;
    Query2LBDH: TStringField;
    Query2ZWSM: TStringField;
    Query2YWSM: TStringField;
    Query2USERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2YN: TStringField;
    DS4: TDataSource;
    Query4: TQuery;
    Query4LB: TStringField;
    Query4LBDH: TStringField;
    Query4ZWSM: TStringField;
    Query4YWSM: TStringField;
    Query4USERID: TStringField;
    Query4USERDATE: TDateTimeField;
    Query4YN: TStringField;
    UpLB4: TUpdateSQL;
    DS3: TDataSource;
    Query3: TQuery;
    Query3LB: TStringField;
    Query3LBDH: TStringField;
    Query3ZWSM: TStringField;
    Query3YWSM: TStringField;
    Query3USERID: TStringField;
    Query3USERDATE: TDateTimeField;
    Query3YN: TStringField;
    UpLB3: TUpdateSQL;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Query1Layer: TSmallintField;
    Query2Layer: TSmallintField;
    Query4Layer: TSmallintField;
    Query3Layer: TSmallintField;
    Panel2: TPanel;
    ZWSM2Edit: TEdit;
    Label6: TLabel;
    YWSM2Edit: TEdit;
    Panel12: TPanel;
    Label7: TLabel;
    ZWSM4Edit: TEdit;
    YWSM4Edit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure BA2Click(Sender: TObject);
    procedure BA3Click(Sender: TObject);
    procedure BA4Click(Sender: TObject);
    procedure BA5Click(Sender: TObject);
    procedure BA6Click(Sender: TObject);
    procedure BC2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure Query1LBDHSetText(Sender: TField; const Text: String);
    procedure Query2LBDHSetText(Sender: TField; const Text: String);
    procedure Query4LBDHSetText(Sender: TField; const Text: String);
    procedure Query3LBDHSetText(Sender: TField; const Text: String);
    procedure ZWSM2EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YWSM2EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ZWSM4EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure YWSM4EditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    NDate:TDate;
    procedure DBGridEhGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    { Private declarations }
    procedure ButtonInsert(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
    procedure ButtonModify(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
    procedure ButtonDelete(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
    procedure ButtonCancel(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
    procedure ButtonSave(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn;UpdLB:TUpdateSQL;LBStr:String;Layer:string);
    //
    procedure Query2Click();
    procedure Query4Click();
  public
    { Public declarations }
  end;

var
  EquipmentCode: TEquipmentCode;

implementation



uses main1;{$R *.dfm}
procedure TEquipmentCode.Query2Click();
begin
  //
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from TSCD_LBZLS where lb=:LBDH ');
    if ZWSM2Edit.Text<>'' then
    SQL.Add(' and ZWSM like ''%'+ZWSM2Edit.Text+'%'' ');
    if YWSM2Edit.Text<>'' then
    SQL.Add(' and YWSM like ''%'+YWSM2Edit.Text+'%'' ');
    Active:=true;
  end;
  //
end;
procedure TEquipmentCode.Query4Click();
begin
  //
  with Query4 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from TSCD_LBZLS where lb=:LBDH ');
    if ZWSM4Edit.Text<>'' then
    SQL.Add(' and ZWSM like ''%'+ZWSM4Edit.Text+'%'' ');
    if YWSM4Edit.Text<>'' then
    SQL.Add(' and YWSM like ''%'+YWSM4Edit.Text+'%'' ');
    Active:=true;
  end;
  //
end;
procedure TEquipmentCode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TEquipmentCode.FormDestroy(Sender: TObject);
begin
  EquipmentCode:=nil;
end;

procedure TEquipmentCode.FormCreate(Sender: TObject);
begin
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM ,getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  Query1.Active:=true;
  Query2.Active:=true;
  Query3.Active:=true;
  Query4.Active:=true;

  DBGrid1.OnGetCellParams:=DBGridEhGetCellParams;
  DBGrid2.OnGetCellParams:=DBGridEhGetCellParams;
  DBGrid3.OnGetCellParams:=DBGridEhGetCellParams;
  DBGrid4.OnGetCellParams:=DBGridEhGetCellParams;
end;


//
procedure TEquipmentCode.DBGridEhGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('YN').value='0' then
  begin
    TDBGridEh(Sender).canvas.font.color:=clred;
  end;
end;
//新增
procedure TEquipmentCode.ButtonInsert(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
begin
  with Query do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  SaveBtn.Enabled:=true;
  CancelBtn.Enabled:=true;
end;
//修改
procedure TEquipmentCode.ButtonModify(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
begin
  with Query do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  SaveBtn.Enabled:=true;
  CancelBtn.Enabled:=true;
end;
//刪除
procedure TEquipmentCode.ButtonDelete(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
begin
  with Query do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  SaveBtn.Enabled:=true;
  CancelBtn.Enabled:=true;
end;
//取消
procedure TEquipmentCode.ButtonCancel(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn);
begin
  with Query do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  SaveBtn.Enabled:=false;
  CancelBtn.Enabled:=false;
end;
//儲存
procedure TEquipmentCode.ButtonSave(Query:TQuery;SaveBtn:TBitBtn;CancelBtn:TBitBtn;UpdLB:TUpdateSQL;LBStr:String;Layer:string);
var i:integer;
begin

  try
    Query.first;
    for i:=1 to Query.RecordCount do
      begin
        case Query.updatestatus of
          usinserted:
            begin
                if Query.fieldbyname('LBDH').isnull then
                begin
                  Query.delete;
                end else
                begin
                 Query.edit;
                 Query.FieldByName('LB').Value:=LBStr;
                 Query.FieldByName('Layer').Value:=Layer;
                 Query.FieldByName('userID').Value:=main.edit1.text;
                 Query.FieldByName('userdate').Value:=Ndate;
                 Query.FieldByName('YN').Value:='1';
                 UpdLB.apply(ukinsert);
                end;
            end;
          usmodified:
             begin
                if Query.fieldbyname('YN').value='0'then
                begin
                  with TmpQuery do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values (''TSCD_LBZLS'','''+Query.fieldbyname('LB').Value+Query.fieldbyname('LBDH').Value+'''');
                    sql.add(','''+Query.fieldbyname('LB').Value+Query.fieldbyname('LBDH').Value+''','''+Query.fieldbyname('USERID').Value+''',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  UpdLB.apply(ukdelete);
                end else
                begin
                    Query.edit;
                    Query.FieldByName('userID').Value:=main.edit1.text;
                    Query.FieldByName('userdate').Value:=Ndate;
                    UpdLB.apply(ukmodify);
                end;
             end;
        end;
       Query.next;
      end;
    Query.active:=false;
    Query.cachedupdates:=false;
    Query.requestlive:=false;
    Query.active:=true;
    SaveBtn.enabled:=false;
    CancelBtn.enabled:=false;
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;
//

procedure TEquipmentCode.Query1AfterOpen(DataSet: TDataSet);
begin
  BA2.Enabled:=true;
  BA3.Enabled:=true;
  BA4.Enabled:=true;
end;

procedure TEquipmentCode.Query2AfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TEquipmentCode.Query4AfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
end;

procedure TEquipmentCode.Query3AfterOpen(DataSet: TDataSet);
begin
  BC2.Enabled:=true;
  BC3.Enabled:=true;
  BC4.Enabled:=true;
end;

procedure TEquipmentCode.BA2Click(Sender: TObject);
begin
  ButtonInsert(Query1,BA5,BA6);
end;

procedure TEquipmentCode.BA3Click(Sender: TObject);
begin
  ButtonDelete(Query1,BA5,BA6);
end;

procedure TEquipmentCode.BA4Click(Sender: TObject);
begin
  ButtonModify(Query1,BA5,BA6);
end;

procedure TEquipmentCode.BA5Click(Sender: TObject);
begin
  ButtonSave(Query1,BA5,BA6,UpLB1,'1','1');
end;

procedure TEquipmentCode.BA6Click(Sender: TObject);
begin
  ButtonCancel(Query1,BA5,BA6);
end;

procedure TEquipmentCode.BC2Click(Sender: TObject);
begin
  ButtonInsert(Query3,BC5,BC6);
end;

procedure TEquipmentCode.BB3Click(Sender: TObject);
begin
  ButtonDelete(Query2,BB5,BB6);
end;

procedure TEquipmentCode.BB4Click(Sender: TObject);
begin
  ButtonModify(Query2,BB5,BB6);
end;

procedure TEquipmentCode.BB5Click(Sender: TObject);
begin
  ButtonSave(Query2,BB5,BB6,UpLB2,Query1.FieldByName('LBDH').AsString,'2');
end;

procedure TEquipmentCode.BB6Click(Sender: TObject);
begin
  ButtonCancel(Query2,BB5,BB6);
end;

procedure TEquipmentCode.BB2Click(Sender: TObject);
begin
  ButtonInsert(Query2,BB5,BB6);
end;

procedure TEquipmentCode.BC3Click(Sender: TObject);
begin
  ButtonDelete(Query3,BC5,BC6);
end;

procedure TEquipmentCode.BC4Click(Sender: TObject);
begin
  ButtonModify(Query3,BC5,BC6);
end;

procedure TEquipmentCode.BC5Click(Sender: TObject);
begin
  ButtonSave(Query3,BC5,BC6,UpLB3,'3','3');
end;

procedure TEquipmentCode.BC6Click(Sender: TObject);
begin
  ButtonCancel(Query3,BC5,BC6);
end;

procedure TEquipmentCode.BD2Click(Sender: TObject);
begin
  ButtonInsert(Query4,BD5,BD6);
end;

procedure TEquipmentCode.BD3Click(Sender: TObject);
begin
  ButtonDelete(Query4,BD5,BD6);
end;

procedure TEquipmentCode.BD4Click(Sender: TObject);
begin
  ButtonModify(Query4,BD5,BD6);
end;

procedure TEquipmentCode.BD5Click(Sender: TObject);
begin
  ButtonSave(Query4,BD5,BD6,UpLB4,Query2.FieldByName('LBDH').AsString,'4');
end;

procedure TEquipmentCode.BD6Click(Sender: TObject);
begin
  ButtonCancel(Query4,BD5,BD6);
end;

procedure TEquipmentCode.Query1LBDHSetText(Sender: TField;
  const Text: String);
begin
  if length(Text)=1 then Sender.Value:=Text;
end;

procedure TEquipmentCode.Query2LBDHSetText(Sender: TField;
  const Text: String);
begin
  if length(Text)=4 then Sender.Value:=Text;
end;

procedure TEquipmentCode.Query4LBDHSetText(Sender: TField;
  const Text: String);
begin
  if length(Text)=4 then Sender.Value:=Text;
end;

procedure TEquipmentCode.YWSM2EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
     Query2Click();
end;

procedure TEquipmentCode.YWSM4EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
     Query4Click();
end;

procedure TEquipmentCode.ZWSM2EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
     Query2Click();
end;

procedure TEquipmentCode.ZWSM4EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=13 then
     Query4Click();
end;

procedure TEquipmentCode.Query3LBDHSetText(Sender: TField;
  const Text: String);
begin
  if length(Text)=1 then Sender.Value:=Text;
end;

end.

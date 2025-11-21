unit ShoePlan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Menus, comobj, ADODB, DBGridEhImpExp, ShellAPI,IniFiles,FunUnit;

type
  TMyBookmarkList = Class(DBGrids.TBookmarkList)
  Public
    procedure DoLinkActive(Value: Boolean);
  end;

type
  TShoePlan = class(TForm)
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Query2: TQuery;
    Query1Priority: TIntegerField;
    Query1khdh: TStringField;
    Query1TestNo: TStringField;
    Query1SR: TStringField;
    Query1Color: TStringField;
    Query1Stage: TStringField;
    Query1DevType: TStringField;
    Query1TBReceiveDate: TDateTimeField;
    Query1R2Purchase: TStringField;
    Query1R3Purchase: TStringField;
    Query1Developer: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1Complete: TDateTimeField;
    Query1YN: TIntegerField;
    Query1Serino: TIntegerField;
    Query1Memo: TStringField;
    Query1Firstmatoutdate: TDateTimeField;
    Query1R2: TStringField;
    Query1R3: TStringField;
    Query1preparationDate: TDateTimeField;
    Query1Lamination: TStringField;
    Query1TBcancel: TBooleanField;
    Query1SubType: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Panel5: TPanel;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label13: TLabel;
    DataSource2: TDataSource;
    Query3: TQuery;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    UpdateSQL2: TUpdateSQL;
    DBGrid1: TDBGrid;
    Query3CHK: TStringField;
    Query3YPDH: TStringField;
    Query3JiJie: TStringField;
    Query3KHDH: TStringField;
    Query3SR: TStringField;
    Query3Color: TStringField;
    Query3Stage: TStringField;
    Query3DevType: TStringField;
    Query3Subtype: TStringField;
    Query3Developer: TStringField;
    Query3XieXing: TStringField;
    Query3SheHao: TStringField;
    Query3TestNo: TStringField;
    Label14: TLabel;
    Edit11: TEdit;
    Label15: TLabel;
    Edit12: TEdit;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    BitBtn2: TBitBtn;
    Edit17: TEdit;
    DBGridEh2: TDBGridEh;
    Label22: TLabel;
    DataSource3: TDataSource;
    Query4: TQuery;
    Query4PO: TStringField;
    Query4SupplierNO: TStringField;
    Query4Supplier: TStringField;
    Query4Parts: TStringField;
    Query4MatNO: TStringField;
    Query4DES: TStringField;
    Query4UpdateDate: TDateTimeField;
    Query4NewETD: TDateTimeField;
    Query4SO: TStringField;
    Query4Stage: TStringField;
    Query4Testno: TStringField;
    DTP5: TDateTimePicker;
    CheckBox6: TCheckBox;
    Query1S_material: TDateTimeField;
    Query1lamination_send: TDateTimeField;
    Query1lamination_get: TDateTimeField;
    Query1BaoHe_send: TDateTimeField;
    Query1BaoHe_get: TDateTimeField;
    Query1LiMao_Send: TDateTimeField;
    Query1LiMao_Get: TDateTimeField;
    Query1insole_send: TDateTimeField;
    Query1lace_send: TDateTimeField;
    DataSource4: TDataSource;
    Query5: TQuery;
    Query1C_Memo: TStringField;
    Query1S_Memo: TStringField;
    Query1A_Memo: TStringField;
    Query1groups: TStringField;
    Query4Class: TStringField;
    Query4devcode: TStringField;
    Query1ypdh: TStringField;
    Query1P_Memo: TStringField;
    Query1Lamination_1: TBooleanField;
    Query1Sublimation: TBooleanField;
    Query1E_embroidery: TBooleanField;
    Query1printing: TBooleanField;
    Query1lamination_CRMTO: TBooleanField;
    Query5Class: TStringField;
    Query5Season: TStringField;
    Query5Stage: TStringField;
    Query5SR: TStringField;
    Query5Testno: TStringField;
    Query5SO: TStringField;
    Query5Supplier: TStringField;
    Query5SupplierName: TStringField;
    Query5Status: TStringField;
    Query5ETA: TStringField;
    Query5Material: TStringField;
    Query5MaterialDES: TStringField;
    Query5Memo: TStringField;
    Label21: TLabel;
    Edit18: TEdit;
    DataSource5: TDataSource;
    Query6: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    Splitter1: TSplitter;
    ScrollBox1: TScrollBox;
    DataSource6: TDataSource;
    Query7: TQuery;
    Query7Date: TStringField;
    Query7CKBH: TStringField;
    Query7CLBH: TStringField;
    Query7Date_1: TStringField;
    Query7CKBH_1: TStringField;
    Query7CLBH_1: TStringField;
    Query7qty: TCurrencyField;
    Panel7: TPanel;
    DBGridEh4: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh3: TDBGridEh;
    DBGridEh5: TDBGridEh;
    Splitter3: TSplitter;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit4: TDBEdit;
    Query1kietphong: TBooleanField;
    Label32: TLabel;
    Edit20: TEdit;
    Query1groups2: TStringField;
    Query1Amico: TBooleanField;
    Panel2: TPanel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    ScrollBox2: TScrollBox;
    CheckBox7: TCheckBox;
    DTP4: TDateTimePicker;
    Label10: TLabel;
    DBMemo4: TDBMemo;
    Label27: TLabel;
    DBMemo3: TDBMemo;
    Label25: TLabel;
    DTP3: TDateTimePicker;
    Receive_Check: TCheckBox;
    dtp2: TDateTimePicker;
    lbl8: TLabel;
    dtp1: TDateTimePicker;
    Info_chk: TCheckBox;
    DBMemo2: TDBMemo;
    Label24: TLabel;
    DBMemo1: TDBMemo;
    Label23: TLabel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Edit19: TEdit;
    Edit4: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit6: TEdit;
    Label26: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label9: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Label7: TLabel;
    Edit5: TEdit;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Query1kietphong_Send: TDateTimeField;
    Query1kietphong_Get: TDateTimeField;
    Query1Amico_Send: TDateTimeField;
    Query1Amico_Get: TDateTimeField;
    Label33: TLabel;
    Edit21: TEdit;
    SampleRoomFinish: TCheckBox;
    dtp333: TDateTimePicker;
    dtp33: TDateTimePicker;
    Label34: TLabel;
    DTP444: TDateTimePicker;
    dtp44: TDateTimePicker;
    Query8: TQuery;
    CheckBox8: TCheckBox;
    Button2: TButton;
    Label35: TLabel;
    Edit22: TEdit;
    Label36: TLabel;
    Edit23: TEdit;
    Button3: TButton;
    Label37: TLabel;
    Edit24: TEdit;
    CheckBox9: TCheckBox;
    DBMemo5: TDBMemo;
    DBMemo6: TDBMemo;
    Query1C_ETA: TStringField;
    Query1S_ETA: TStringField;
    Query9: TQuery;
    Query10: TQuery;
    Query10ypdh: TStringField;
    Query10zsywjc: TStringField;
    Query10days: TIntegerField;
    Panel8: TPanel;
    DBGridEh6: TDBGridEh;
    Query11: TQuery;
    DataSource7: TDataSource;
    CheckBox10: TCheckBox;
    Query1userid: TStringField;
    Query1userdate: TDateTimeField;
    Edit25: TEdit;
    Label38: TLabel;
    CheckBox11: TCheckBox;
    TabSheet4: TTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    Button4: TButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    ShowQry: TQuery;
    DBGridEh7: TDBGridEh;
    ShowDS: TDataSource;
    ShowQryGroups: TStringField;
    ShowQryType: TStringField;
    UpdateSQLshow: TUpdateSQL;
    ShowQryYN: TStringField;
    btnExcel_all: TButton;
    Query1C_Memo1: TStringField;
    Query1S_Memo1: TStringField;
    Query1update_last: TStringField;
    Query1NG_Memo: TStringField;
    Query5NG_ETD: TDateTimeField;
    Query5NG_ETA: TDateTimeField;
    Query6NG_ETD: TDateTimeField;
    Query6NG_ETA: TDateTimeField;
    Edit26: TEdit;
    Label39: TLabel;
    Button5: TButton;
    Button19: TButton;
    InfoLable: TLabel;
    OpenDialog: TOpenDialog;
    Query1memo2: TMemoField;
    TabSheet5: TTabSheet;
    Panel11: TPanel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    BitBtn9: TBitBtn;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Button6: TButton;
    DBGridEh8: TDBGridEh;
    DataSource8: TDataSource;
    Query12: TQuery;
    Query12Serino: TIntegerField;
    Query12groups: TStringField;
    Query12groups2: TStringField;
    Query12Stage: TStringField;
    Query12SR: TStringField;
    Query12TestNo: TStringField;
    Query12TBReceiveDate: TDateTimeField;
    Query12OrginalETC: TDateTimeField;
    Query12NewETC: TDateTimeField;
    Query12ypdh: TStringField;
    Query12FD: TStringField;
    Query12UpdateID: TStringField;
    Query12UpdateDate: TDateTimeField;
    CheckBox12: TCheckBox;
    DTP6: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure CheckBox7Click(Sender: TObject);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure BB7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure doquery();
    procedure Button3Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure GCinsert();
    procedure GCEXCEL();
    procedure CheckBox10Click(Sender: TObject);
    procedure DBGridEh6CellClick(Column: TColumnEh);
    procedure DBGridEh6CellMouseClick(Grid: TCustomGridEh;
      Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGridEh7DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure btnExcel_allClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    FBookMarks_DBG1:TMyBookmarkList;
    IsAllowUserID:Boolean;
    procedure ExportDefaultExcel(Query:TQuery);
    procedure ExportFormatExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  ShoePlan1: TShoePlan;

implementation

uses main1;

{$R *.dfm}

procedure TMyBookMarkList.DoLinkActive(Value: Boolean);
begin
  LinkActive(Value);
end;

procedure TShoePlan.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeandNil(FBookMarks_DBG1);
  Action:=caFree;
end;

procedure TShoePlan.FormDestroy(Sender: TObject);
begin
  try
    query2.Active := false;
    query2.SQL.Text := 'if object_id(''tempdb..#MOCXI01'') is not null Drop table #MOCXI01';
    query2.ExecSQL;
    query2.Active := false;
    query2.SQL.Text := 'if object_id(''tempdb..#MOCXI02'') is not null Drop table #MOCXI02';
    query2.ExecSQL;
  except
  end;
  ShoePlan1 := nil;
end;

procedure TShoePlan.BB1Click(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select  DENSE_RANK()  OVER ( ORDER BY DEVCODE DESC ) AS Rank,shoetest.TBcancel,shoetestplan.groups,shoetestplan.groups2,shoetestplan.Serino,shoetestplan.Priority,kfxxzl.khdh,shoetestplan.TestNo,shoetestplan.C_Memo,shoetestplan.S_Memo,shoetestplan.A_Memo,');
      sql.Add('shoetestplan.P_Memo,kfxxzl.DEVCODE SR,kfxxzl.yssm Color,ypzl.kfjd Stage,kfxxzl.DevType,ypzl.SubType,shoetestplan.ypdh,shoetest.TBReceiveDate,shoetest.lamination lamination_1,shoetest.Sublimation,shoetest.E_embroidery,shoetest.printing,');
      sql.Add('shoetest.lamination_CRMTO,shoetest.kietphong,shoetest.Amico,shoetest.preparationDate,shoetest.S_material,shoetest.lamination_send,shoetest.lamination_get,shoetest.BaoHe_send,shoetest.BaoHe_get,shoetest.LiMao_Send,shoetest.LiMao_Get,shoetest.insole_send,');
      sql.Add('shoetest.lace_send,shoetestplan.Lamination,shoetest.kietphong_Send,shoetest.kietphong_Get,shoetest.Amico_Send,shoetest.Amico_Get,shoetest.Firstmatoutdate,JNGR2.cgno R2Purchase,shoetestplan.R2,JNGR3.CGNO R3Purchase,shoetestplan.R3,ypzl.fd Developer,');
      sql.add('shoetest.ShipDate,shoetest.Complete,shoetestplan.YN,Memo,C_ETA,S_ETA,shoetestplan.userid,shoetestplan.userdate,shoetestplan.C_Memo1,shoetestplan.S_Memo1,update_last,shoetestplan.NG_Memo,shoetest.memo2 ');
      sql.Add(' from shoetestplan ');
      sql.Add('left join ypzl on ypzl.ypdh=shoetestplan.ypdh');
      sql.Add('left join shoetest on shoetest.testno= shoetestplan.testno');
      sql.Add('left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
      sql.Add('left join  (select max(cgzlss.cgno) cgno,cgzlss.zlbh,cgzl.zsbh from cgzlss ');
      sql.Add('left join cgzl on cgzlss.cgno=cgzl.cgno ');
      sql.Add('where zsbh=''JNGR2'' ');
      sql.Add('gROUP BY cgzlss.zlbh,cgzl.zsbh ');
      sql.Add(')JNGR2 on JNGR2.zlbh=ypzl.ypdh ');
      sql.Add('left join  (select max(cgzlss.cgno) cgno ,cgzlss.zlbh,cgzl.zsbh from cgzlss ');
      sql.Add('left join cgzl on cgzlss.cgno=cgzl.cgno ');
      sql.Add('where zsbh=''JNGR3'' ');
      sql.Add('gROUP BY cgzlss.zlbh,cgzl.zsbh ');
      sql.Add(')JNGR3 on JNGR3.zlbh=ypzl.ypdh ');

      sql.Add('where  1=1 ');
      if checkbox2.checked then
         sql.Add('and shoetest.preparationDate is null');
      if checkbox3.checked then
         sql.Add('and shoetest.Firstmatoutdate is null');
      if checkbox4.checked then
         sql.Add('and JNGR2.cgno is null');
      if checkbox5.checked then
         sql.Add('and JNGR3.cgno is null');
      if CheckBox1.Checked then
         sql.Add(' and ((shoetest.TBcancel =''0'') or (shoetest.TBcancel  is null))');
      if combobox1.text='Converse' then
         sql.Add(' and kfxxzl.khdh = ''036'' ');
      if combobox1.text='SKX' then
         sql.Add(' and kfxxzl.khdh = ''0075'' ');
      if combobox2.text<>'' then
         sql.Add(' and left(ypzl.ypdh,4) = '''+combobox2.text+''' ');
      if edit1.Text<>'' then
         sql.Add(' and shoetest.Testno = '''+edit1.Text+'''');
      if edit2.Text<>'' then
         sql.Add(' and kfxxzl.devtype = '''+edit2.Text+'''');
      if edit4.Text<>'' then
         sql.Add(' and ypzl.subtype = '''+edit4.Text+'''');
      if edit5.Text<>'' then
         sql.Add(' and kfxxzl.devcode = '''+edit5.Text+'''');                             
      if edit6.Text<>'' then
         sql.Add(' and kfxxzl.jijie = '''+edit6.Text+'''');
      if edit3.Text<>'' then
         sql.Add(' and ypzl.kfjd = '''+edit3.Text+'''');
      if edit19.Text<>'' then
         sql.Add(' and shoetestplan.groups = '''+edit19.Text+'''');
      if edit21.Text<>'' then
         sql.Add(' and shoetestplan.groups2 = '''+edit21.Text+'''');
      if edit25.Text<>'' then
         sql.Add(' and shoetestplan.userid = '''+edit25.Text+'''');
      if Info_chk.Checked then
      begin
           SQL.Add(' and shoetest.shipdate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP1.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP2.datetime)+''')  ');
      end;
      if Receive_Check.Checked then
      begin
           SQL.Add(' and shoetest.TBReceiveDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP3.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP4.datetime)+''')  ');
      end;

   //   sql.Add('order by  kfxxzl.khdh,shoetestplan.priority');
      active:=true;
  end;
  if IsAllowUserID=true then
  begin
      BB2.Enabled:=true;
      BB3.Enabled:=true;
      BB4.Enabled:=true;
  end;
 doquery();
  with Query7 do
  begin
    SQL.Clear;
    close;
    SQL.Add('select * from ( ');
    SQL.Add('select max(KCYEAR+KCMONTH) Date,CKBH,CLBH from kcclmonth ');
    SQL.Add(' where CLBH='''+Query5.fieldbyname('Material').AsString+''' and KCYEAR=year(getdate()) ');
    SQL.Add('group by  CKBH,CLBH)main ');
    SQL.Add('left join (select KCYEAR+KCMONTH Date,CKBH,CLBH,qty from kcclmonth ');
    SQL.Add('where CLBH='''+Query5.fieldbyname('Material').AsString+''' and KCYEAR=year(getdate()) ');
    SQL.Add('group by  KCYEAR+KCMONTH,CKBH,CLBH,qty)kcclmonth on kcclmonth.Date=main.Date and kcclmonth.CKBH=main.CKBH and main.CLBH=kcclmonth.CLBH ');
    open;
  end;
end;

procedure TShoePlan.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  DBGrideh1.Options := DBGrideh1.Options - [dgRowSelect];
  DBGrideh1.Options := DBGrideh1.Options + [dgEditing];
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  bb1.enabled := false;
  bb2.enabled := false;
  bb3.enabled := false;
  bb4.enabled := false;
end;

procedure TShoePlan.BB5Click(Sender: TObject);
var   i: integer;
begin
  checkbox11.checked:=false;
  try
    Query1.First;
    for i:=1 to Query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          UpdateSQL1.apply(ukinsert)
        end;
        usModified:
        begin
          if Query1.fieldbyname('YN').value='0' then
            UpdateSQL1.apply(ukdelete)
          else begin
            Query1.Edit;
            UpdateSQL1.Apply(ukModify);
          end;
        end;
      end;
      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    DBGrideh1.Options := DBGrideh1.Options - [dgEditing];
    DBGrideh1.Options := DBGrideh1.Options + [dgRowSelect];
    BB1.Enabled := true;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
    bb5.Enabled := false;
    bb6.Enabled := false;
    Edit5.Clear;
  except
    Messagedlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;

end;

procedure TShoePlan.BB6Click(Sender: TObject);
begin
  checkbox11.checked:=false;
  Query1.Active := false;
  Query1.CachedUpdates := false;
  Query1.RequestLive := false;
  Query1.Active := true;
  DBGrideh1.Options := DBGrideh1.Options - [dgEditing];
  DBGrideh1.Options := DBGrideh1.Options + [dgRowSelect];
  BB1.Enabled := true;
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
  bb5.enabled := false;
  bb6.enabled := false;

end;

procedure TShoePlan.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;
  DBGrideh1.Options := DBGrideh1.Options - [dgRowSelect];
  DBGrideh1.Options := DBGrideh1.Options + [dgEditing];
  BB5.Enabled := true;
  BB6.Enabled := true;
  bb1.enabled := false;
  bb2.enabled := false;
  bb3.enabled := false;
  bb4.enabled := false;
end;



procedure TShoePlan.GCinsert();
begin
 with query9 do
    begin
    Active:=false;
    SQL.Clear;
    SQL.Add('delete shoeplanGC where ypdh = '''+Query1.fieldbyname('YPDH').AsString+'''');
    execsql;
    Active:=false;
    SQL.Clear;
    SQL.Add('INSERT INTO shoeplanGC select ypdh,ywsm,clzmlb,zsywjc,');
    SQL.Add('case when zsywjc=''CRMTO'' then ''3''');
    SQL.Add('     when zsywjc=''JNG'' and giacong=''Lamination-JNG'' then ''1''');
    SQL.Add('     when zsywjc=''JNG'' and giacong=''Print-JNG'' then ''1''');
    SQL.Add('     when zsywjc=''JNG'' and giacong=''Print3D-JNG'' then ''3''');
    SQL.Add('     when zsywjc=''Amico''  then ''6''');
    SQL.Add('     when zsywjc=''LiMao''  then ''6''');
    SQL.Add('     when zsywjc=''BAO HE''  then ''6''');
    SQL.Add('     when zsywjc=''Kiet Phong''  then ''6''');
    SQL.Add('     when giacong=''Embroidery'' then ''3''');
    SQL.Add('end days,isnull(giacong,'''') giacong,CLBH');
    SQL.Add('from (');
    SQL.Add('select clzmlb,ywsm,ypdh,zsywjc,CLBH');
    SQL.Add(',case when CLYWMC like ''%print%'' and CLYWMC not like ''%3D%'' and zsywjc=''JNG'' then ''Print-JNG''');
    SQL.Add('	  when CLYWMC like ''%3D%print%''  and zsywjc=''JNG'' then ''Print3D-JNG''');
    SQL.Add('	  when CLYWMC like ''%Embroidery%'' then ''Embroidery''');
    SQL.Add('	  when CLYWMC not like ''%Print%'' and zsywjc=''JNG'' then ''Lamination-JNG''');
    SQL.Add('	  end giacong');
    SQL.Add(',CLYWMC from (');
    SQL.Add('SELECT  ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    SQL.Add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc');
    SQL.Add('FROM ypzl');
    SQL.Add('left join ypzls on ypzls.YPDH=ypzl.ypdh');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh WHERE  ypzl.ypdh = '''+Query1.fieldbyname('YPDH').AsString+'''');
    SQL.Add('union all');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
    SQL.Add(' ,ypzls.BWLB ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,bwzl.zwsm,bwzl.ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    SQL.Add('FROM ypzl');
    SQL.Add('left join ypzls on ypzls.YPDH=ypzl.ypdh');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    SQL.Add('WHERE CLZHZL.SYL>0    and  ypzl.ypdh = '''+Query1.fieldbyname('YPDH').AsString+'''');
    SQL.Add('union all');
    SQL.Add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    SQL.Add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH');
    SQL.Add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    SQL.Add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
    SQL.Add(' ,ypzls.BWLB ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    SQL.Add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    SQL.Add(',ypzls.Remark ,'''' AS BWMCNM,bwzl.zwsm,bwzl.ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    SQL.Add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    SQL.Add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    SQL.Add('FROM ypzl');
    SQL.Add('left join ypzls on ypzls.YPDH=ypzl.ypdh');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    SQL.Add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    SQL.Add('WHERE  CLZHZL.SYL>0   and clzl.clzmlb=''Y''  and ypzl.ypdh = '''+Query1.fieldbyname('YPDH').AsString+'''');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    SQL.Add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    SQL.Add(')  YPZLS where zsywjc in (''BAO HE'',''LiMao'',''kiet phong'',''Amico'',''CRMTO'',''JNG'',''TIENHUNG'')');
    SQL.Add('group by clzmlb,ypdh,zsywjc,CLYWMC,ywsm,CLBH)main');
    SQL.Add('order by zsywjc,giacong');
    execsql;
   // showmessage(sql.text);
    Active:=false;
  end;
end;

procedure TShoePlan.BB3Click(Sender: TObject);
begin
  checkbox11.checked:=true;
    with Query1 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Query1.Edit;
      Query1.FieldByName('YN').Value := 0;
    end;
  DBGrideh1.Options := DBGrideh1.Options - [dgRowSelect];
  DBGrideh1.Options := DBGrideh1.Options + [dgEditing];
  BB5.Enabled := true;
  BB6.Enabled := true;
  bb1.enabled := false;
  bb2.enabled := false;
  bb4.enabled := false;
end;

procedure TShoePlan.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
{  if Query1.FieldByName('Complete').value <> null then
  begin
    DBGridEh1.Canvas.Brush.color := clGreen;
    DBGridEh1.canvas.font.color:=clred;
  end;
}
end;

procedure TShoePlan.Button1Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query1);
  end else
  begin
    ExportDefaultExcel(Query1);
  end;
end;

procedure TShoePlan.ExportDefaultExcel(Query:TQuery);
var   a,GCdetail:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        eclApp.Cells(1,1):='Testno';
        eclApp.Cells(1,2):='SR#';
        eclApp.Cells(1,3):='Serino';
        eclApp.Cells(1,4):='Priority';
        eclApp.Cells(1,5):='SampleOrder';
        eclApp.Cells(1,6):='C_Memo';
        eclApp.Cells(1,7):='S_Memo';
        eclApp.Cells(1,8):='C_ETA';
        eclApp.Cells(1,9):='S_ETA';
        eclApp.Cells(1,10):='NG_Memo';

        eclApp.Columns[6].ColumnWidth := 40;
        eclApp.Columns[7].ColumnWidth := 40;
        eclApp.Columns[8].ColumnWidth := 20;
        eclApp.Columns[9].ColumnWidth := 20;
        eclApp.Columns[10].ColumnWidth := 40;
        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-4  do
            begin
              if Query1.fieldbyname('update_last').AsString = '1' then
              begin
                eclApp.Cells[j, 1].Interior.Color := $0000FF;
                eclApp.Cells[j, 2].Interior.Color := $0000FF;
                eclApp.Cells[j, 3].Interior.Color := $0000FF;
                eclApp.Cells[j, 4].Interior.Color := $0000FF;
                eclApp.Cells[j, 5].Interior.Color := $0000FF;
                eclApp.Cells[j, 6].Interior.Color := $0000FF;
                eclApp.Cells[j, 7].Interior.Color := $0000FF;
                eclApp.Cells[j, 8].Interior.Color := $0000FF;
                eclApp.Cells[j, 9].Interior.Color := $0000FF;
                eclApp.Cells[j, 10].Interior.Color := $0000FF;
              end;
              eclApp.Cells(j,1):=Query1.fieldbyname('Testno').AsString;
              eclApp.Cells(j,2):=Query1.fieldbyname('SR').AsString;
              eclApp.Cells(j,3):=Query1.fieldbyname('Serino').AsString;
              eclApp.Cells(j,4):=Query1.fieldbyname('Priority').AsString;
              eclApp.Cells(j,5):=Query1.fieldbyname('ypdh').AsString;
              eclApp.Cells(j,6):=Query1.fieldbyname('C_Memo').AsString;
              eclApp.Cells(j,7):=Query1.fieldbyname('S_Memo').AsString;
              eclApp.Cells(j,8):=Query1.fieldbyname('C_ETA').AsString;
              eclApp.Cells(j,9):=Query1.fieldbyname('S_ETA').AsString;
              eclApp.Cells(j,10):=Query1.fieldbyname('NG_Memo').AsString;
            end;
          GCdetail:='';
          query10.active:=true;
          query10.first;
          while   not   query10.Eof   do
          begin
             GCdetail:=GCdetail+Query10.fieldbyname('zsywjc').AsString+' / '+Query10.fieldbyname('days').AsString+' days'+#13#10;
             query10.Next;
          end;
          eclApp.Cells(j,11):=GCdetail;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      eclApp.Rows.RowHeight := 50;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TShoePlan.ExportFormatExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j,k,l:integer;
    SR,Developer,ReceivedDate,GCdetail,C_Memo_LAIK,C_Memo_LAIV,S_Memo_LAIK,S_Memo_LAIV,Memo,Upper,Accessory:string;
begin
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Develop_NB5.xlsx'),Pchar(AppDir+'Additional\Develop_NB5.xlsx'),false);
  if FileExists(AppDir+'Additional\Develop_NB5.xlsx') then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      eclApp.DisplayAlerts := False;
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    //
    try
      eclApp.WorkBooks.Open(AppDir+'Additional\Develop_NB5.xlsx');
      eclApp.WorkSheets[1].Activate;
      //
      Query1.First;
      GCdetail:='';
      C_Memo_LAIV:='';
      C_Memo_LAIK:='';
      S_Memo_LAIV:='';
      S_Memo_LAIK:='';
      Memo:='';
      Upper:='';
      Accessory:='';
      SR:=Query1.FieldByName('SR').AsString;
      Developer:=Query1.FieldByName('Developer').AsString;
      ReceivedDate:=Query1.FieldByName('TBReceiveDate').AsString;
      Query1.First;
      j:=4;
      while not Query1.Eof do
      begin
        if (SR = Query1.FieldByName('SR').AsString) then
        begin
          //Process
          query10.active:=true;
          query10.first;
          while not query10.Eof do
          begin
            if (Pos(query10.fieldbyname('zsywjc').AsString+' / '+query10.fieldbyname('days').AsString, GCdetail)>0) then
              GCdetail:=GCdetail
            else
              GCdetail:=GCdetail+query10.fieldbyname('zsywjc').AsString+' / '+query10.fieldbyname('days').AsString+' days'+#13#10;
            query10.Next;
          end;
          // Material Arrival Status
          if copy(Query1.FieldByName('ypdh').AsString,4,1)='K' then
          begin
            if Query1.fieldbyname('C_Memo').AsString<>'' then
              C_Memo_LAIK:=C_Memo_LAIK+Query1.fieldbyname('C_Memo').AsString+#13#10
            else
               C_Memo_LAIK:='Received';
            if Query1.fieldbyname('S_Memo').AsString<>'' then
              S_Memo_LAIK:=S_Memo_LAIK+Query1.fieldbyname('S_Memo').AsString+#13#10
            else
              S_Memo_LAIK:='Received';
          end;
          //
          if copy(Query1.FieldByName('ypdh').AsString,4,1)='V' then
          begin
            if Query1.fieldbyname('C_Memo').AsString<>'' then
              C_Memo_LAIV:=C_Memo_LAIV+Query1.fieldbyname('C_Memo').AsString+#13#10
            else
              C_Memo_LAIV:='Received';
            if Query1.fieldbyname('S_Memo').AsString<>'' then
              S_Memo_LAIV:=S_Memo_LAIV+Query1.fieldbyname('S_Memo').AsString+#13#10
            else
              S_Memo_LAIV:='Received';
          end;
          // Warehouse memo
          Memo:=Memo+Query1.fieldbyname('Memo2').AsString+#13#10;
          //Material Preparation
          if copy(Query1.FieldByName('ypdh').AsString,4,1)='K' then
          begin
            if Query1.FieldByName('preparationDate').AsString<>'' then
              Upper:='Cutting received'
            else if ((Query1.FieldByName('preparationDate').AsString='') and (C_Memo_LAIK='Received')) then
              Upper:='Warehouse prepares'
            else
              Upper:='Lacking material';
            //
            if ((Query1.FieldByName('S_material').AsString<>'') and (Query1.FieldByName('insole_send').AsString<>'') and (Query1.FieldByName('lace_send').AsString<>'')) then
              Accessory:='OK'
            else
              Accessory:='Not OK';
          end;
        end else
        begin
          eclApp.Cells(j,1):=inttostr(j-3);
          eclApp.Cells(j,2):=SR;
          eclApp.Cells(j,3):=Developer;
          eclApp.Cells(j,4):=ReceivedDate;
          eclApp.Cells(j,5):=GCdetail;
          eclApp.Cells(j,6):=C_Memo_LAIV;
          eclApp.Cells(j,7):=C_Memo_LAIK;
          eclApp.Cells(j,8):=S_Memo_LAIV;
          eclApp.Cells(j,9):=S_Memo_LAIK;
          eclApp.Cells(j,10):=Memo;
          eclApp.Cells(j,11):=Upper;
          eclApp.Cells(j,12):=Accessory;
          GCdetail:='';
          C_Memo_LAIV:='';
          C_Memo_LAIK:='';
          S_Memo_LAIV:='';
          S_Memo_LAIK:='';
          Memo:='';
          Upper:='';
          Accessory:='';
          SR:= Query1.FieldByName('SR').AsString;
          Developer:=Query1.FieldByName('Developer').AsString;
          ReceivedDate:=Query1.FieldByName('TBReceiveDate').AsString;
          //Process
          query10.active:=true;
          query10.first;
          while not query10.Eof do
          begin
            if (Pos(query10.fieldbyname('zsywjc').AsString+' / '+query10.fieldbyname('days').AsString, GCdetail)>0) then
              GCdetail:=GCdetail
            else
              GCdetail:=GCdetail+query10.fieldbyname('zsywjc').AsString+' / '+query10.fieldbyname('days').AsString+' days'+#13#10;
            query10.Next;
          end;
          // Material Arrival Status
          if copy(Query1.FieldByName('ypdh').AsString,4,1)='K' then
          begin
            if Query1.fieldbyname('C_Memo').AsString<>'' then
              C_Memo_LAIK:=C_Memo_LAIK+Query1.fieldbyname('C_Memo').AsString+#13#10
            else
              C_Memo_LAIK:='Received';
            if Query1.fieldbyname('S_Memo').AsString<>'' then
              S_Memo_LAIK:=S_Memo_LAIK+Query1.fieldbyname('S_Memo').AsString+#13#10
            else
              S_Memo_LAIK:='Received';
          end;
          if copy(Query1.FieldByName('ypdh').AsString,4,1)='V' then
          begin
            if Query1.fieldbyname('C_Memo').AsString<>'' then
              C_Memo_LAIV:=C_Memo_LAIV+Query1.fieldbyname('C_Memo').AsString+#13#10
            else
              C_Memo_LAIV:='Received';
            if Query1.fieldbyname('S_Memo').AsString<>'' then
              S_Memo_LAIV:=S_Memo_LAIV+Query1.fieldbyname('S_Memo').AsString+#13#10
            else
              S_Memo_LAIV:='Received';
          end;
          // Warehouse memo
          Memo:=Memo+Query1.fieldbyname('Memo2').AsString+#13#10;
          //Material Preparation
          if copy(Query1.FieldByName('ypdh').AsString,4,1)='K' then
          begin
            if Query1.FieldByName('preparationDate').AsString<>'' then
              Upper:='Cutting received'
            else if ((Query1.FieldByName('preparationDate').AsString='') and (C_Memo_LAIK='Received')) then
              Upper:='Warehouse prepares'
            else
              Upper:='Lacking material';
            //
            if ((Query1.FieldByName('S_material').AsString<>'') and (Query1.FieldByName('insole_send').AsString<>'') and (Query1.FieldByName('lace_send').AsString<>'')) then
              Accessory:='OK'
            else
              Accessory:='Not OK';
          end;
          inc(j);
        end;
        Query1.Next;
      end;
      eclApp.Cells(j,1):=inttostr(j-3);
      eclApp.Cells(j,2):=SR;
      eclApp.Cells(j,3):=Developer;
      eclApp.Cells(j,4):=ReceivedDate;
      eclApp.Cells(j,5):=GCdetail;
      eclApp.Cells(j,6):=C_Memo_LAIV;
      eclApp.Cells(j,7):=C_Memo_LAIK;
      eclApp.Cells(j,8):=S_Memo_LAIV;
      eclApp.Cells(j,9):=S_Memo_LAIK;
      eclApp.Cells(j,10):=Memo;
      eclApp.Cells(j,11):=Upper;
      eclApp.Cells(j,12):=Accessory;
      GCdetail:='';
      C_Memo_LAIV:='';
      C_Memo_LAIK:='';
      S_Memo_LAIV:='';
      S_Memo_LAIK:='';
      Memo:='';
      Upper:='';
      Accessory:='';
      SR:= Query1.FieldByName('SR').AsString;
      Developer:=Query1.FieldByName('Developer').AsString;
      ReceivedDate:=Query1.FieldByName('TBReceiveDate').AsString;
      inc(j);
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,14]].borders[k].linestyle:=1;
      end;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
      showmessage(F.Message);
    end;
  end;

end;

procedure TShoePlan.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('Complete').value <> null then
  begin
    DBGridEh1.Canvas.Brush.color := clGreen;
    DBGridEh1.canvas.font.color:=clwhite;
    DBGridEh1.Canvas.pen.mode := pmmask;
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TShoePlan.FormCreate(Sender: TObject);
var
    NDate:TDate;
    MyIni :Tinifile;
    UserIDEdit:string;
    tmpUserIDEdit:TStringlist;
    index:integer;
begin
    with query2 do
    begin
       Active:=false;
       Sql.Clear;
       Sql.add('select 	left(convert(varchar,getdate(),111),7)   as NDate');
       active:=true;
       NDate:=fieldbyname('NDate').Value;
       active:=false;
       sql.Clear;
       active:=false;
       sql.Clear;
       sql.add('select jijie from kfxxzl');
       SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
       sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
       SQL.add('and right(left(jijie,2),2) between ''16'' and ''50'' ');
       SQL.Add('AND LEN(jijie) < 4 ');
       sql.add('group by jijie');
       sql.add('order by jijie desc');
       active:=true;
         {seasonText.items.clear;

         while not eof do
         begin
           seasonText.items.add(fieldbyname('jijie').asstring );
           next;
         end;
      end;
      seasonText.ItemIndex:=-1;   }

    DTP1.Date:=Date()-30;
    DTP2.Date:=Date();
    DTP3.Date:=Date()-30;
    DTP4.Date:=Date();
    DTP333.Date:=Date();
    DTP444.Date:=Date();
    DTP5.Date:=Date();
    DTP6.Date:=Date();
   end;
   AppDir:=ExtractFilePath(Application.ExeName);
   IsAllowUserID:=false;
   if FileExists(AppDir+'\ComName.ini')=true then
   begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDEdit:=MyIni.ReadString('ERP','Develop_NB5','');
    finally
      MyIni.Free;
    end;
   end;
   if  UserIDEdit <> '' then
   begin
    tmpUserIDEdit:=FuncObj.SplitString(UserIDEdit,',');
    index:=tmpUserIDEdit.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDEdit.Free;
   end else
   begin
    IsAllowUserID:=false;
   end;


  FBookMarks_DBG1:=TMyBookmarkList.Create(DBGrid1);
  FBookMarks_DBG1.DoLinkActive(True);
  PageControl1.ActivePageIndex := 0;
end;

procedure TShoePlan.DBGrid1CellClick(Column: TColumn);
var vXieXing, vSheHao, vYPDH: String;
begin
  if SameText(Column.FieldName,'CHK') then
    begin
    FBookMarks_DBG1.CurrentRowSelected := Not FBookMarks_DBG1.CurrentRowSelected;
    DBGrid1.SelectedIndex:=1;

//    Query3.requestlive:=true;
//    Query3.Edit;
    if Query3.FieldByName('CHK').Value = '' then begin
      Query2.Active := false;
      Query2.SQL.Text := 'Update #MOCXI01 set CHK = ''Y'' where XieXing = '''+Query3.FieldByName('XieXing').AsString+''' and Shehao = '''+Query3.FieldByName('Shehao').AsString+''' and YPDH  = '''+Query3.FieldByName('YPDH').AsString+''' and testno  = '''+Query3.FieldByName('testno').AsString+'''';
      Query2.ExecSQL;
    end
    else if Query3.FieldByName('CHK').Value = 'Y' then begin
      Query2.Active := false;
      Query2.SQL.Text := 'Update #MOCXI01 set CHK = ''N'' where XieXing = '''+Query3.FieldByName('XieXing').AsString+''' and Shehao = '''+Query3.FieldByName('Shehao').AsString+''' and YPDH  = '''+Query3.FieldByName('YPDH').AsString+''' and testno  = '''+Query3.FieldByName('testno').AsString+'''';
      Query2.ExecSQL;
    end
    else if Query3.FieldByName('CHK').Value = 'N' then begin
      Query2.Active := false;
      Query2.SQL.Text := 'Update #MOCXI01 set CHK = ''Y'' where XieXing = '''+Query3.FieldByName('XieXing').AsString+''' and Shehao = '''+Query3.FieldByName('Shehao').AsString+''' and YPDH  = '''+Query3.FieldByName('YPDH').AsString+''' and testno  = '''+Query3.FieldByName('testno').AsString+'''';
      Query2.ExecSQL;
    end;
{    vXieXing := Query3.fieldbyname('XieXing').AsString;
    vSheHao := Query3.fieldbyname('SheHao').AsString;
    vYPDH := Query3.fieldbyname('YPDH').AsString;
    Query3.Close;
    Query3.Open;
    Query3.Locate('XieXing;SheHao;YPDH', VarArrayOf([vXieXing, vSheHao, vYPDH]), [loPartialKey]); }
{    if Query3.FieldByName('CHK').Value = '' then
      Query3.FieldByName('CHK').AsString := 'Y'
    else if Query3.FieldByName('CHK').Value = 'Y' then
      Query3.FieldByName('CHK').AsString := 'N'
    else if Query3.FieldByName('CHK').Value = 'N' then
      Query3.FieldByName('CHK').AsString := 'Y';
      Query3.Post;}
    end;
end;

procedure TShoePlan.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Flags : Integer;
begin
  With DBGrid1 do
    begin
      if SameText(Column.FieldName,'CHK') then
      begin
      Flags := DFCS_BUTTONCHECK;
      if FBookMarks_DBG1.CurrentRowSelected then Flags := Flags or DFCS_CHECKED;
        DrawFrameControl(Canvas.Handle,Rect,DFC_BUTTON,Flags);
      end;
    end;
end;

procedure TShoePlan.BitBtn3Click(Sender: TObject);
begin
  if Query3.IsEmpty then abort;
  if Edit18.Text = '' then begin
    showmessage('Please Keyin Groups First!');
    abort;
  end;
  Query3.Close;
  Query3.Open;
  while not Query3.Eof do begin
    if (Query3.fieldbyname('CHK').AsString = 'N') or (Query3.fieldbyname('CHK').AsString = '') then begin
      Query2.Active := false;
      Query2.SQL.Text := 'Select * from shoetestplan where YPDH = '''+Query3.fieldbyname('YPDH').AsString+''' and testno = '''+Query3.fieldbyname('testno').AsString+'''';
      Query2.Open;
      if Query2.RecordCount = 0 then begin
        Query2.Active := false;
        Query2.SQL.Text := 'Insert into shoetestplan (YPDH,testno,groups,groups2,userid,userdate) values ('''+Query3.fieldbyname('YPDH').AsString+''','''+Query3.fieldbyname('testno').AsString+''','''+Edit18.Text+''','''+Edit20.Text+''','''+main.Edit1.Text+''',getdate())';
        Query2.ExecSQL;
      end
      else begin
        Query2.Active := false;
        if trim(Edit18.Text) <> '' then
          Query2.SQL.Text := 'update shoetestplan set groups = '''+Edit18.Text+''' where YPDH = '''+Query3.fieldbyname('YPDH').AsString+''' and testno = '''+Query3.fieldbyname('testno').AsString+'''';
        if trim(Edit20.Text) <> '' then
          Query2.SQL.Text := 'update shoetestplan set groups2 = '''+Edit20.Text+''' where YPDH = '''+Query3.fieldbyname('YPDH').AsString+''' and testno = '''+Query3.fieldbyname('testno').AsString+'''';
        Query2.ExecSQL;
      end;
    end;
    Query3.Next;
  end;
end;

procedure TShoePlan.BitBtn1Click(Sender: TObject);
begin
  FBookMarks_DBG1.Clear;
  try
    query2.Active := false;
    query2.SQL.Text := 'if object_id(''tempdb..#MOCXI01'') is not null Drop table #MOCXI01';
    query2.ExecSQL;
  except
  end;

  with query2 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select '''' as CHK,YPZL.YPDH,isNULL(shoetest.testno,''NA'') testno,kfxxzl.jijie,kfxxzl.khdh,kfxxzl.DEVCODE SR,kfxxzl.yssm Color,ypzl.kfjd Stage,kfxxzl.DevType,ypzl.SubType,');
      sql.Add('ypzl.fd Developer,kfxxzl.XieXing,kfxxzl.Shehao');
      sql.Add('INTO #MOCXI01 from kfxxzl ');
      sql.Add('left join ypzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=kfxxzl.shehao');
      sql.Add('left join shoetest on ypzl.YPDH=shoetest.YPDH');
      sql.Add('where  1=1 and shoetest.testno not in (select testno from shoetestplan)');
      if SampleRoomFinish.Checked then                       
      begin
           SQL.Add(' and shoetest.TBReceiveDate between');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP333.datetime)+' '+formatdatetime('hh:mm:ss',DTP33.datetime)+''') ');
           sql.add(' and  ');
           sql.add(' convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP444.datetime)+' '+formatdatetime('hh:mm:ss',DTP44.datetime)+''')  ');
      end;
      if edit12.Text<>'' then
         sql.Add(' and YPZL.YPDH like '''+edit12.Text+'%''');
      if edit11.Text<>'' then
         sql.Add(' and shoetest.testno = '''+edit11.Text+'''');
      if edit9.Text<>'' then
         sql.Add(' and kfxxzl.devtype = '''+edit9.Text+'''');
      if edit10.Text<>'' then
         sql.Add(' and ypzl.subtype = '''+edit10.Text+'''');
      if edit7.Text<>'' then
         sql.Add(' and kfxxzl.jijie = '''+edit7.Text+'''');
      if edit24.Text<>'' then
         sql.Add(' and kfxxzl.khdh = '''+edit24.Text+'''');
      if edit8.Text<>'' then
         sql.Add(' and ypzl.kfjd = '''+edit8.Text+'''');

      sql.Add('order by YPZL.YPDH');
//      showmessage(sql.text);
      ExecSQL;
  end;
  query3.Active := false;
  query3.SQL.Text := 'Select * from #MOCXI01';
//  showmessage(Query3.SQL.Text);
  query3.Open;
  Label22.Caption := 'Count : ' + inttostr(Query3.RecordCount);
  BitBtn3.Enabled := true;
end;

procedure TShoePlan.BitBtn2Click(Sender: TObject);
begin
  with query4 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select ''C'' Class,kfxxzl.devcode,ETDTemp.CGNO PO,Ypzls.CSBH SupplierNO,zszl.zsywjc Supplier,bwzl.ywsm Parts,ETDTemp.CLBH MatNO,clzl.ywpm DES,ETDTemp.USERDate UpdateDate,ETDTemp.ETD NewETD,CGZLSS.ZLBH SO,ypzl.kfjd Stage,shoetest.Testno from ETDTemp ');
      sql.Add('left join CGZLSS on CGZLSS.CGNO=ETDTemp.CGNO and  CGZLSS.clbh=ETDTemp.clbh and CGZLSS.zlbh=ETDTemp.article ');
      sql.Add('left join ypzl on ypzl.YPDH=CGZLSS.ZLBH ');
      sql.Add('left join ypzls on ypzls.CLBH=ETDTemp.CLBH and ypzls.YPDH=ETDTemp.article ');
      sql.Add('left join shoetest on shoetest.ypdh=ypzl.ypdh ');
      sql.Add('left join shoetestplan on ypzl.ypdh=shoetestplan.ypdh ');
      sql.Add('left join clzl on clzl.cldh=ETDTemp.clbh ');
      sql.Add('left join bwzl on bwzl.bwdh=ypzls.BWBH ');
      sql.Add('left join zszl on zszl.zsdh=ypzls.CSBH ');
      sql.Add('left join clzlfilter_DFL on ETDTemp.CLBH=clzlfilter_DFL.CLDH ');
      sql.Add('left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
      sql.Add('left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
      sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.Add('where 1 = 1 ');
      sql.Add('and ( ((LEFT( ETDTemp.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or ');
      sql.Add('(LEFT(ETDTemp.CLBH,1) in (''A'',''C'',''F'',''K'',''L'') and  LEFT(ETDTemp.CLBH,3) not in (''A48'')  and (clzlfilter_DFL.DFL is null) ) or ');
      sql.Add('(clzlfilter_DFL.DFL=''1'') or ');
      sql.Add('(LEFT(ETDTemp.CLBH,1)=''P'' and Ypzls.CSBH in (''M027'',''V192'')) )   and zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(Ypzls.csbh,3) <>''JNG'' ');
      if Edit17.Text <> '' then
        sql.Add('and shoetest.TestNo='''+Edit17.Text+''' ');
      if Edit13.Text <> '' then
        sql.Add('and kfxxzl.JiJie='''+Edit13.Text+''' ');
      if Edit14.Text <> '' then
        sql.Add('and ypzl.KFJD='''+Edit14.Text+''' ');
      if Edit15.Text <> '' then
        sql.Add('and kfxxzl.DevType='''+Edit15.Text+''' ');
      if Edit16.Text <> '' then
        sql.Add('and ypzl.Subtype='''+Edit16.Text+''' ');
      if edit22.Text<>'' then
         sql.Add(' and shoetestplan.groups = '''+edit22.Text+'''');
      if edit23.Text<>'' then
         sql.Add(' and shoetestplan.groups2 = '''+edit23.Text+'''');
      if edit26.Text<>'' then
         sql.Add(' and kfxxzl.devcode like '''+edit26.Text+'%''');
      if CheckBox6.Checked then
        sql.add('and ETDTemp.UserDate= convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP5.datetime)+''') ');

      sql.Add('union ');

      sql.Add('select ''S'' Class,kfxxzl.devcode,ETDTemp.CGNO PO,Ypzls.CSBH SupplierNO,zszl.zsywjc Supplier,bwzl.ywsm Parts,ETDTemp.CLBH MatNO,clzl.ywpm DES,ETDTemp.USERDate UpdateDate,ETDTemp.ETD NewETD,CGZLSS.ZLBH SO,ypzl.kfjd Stage,shoetest.Testno from ETDTemp ');
      sql.Add('left join CGZLSS on CGZLSS.CGNO=ETDTemp.CGNO and  CGZLSS.clbh=ETDTemp.clbh and CGZLSS.zlbh=ETDTemp.article ');
      sql.Add('left join ypzl on ypzl.YPDH=CGZLSS.ZLBH ');
      sql.Add('left join ypzls on ypzls.CLBH=ETDTemp.CLBH and ypzls.YPDH=ETDTemp.article ');
      sql.Add('left join shoetest on shoetest.ypdh=ypzl.ypdh ');
      sql.Add('left join shoetestplan on ypzl.ypdh =shoetestplan.ypdh ');
      sql.Add('left join clzl on clzl.cldh=ETDTemp.clbh ');
      sql.Add('left join bwzl on bwzl.bwdh=ypzls.BWBH ');
      sql.Add('left join zszl on zszl.zsdh=ypzls.CSBH ');
      sql.Add('left join clzlfilter_DFL on ETDTemp.CLBH=clzlfilter_DFL.CLDH ');
      sql.Add('left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+main.Edit2.Text+''' ');
      sql.Add('left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilter.GSBH='''+main.Edit2.Text+''' ');
      sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.Add('where 1 = 1 ');
      sql.Add('and ( ((LEFT( ETDTemp.CLBH,3)=''V90'') and (CLZL.cltd=''VT Phu May'')) or ');
      sql.Add('((LEFT( ETDTemp.CLBH,3)=''V90'') and (CLZL.cltd=''VT De'')) or ');
      sql.Add('(LEFT(ETDTemp.CLBH,1) in (''B'',''D'',''M'',''N'',''E'')  and (clzlfilter_DFL.DFL is null) ) or ');
      sql.Add('(clzlfilter_DFL.DFL=''2'') or ');
      sql.Add('(LEFT(ETDTemp.CLBH,3)  in (''O02'',''J05'',''J04'',''A48'',''G03''))  or ');
      sql.Add('(LEFT(ETDTemp.CLBH,1) in (''P'',''G'')  and Ypzls.csbh in (''V097'',''V194'',''A104'',''A088'',''K110'',''V162'',''A159''))) and ');
      sql.Add('zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(Ypzls.csbh,3) <>''JNG'' ');

      if Edit17.Text <> '' then
        sql.Add('and shoetest.TestNo='''+Edit17.Text+''' ');
      if Edit13.Text <> '' then
        sql.Add('and kfxxzl.JiJie='''+Edit13.Text+''' ');
      if Edit14.Text <> '' then
        sql.Add('and ypzl.KFJD='''+Edit14.Text+''' ');
      if Edit15.Text <> '' then
        sql.Add('and kfxxzl.DevType='''+Edit15.Text+''' ');
      if edit22.Text<>'' then
         sql.Add(' and shoetestplan.groups = '''+edit22.Text+'''');
      if edit23.Text<>'' then
         sql.Add(' and shoetestplan.groups2 = '''+edit23.Text+'''');        
      if Edit16.Text <> '' then
        sql.Add('and ypzl.Subtype='''+Edit16.Text+''' ');
      if edit26.Text<>'' then
         sql.Add(' and kfxxzl.devcode like '''+edit26.Text+'%''');
      if CheckBox6.Checked then
        sql.add('and ETDTemp.UserDate= convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',DTP5.datetime)+''') ');

      sql.Add('order by ETDTemp.userdate');
      active := true;
  end;
end;

procedure TShoePlan.DBGridEh1CellClick(Column: TColumnEh);
begin
  if checkbox11.Checked then
  begin
    with Query1 do
    begin
      RequestLive := true;
      CachedUpdates := true;
      Query1.Edit;
      Query1.FieldByName('YN').Value := 0;
    end;
  end;
  if not checkbox11.Checked then
     doquery();
end;

procedure TShoePlan.CheckBox7Click(Sender: TObject);
begin
  if not checkbox7.checked then
  begin
     DBGridEh1.Columns[5].Visible:=true;

  end;
  if checkbox7.checked then
  begin
     DBGridEh1.Columns[5].Visible:=false;
  end;
end;

procedure TShoePlan.DBGridEh4CellClick(Column: TColumnEh);
begin
  with Query7 do begin
    SQL.Clear;
    close;
    SQL.Add('select * from ( ');
    SQL.Add('select max(KCYEAR+KCMONTH) Date,CKBH,CLBH from kcclmonth ');
    SQL.Add(' where CLBH='''+Query5.fieldbyname('Material').AsString+''' and KCYEAR=year(getdate()) ');
    SQL.Add('group by  CKBH,CLBH)main ');
    SQL.Add('left join (select KCYEAR+KCMONTH Date,CKBH,CLBH,qty from kcclmonth ');
    SQL.Add('where CLBH='''+Query5.fieldbyname('Material').AsString+''' and KCYEAR=year(getdate()) ');
    SQL.Add('group by  KCYEAR+KCMONTH,CKBH,CLBH,qty)kcclmonth on kcclmonth.Date=main.Date and kcclmonth.CKBH=main.CKBH and main.CLBH=kcclmonth.CLBH ');
    open;
  end;
end;

procedure TShoePlan.DBGridEh3CellClick(Column: TColumnEh);
begin
  with Query7 do begin
    SQL.Clear;
    close;
    SQL.Add('select * from ( ');
    SQL.Add('select max(KCYEAR+KCMONTH) Date,CKBH,CLBH from kcclmonth ');
    SQL.Add(' where CLBH='''+Query6.fieldbyname('Material').AsString+''' and KCYEAR=year(getdate()) ');
    SQL.Add('group by  CKBH,CLBH)main ');
    SQL.Add('left join (select KCYEAR+KCMONTH Date,CKBH,CLBH,qty from kcclmonth ');
    SQL.Add('where CLBH='''+Query6.fieldbyname('Material').AsString+''' and KCYEAR=year(getdate()) ');
    SQL.Add('group by  KCYEAR+KCMONTH,CKBH,CLBH,qty)kcclmonth on kcclmonth.Date=main.Date and kcclmonth.CKBH=main.CKBH and main.CLBH=kcclmonth.CLBH ');
//    showmessage(SQL.Text);
    open;
  end;
end;

procedure TShoePlan.BB7Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin


  if (Edit19.Text = '') and  (Edit21.Text = '') then
  begin
    showmessage('group is empty');
    abort;
  end;
  with Query8 do begin
    Close;
    SQL.Clear;
    SQL.Add('select Class,Season,Stage,SR,FD Developer,Testno,SO,Supplier,SupplierName,cgno PO, isnull(Status,'''') Status,ETA,Material,MaterialDES,Memo from ( ');
    SQL.Add('select  ''C'' as Class,FD,CGZLSS1.cgno,jijie Season,KFJD as Stage,Temp_YPZL.devcode SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty, ');
    SQL.Add('case when  kcrkstemp.qty is not null or PurReceiveDate is not null then ''Arrive'' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0) then ''UseStock'' end ''Status'',');
    SQL.Add('case when  ((kcrkstemp.qty is not null) or  (PurReceiveDate is not null)  or (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0)) then ''OK'' else  convert(varchar, CGZLSS1.ETA, 111) end ''ETA'',');
    SQL.Add('Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,CGZLSs1.Memo from (');
    SQL.Add('select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from (');
    SQL.Add('SELECT shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join CLZL on CLZL.CLDH=ypzls.CLBH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' ');
    if Edit19.Text <> '' then
      SQL.Add('and shoetestplan.groups = '''+Edit19.Text+'''');
    if edit21.Text<>'' then
      Sql.Add(' and shoetestplan.groups2 = '''+edit21.Text+'''');
    SQL.Add('union all');
    SQL.Add('SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N''  and CLZHZL.SYL>0 ');
    if Edit19.Text <> '' then
      SQL.Add('and shoetestplan.groups = '''+Edit19.Text+'''');
    if edit21.Text<>'' then
      Sql.Add(' and shoetestplan.groups2 = '''+edit21.Text+'''');
    SQL.Add('union all');
    SQL.Add('Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add(' from (');
    SQL.Add('SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('WHERE    CLZHZL.SYL>0  and clzl.clzmlb = ''Y'' ');
    if Edit19.Text <> '' then
      SQL.Add('and shoetestplan.groups = '''+Edit19.Text+'''');
    if edit21.Text<>'' then
      Sql.Add(' and shoetestplan.groups2 = '''+edit21.Text+'''');
    SQL.Add(' ) clzhzl2');
    SQL.Add('left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0');
    SQL.Add(')  YPZLS');
    SQL.Add('Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =Temp_YPZL.YPDH');
    SQL.Add('left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clbh=Temp_YPZL.CLBH');
    SQL.Add('left join(');
    SQL.Add('	Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
    SQL.Add('	Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo,CGZLS.Memo');
    SQL.Add('	from CGZLSS');
    SQL.Add('	inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('	inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('	inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('	left join (select season,CLBH,Location from MaterialMOQ where 1 = 1');
    SQL.Add('Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH and MaterialMOQ.Season=CGZL.SEASON');
    SQL.Add('	Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate,CGZLS.Memo )CGZLSS1 on CGZLSS1.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL.YPDH');
    SQL.Add('left join');
    SQL.Add('	(');
    SQL.Add('	select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE from shoetestplan');
    SQL.Add('	left join kcrks on kcrks.CGBH=shoetestplan.ypdh');
    SQL.Add('	)kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=Temp_YPZL.YPDH');
    SQL.Add('left join zszl on zszl.zsdh=Temp_YPZL.CSBH');
    SQL.Add('left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    SQL.Add('where');
    SQL.Add('   ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or');
    SQL.Add('  (LEFT(Temp_YPZL.CLBH,1) in (''A'',''C'',''F'',''K'',''L'') and  LEFT(Temp_YPZL.CLBH,3) not in (''A48'')  and (clzlfilter_DFL.DFL is null) ) or');
    SQL.Add('  (clzlfilter_DFL.DFL=''1'') or');
    SQL.Add('  (LEFT(Temp_YPZL.CLBH,1)=''P'' and Temp_YPZL.CSBH in (''M027'',''V192'')) )');
    SQL.Add('and zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(Temp_YPZL.csbh,3) <>''JNG''');
    SQL.Add(' )main   group by Class,Season,Stage,SR,FD,Testno,SO,Supplier,ETA,SupplierName,isnull(Status,'''') ,Material,MaterialDES,Memo,PurReceiveDate,cgno');
    SQL.Add('  union');

    SQL.Add('select Class,Season,Stage,SR,FD Developer,Testno,SO,Supplier,SupplierName,cgno PO, isnull(Status,'''') Status,ETA,Material,MaterialDES,Memo from (');
    SQL.Add('select  ''S'' as Class,FD,CGZLSS1.cgno,jijie Season,KFJD as Stage,Temp_YPZL.devcode SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty,');
    SQL.Add('case when  kcrkstemp.qty is not null or PurReceiveDate is not null then ''Arrive'' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0) then ''UseStock'' end ''Status'',');
    SQL.Add('case when  ((kcrkstemp.qty is not null) or  (PurReceiveDate is not null)  or (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0)) then ''OK'' else  convert(varchar, CGZLSS1.ETA, 111) end ''ETA'',');
    SQL.Add('Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,CGZLSs1.Memo from (');
    SQL.Add('select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from (');
    SQL.Add('SELECT shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join CLZL on CLZL.CLDH=ypzls.CLBH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' ');
    if Edit19.Text <> '' then
      SQL.Add(' and  shoetestplan.groups = '''+Edit19.Text+'''');
    if edit21.Text<>'' then
      Sql.Add(' and shoetestplan.groups2 = '''+edit21.Text+'''');
    SQL.Add('union all');
    SQL.Add('SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N''   and CLZHZL.SYL>0 ');
    if Edit19.Text <> '' then
      SQL.Add(' and  shoetestplan.groups = '''+Edit19.Text+'''');
    if edit21.Text<>'' then
      Sql.Add(' and shoetestplan.groups2 = '''+edit21.Text+'''');
    SQL.Add('union all');
    SQL.Add('Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add(' from (');
    SQL.Add('SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('WHERE    CLZHZL.SYL>0  and clzl.clzmlb = ''Y'' ');
    if Edit19.Text <> '' then
      SQL.Add(' and shoetestplan.groups = '''+Edit19.Text+''' ');
    if edit21.Text<>'' then
      Sql.Add(' and shoetestplan.groups2 = '''+edit21.Text+'''');
    SQL.Add(' ) clzhzl2');
    SQL.Add('left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0');
    SQL.Add(')  YPZLS');
    SQL.Add('Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =Temp_YPZL.YPDH');
    SQL.Add('left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clbh=Temp_YPZL.CLBH');
    SQL.Add('left join(');
    SQL.Add('	Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
    SQL.Add('	Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo,CGZLS.Memo');
    SQL.Add('	from CGZLSS');
    SQL.Add('	inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('	inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('	inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('	left join (select season,CLBH,Location from MaterialMOQ where 1 = 1');
    SQL.Add('Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH and MaterialMOQ.Season=CGZL.SEASON');
    SQL.Add('	Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate,CGZLS.Memo )CGZLSS1 on CGZLSS1.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL.YPDH');
    SQL.Add('left join');
    SQL.Add('	(');
    SQL.Add('	select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE from shoetestplan');
    SQL.Add('	left join kcrks on kcrks.CGBH=shoetestplan.ypdh');
    SQL.Add('	)kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=Temp_YPZL.YPDH');
    SQL.Add('left join zszl on zszl.zsdh=Temp_YPZL.CSBH');
    SQL.Add('left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    SQL.Add('where');
    SQL.Add('   ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd in(''VT Phu May'',''VT De'',''VT Phu Go''))) or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,1) in (''B'',''D'',''M'',''N'',''E'')  and (clzlfilter_DFL.DFL is null) ) or');
    SQL.Add('    (clzlfilter_DFL.DFL=''2'') or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,3)  in (''O02'',''J05'',''J04'',''A48'',''G03'',''I01''))  or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,1) in (''P'',''G'')  and csbh in (''V097'',''V194'',''A104'',''A088'',''K110'',''V162'',''A159''))) and');
    SQL.Add('    zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(csbh,3) <>''JNG''');
    SQL.Add(' )main   group by Class,Season,Stage,SR,FD,Testno,SO,Supplier,ETA,SupplierName,isnull(Status,'''') ,Material,MaterialDES,Memo,PurReceiveDate,cgno');
   // showmessage(sql.text);
    open;
  end;

  if  Query8.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query8.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query8.fields[i].FieldName;
          end;

        Query8.First;
        j:=2;
        while   not   Query8.Eof   do
          begin
            for   i:=0   to  Query8.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query8.Fields[i].Value;
            end;
          Query8.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TShoePlan.doquery();
begin
 if Query1.State in [DsEdit] then exit;
  with Query5 do begin
    Close;
    SQL.Clear;
    SQL.Add('select Class,Season,Stage,SR,Testno,SO,Supplier,SupplierName, isnull(Status,'''') Status,ETA,Material,MaterialDES,Memo,PurReceiveDate,NG_ETD,NG_ETA from ( ');
    SQL.Add('select  ''C'' as Class,jijie Season,KFJD as Stage,Temp_YPZL.devcode SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty, ');
    SQL.Add('case when  kcrkstemp.qty is not null or PurReceiveDate is not null then ''Arrive'' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0) then ''UseStock'' end ''Status'',');
    SQL.Add('case when  ((kcrkstemp.qty is not null) or (PurReceiveDate is not null)) then ''OK''  when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0 and (CGZLSS1.Qty is null or CGZLSS1.Qty=0)) then ''UseStock'' else  convert(varchar, CGZLSS1.ETA, 111) end ''ETA'',');
    SQL.Add('Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,CGZLSs1.Memo,CGZLSS1.NG_ETD,CGZLSS1.NG_ETA from (');
    SQL.Add('select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from (');
    SQL.Add('SELECT shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join CLZL on CLZL.CLDH=ypzls.CLBH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and shoetestplan.ypdh = '''+Query1.fieldbyname('YPDH').AsString+'''');
    if Edit19.Text <> '' then
      SQL.Add('and shoetestplan.groups = '''+Edit19.Text+'''');
    SQL.Add('union all');
    SQL.Add('SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N''  and CLZHZL.SYL>0 and shoetestplan.ypdh = '''+Query1.fieldbyname('YPDH').AsString+'''');
    if Edit19.Text <> '' then
      SQL.Add('and shoetestplan.groups = '''+Edit19.Text+'''');
    SQL.Add('union all');
    SQL.Add('Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add(' from (');
    SQL.Add('SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('WHERE    CLZHZL.SYL>0  and clzl.clzmlb = ''Y'' and shoetestplan.ypdh = '''+Query1.fieldbyname('YPDH').AsString+'''');
    if Edit19.Text <> '' then
      SQL.Add('and shoetestplan.groups = '''+Edit19.Text+'''');
    SQL.Add(' ) clzhzl2');
    SQL.Add('left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0');
    SQL.Add(')  YPZLS');
    SQL.Add('Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =Temp_YPZL.YPDH');
    SQL.Add('left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clbh=Temp_YPZL.CLBH');
    SQL.Add('left join(');
    SQL.Add('	Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
    SQL.Add('		Case when CGZLS.ETA is not null then CGZLS.ETA');
    SQL.Add('        when ((CGZLS.ETA is null) and (CGZLS.CFMDate is not null) and (MaterialMOQ.Location=''VN'')) then Min(CGZLS.CFMDate)+2');
    SQL.Add('        when ((CGZLS.ETA is null) and (CGZLS.CFMDate is not null) and (MaterialMOQ.Location<>''VN'')) then Min(CGZLS.CFMDate)+5');
    //SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate =''''))  and (MaterialMOQ.Location=''VN'') then Min(CGZLS.CFMDate)+2');
    //SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location=''VN'') then Min(CGZLInvoice.CIDate)+2');
    //SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate ='''')) and (MaterialMOQ.Location<>''VN'') then Min(CGZLS.CFMDate)+7');
    //SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location<>''VN'') then Min(CGZLInvoice.CIDate)+7');
    //SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate ='''')) and (MaterialMOQ.Location Is null) then Min(CGZLS.CFMDate)+7');
    //SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location IS null) then Min(CGZLInvoice.CIDate)+7');
	  SQL.Add('        end as ETA,');
    SQL.Add('  Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo,CGZLS.Memo,CGZLS.ETA as OriETA,');
    SQL.Add(' case when ((MaterialNG.NG_ETD is not null) and (MaterialMOQ.Location=''VN'')) then Min(MaterialNG.NG_ETD)+2 ');
    SQL.Add('      when ((MaterialNG.NG_ETD is not null) and (MaterialMOQ.Location<>''VN'')) then Min(MaterialNG.NG_ETD)+7 end as NG_ETD,MaterialNG.NG_ETA ');
    SQL.Add('	from CGZLSS');
    SQL.Add('	inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('	inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('	inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    //SQL.Add('	left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    //SQL.Add('	left join CGZLInvoice on CGZLInvoiceS.cino=CGZLInvoice.cino');
    SQL.Add('	left join (select ZSZL_DEV.zsdh,isnull(Country.Country,ZSZL_DEV.country) location from ZSZL_DEV');
	  SQL.Add('	           left join Country on Country.Country=ZSZL_DEV.country where ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('         	 Group by ZSZL_DEV.zsdh,Country.Country,ZSZL_DEV.country) MaterialMOQ on MaterialMOQ.zsdh=CGZL.zsbh');
    SQL.Add(' left join MaterialNG on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO');
    SQL.Add('	Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate,CGZLS.Memo,CGZLS.ETA,CGZLS.CFMDate,MaterialNG.NG_ETD,MaterialNG.NG_ETA )CGZLSS1 on CGZLSS1.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL.YPDH and CGZLSS1.CGNO = CGZLSS.CGNO');
    SQL.Add('	left join (');
    SQL.Add('	select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE,kcrk.ZSNO from shoetestplan');
    SQL.Add('	left join kcrks on kcrks.CGBH=shoetestplan.ypdh');
    SQL.Add(' left join kcrk on kcrks.rkno = kcrk.rkno');
    SQL.Add('	)kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=Temp_YPZL.YPDH and kcrkstemp.ZSNO = CGZLSS.CGNO');
    SQL.Add('left join zszl on zszl.zsdh=Temp_YPZL.CSBH');
    SQL.Add('left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    SQL.Add('where');
    SQL.Add('   ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or');
    SQL.Add('  (LEFT(Temp_YPZL.CLBH,1) in (''A'',''C'',''F'',''K'',''L'') and  LEFT(Temp_YPZL.CLBH,3) not in (''A48'')  and (clzlfilter_DFL.DFL is null) ) or');
    SQL.Add('  (clzlfilter_DFL.DFL=''1'') or');
    SQL.Add('  (LEFT(Temp_YPZL.CLBH,1)=''P'' and Temp_YPZL.CSBH in (''M027'',''V192'',''M230'')) )');
    SQL.Add('and zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(Temp_YPZL.csbh,3) <>''JNG''');
    SQL.Add(' )main');
    if checkbox8.checked then
       SQL.Add('where status is null or ETA not in (''OK'',''UseStock'')');
    SQL.Add('group by Class,Season,Stage,SR,Testno,SO,Supplier,ETA,SupplierName,isnull(Status,'''') ,Material,MaterialDES,Memo,PurReceiveDate,NG_ETD,NG_ETA');
    if checkbox8.checked then
       SQL.Add('order by ETA desc');

    Open;
  end;
  with Query6 do begin
    close;
    SQL.Clear;
    SQL.Add('select Class,Season,Stage,SR,Testno,SO,Supplier,SupplierName, isnull(Status,'''') Status,ETA,Material,MaterialDES,Memo,PurReceiveDate,NG_ETD,NG_ETA from (');
    SQL.Add('select  ''S'' as Class,jijie Season,KFJD as Stage,Temp_YPZL.devcode SR,Temp_YPZL.YPDH SO,Temp_YPZL.FD Developer,CSBH Supplier,zszl.zsywjc SupplierName, PurReceiveDate,kcrkstemp.qty kcrksqty,');
    SQL.Add('case when  kcrkstemp.qty is not null or PurReceiveDate is not null then ''Arrive'' when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0) then ''UseStock'' end ''Status'',');
    SQL.Add('case when  ((kcrkstemp.qty is not null) or (PurReceiveDate is not null)) then ''OK''  when (CGKCUSE.Qty is not null and CGKCUSE.Qty<>0 and (CGZLSS1.Qty is null or CGZLSS1.Qty=0)) then ''UseStock'' else  convert(varchar, CGZLSS1.ETA, 111) end ''ETA'',');
    SQL.Add('Temp_YPZL.CLBH Material,CLZL.YWPM MaterialDES,Temp_YPZL.Testno,CGZLSs1.Memo,CGZLSS1.NG_ETD,CGZLSS1.NG_ETA  from (');
    SQL.Add('select testno,jijie,kfjd,YPDH ,devcode,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from (');
    SQL.Add('SELECT shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join CLZL on CLZL.CLDH=ypzls.CLBH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and shoetestplan.YPDH = '''+Query1.FieldByName('YPDH').asstring+'''');
    if Edit19.Text <> '' then
      SQL.Add(' and  shoetestplan.groups = '''+Edit19.Text+'''');
    SQL.Add('union all');
    SQL.Add('SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.kfjd,kfxxzl.DEVCODE,ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N''   and CLZHZL.SYL>0 and shoetestplan.YPDH = '''+Query1.FieldByName('YPDH').asstring+'''');
    if Edit19.Text <> '' then
      SQL.Add(' and  shoetestplan.groups = '''+Edit19.Text+'''');
    SQL.Add('union all');
    SQL.Add('Select testno,jijie,kfjd,devcode,YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add(' from (');
    SQL.Add('SELECT  shoetestplan.testno,kfxxzl.jijie,ypzl.KFJD,kfxxzl.DEVCODE,ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL');
    SQL.Add('FROM shoetestplan');
    SQL.Add('left join ypzl on ypzl.YPDH=shoetestplan.YPDH');
    SQL.Add('left join ypzls on ypzl.YPDH=ypzls.YPDH');
    SQL.Add('left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('left join xxzlkf on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao');
    SQL.Add('WHERE    CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and shoetestplan.YPDH = '''+Query1.FieldByName('YPDH').asstring+'''');
    if Edit19.Text <> '' then
      SQL.Add(' and shoetestplan.groups = '''+Edit19.Text+''' ');
    SQL.Add(' ) clzhzl2');
    SQL.Add('left join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0');
    SQL.Add(')  YPZLS');
    SQL.Add('Group by testno,jijie,kfjd,devcode,YPDH ,FD,CLBH,YWPM ,CLSL');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join CGZLSS on CGZLSS.CLBH=Temp_YPZL.CLBH and CGZLSS.ZLBH =Temp_YPZL.YPDH');
    SQL.Add('left join CGKCUSE on CGKCUSE.ZLBH=Temp_YPZL.YPDH and CGKCUSE.clbh=Temp_YPZL.CLBH');
    SQL.Add('left join(');
    SQL.Add('	Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
    SQL.Add('		Case when CGZLS.ETA is not null then CGZLS.ETA');
    SQL.Add('        when ((CGZLS.ETA is null) and (CGZLS.CFMDate is not null) and (MaterialMOQ.Location=''VN'')) then Min(CGZLS.CFMDate)+2');
    SQL.Add('        when ((CGZLS.ETA is null) and (CGZLS.CFMDate is not null) and (MaterialMOQ.Location<>''VN'')) then Min(CGZLS.CFMDate)+5');
    //SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate =''''))  and (MaterialMOQ.Location=''VN'') then Min(CGZLS.CFMDate)+2');
    //SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location=''VN'') then Min(CGZLInvoice.CIDate)+2');
    //SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate ='''')) and (MaterialMOQ.Location<>''VN'') then Min(CGZLS.CFMDate)+7');
    //SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location<>''VN'') then Min(CGZLInvoice.CIDate)+7');
    //SQL.Add('        when ((CGZLInvoice.CIDate is null) OR (CGZLInvoice.CIDate ='''')) and (MaterialMOQ.Location Is null) then Min(CGZLS.CFMDate)+7');
    //SQL.Add('        when ((CGZLInvoice.CIDate is not null) OR (CGZLInvoice.CIDate <>'''')) and (MaterialMOQ.Location IS null) then Min(CGZLInvoice.CIDate)+7');
	  SQL.Add('        end as ETA,');
    SQL.Add('  Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo,CGZLS.Memo,CGZLS.ETA as OriETA,');
    SQL.Add('  case when ((MaterialNG.NG_ETD is not null) and (MaterialMOQ.Location=''VN'')) then Min(MaterialNG.NG_ETD)+2 ');
    SQL.Add('       when ((MaterialNG.NG_ETD is not null) and (MaterialMOQ.Location<>''VN'')) then Min(MaterialNG.NG_ETD)+7 end as NG_ETD,MaterialNG.NG_ETA ');
    SQL.Add('	from CGZLSS');
    SQL.Add('	inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('	inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('	inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    //SQL.Add('	left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    //SQL.Add('	left join CGZLInvoice on CGZLInvoiceS.cino=CGZLInvoice.cino');
    SQL.Add('	left join (select ZSZL_DEV.zsdh,isnull(Country.Country,ZSZL_DEV.country) location from ZSZL_DEV');
	  SQL.Add('	           left join Country on Country.Country=ZSZL_DEV.country where ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('         	 Group by ZSZL_DEV.zsdh,Country.Country,ZSZL_DEV.country) MaterialMOQ on MaterialMOQ.zsdh=CGZL.zsbh');
    SQL.Add(' left join MaterialNG on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO');
    SQL.Add('	Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate,CGZLS.Memo,CGZLS.ETA,CGZLS.CFMDate,MaterialNG.NG_ETD,MaterialNG.NG_ETA )CGZLSS1 on CGZLSS1.CLBH=Temp_YPZL.CLBH and CGZLSS1.YPDH =Temp_YPZL.YPDH and CGZLSS1.CGNO = CGZLSS.CGNO');
    SQL.Add('left join');
    SQL.Add('	(');
    SQL.Add('	select kcrks.CGBH,kcrks.clbh,kcrks.qty,kcrks.USERDATE,kcrk.ZSNO from shoetestplan');
    SQL.Add('	left join kcrks on kcrks.CGBH=shoetestplan.ypdh');
    SQL.Add(' left join kcrk on kcrks.rkno = kcrk.rkno');
    SQL.Add('	)kcrkstemp on kcrkstemp.CLBH=Temp_YPZL.CLBH and kcrkstemp.CGBH=Temp_YPZL.YPDH and kcrkstemp.ZSNO = CGZLSS.CGNO');
    SQL.Add('left join zszl on zszl.zsdh=Temp_YPZL.CSBH');
    SQL.Add('left join CGZLInvoiceS on CGZLInvoiceS.CLBH=CGZLSS.CLBH and CGZLInvoiceS.CGNO=CGZLSS.CGNO');
    SQL.Add('where');
    SQL.Add('   ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd in(''VT Phu May'',''VT De'',''VT Phu Go''))) or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,1) in (''B'',''D'',''M'',''N'',''E'')  and (clzlfilter_DFL.DFL is null) ) or');
    SQL.Add('    (clzlfilter_DFL.DFL=''2'') or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,3)  in (''O02'',''J05'',''J04'',''A48'',''G03'',''I01''))  or');
    SQL.Add('    (LEFT(Temp_YPZL.CLBH,1) in (''P'',''G'')  and csbh in (''V097'',''V194'',''A104'',''A088'',''K110'',''V162'',''A159''))) and');
    SQL.Add('    zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(csbh,3) <>''JNG'' and csbh <> ''P154'' ');
    SQL.Add(' )main');
    if checkbox8.checked then
       SQL.Add('where status is null or ETA not in (''OK'',''UseStock'')');
    SQL.Add('group by Class,Season,Stage,SR,Testno,SO,Supplier,ETA,SupplierName,isnull(Status,'''') ,Material,MaterialDES,Memo,PurReceiveDate,NG_ETD,NG_ETA');
    if checkbox8.checked then
       SQL.Add('order by ETA desc');
    //SQL.Add(' order by status');
    //showmessage(SQL.Text);
    open;
  end;
end;
procedure TShoePlan.Button2Click(Sender: TObject);
begin
  gcinsert();
  doquery();
  Query1.RequestLive:=true;
  Query1.CachedUpdates:=true;
   with  query1 do
   begin
      edit;
      query1.fieldbyname('C_MEMO').AsString:='';
      query1.fieldbyname('S_MEMO').AsString:='';
      Query1.fieldbyname('S_ETA').AsString:='';
      Query1.fieldbyname('C_ETA').AsString:='';
      Query1.fieldbyname('NG_Memo').AsString:='';
      with  query5 do
      begin
        while not query5.eof do
        begin
          if query5.FieldByName('ETA').asstring='' then
             Query1.fieldbyname('C_ETA').AsString:=Query1.fieldbyname('C_ETA').AsString+query5.FieldByName('SupplierName').asstring+#13#10;

          if Query1.fieldbyname('C_ETA').AsString='' then
             Query1.fieldbyname('C_ETA').AsString:=query5.FieldByName('ETA').asstring+#13#10;

          if Query5.fieldbyname('ETA').AsString<>'' then
          begin
             query1.fieldbyname('C_MEMO').AsString:=query1.fieldbyname('C_MEMO').AsString+Query5.fieldbyname('ETA').AsString+'-'+ Query5.fieldbyname('SupplierName').AsString+#13#10;
          end;
          if Query5.fieldbyname('ETA').AsString='' then
          begin
             query1.fieldbyname('C_MEMO').AsString:=query1.fieldbyname('C_MEMO').AsString+'????/??/??'+'-'+ Query5.fieldbyname('SupplierName').AsString+#13#10;
          end;
          //
          if ((Query5.fieldbyname('NG_ETD').AsString<>'') and (Query5.fieldbyname('NG_ETA').AsString='')) then
          begin
            query1.fieldbyname('NG_Memo').AsString:=query1.fieldbyname('NG_Memo').AsString+Query5.fieldbyname('NG_ETD').AsString+'-'+ Query5.fieldbyname('SupplierName').AsString+#13#10;
          end;
          if Query5.fieldbyname('NG_ETA').AsString<>'' then
          begin
            query1.fieldbyname('NG_Memo').AsString:=query1.fieldbyname('NG_Memo').AsString+Query5.fieldbyname('ETA').AsString+'-'+ Query5.fieldbyname('SupplierName').AsString+#13#10;
          end;
          next;
        end;
      end;

      with  query6 do
      begin
        while not query6.eof do
        begin
          if query6.FieldByName('ETA').asstring='' then
             Query1.fieldbyname('S_ETA').AsString:=Query1.fieldbyname('S_ETA').AsString+query6.FieldByName('SupplierName').asstring+#13#10;
          if Query1.fieldbyname('S_ETA').AsString='' then
             Query1.fieldbyname('S_ETA').AsString:=query6.FieldByName('ETA').asstring+#13#10;

          if Query6.fieldbyname('ETA').AsString<>'' then
          begin
             query1.fieldbyname('S_MEMO').AsString:=query1.fieldbyname('S_MEMO').AsString+Query6.fieldbyname('ETA').AsString+'-'+ Query6.fieldbyname('SupplierName').AsString+#13#10;
          end;
          if Query6.fieldbyname('ETA').AsString='' then
          begin
             query1.fieldbyname('S_MEMO').AsString:=query1.fieldbyname('S_MEMO').AsString+'????/??/??'+'-'+ Query6.fieldbyname('SupplierName').AsString+#13#10;
          end;
          //
          if ((Query6.fieldbyname('NG_ETD').AsString<>'') and (Query6.fieldbyname('NG_ETA').AsString='')) then
          begin
            query1.fieldbyname('NG_Memo').AsString:=query1.fieldbyname('NG_Memo').AsString+Query6.fieldbyname('NG_ETD').AsString+'-'+ Query6.fieldbyname('SupplierName').AsString+#13#10;
          end;
          if Query6.fieldbyname('NG_ETA').AsString<>'' then
          begin
            query1.fieldbyname('NG_Memo').AsString:=query1.fieldbyname('NG_Memo').AsString+Query6.fieldbyname('ETA').AsString+'-'+ Query6.fieldbyname('SupplierName').AsString+#13#10;
          end;
          next;
        end;
      end;
      if (query1.fieldbyname('update_last').AsString<>'') then
      begin
        if (query1.fieldbyname('C_MEMO1').AsString <> query1.fieldbyname('C_MEMO').AsString) or (query1.fieldbyname('S_MEMO1').AsString <> query1.fieldbyname('S_MEMO').AsString) then
        begin
          with query9 do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('update ShoeTestPlan ');
            SQL.Add('set update_last = ''1'' ');
            SQL.Add('where TestNo = '''+query1.fieldbyname('TestNo').AsString+''' and ypdh = '''+query1.fieldbyname('ypdh').AsString+'''');
            execsql;
          end;
          query1.fieldbyname('update_last').AsString:='1';
        end else begin
          with query9 do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('update ShoeTestPlan ');
            SQL.Add('set update_last = ''0'' ');
            SQL.Add('where TestNo = '''+query1.fieldbyname('TestNo').AsString+''' and ypdh = '''+query1.fieldbyname('ypdh').AsString+'''');
            execsql;
          end;
          query1.fieldbyname('update_last').AsString:='0';
        end;
      end else begin
        with query9 do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('update ShoeTestPlan ');
          SQL.Add('set update_last = ''0'' ');
          SQL.Add('where TestNo = '''+query1.fieldbyname('TestNo').AsString+''' and ypdh = '''+query1.fieldbyname('ypdh').AsString+'''');
          execsql;
        end;
        query1.fieldbyname('update_last').AsString:='0';
      end;
      with query9 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('update ShoeTestPlan ');
        SQL.Add('set C_MEMO1 = '''+StringReplace(query1.fieldbyname('C_MEMO').AsString,'''', '''''',[rfReplaceAll])+''',S_MEMO1 = '''+StringReplace(query1.fieldbyname('S_MEMO').AsString,'''', '''''',[rfReplaceAll])+''' ');
        SQL.Add('where TestNo = '''+query1.fieldbyname('TestNo').AsString+''' and ypdh = '''+query1.fieldbyname('ypdh').AsString+'''');
        execsql;
      end;  
      post;
   end;
end;

procedure TShoePlan.Button3Click(Sender: TObject);
begin
   with  query1 do
   begin
   first;
      while not query1.eof do
      begin
        button2.click;
      next;
      end;

   end;
end;

procedure TShoePlan.CheckBox9Click(Sender: TObject);
begin
  if not checkbox9.checked then
  begin
     DBmemo5.Visible:=true;
     DBmemo6.Visible:=true;
  end;
  if checkbox9.checked then
  begin
     DBmemo5.Visible:=false;
     DBmemo6.Visible:=false;
  end;
end;




procedure TShoePlan.GCexcel();
begin
 with query10 do
    begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' select ypdh,');
    SQL.Add('case when giacong='''' then zsywjc when isnull(giacong,'''')<>'''' then giacong end zsywjc,');
    SQL.Add(' days from shoeplanGC');
    SQL.Add('left join clzl on clzl.cldh=shoeplanGC.clbh');
    SQL.Add('WHERE  ypdh = '''+Query1.fieldbyname('YPDH').AsString+''' group by  ypdh,zsywjc,days');
    Active:=false;
  end;
end;
procedure TShoePlan.CheckBox10Click(Sender: TObject);
begin
  if checkbox10.Checked then
  begin
      panel8.Visible:=true;
      query11.Active:=true;

  end;
  if not checkbox10.Checked then
  begin
      panel8.Visible:=false;
      query11.Active:=false;
  end;
end;

procedure TShoePlan.DBGridEh6CellClick(Column: TColumnEh);
begin
      Query1.RequestLive:=true;
      Query1.CachedUpdates:=true;
      with  query1 do
      begin
        edit;
        if Query11.fieldbyname('Testno').AsString<>'' then
           Query1.fieldbyname('Testno').AsString:=Query11.fieldbyname('Testno').AsString;
        if Query11.fieldbyname('Testno').AsString='' then
           Query1.fieldbyname('Testno').AsString:='NA';
      end;
end;

procedure TShoePlan.DBGridEh6CellMouseClick(Grid: TCustomGridEh;
  Cell: TGridCoord; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
      Query1.RequestLive:=true;
      Query1.CachedUpdates:=true;
      with  query1 do
      begin
        edit;
        if Query11.fieldbyname('Testno').AsString<>'' then
           Query1.fieldbyname('Testno').AsString:=Query11.fieldbyname('Testno').AsString;
        if Query11.fieldbyname('Testno').AsString='' then
           Query1.fieldbyname('Testno').AsString:='NA';
      end;
end;

procedure TShoePlan.Button4Click(Sender: TObject);
begin
  with showqry do
  begin
      active:=false;
      sql.Clear;
      sql.Add('select Groups,Type,''''YN from shoetestplanshow');
      active:=true;
  end;

end;

procedure TShoePlan.BitBtn4Click(Sender: TObject);
begin
  with ShowQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;

end;

procedure TShoePlan.BitBtn5Click(Sender: TObject);
begin
  if ShowQry.recordcount>0 then
  begin
      with ShowQry do
      begin
         requestlive:=true;
         cachedupdates:=true;
         edit;
         fieldbyname('YN').Value:='0';
      end;
  end;
end;

procedure TShoePlan.DBGridEh7DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
     if ShowQry.FieldByName('yn').value='0'  then
     begin
        DBGridEh7.canvas.Brush.Color:=clred;
        DBGridEh7.DefaultDrawColumnCell(Rect,DataCol,Column,State);
     end;
end;

procedure TShoePlan.BitBtn6Click(Sender: TObject);
begin
  if showQry.recordcount>0 then
  begin
      with showQry do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
      end;
  end;

end;

procedure TShoePlan.BitBtn7Click(Sender: TObject);
var y,m,a:string;
    NDate:TDateTime;
i:integer;
begin

  try
      ShowQry.first;
      for i:=1 to ShowQry.RecordCount do
        begin
          case ShowQry.updatestatus of
            usinserted:
              begin
                 ShowQry.edit;
                 UpdateSQLshow.apply(ukinsert);
                end;
            usmodified:
               begin
                if ShowQry.fieldbyname('YN').value='0'then
                begin
                  ShowQry.edit;
                  UpdateSQLshow.apply(ukdelete);
                end else
                begin
                  ShowQry.edit;
                  UpdateSQLshow.apply(ukModify);
                end;
               end;
          end;
         ShowQry.next;
        end;
  ShowQry.active:=false;
  ShowQry.cachedupdates:=false;
  ShowQry.requestlive:=false;
  ShowQry.active:=true;

  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TShoePlan.BitBtn8Click(Sender: TObject);
begin
  showQry.active:=false;
  showQry.cachedupdates:=false;
  showQry.requestlive:=false;
  showQry.active:=true;
end;

procedure TShoePlan.btnExcel_allClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query1.Active then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      eclapp.Cells.NumberFormatLocal:='@';
      for   i:=0   to   Query1.fieldcount-5   do
        begin
          eclApp.Cells(1,i+1):=DBGridEh1.fields[i].FieldName;
        end;
      Query1.First;
      j:=2;
      while   not  Query1.Eof   do
        begin
          for   i:=0   to   Query1.fieldcount-5   do
            begin
              eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='11';
            end;
          Query1.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      eclApp.Rows.RowHeight:= 30;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TShoePlan.Button5Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query4.Active then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   query4.fieldcount-4   do
        begin
          eclApp.Cells(1,i+1):=DBGridEh2.fields[i].FieldName;
        end;
      query4.First;
      j:=2;
      while   not  query4.Eof   do
        begin
          for   i:=0   to   query4.fieldcount-4   do
            begin
              eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='11';
            end;
          query4.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      eclApp.Rows.RowHeight:= 30;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TShoePlan.Button19Click(Sender: TObject);
var OrderListExcel:Variant;
    OrderExcFN,ColumnNM,Serino,SR,YPDH,Groups:string;
    offset,RowSIndex:integer;
    Serino_index,SR_index,YPDH_index,Groups_index:integer;
    Isbreak:boolean;
begin
  try
    OrderListExcel:=CreateOleObject('Excel.Application');
  except
    on E:Exception do
    begin
      Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
      Exit;
    end;
  end;
  //
  try
    if OpenDialog.Execute=true then
    begin
      Serino_index:=-1;
      SR_index:=-1;
      YPDH_index:=-1;
      Groups_index:=-1;
      //
      OrderExcFN:=OpenDialog.FileName;
      OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
      OrderListExcel.WorkSheets[1].Activate;
      //
      offset:=0;
      RowSIndex:=1;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,1];
        if ColumnNM='Type' then Serino_index:=1;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,2];
        if ColumnNM='SR#' then SR_index:=2;
        ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,3];
        if ColumnNM='YPDH' then YPDH_index:=3;
      ColumnNM:=OrderListExcel.Cells[RowSIndex+offset,4];
        if ColumnNM='Groups' then Groups_index:=4;
      //
      if ((Serino_index>0) and (SR_index>0)  and (YPDH_index>0) and (Groups_index>0)) then
      begin
        Isbreak:=false;
        RowSIndex:=1;
        repeat
           Application.ProcessMessages;
           InfoLable.Caption:='Count:'+inttostr(RowSIndex);
           RowSIndex:=RowSIndex+1;
           //Progress
           Serino:=OrderListExcel.Cells[RowSIndex+offset,Serino_index];
           SR:=OrderListExcel.Cells[RowSIndex+offset,SR_index];
           YPDH:=OrderListExcel.Cells[RowSIndex+offset,YPDH_index];
           Groups:=OrderListExcel.Cells[RowSIndex+offset,Groups_index];
           //
           if ((trim(Serino)<>'') and (trim(SR)<>'') and (trim(YPDH)<>'') and (trim(Groups)<>'')) then
           begin
              Query1.First;
              while not Query1.Eof do
              begin
                if ((SR=Query1.FieldByName('SR').AsString) and (Groups=Query1.FieldByName('groups').AsString) and (YPDH=Query1.FieldByName('YPDH').AsString)) then
                begin
                   with Query2 do
                   begin
                     Active:=false;
                     SQL.Clear;
                     SQL.Add('Update shoetestplan set Serino='''+Serino+''' where groups='''+Groups+''' and YPDH='''+YPDH+''' and  YPDH=(select YPDH from shoetestplan where YPDH='''+YPDH+''' and USERID='''+main.Edit1.Text+''')  ');
                     //funcObj.WriteErrorLog(sql.Text);
                     ExecSQL;
                   end;
                end else
                begin
                //
                end;
                Query1.Next;
              end;
           end;
           //
           if ((trim(Serino)='') or (trim(SR)='') or (trim(YPDH)='') or (trim(Groups)='')) then  Isbreak:=true;
           //
        until IsBreak=true;
        OrderListExcel.Quit;
        Showmessage('Success');
        BB1Click(nil);
      end else
      begin
        OrderListExcel.Quit;
        Showmessage('Excel not exact format!');
      end;
    end;
  except
    on E:Exception do
    begin
      Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
      OrderListExcel.Quit;
      Exit;
    end;
  end;
end;

procedure TShoePlan.BitBtn9Click(Sender: TObject);
begin
  if (Edit27.Text='') and (Edit28.Text='') and (Edit29.Text='') and (Edit30.Text='') and (Edit31.Text='') and (Edit32.Text='') and (Edit33.Text='') and (Edit34.Text='') and (CheckBox12.Checked=false) then
  begin
    ShowMessage('Pls enter at least one condition.');
    Abort;
  end;
  //
  with Query12 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add(' select shoetestplan.Serino, shoetestplan.groups, shoetestplan.groups2, ypzl.kfjd Stage, kfxxzl.DEVCODE SR, ');
    SQL.Add(' shoetest.TestNo, shoetest.TBReceiveDate, ETCTemp.OrginalETC, shoetest.ETC as NewETC, isnull(shoetest.ypdh,'''') as ypdh, ');
    SQL.Add(' YPZL.FD, ETCTemp.UserID as UpdateID, ETCTemp.UserDate as UpdateDate ');
    SQL.Add(' from shoetestplan ');
    SQL.Add(' left join shoetest on shoetest.testno=shoetestplan.testno ');
    SQL.Add(' left join ypzl on ypzl.ypdh=shoetestplan.ypdh ');
    SQL.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    SQL.Add(' left join ETCTemp on ETCTemp.testno = shoetestplan.testno ');
    SQL.Add(' where 1=1');
    if Edit31.Text <> '' then                                                  
      SQL.Add(' and shoetest.TestNo='''+Edit31.Text+''' ');
    if Edit27.Text <> '' then
      SQL.Add(' and kfxxzl.JiJie='''+Edit27.Text+''' ');
    if Edit28.Text <> '' then
      SQL.Add(' and ypzl.KFJD='''+Edit28.Text+''' ');
    if Edit29.Text <> '' then
      SQL.Add(' and kfxxzl.DevType='''+Edit29.Text+''' ');
    if Edit30.Text <> '' then
      SQL.Add(' and ypzl.Subtype='''+Edit30.Text+''' ');
    if Edit32.Text<>'' then
      SQL.Add(' and shoetestplan.groups = '''+Edit32.Text+''' ');
    if Edit33.Text<>'' then
      SQL.Add(' and shoetestplan.groups2 = '''+Edit33.Text+''' ');
    if Edit34.Text<>'' then
      SQL.Add(' and kfxxzl.devcode like '''+Edit34.Text+'%'' ');
    if CheckBox12.Checked=true then
    begin
      SQL.Add(' and convert(smalldatetime,convert(varchar,ETCTemp.Userdate,111)) between');
      SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' ');
    end;
    SQL.Add(' group by shoetestplan.Serino, shoetestplan.groups, shoetestplan.groups2, ypzl.kfjd, kfxxzl.DEVCODE, ');
    SQL.Add(' shoetest.TestNo, shoetest.TBReceiveDate, ETCTemp.OrginalETC, shoetest.ETC, shoetest.ypdh, YPZL.FD, ETCTemp.UserID,ETCTemp.UserDate ');
    SQL.Add('order by shoetestplan.Serino ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TShoePlan.Button6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query12.Active then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   DBGridEh8.Columns.Count-1   do
        begin
          eclApp.Cells(1,i+1):=DBGridEh8.Columns[i].Title.Caption;
        end;
      Query12.First;
      j:=2;
      while   not  Query12.Eof   do
        begin
          for   i:=0   to   DBGridEh8.Columns.Count-1   do
            begin
              eclApp.Cells(j,i+1):=DBGridEh8.Fields[i].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='11';
            end;
          Query12.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      eclApp.Rows.RowHeight:= 30;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

end.



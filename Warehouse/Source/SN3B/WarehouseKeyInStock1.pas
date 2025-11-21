unit WarehouseKeyInStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls ,dateutils, iniFiles,
  Menus;

type
  TWarehouseKeyInStock = class(TForm)
    Panel1: TPanel;
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
    bbt6: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query2: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1CKBH: TStringField;
    Query1CLBH: TStringField;
    Query1HGLB: TStringField;
    Query1QtyWH: TCurrencyField;
    Query1CFMID1: TStringField;
    Query1CFMDate1: TDateTimeField;
    Query1YWPM: TStringField;
    Label4: TLabel;
    CBX1: TComboBox;
    Label6: TLabel;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Label16: TLabel;
    CBX6: TComboBox;
    Query1UserID1: TStringField;
    Query1UserDate1: TDateTimeField;
    Query3: TQuery;
    Query1YN: TStringField;
    PopupMenu1: TPopupMenu;
    Confirm1: TMenuItem;
    Reset1: TMenuItem;
    Query1CFMID: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1CFMID2: TStringField;
    Query1CFMDate2: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Confirm1Click(Sender: TObject);
    procedure Reset1Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure readini();
  public
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
    IsHide_Warehouse_XT:String;
  end;

var
  WarehouseKeyInStock: TWarehouseKeyInStock;

implementation

uses main1, MaterialID1;

{$R *.dfm}
procedure TWarehouseKeyInStock.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  IsHide_Warehouse_XT:='N';
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  //
  TCurrencyField(Query1.FieldByName('QtyWH')).DisplayFormat:=WH_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('ALL');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('TC');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('GC');
    CBX6.ItemIndex:=0;
  end;
  //
end;

procedure TWarehouseKeyInStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TWarehouseKeyInStock.FormDestroy(Sender: TObject);
begin
  WarehouseKeyInStock:=nil;
end;

procedure TWarehouseKeyInStock.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TWarehouseKeyInStock.Button1Click(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select top 1.* from  KCCLMONTHAC');
    sql.add('left join KCCK on KCCK.CKBH=KCCLMONTHAC.CKBH ');
    sql.add('where 1=1 ');
    sql.add(' and KCCLMONTHAC.KCYEAR ='''+CBX1.Text+''' ');
    sql.add(' and KCCLMONTHAC.KCMONTH ='''+CBX2.Text+''' ');
    sql.add(' and KCCK.GSBH='''+main.Edit2.Text+'''');
    sql.Add(' and KCCLMONTHAC.CKBH='''+CBX3.Text+''' ');
    active:=true;
  end;
  if query2.RecordCount=0 then
  begin
    with query3 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('insert into KCCLMONTHAC (KCYEAR,KCMONTH,CKBH,CLBH,HGLB,QtyWH,QtyAc,UserID1,UserDate1,YN)');
      sql.Add('select KCYEAR,KCMONTH,KCCLMONTH_HG.CKBH,CLBH,HGLB,Qty,Qty,'''+main.Edit1.Text+''',getdate(),1');
      sql.Add('From KCCLMONTH_HG');
      sql.add('left join KCCK on KCCK.CKBH=KCCLMONTH_HG.CKBH ');
      sql.Add('where 1=1');
      sql.add(' and KCCLMONTH_HG.KCYEAR ='''+CBX1.Text+''' ');
      sql.add(' and KCCLMONTH_HG.KCMONTH ='''+CBX2.Text+''' ');
      sql.add(' and KCCK.GSBH='''+main.Edit2.Text+'''');
      sql.Add(' and KCCLMONTH_HG.CKBH='''+CBX3.Text+''' ');
      execsql;
    end;
  end;
  if ((query2.RecordCount>0) and (query2.FieldByName('UserDate').IsNull)) then
  begin
    with query3 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('update  KCCLMONTHAC');
      sql.Add('set UserID1='''+main.Edit1.Text+''',UserDate1=getdate() ');
      sql.Add('from KCCLMONTHAC');
      sql.add('left join KCCK on KCCK.CKBH=KCCLMONTHAC.CKBH ');
      sql.add('where 1=1 ');
      sql.add(' and KCCLMONTHAC.KCYEAR ='''+CBX1.Text+''' ');
      sql.add(' and KCCLMONTHAC.KCMONTH ='''+CBX2.Text+''' ');
      sql.add(' and KCCK.GSBH='''+main.Edit2.Text+'''');
      sql.Add(' and KCCLMONTHAC.CKBH='''+CBX3.Text+''' ');
      execsql;
    end;
  end;
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select KCCLMONTHAC.*,YWPM from KCCLMONTHAC');
    sql.add('left join CLZL on KCCLMONTHAC.CLBH=CLZL.CLDH');
    sql.add('left join KCCK on KCCK.CKBH=KCCLMONTHAC.CKBH ');
    sql.add('where 1=1 ');
    sql.add(' and KCCLMONTHAC.KCYEAR ='''+CBX1.Text+''' ');
    sql.add(' and KCCLMONTHAC.KCMONTH ='''+CBX2.Text+''' ');
    sql.add(' and KCCK.GSBH='''+main.Edit2.Text+''' ');
    if Edit1.Text<>'' then
      sql.add(' and KCCLMONTHAC.CLBH like '''+edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      sql.add(' and CLZL.YWPM like ''%'+edit2.Text+'%'' ');
    if CBX3.Text <> '' then
      sql.Add(' and KCCLMONTHAC.CKBH ='''+CBX3.Text+''' ');
    if CBX6.ItemIndex>0 then
      sql.Add(' and KCCLMONTHAC.HGLB ='''+CBX6.Text+''' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add(' and KCCLMONTHAC.HGLB<>''XT'' ');
    sql.add('order by KCYEAR,KCMONTH,KCCLMONTHAC.CKBH,HGLB,CLBH');
    //memo1.text:=sql.text;
    active:=true;
  end;
  
end;

procedure TWarehouseKeyInStock.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX3.Items.Clear;
    while not eof do
    begin
      CBX3.Items.Add(fieldbyname('CKBH').AsString);
      next;
    end;
    CBX3.ItemIndex:=0;
    active:=false;
  end;
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  AppDir:=ExtractFilePath(Application.ExeName);
  readini();
end;

procedure TWarehouseKeyInStock.BB4Click(Sender: TObject);
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

procedure TWarehouseKeyInStock.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
    fieldbyname('KCYEAR').Value:=CBX1.Text;
    fieldbyname('KCMONTH').Value:=CBX2.Text;
    fieldbyname('CKBH').Value:=CBX3.Text;
    fieldbyname('HGLB').Value:=CBX6.Text;
  end;
  bb5.enabled:=true;
  bb6.enabled:=true;
  DBGridEh1.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TWarehouseKeyInStock.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
          begin
             query1.edit;
             query1.FieldByName('USERDATE1').Value:=now;
             query1.FieldByName('USERID1').Value:=main.edit1.text;
             Query1.FieldByName('YN').Value:='1';
             upsql1.apply(ukinsert);
          end;
        usmodified:
          begin
            if query1.fieldbyname('YN').value='0' then
            begin
              upsql1.apply(ukdelete);
            end else
            begin
              query1.edit;
              query1.FieldByName('USERID1').Value:=main.edit1.text;
              query1.FieldByName('USERdate1').Value:=now;
              upsql1.apply(ukmodify);
            end;
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

procedure TWarehouseKeyInStock.BB6Click(Sender: TObject);
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

procedure TWarehouseKeyInStock.DBGridEh1EditButtonClick(Sender: TObject);
begin
  MaterialID:=TMaterialID.create(self);
  MaterialID.Label3.Caption:='N3B';
  MaterialID.show;
end;

procedure TWarehouseKeyInStock.Query1AfterOpen(DataSet: TDataSet);
begin
  if ((query1.FieldByName('CFMID1').AsString='') or (query1.FieldByName('CFMID1').AsString='NO')) then
  begin
    BB2.Enabled:=true;
    BB4.Enabled:=true;
    Confirm1.Enabled:=true;
    Reset1.Enabled:=false;
  end else
  begin
    BB2.Enabled:=false;
    BB4.Enabled:=false;
    Confirm1.Enabled:=False;
    Reset1.Enabled:=true;
  end;

end;

procedure TWarehouseKeyInStock.Confirm1Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' update KCCLMONTHAC') ;
    sql.Add(' set CFMID1= '''+main.Edit1.Text+''' ,CFMDate1=getdate()');
    sql.Add(' from KCCLMONTHAC');
    sql.add(' left join KCCK on KCCK.CKBH=KCCLMONTHAC.CKBH ');
    sql.add(' where 1=1 ');
    sql.add(' and KCCLMONTHAC.KCYEAR ='''+CBX1.Text+''' ');
    sql.add(' and KCCLMONTHAC.KCMONTH ='''+CBX2.Text+''' ');
    sql.add(' and KCCK.GSBH='''+main.Edit2.Text+'''');
    sql.Add(' and KCCLMONTHAC.CKBH='''+CBX3.Text+''' ');
    execsql;
  end;
  button1.Click;
end;

procedure TWarehouseKeyInStock.Reset1Click(Sender: TObject);
begin
  if ((query1.FieldByName('CFMID2').AsString='') or (query1.FieldByName('CFMID2').AsString='NO')) then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' update KCCLMONTHAC') ;
      sql.Add(' set CFMID1= ''NO'' ');
      sql.Add(' from KCCLMONTHAC');
      sql.add(' left join KCCK on KCCK.CKBH=KCCLMONTHAC.CKBH ');
      sql.add(' where 1=1 ');
      sql.add(' and KCCLMONTHAC.KCYEAR ='''+CBX1.Text+''' ');
      sql.add(' and KCCLMONTHAC.KCMONTH ='''+CBX2.Text+''' ');
      sql.add(' and KCCK.GSBH='''+main.Edit2.Text+'''');
      sql.Add(' and KCCLMONTHAC.CKBH='''+CBX3.Text+''' ');
      execsql;
    end;
    button1.Click;
  end else
  begin
    showmessage('Account Manager already confirm, Can not Reset!');
    abort;
  end;
end;

end.

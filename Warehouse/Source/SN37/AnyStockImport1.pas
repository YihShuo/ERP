unit AnyStockImport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls ,dateutils, iniFiles,
  Menus,comobj, ComCtrls;

type
  TAnyStockImport = class(TForm)
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
    Label4: TLabel;
    CBX1: TComboBox;
    Label6: TLabel;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Query3: TQuery;
    Label5: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1CKBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1dwbh: TStringField;
    Query1KCBH: TStringField;
    Query1KCMC: TStringField;
    Query1DFL: TStringField;
    Query1STT: TStringField;
    Query1LBBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Button7: TButton;
    Button5: TButton;
    Query1LOAI: TStringField;
    Button2: TButton;
    Label7: TLabel;
    DTP1: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure readini();
  public
    WH_Decimal:String;
    WH_DiplayFormat:String;
    NgayKK,VTGC:string;
    { Public declarations }
    IsHide_Warehouse_XT:String;
  end;

var
  AnyStockImport: TAnyStockImport;
  NDate:TDate;

implementation

uses main1,fununit, Import1, WareStock_Print_Yearly_Import1,
  AnyStock_PrintCard_Import1, WareStock_Print_Monthly_Import1;

{$R *.dfm}
procedure TAnyStockImport.readini();
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
end;

procedure TAnyStockImport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAnyStockImport.FormDestroy(Sender: TObject);
begin
  AnyStockImport:=nil;
end;

procedure TAnyStockImport.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TAnyStockImport.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:String;
    sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(CBX1.Text), StrToInt(CBX2.Text), 1);
  DecodeDate(sDate, iYear, iMonth, iDay); //找庫存相關的數據
  IncAMonth(iYear, iMonth, iDay, -1);
  sYear := FloatToStr(iYear);
  sMonth := FloatToStr(iMonth);
  if (Length(sMonth) = 1) then
    sMonth := '0' + sMonth;
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  Select KCCLMONTH_Import.KCYEAR,KCCLMONTH_Import.KCMONTH,KCCLMONTH_Import.CKBH,KCCLMONTH_Import.CLBH,YWPM, dwbh,KCCLMONTH_Import.KCBH,kczl.KCMC, kczls.DFL  ');
    SQL.Add('  		,KCCLMONTH_Import.STT,KCCLMONTH_Import.LBBH,KCCLMONTH_Import.Qty, KCCLMONTH_Import.UserID, KCCLMONTH_Import.UserDate,KCCLMONTH_Import.YN  ');
    SQL.Add('     ,case when ((KCZLS.DFL is not null) or (KCZLS.DFL<>'''')) then KCZLS.DFL else KCZL.KCMC end as LOAI'); 
    SQL.Add('  From KCCLMONTH_Import  ');
    SQL.Add('  Left join kczls   ');
    SQL.Add('  on KCCLMONTH_Import.CKBH=KCZLS.CKBH and KCCLMONTH_Import.CLBH=KCZLS.CLBH  ');
    //SQL.Add('  Left join kczl on kczls.CKBH=kczl.CKBH and kczls.KCBH=kczl.KCBH  ');
    SQL.Add('  Left join kczl on kczls.CKBH=kczl.CKBH and KCCLMONTH_Import.KCBH=kczl.KCBH  ');
    SQL.Add('  Left join clzl on KCCLMONTH_Import.CLBH=CLZL.cldh  ');
    SQL.Add('  Where KCCLMONTH_Import.kcyear='''+CBX1.Text+''' and KCCLMONTH_Import.KCMONTH='''+CBX2.Text+''' and KCCLMONTH_Import.CKBH='''+CBX3.Text+'''  ');
    if Edit1.Text<>'' then
      SQL.Add(' and KCCLMONTH_Import.CLBH like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add(' and CLZL.YWPM like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add(' and KCCLMONTH_Import.KCBH='''+Edit3.Text+''' ');
    SQL.Add('   Order by KCCLMONTH_Import.STT,KCCLMONTH_Import.CLBH');
   //funcobj.WriteErrorLog(sql.Text);
   active:=true;
  end;
  if query1.RecordCount >0 then
  begin
    BB4.Enabled := true;
    bbt6.Enabled := true;
  end;
  
end;

procedure TAnyStockImport.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  with query2 do
  begin
  active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
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
  DTP1.Date:=NDate;
end;

procedure TAnyStockImport.BB4Click(Sender: TObject);
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

procedure TAnyStockImport.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
  with query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          if (Query1.FieldByName('YN').AsString = '1') then
          begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := NDate;
            UpSQL1.Apply(ukModify);
          end
        end;
      end;

      Query1.Next;
    end;
    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;

end;

procedure TAnyStockImport.BB6Click(Sender: TObject);
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


procedure TAnyStockImport.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         if ((DBGridEh1.Fields[i].FieldName = 'KCMONTH') or (DBGridEh1.Fields[i].FieldName = 'STT')) then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
         else
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
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

procedure TAnyStockImport.BitBtn1Click(Sender: TObject);
begin
  Import:=TImport.Create(self);
  Import.Show;
end;

procedure TAnyStockImport.Button7Click(Sender: TObject);
begin
  if Edit3.Text='' then
  begin
    showmessage('Pls key in Shelves');
    abort;
  end;
  if  Messagedlg(Pchar('Ngay kiem ke hien thi theo ngay hien tai hay ngay StockDate ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     NgayKK:='Y' ;
  end else
  begin
     NgayKK:='N' ;
  end;
  WareStock_Print_Yearly_Import:=TWareStock_Print_Yearly_Import.Create(self);
  WareStock_Print_Yearly_Import.Quickrep1.prepare;
  WareStock_Print_Yearly_Import.PageN.caption:=inttostr(WareStock_Print_Yearly_Import.quickrep1.QRPrinter.pagecount);
  WareStock_Print_Yearly_Import.Quickrep1.preview;
  WareStock_Print_Yearly_Import.Free;
end;

procedure TAnyStockImport.Button5Click(Sender: TObject);
begin
  if Edit3.Text='' then
  begin
    showmessage('Pls key in Shelves');
    abort;
  end;
  if  Messagedlg(Pchar('Ngay kiem ke hien thi theo ngay hien tai hay ngay StockDate ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     NgayKK:='Y' ;
  end else
  begin
     NgayKK:='N' ;
  end;
  if  Messagedlg(Pchar('Vat tu binh thuong hay vat tu gia cong ?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     VTGC:='N' ;
  end else
  begin
     VTGC:='Y' ;
  end;
  AnyStock_PrintCard_Import:=TAnyStock_PrintCard_Import.create(self);
  AnyStock_PrintCard_Import.quickrep1.prepare;
  AnyStock_PrintCard_Import.QRCompositeReport1.Preview;
  AnyStock_PrintCard_Import.quickrep1.preview;
  AnyStock_PrintCard_Import.free;
end;

procedure TAnyStockImport.Button2Click(Sender: TObject);
begin
  if Edit3.Text='' then
  begin
    showmessage('Pls key in Shelves');
    abort;
  end;
  WareStock_Print_Monthly_Import:=TWareStock_Print_Monthly_Import.Create(self);
  WareStock_Print_Monthly_Import.Quickrep1.prepare;
  WareStock_Print_Monthly_Import.PageN.caption:=inttostr(WareStock_Print_Monthly_Import.quickrep1.QRPrinter.pagecount);
  WareStock_Print_Monthly_Import.Quickrep1.preview;
  WareStock_Print_Monthly_Import.Free;
end;

end.

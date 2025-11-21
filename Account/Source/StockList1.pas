unit StockList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, Grids, DBGrids, StdCtrls, comobj, ExtCtrls,
  GridsEh, DBGridEh,EhlibBDE, ComCtrls, iniFiles;

type
  TStockList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Edit3: TEdit;
    Button2: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button3: TButton;
    DB1: TCheckBox;
    Query1: TQuery;
    DS1: TDataSource;
    Matsite: TQuery;
    Query1CLBH: TStringField;
    Query1QTY: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1CWBH: TStringField;
    Query1KCBH: TStringField;
    Label8: TLabel;
    Edit4: TEdit;
    Query1CKBH: TStringField;
    Query1LBBH: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGridEh;
    DBGrid2: TDBGridEh;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    CurrencyField1: TCurrencyField;
    StringField8: TStringField;
    StringField9: TStringField;
    DS2: TDataSource;
    Label16: TLabel;
    CBX6: TComboBox;
    Query2HGLB: TStringField;
    TabSheet3: TTabSheet;
    DBGridEh1: TDBGridEh;
    Query3: TQuery;
    DS3: TDataSource;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query2VNPrice: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Query3KCYEAR: TStringField;
    Query3KCMONTH: TStringField;
    Query3CKBH: TStringField;
    Query3CLBH: TStringField;
    Query3HGLB: TStringField;
    Query3CNO: TStringField;
    Query3Qty: TCurrencyField;
    Query3YWPM: TStringField;
    Query3DWBH: TStringField;
    Query3KCBH: TStringField;
    Query3CWBH: TStringField;
    Label7: TLabel;
    NotInCKBHEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  StockList: TStockList;

implementation

uses StockList_Print1, main1,FunUnit;

{$R *.dfm}
procedure TStockList.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  IsHide_Warehouse_XT:='N';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query3.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
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
    CBX6.Items.Add('NK1');
    CBX6.Items.Add('TC1');
    CBX6.Items.Add('HD1');
    CBX6.Items.Add('KD1');
    CBX6.Items.Add('H11');
    CBX6.Items.Add('NQ');
    CBX6.Items.Add('NKNQ');
    CBX6.ItemIndex:=0;
  end;

end;
//
procedure TStockList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TStockList.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
begin
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX1.Items.Clear;
    while not eof do
    begin
      CBX1.Items.Add(fieldbyname('CKBH').AsString);
      next;
    end;
    active:=false;
    CBX1.Items.Add('ALL');
  end;
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for j:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[j])=myYear then
    begin
      CBX2.ItemIndex:=j;
      break;
    end;
  end;
  for j:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[j])=myMonth then
    begin
      CBX3.ItemIndex:=j-1;
      break;
    end;
  end;
  readini();
end;

procedure TStockList.Button1Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.CWBH');
      sql.add('from KCCLMONTH');
      sql.add('left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH');
      sql.add('left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCLMONTH.CLBH ');
      sql.add('left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH ');
      sql.add('where KCCLMONTH.KCYEAR='+''''+CBX2.Text+'''');
      sql.add('      and KCCLMONTH.KCMONTH='+''''+CBX3.Text+'''');
      sql.add('      and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.Add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if not DB1.Checked then
        sql.add('    and KCCLMONTH.Qty<>0');
      if CBX1.text<>'ALL' then
        sql.add('    and KCCLMONTH.CKBH like '+''''+CBX1.Text+'%'+'''')
      else
        sql.add('    and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      if NotInCKBHEdit.Text<>'' then
        sql.add('    and KCCLMONTH.CKBH<>'''+NotInCKBHEdit.Text+'''');
      sql.add('      and KCCK.GSBH='+''''+main.edit2.Text+'''');
      // sql.add('order by KCCLMONTH.CLBH') ;
      active:=true;
    end;
  end else if PC1.ActivePageIndex=1 then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.CWBH');
      sql.add('from KCCLMONTH_HG KCCLMONTH');
      sql.add('left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH');
      sql.add('left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCLMONTH.CLBH ');
      sql.add('left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH ');
      sql.add('where KCCLMONTH.KCYEAR='+''''+CBX2.Text+'''');
      sql.add('      and KCCLMONTH.KCMONTH='+''''+CBX3.Text+'''');
      sql.add('      and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.Add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if CBX6.ItemIndex>0 then
        sql.add('    and KCCLMONTH.HGLB='''+CBX6.Text+''' ');
      if not DB1.Checked then
        sql.add('    and KCCLMONTH.Qty<>0');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
        sql.add('    and KCCLMONTH.HGLB<>''XT'' ');
      if CBX1.text<>'ALL' then
        sql.add('    and KCCLMONTH.CKBH like '+''''+CBX1.Text+'%'+'''')
      else
        sql.add('    and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      if NotInCKBHEdit.Text<>'' then
        sql.add('    and KCCLMONTH.CKBH<>'''+NotInCKBHEdit.Text+'''');
      sql.add('      and KCCK.GSBH='+''''+main.edit2.Text+'''');
      //sql.add('order by KCCLMONTH.CLBH') ;
      active:=true;
    end;
  end else if PC1.ActivePageIndex=2 then
  begin
    with query3 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,case when CNO=''ZZZZ'' then null else CNO end as CNO,KCCLMONTH.Qty,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.CWBH');
      sql.add('from KCCLMONTH_HGBH KCCLMONTH');
      sql.add('left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH');
      sql.add('left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCLMONTH.CLBH ');
      sql.add('left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH ');
      sql.add('where KCCLMONTH.KCYEAR='+''''+CBX2.Text+'''');
      sql.add('      and KCCLMONTH.KCMONTH='+''''+CBX3.Text+'''');
      sql.add('      and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.Add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if CBX6.ItemIndex>0 then
        sql.add('    and KCCLMONTH.HGLB='''+CBX6.Text+''' ');
      if not DB1.Checked then
        sql.add('    and KCCLMONTH.Qty<>0');
      if IsHide_Warehouse_XT='Y' then
        sql.add('    and KCCLMONTH.HGLB<>''XT'' ');
      if CBX1.text<>'ALL' then
        sql.add('    and KCCLMONTH.CKBH like '+''''+CBX1.Text+'%'+'''')
      else
        sql.add('    and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      if NotInCKBHEdit.Text<>'' then
        sql.add('    and KCCLMONTH.CKBH<>'''+NotInCKBHEdit.Text+'''');
      sql.add('      and KCCK.GSBH='+''''+main.edit2.Text+'''');
      //sql.add('order by KCCLMONTH.CLBH') ;
      active:=true;
    end;
  end;
end;

procedure TStockList.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
  if PC1.ActivePageIndex=0 then
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
      eclApp.Cells(1,1):='NO';
      for i:=0 to DBGrid1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGrid1.Columns[i].Title.Caption;
      end;
      query1.First;
      j:=2;
      while   not  query1.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid1.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+2):=DBGrid1.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
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
  if PC1.ActivePageIndex=1 then
  begin
    if query2.Active then
    begin
      if query2.recordcount=0 then
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
      eclApp.Cells(1,1):='NO';
      for i:=0 to DBGrid2.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGrid2.Columns[i].Title.Caption;
      end;
      query2.First;
      j:=2;
      while   not  query2.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid2.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+2):=DBGrid2.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        query2.Next;
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
  if PC1.ActivePageIndex=2 then
  begin
    if query3.Active then
    begin
      if query3.recordcount=0 then
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
      eclApp.Cells(1,1):='NO';
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh1.Columns[i].Title.Caption;
      end;
      query3.First;
      j:=2;
      while   not  query3.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+2):=DBGridEh1.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        query3.Next;
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

procedure TStockList.Button3Click(Sender: TObject);
var i:integer;
begin
  StockList_Print:=TStockList_Print.create(self);
  StockList_Print.quickrep1.prepare;
  i:=StockList_Print.quickrep1.qrprinter.pagecount;
  StockList_Print.page1.caption:=inttostr(i);
  StockList_Print.quickrep1.preview;
  StockList_Print.free;
end;

procedure TStockList.FormDestroy(Sender: TObject);
begin
  StockList:=nil;
end;

end.

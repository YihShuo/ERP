unit scandata1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, ComCtrls,
    Buttons,
  DBCtrls, Mask, Menus, ExtDlgs,comobj,jpeg;
type
  TScanData = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    ddzledit: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    QryOrder: TQuery;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    QryOrderDDBH: TStringField;
    QryOrderexedate: TStringField;
    QryOrderindate: TStringField;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Panel2: TPanel;
    Button2: TButton;
    Button5: TButton;
    Label2: TLabel;
    QryOrderGSBH: TStringField;
    exedetail: TQuery;
    Panel4: TPanel;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    Label5: TLabel;
    Label6: TLabel;
    DataSource4: TDataSource;
    QryOrderShoeName: TStringField;
    QryOrderPO: TStringField;
    QryOrderStockNO: TStringField;
    QryOrderColor: TStringField;
    QryOrderSize: TStringField;
    QryOrderQtyPairs: TIntegerField;
    DTP2: TDateTimePicker;
    Label7: TLabel;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanData: TScanData;

implementation

uses scandata_Print1, scandataout1, FunUnit;

{$R *.dfm}

procedure TScanData.Button1Click(Sender: TObject);
begin
  with qryorder do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111) as exedate,CONVERT(char(10), ywcp.indate,111) as indate,');
    sql.add('xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'',xxzl.LOGO as ''Size'', sum(YWCP.Qty) as ''Qty(Pairs)'' FROM YWCP');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.add('left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.XieXing');
    sql.add('where YWCP.DDBH is not null');
    if ddzledit.Text<>'' then
      sql.add('and YWCP.DDBH like '+''''+'%'+ddzledit.Text+'%'+'''');
    if combobox1.ItemIndex=1 then
    begin
      sql.add('and CONVERT(char(10), ywcp.exedate,111) Between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ') ;
    end;
    if combobox1.ItemIndex=0  then
    begin
      sql.add('and CONVERT(char(10), ywcp.INDATE,111) Between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ') ;
    end;
    if combobox2.text<>'' then
      sql.add('and DDZL.GSBH='''+combobox2.text+''' ');
    sql.add('group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111),CONVERT(char(10), ywcp.indate,111),xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,xxzl.LOGO');
    sql.add('order by ywcp.DDBH');
    active:=true;
  end;
  if combobox1.text='EXEDATE出貨' then
  begin
    with exedetail do
    begin
      active:=false;
      sql.Clear;
      sql.add('SELECT YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111) as exedate,');
      sql.add('xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'',xxzl.LOGO as ''Size'', sum(YWCP.Qty) as ''Qty(Pairs)'' FROM YWCP');
      sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
      sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
      sql.add('left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.XieXing');
      sql.add('where YWCP.DDBH is not null');
      if ddzledit.Text<>'' then
        sql.add('and YWCP.DDBH like '+''''+'%'+ddzledit.Text+'%'+'''');
      sql.add('and CONVERT(char(10), ywcp.exedate,111) Between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ') ;
      if combobox2.text<>'' then
        sql.add('and DDZL.GSBH='''+combobox2.text+''' ');
      sql.add('group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111),xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,xxzl.LOGO');
      sql.add('order by ywcp.DDBH');
      active:=true;
    end;
    button2.Enabled:=True;
    button5.Enabled:=True;
    button3.Enabled:=false;
    button4.Enabled:=false;
   end;

   if combobox1.text='INDATE入庫' then
   begin
    with exedetail do
      begin
      active:=false;
      sql.Clear;
      sql.add('SELECT YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.indate,111) as indate,');
      sql.add('xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'',xxzl.LOGO as ''Size'', sum(YWCP.Qty) as ''Qty(Pairs)'' FROM YWCP');
      sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
      sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
      sql.add('left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.XieXing');
      sql.add('where YWCP.DDBH is not null');
      if ddzledit.Text<>'' then
        sql.add('and YWCP.DDBH like '+''''+'%'+ddzledit.Text+'%'+'''');
      sql.add('and CONVERT(char(10), ywcp.indate,111) Between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ') ;
      if combobox2.text<>'' then
        sql.add('and DDZL.GSBH='''+combobox2.text+''' ');
      sql.add('group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.indate,111),xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,xxzl.LOGO');
      sql.add('order by ywcp.DDBH');
      active:=true;
    end;
    button2.Enabled:=false;
    button5.Enabled:=false;
    button3.Enabled:=True;
    button4.Enabled:=True;
    end;
end;

procedure TScanData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;                       
end;

procedure TScanData.FormCreate(Sender: TObject);
var NDate:TDate;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  DTP1.date:=NDate-3;
  DTP2.date:=NDate;
end;
procedure TScanData.Button2Click(Sender: TObject);
begin

  scandata_Print:=Tscandata_Print.Create(nil);
  scandata_Print.quickrep1.prepare;
  scandata_Print.quickrep1.preview;
  scandata_Print.Free;

end;

procedure TScanData.Button5Click(Sender: TObject);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j:integer;
  workRange : OleVariant;
  workSheet : OleVariant;
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
    eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
    eclApp.Columns[1].ColumnWidth := 12;
    eclApp.Columns[2].ColumnWidth := 23;
    eclApp.Columns[3].ColumnWidth := 13;
    eclApp.Columns[4].ColumnWidth := 10;
    eclApp.Columns[5].ColumnWidth := 15;
    eclApp.Columns[6].ColumnWidth := 21;
    eclApp.Columns[7].ColumnWidth := 12;
    eclApp.Columns[8].ColumnWidth := 12;
    eclApp.ActiveSheet.Rows[6].Font.Bold := True;
    eclApp.ActiveSheet.Rows[5].Font.Bold := True;
    eclApp.ActiveSheet.Rows[2].Font.Bold := True;
    eclApp.Range['B2','F2'].Merge;
    eclApp.Range['D3','E3'].Merge;
    eclApp.Cells(2,2):='PHIEU XUAT KHO THANH PHAM THANG';
    eclApp.Cells(3,4):='出成品單';
    eclApp.ActiveSheet.Rows[2].Font.Size:= 20;
    eclApp.ActiveSheet.Rows[3].Font.Size:= 20;
    eclApp.Cells(5,2):='KHACH HANG客人:';
    eclApp.Cells(5,3):=exedetail.FieldByName('gsbh').value;
    eclApp.Cells(5,6):='NGAY出貨日:';
    eclApp.Cells(5,7):=exedetail.FieldByName('exedate').value;
    eclApp.Cells(6,1):='PACK NO';
    eclApp.Cells(6,2):='SHOE NAME';
    eclApp.Cells(6,3):='P.O.#';
    eclApp.Cells(6,4):='MAN PO';
    eclApp.Cells(6,5):='STOCK NO';
    eclApp.Cells(6,6):='COLOR';
    eclApp.Cells(6,7):='SIZE';
    eclApp.Cells(6,8):='Qty(PAIRS)';
    exedetail.First;
    j:=7;
    while   not  exedetail.Eof   do
    begin
      for   i:=1   to   exedetail.fieldcount-1 do
      begin
        eclApp.Cells(j,1):=exedetail.FieldByName('DDBH').value;
        eclApp.Cells(j,2):=exedetail.FieldByName('SHOE NAME').value;
        eclApp.Cells(j,3):=exedetail.FieldByName('P.O.#').value;
        eclApp.Cells(j,4):=exedetail.FieldByName('P.O.#').value;
        eclApp.Cells(j,5):=exedetail.FieldByName('STOCK NO').value;
        eclApp.Cells(j,6):=exedetail.FieldByName('COLOR').value;
        eclApp.Cells(j,7):=exedetail.FieldByName('SIZE').value;
        eclApp.Cells(j,8):=exedetail.FieldByName('Qty(PAIRS)').value;
      end;
      exedetail.Next;
      inc(j);
      end;
      eclApp.Cells(j+1,1):='CHU QUAN';
      eclApp.Cells(j+2,1):='主管';
      eclApp.Cells(j+1,4):='THU KHO';
      eclApp.Cells(j+2,4):='倉庫幹部';
      eclApp.Cells(j+1,6):='XUAT NHAP KHAU';
      eclApp.Cells(j+2,6):='進出口';
      eclApp.ActiveSheet.Rows[j+1].Font.Bold := True;
      eclApp.ActiveSheet.Rows[j+2].Font.Bold := True;
      //eclapp.columns.autofit;
      eclapp.columns.HorizontalAlignment := -4152;
      showmessage('Succeed.');
      eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
      eclApp.Visible:=True;
      except
      on   F:Exception   do
        showmessage(F.Message);
      end;
end;

procedure TScanData.Button4Click(Sender: TObject);
var
  OlePropertyGet,eclApp,WorkBook:olevariant;
  i,j:integer;
  workRange : OleVariant;
  workSheet : OleVariant;
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
    eclApp.ActiveSheet.Cells.NumberFormatLocal:='@';//將儲存格改成文字格式
    eclApp.Columns[1].ColumnWidth := 12;
    eclApp.Columns[2].ColumnWidth := 23;
    eclApp.Columns[3].ColumnWidth := 13;
    eclApp.Columns[4].ColumnWidth := 10;
    eclApp.Columns[5].ColumnWidth := 15;
    eclApp.Columns[6].ColumnWidth := 21;
    eclApp.Columns[7].ColumnWidth := 12;
    eclApp.Columns[8].ColumnWidth := 12;
    eclApp.ActiveSheet.Rows[6].Font.Bold := True;
    eclApp.ActiveSheet.Rows[5].Font.Bold := True;
    eclApp.ActiveSheet.Rows[2].Font.Bold := True;
    eclApp.Range['B2','F2'].Merge;
    eclApp.Range['D3','E3'].Merge;
    eclApp.Cells(2,2):='PHIEU NHAP KHO THANH PHAM THANG';
    eclApp.Cells(3,4):='入成品單';
    eclApp.ActiveSheet.Rows[2].Font.Size:= 20;
    eclApp.ActiveSheet.Rows[3].Font.Size:= 20;
    eclApp.Cells(5,2):='KHACH HANG客人:';
    eclApp.Cells(5,3):=exedetail.FieldByName('gsbh').value;
    eclApp.Cells(5,6):='NGAY入貨日:';
    eclApp.Cells(5,7):=exedetail.FieldByName('indate').value;
    eclApp.Cells(6,1):='PACK NO';
    eclApp.Cells(6,2):='SHOE NAME';
    eclApp.Cells(6,3):='P.O.#';
    eclApp.Cells(6,4):='MAN PO';
    eclApp.Cells(6,5):='STOCK NO';
    eclApp.Cells(6,6):='COLOR';
    eclApp.Cells(6,7):='SIZE';
    eclApp.Cells(6,8):='Qty(PAIRS)';
    exedetail.First;
    j:=7;
    while   not  exedetail.Eof   do
    begin
      for   i:=1   to   exedetail.fieldcount-1 do
      begin
        eclApp.Cells(j,1):=exedetail.FieldByName('DDBH').value;
        eclApp.Cells(j,2):=exedetail.FieldByName('SHOE NAME').value;
        eclApp.Cells(j,3):=exedetail.FieldByName('P.O.#').value;
        eclApp.Cells(j,4):=exedetail.FieldByName('P.O.#').value;
        eclApp.Cells(j,5):=exedetail.FieldByName('STOCK NO').value;
        eclApp.Cells(j,6):=exedetail.FieldByName('COLOR').value;
        eclApp.Cells(j,7):=exedetail.FieldByName('SIZE').value;
        eclApp.Cells(j,8):=exedetail.FieldByName('Qty(PAIRS)').value;
      end;
      exedetail.Next;
      inc(j);
      end;
      eclApp.Cells(j+1,1):='CHU QUAN';
      eclApp.Cells(j+2,1):='主管';
      eclApp.Cells(j+1,4):='THU KHO';
      eclApp.Cells(j+2,4):='倉庫幹部';
      eclApp.ActiveSheet.Rows[j+1].Font.Bold := True;
      eclApp.ActiveSheet.Rows[j+2].Font.Bold := True;
      //eclapp.columns.autofit;
      eclapp.columns.HorizontalAlignment := -4152;
      showmessage('Succeed.');
      eclApp.ActiveSheet.PageSetup.Orientation := 2; //列印直=1,橫式=2
      eclApp.Visible:=True;
      except
      on   F:Exception   do
        showmessage(F.Message);
      end;
end;

procedure TScanData.Button3Click(Sender: TObject);
begin
  scandataout:=Tscandataout.Create(nil);
  scandataout.quickrep1.prepare;
  scandataout.quickrep1.preview;
  scandataout.Free;
end;

procedure TScanData.Button6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  QryOrder.active  then
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
        eclapp.Cells.NumberFormatLocal:='@';
        {eclApp.Cells(1,1):='PACK NO';
        eclApp.Cells(1,2):='INDATE';
        eclApp.Cells(1,3):='EXEDATE';
        eclApp.Cells(1,4):='Shoe Name';
        eclApp.Cells(1,5):='P.O.#';
        eclApp.Cells(1,6):='Stock NO';
        eclApp.Cells(1,7):='Color';
        eclApp.Cells(1,8):='Size';
        eclApp.Cells(1,9):='Qty(Pairs)'; }
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
        end;
        QryOrder.First;
        j:=2;
        while   not   QryOrder.Eof   do
        begin
          for   i:=0   to  DBGridEh1.fieldcount-1  do
          begin
            eclApp.Cells[j,i+1].NumberFormatLocal:='@';
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
          end;
          QryOrder.Next;
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

end.

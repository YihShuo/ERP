unit scandata1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, ComCtrls,
    Buttons,dateutils,
  DBCtrls, Mask, Menus, ExtDlgs,comobj,jpeg;
type
  TScanData = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Query1: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    QryOrder: TQuery;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    ComboBox1: TComboBox;
    Label6: TLabel;
    DTP2: TDateTimePicker;
    Label7: TLabel;
    Button6: TButton;
    Button7: TButton;
    QryOrderDDBH: TStringField;
    QryOrderIndate: TStringField;
    QryOrderexedate: TStringField;
    QryOrderTestNo: TStringField;
    QryOrderShoeName: TStringField;
    QryOrderStockNO: TStringField;
    QryOrderColor: TStringField;
    QryOrderQty: TFloatField;
    Label2: TLabel;
    Edit2: TEdit;
    QryOrderGSBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure QryOrderAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetVietDate(myDate:TDateTime):string;
  end;

var
  ScanData: TScanData;

implementation

uses scandata_Print1 , FunUnit, main1;

{$R *.dfm}


function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

function TScanData.GetVietDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:='Ngay '+Format('%.2d',[myDay])+' 日 thang '+Format('%.2d',[myMonth])+' 月 nam '+inttostr(myYear)+' 年';
end;

procedure TScanData.Button1Click(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then
  begin
    with qryorder do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' Select ypzl.YPDH as DDBH,ypzl.GSDH as GSBH,CONVERT(char(10),ShoeTest.Complete,111) as Indate,'''' as Exedate,Shoetest.TestNo,kfxxzl.XieMing as ''Shoe Name'' ');
      sql.Add('      ,ShoeTest.Article as ''Stock NO'',kfxxzl.YSSM as ''Color'',sum(shoetest2.Qty) as Qty ');
      sql.Add(' From ShoeTest  ');
      sql.Add(' Left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2  on ShoeTest.TestNo=shoetest2.TestNo ');
      sql.Add(' Left join ypzl on ShoeTest.YPDH=ypzl.YPDH ');
      sql.Add(' Left join kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
      sql.Add(' Where Convert(varchar,shoetest.complete, 111) between ');
      sql.add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ') ;
      sql.Add(' and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
      sql.Add(' and ypzl.GSDH='''+main.edit2.Text+''' ');
      if edit1.Text <> '' then
        sql.Add(' and shoetest.ypdh like '''+edit1.Text+'%'' ');
      if edit2.Text <> '' then
        sql.Add(' and shoetest.testno like '''+edit2.Text+'%'' ');
      sql.Add(' Group by ypzl.YPDH,ypzl.GSDH,ShoeTest.Complete,Shoetest.TestNo,kfxxzl.XieMing,ShoeTest.Article,kfxxzl.YSSM ');
      sql.Add(' Order by ypzl.YPDH ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end else
  begin
    with qryorder do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' Select ypzl.YPDH as DDBH,ypzl.GSDH as GSBH,'''' as indate,CONVERT(char(10),shipdate_final,111) as exedate,Shoetest.TestNo,kfxxzl.XieMing as ''Shoe Name'' ');
      sql.Add('      ,ShoeTest.Article as ''Stock NO'',kfxxzl.YSSM as ''Color'',Sum(shoetestshipping.qty) as Qty ');
      sql.Add(' From ShoeTest ');
      sql.Add(' Left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno ');
      sql.Add(' Left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno ');
      sql.Add(' Left join ypzl on ShoeTest.YPDH=ypzl.YPDH ');
      sql.Add(' Left join kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypzl.SheHao = kfxxzl.SheHao ');
      sql.Add(' Where Convert(varchar,shoetestshipping.shipdate_final, 111) between ');
      sql.add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ') ;
      sql.Add(' and shoetest.Complete is not null ');
      sql.Add(' and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
      if edit1.Text <> '' then
        sql.Add(' and shoetest.ypdh like '''+edit1.Text+'%'' ');
      if edit2.Text <> '' then
        sql.Add(' and shoetest.testno like '''+edit2.Text+'%'' ');
      sql.Add(' Group by ypzl.YPDH,ypzl.GSDH,shipdate_final,Shoetest.TestNo,kfxxzl.XieMing,ShoeTest.Article,kfxxzl.YSSM ');
      sql.Add(' Order by ypzl.YPDH ');
      active:=true;
    end;
  end;
end;

procedure TScanData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TScanData.FormCreate(Sender: TObject);
var NDate:TDate;
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
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
  DTP1.date:=NDate-1;
  DTP2.date:=NDate-1;
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

procedure TScanData.Button7Click(Sender: TObject);
begin
  if DTP2.Date > DTP1.Date then
  begin
    showmessage('Select only 1 day ');
    abort;
  end;
  scandata_Print:=Tscandata_Print.Create(nil);
  scandata_Print.quickrep1.prepare;
  if combobox1.ItemIndex=1 then
  begin
    scandata_Print.QRLabel10.Caption:='PHIEU XUAT KHO';
    scandata_Print.QRLabel11.Caption:='出材料單';
    scandata_Print.QRLabel18.Caption:='Xuat nhap khau';
    scandata_Print.QRLabel19.Caption:='進出口';
    scandata_Print.QRLabel24.Caption:='Xuat tai kho: ';
    scandata_Print.QRLabel25.Caption:='出庫地點';
    scandata_Print.QRLabel2.Caption:='Mau so 02 - VT';
    scandata_Print.QRLabel41.Caption:='Thuc xuat';
  end;
  scandata_Print.quickrep1.preview;
  scandata_Print.Free;
end;


procedure TScanData.QryOrderAfterOpen(DataSet: TDataSet);
begin
  if combobox1.ItemIndex=0  then
  begin
    DBGridEh1.columns[2].visible:=false;
    DBGridEh1.columns[1].visible:=true;
  end;
  if combobox1.ItemIndex=1  then
  begin
    DBGridEh1.columns[1].visible:=false;
    DBGridEh1.columns[2].visible:=true;
  end;
end;

end.

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
    QryOrderDDBH: TStringField;
    QryOrderexedate: TStringField;
    QryOrderindate: TStringField;
    ComboBox1: TComboBox;
    QryOrderGSBH: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    QryOrderShoeName: TStringField;
    QryOrderPO: TStringField;
    QryOrderStockNO: TStringField;
    QryOrderColor: TStringField;
    DTP2: TDateTimePicker;
    Label7: TLabel;
    Button6: TButton;
    Button7: TButton;
    QryOrderLocation: TStringField;
    QryOrderRY_Del: TStringField;
    CB1: TCheckBox;
    QryOrderQty: TIntegerField;
    CBLoc: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
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

uses scandata_Print1, scandataout1, FunUnit, main1;

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
  with qryorder do
  begin
    active:=false;
    sql.Clear;
    //sql.add('SELECT YWCP.DDBH,DDZL.GSBH,CONVERT(char(10), ywcp.exedate,111) as exedate,CONVERT(char(10), ywcp.indate,111) as indate,');
    if combobox1.ItemIndex=0 then
    begin
      sql.Add(' SELECT case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end DDBH,DDZL.GSBH, ');
    end else
    begin
      sql.Add(' SELECT YWCP.DDBH,DDZL.GSBH, ');
    end;
    if combobox1.ItemIndex=0 then
    begin
      sql.Add(' '''' as exedate,CONVERT(char(10), ywcp.indate,111) as indate,');
    end;
    if combobox1.ItemIndex=1 then
    begin
      sql.Add(' CONVERT(char(10), ywcp.exedate,111) as exedate,'''' as indate,');
    end;
    sql.add('   xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'', sum(YWCP.Qty) as Qty,max (YWCP.KCBH) as ''Location'' ');
    if combobox1.ItemIndex=0 then
    begin
      sql.add(','' '' as RY_Del ');
    end else
    begin
      //sql.add(',DDZLTR.DDBH as RY_Del ');
      sql.Add(',DDZLTR.DDBH + '' (''+convert(varchar, DDZL.Pairs)+''**)'' as RY_Del ');
    end;
    if CB1.Checked then
    begin
      sql.Add('FROM (select * from YWCP union all select * from YWCPOld) YWCP');
    end else
    begin
      sql.Add('FROM YWCP ');
    end;
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    sql.add('left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.XieXing');
    sql.Add('left join DDZLTR on DDZL.DDBH=DDZLTR.DDBH1');
    sql.add('where YWCP.DDBH is not null');
    sql.Add('and ywcp.DDBH not in (select DDBH from DDZLTR) ');
    if combobox1.ItemIndex=0  then
    begin
      if Edit1.Text<>'' then
        sql.add('and case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end like '''+Edit1.Text+'%'' ');
    end;
    if combobox1.ItemIndex=1  then
    begin
      if Edit1.Text<>'' then
        sql.add('and YWCP.DDBH like '''+Edit1.Text+'%'' ');
    end;
    if CBLoc.Text<>'ALL' then
      sql.add('and YWCP.KCBH like '''+CBLoc.Text+'%'' ');
    if combobox1.ItemIndex=0  then
    begin
      sql.add('and CONVERT(char(10), ywcp.INDATE,111) Between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ') ;
    end;
    if combobox1.ItemIndex=1 then
    begin
      sql.add('and CONVERT(char(10), ywcp.exedate,111) Between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ') ;
    end;
    sql.add('and DDZL.GSBH='''+main.edit2.text+''' ');
    if combobox1.ItemIndex=0 then
    begin
      sql.add('group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10),ywcp.indate,111),xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,DDZLTR.DDBH,ddzltr.DDBH1');
    end;
    if combobox1.ItemIndex=1 then
    begin
      sql.add('group by YWCP.DDBH,DDZL.GSBH,CONVERT(char(10),ywcp.exedate,111),xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,DDZLTR.DDBH,DDZL.Pairs');
    end;
    sql.add('order by ywcp.DDBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
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
procedure TScanData.Button2Click(Sender: TObject);
begin

  scandata_Print:=Tscandata_Print.Create(nil);
  scandata_Print.quickrep1.prepare;
  scandata_Print.quickrep1.preview;
  scandata_Print.Free;

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

procedure TScanData.Button8Click(Sender: TObject);
begin
  if DTP2.Date > DTP1.Date then
  begin
    showmessage('Select only 1 day ');
    abort;
  end;
  scandataout:=Tscandataout.Create(nil);
  scandataout.quickrep1.prepare;
  scandataout.quickrep1.preview;
  scandataout.Free;
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

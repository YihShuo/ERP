unit Scandata_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls,comobj,dateutils;

type
  TScandata_Report = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    DTP1: TDateTimePicker;
    ComboBox1: TComboBox;
    DTP2: TDateTimePicker;
    Button6: TButton;
    Button7: TButton;
    CB1: TCheckBox;
    CBLoc: TComboBox;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    DataSource2: TDataSource;
    QryOrder: TQuery;
    QryOrderDDBH: TStringField;
    QryOrderexedate: TStringField;
    QryOrderindate: TStringField;
    QryOrderGSBH: TStringField;
    QryOrderShoeName: TStringField;
    QryOrderPO: TStringField;
    QryOrderStockNO: TStringField;
    QryOrderColor: TStringField;
    QryOrderQty: TIntegerField;
    QryOrderLocation: TStringField;
    QryOrderRY_Del: TStringField;
    Qtemp: TQuery;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button2: TButton;
    Edit2: TEdit;
    DTP3: TDateTimePicker;
    ComboBox2: TComboBox;
    DTP4: TDateTimePicker;
    Button3: TButton;
    Button4: TButton;
    CB2: TCheckBox;
    Cb3: TComboBox;
    DBGridEh3: TDBGridEh;
    QryOrder_Total: TQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField1: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    DataSource3: TDataSource;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cbPrintDate: TComboBox;
    QryOrder_TotalIODate: TStringField;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Button5: TButton;
    Edit3: TEdit;
    DTP5: TDateTimePicker;
    ComboBox3: TComboBox;
    DTP6: TDateTimePicker;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    DataSource1: TDataSource;
    QryOrder_TotalAll: TQuery;
    QryOrder_TotalAllDDBH: TStringField;
    QryOrder_TotalAllGSBH: TStringField;
    QryOrder_TotalAllindate: TStringField;
    QryOrder_TotalAllEXEDATE: TStringField;
    QryOrder_TotalAllIODate: TStringField;
    QryOrder_TotalAllShoeName: TStringField;
    QryOrder_TotalAllPO: TStringField;
    QryOrder_TotalAllStockNO: TStringField;
    QryOrder_TotalAllColor: TStringField;
    QryOrder_TotalAllQty: TIntegerField;
    QryOrder_TotalAllLocation: TStringField;
    QryOrder_TotalAllRY_Del: TStringField;
    DBGridEh4: TDBGridEh;
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure cbPrintDateChange(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetVietDate(myDate:TDateTime):string;
  end;

var
  Scandata_Report: TScandata_Report;

implementation

uses main1, scandata_Print1, scandata_Print_Total1,Fununit,
  Scandata_Print_TotalAll1;

{$R *.dfm}

function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

function TScandata_Report.GetVietDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:='Ngay '+Format('%.2d',[myDay])+' 日 thang '+Format('%.2d',[myMonth])+' 月 nam '+inttostr(myYear)+' 年';
end;

procedure TScandata_Report.Button6Click(Sender: TObject);
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
        for i:=0 to DBGridEh2.Columns.Count-1 do
        begin
          eclApp.Cells(1,i+1):=DBGridEh2.Columns[i].Title.Caption;
        end;
        QryOrder.First;
        j:=2;
        while   not   QryOrder.Eof   do
        begin
          for   i:=0   to  DBGridEh2.fieldcount-1  do
          begin
            eclApp.Cells[j,i+1].NumberFormatLocal:='@';
            eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value;
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

procedure TScandata_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TScandata_Report.FormCreate(Sender: TObject);

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
  DTP3.date:=startofthemonth(NDate);
  DTP4.date:=EndOfTheMonth(NDate);
  DTP5.date:=startofthemonth(NDate);
  DTP6.date:=EndOfTheMonth(NDate);;
  PageControl1.ActivePageIndex:=0;
end;

procedure TScandata_Report.FormDestroy(Sender: TObject);
begin
  Scandata_Report:=nil;
end;

procedure TScandata_Report.Button1Click(Sender: TObject);
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

procedure TScandata_Report.Button7Click(Sender: TObject);
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

procedure TScandata_Report.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  QryOrder_Total.active  then
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
        for i:=0 to DBGridEh3.Columns.Count-1 do
        begin
          eclApp.Cells(1,i+1):=DBGridEh3.Columns[i].Title.Caption;
        end;
        QryOrder_Total.First;
        j:=2;
        while   not   QryOrder_Total.Eof   do
        begin
          for   i:=0   to  DBGridEh3.fieldcount-1  do
          begin
            eclApp.Cells[j,i+1].NumberFormatLocal:='@';
            eclApp.Cells(j,i+1):=DBGridEh3.Fields[i].Value;
          end;
          QryOrder_Total.Next;
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

procedure TScandata_Report.Button2Click(Sender: TObject);
begin
  with QryOrder_Total do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' SELECT case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end DDBH,DDZL.GSBH, ');
    sql.Add(' '''' as exedate,max(CONVERT(char(10), ywcp.indate,111)) as indate,CONVERT(VARCHAR(7), ywcp.indate,111) as IODate,');
    sql.add('   xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'', sum(YWCP.Qty) as Qty,max (YWCP.KCBH) as ''Location'' ');
    sql.add(','' '' as RY_Del ');
    if CB2.Checked then
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
    if Edit2.Text<>'' then
        sql.add('and case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end like '''+Edit2.Text+'%'' ');
    if Cb3.Text<>'ALL' then
        sql.add('and YWCP.KCBH like '''+Cb3.Text+'%'' ');
    sql.add('and CONVERT(char(10), ywcp.INDATE,111) Between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''' ') ;
    sql.add('and DDZL.GSBH='''+main.edit2.text+''' ');
    sql.add('group by YWCP.DDBH,DDZL.GSBH,xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,DDZLTR.DDBH,ddzltr.DDBH1,CONVERT(VARCHAR(7), ywcp.indate,111) ');
    sql.add('order by indate,ywcp.DDBH');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  cbPrintDate.Items.Clear;
  with Qtemp do
  begin
    active:=false ;
    sql.Clear;
    SQL.Add('  Select distinct Indate  ');
    SQL.Add('  from (  ');
    SQL.Add('  SELECT case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end DDBH,DDZL.GSBH,   ');
    SQL.Add('   '''' as exedate,max(CONVERT(char(10), ywcp.indate,111)) as indate,CONVERT(VARCHAR(7), ywcp.indate,111) as IODate,  ');
    SQL.Add('     xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'', sum(YWCP.Qty) as Qty,max (YWCP.KCBH) as ''Location''   ');
    SQL.Add('  ,'' '' as RY_Del   ');
    if CB2.Checked then
    begin
      sql.Add('FROM (select * from YWCP union all select * from YWCPOld) YWCP');
    end else
    begin
      sql.Add('FROM YWCP ');
    end;
    SQL.Add('  left join YWDD on YWDD.DDBH=YWCP.DDBH  ');
    SQL.Add('  left join DDZL on DDZL.DDBH=YWDD.YSBH  ');
    SQL.Add('  left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.XieXing  ');
    SQL.Add('  left join DDZLTR on DDZL.DDBH=DDZLTR.DDBH1  ');
    SQL.Add('  where YWCP.DDBH is not null  ');
    SQL.Add('  and ywcp.DDBH not in (select DDBH from DDZLTR)   ');
    SQL.Add('  and CONVERT(char(10), ywcp.INDATE,111) Between   ');
    SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''' ') ;
    if Edit2.Text<>'' then
      sql.add('and case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end like '''+Edit2.Text+'%'' ');
    if Cb3.Text<>'ALL' then
      sql.add('and YWCP.KCBH like '''+Cb3.Text+'%'' ');
    SQL.Add('  and DDZL.GSBH='''+main.edit2.text+'''  ');
    SQL.Add('  group by YWCP.DDBH,DDZL.GSBH,xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,DDZLTR.DDBH,ddzltr.DDBH1,CONVERT(VARCHAR(7), ywcp.indate,111)   ');
    SQL.Add('  )YWCP   ');
    SQL.Add('  Order by indate ');
    funcobj.WriteErrorLog(sql.Text);
    active:=true;
    cbPrintDate.Items.Clear;
    while not eof do
    begin
      cbPrintDate.Items.Add(fieldbyname('Indate').AsString);
      next;
    end;

    active:=false;
  end;

end;

procedure TScandata_Report.Button4Click(Sender: TObject);
begin
  scandata_Print_Total:=Tscandata_Print_Total.Create(nil);
  scandata_Print_Total.quickrep1.prepare;
  if combobox2.ItemIndex=1 then
  begin
    scandata_Print_Total.QRLabel10.Caption:='PHIEU XUAT KHO';
    scandata_Print_Total.QRLabel11.Caption:='出材料單';
    scandata_Print_Total.QRLabel18.Caption:='Xuat nhap khau';
    scandata_Print_Total.QRLabel19.Caption:='進出口';
    scandata_Print_Total.QRLabel24.Caption:='Xuat tai kho: ';
    scandata_Print_Total.QRLabel25.Caption:='出庫地點';
    scandata_Print_Total.QRLabel2.Caption:='Mau so 02 - VT';
    scandata_Print_Total.QRLabel41.Caption:='Thuc xuat';
  end;
  scandata_Print_Total.quickrep1.preview;
  scandata_Print_Total.Free;
end;

procedure TScandata_Report.cbPrintDateChange(Sender: TObject);
begin
  with QryOrder_Total do
  begin
    active:=false ;
    sql.Clear;
    SQL.Add('  Select * ');
    SQL.Add('  from (  ');
    SQL.Add('  SELECT case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end DDBH,DDZL.GSBH,   ');
    SQL.Add('   '''' as exedate,max(CONVERT(char(10), ywcp.indate,111)) as indate,CONVERT(VARCHAR(7), ywcp.indate,111) as IODate,  ');
    SQL.Add('     xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'', sum(YWCP.Qty) as Qty,max (YWCP.KCBH) as ''Location''   ');
    SQL.Add('  ,'' '' as RY_Del   ');
    if CB2.Checked then
    begin
      sql.Add('FROM (select * from YWCP union all select * from YWCPOld) YWCP');
    end else
    begin
      sql.Add('FROM YWCP ');
    end;
    SQL.Add('  left join YWDD on YWDD.DDBH=YWCP.DDBH  ');
    SQL.Add('  left join DDZL on DDZL.DDBH=YWDD.YSBH  ');
    SQL.Add('  left join xxzl on xxzl.SheHao=DDZL.SheHao and xxzl.XieXing=DDZL.XieXing  ');
    SQL.Add('  left join DDZLTR on DDZL.DDBH=DDZLTR.DDBH1  ');
    SQL.Add('  where YWCP.DDBH is not null  ');
    SQL.Add('  and ywcp.DDBH not in (select DDBH from DDZLTR)   ');
    SQL.Add('  and CONVERT(char(10), ywcp.INDATE,111) Between   ');
    SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP4.Date)+''' ') ;
    if Edit2.Text<>'' then
      sql.add('and case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end like '''+Edit2.Text+'%'' ');
    if Cb3.Text<>'ALL' then
      sql.add('and YWCP.KCBH like '''+Cb3.Text+'%'' ');
    SQL.Add('  and DDZL.GSBH='''+main.edit2.text+'''  ');
    SQL.Add('  group by YWCP.DDBH,DDZL.GSBH,xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,DDZLTR.DDBH,ddzltr.DDBH1,CONVERT(VARCHAR(7), ywcp.indate,111)  ');
    SQL.Add('  )YWCP   ');
    SQL.Add('  Where Indate='''+cbPrintDate.Text+''' ');
    SQL.Add('  Order by Indate,DDBH ');
    active:=true;
  end;
end;

procedure TScandata_Report.Button5Click(Sender: TObject);
begin
  with QryOrder_TotalAll do
  begin
    active:=false;
    sql.Clear;

    //sql.Add(' select DDBH,GSBH,indate,EXEDATE,IODate,Shoe_Name as ''Shoe Name'',PO as ''P.O.#'',Stock_NO as ''Stock NO'',Color,sum(Qty) as Qty,Location,RY_Del FROM ( ');

    sql.Add(' SELECT case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end DDBH,DDZL.GSBH, ');
    sql.Add(' '''' as indate,');

    sql.Add(' case when max(EXEDATE)  is null then (select max(CONVERT(char(10), ywcp.indate,111)) as indate from YWCP ');
    sql.Add('                                       where 1=1 and CONVERT(char(10), ywcp.INDATE,111) Between '''+formatdatetime('yyyy/MM/dd',DTP5.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' )');
    sql.Add('                                       else max(CONVERT(char(10), ywcp.indate,111)) end as EXEDATE');

    sql.Add(','''' as IODate,');
    sql.add('   xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'', sum(YWCP.Qty) as Qty,max (YWCP.KCBH) as ''Location'' ');
    sql.add(','' '' as RY_Del ');
    if CB2.Checked then
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
    if Edit3.Text<>'' then
        sql.add('and case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end like '''+Edit3.Text+'%'' ');
    if ComboBox4.Text<>'ALL' then
        sql.add('and YWCP.KCBH like '''+ComboBox4.Text+'%'' ');
    sql.add('and CONVERT(char(10), ywcp.INDATE,111) Between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP5.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' ') ;
    sql.add('and DDZL.GSBH='''+main.edit2.text+''' ');
    sql.add('group by YWCP.DDBH,DDZL.GSBH,xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,DDZLTR.DDBH,ddzltr.DDBH1,CONVERT(VARCHAR(7), ywcp.indate,111)');
    sql.add('order by EXEDATE,ywcp.DDBH');
    funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  ComboBox5.Items.Clear;
  with Qtemp do
  begin
    active:=false ;
    sql.Clear;
    SQL.Add(' Select distinct EXEDATE  ');
    SQL.Add(' from (  ');
    sql.Add(' SELECT case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end DDBH,DDZL.GSBH, ');
    sql.Add(' '''' as indate,');

    sql.Add(' case when max(EXEDATE)  is null then (select max(CONVERT(char(10), ywcp.indate,111)) as indate from YWCP ');
    sql.Add('                                       where 1=1 and CONVERT(char(10), ywcp.INDATE,111) Between '''+formatdatetime('yyyy/MM/dd',DTP5.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' )');
    sql.Add('                                       else max(CONVERT(char(10), ywcp.indate,111)) end as EXEDATE');

    sql.Add(','''' as IODate,');
    sql.add('   xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'', sum(YWCP.Qty) as Qty,max (YWCP.KCBH) as ''Location'' ');
    sql.add(','' '' as RY_Del ');
    if CB2.Checked then
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
    if Edit3.Text<>'' then
        sql.add('and case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end like '''+Edit3.Text+'%'' ');
    if ComboBox4.Text<>'ALL' then
        sql.add('and YWCP.KCBH like '''+ComboBox4.Text+'%'' ');
    sql.add('and CONVERT(char(10), ywcp.INDATE,111) Between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP5.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' ') ;
    sql.add('and DDZL.GSBH='''+main.edit2.text+''' ');
    sql.add('group by YWCP.DDBH,DDZL.GSBH,xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,DDZLTR.DDBH,ddzltr.DDBH1,CONVERT(VARCHAR(7), ywcp.indate,111) ');
    SQL.Add('  )YWCP   ');
    SQL.Add('  Order by EXEDATE ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
    ComboBox5.Items.Clear;
    while not eof do
    begin
      ComboBox5.Items.Add(fieldbyname('EXEDATE').AsString);
      next;
    end;

    active:=false;
  end;
end;

procedure TScandata_Report.ComboBox5Change(Sender: TObject);
begin
  with QryOrder_TotalAll do
  begin
    active:=false ;
    sql.Clear;
    sql.Add(' Select * ');
    sql.Add(' from (  ');
    sql.Add(' SELECT case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end DDBH,DDZL.GSBH, ');
    sql.Add(' '''' as indate,');

    sql.Add(' case when max(EXEDATE)  is null then (select max(CONVERT(char(10), ywcp.indate,111)) as indate from YWCP ');
    sql.Add('                                       where 1=1 and CONVERT(char(10), ywcp.INDATE,111) Between '''+formatdatetime('yyyy/MM/dd',DTP5.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' )');
    sql.Add('                                       else max(CONVERT(char(10), ywcp.indate,111)) end as EXEDATE');

    sql.Add(','''' as IODate,');
    sql.add('   xxzl.XieMing as ''Shoe Name'',DDZL.KHPO as ''P.O.#'',ddzl.article as ''Stock NO'',xxzl.YSSM as ''Color'', sum(YWCP.Qty) as Qty,max (YWCP.KCBH) as ''Location'' ');
    sql.add(','' '' as RY_Del ');
    if CB2.Checked then
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
    if Edit3.Text<>'' then
        sql.add('and case when ddzltr.DDBH1 is not null then ddzltr.DDBH else YWCP.DDBH end like '''+Edit3.Text+'%'' ');
    if ComboBox4.Text<>'ALL' then
        sql.add('and YWCP.KCBH like '''+ComboBox4.Text+'%'' ');
    sql.add('and CONVERT(char(10), ywcp.INDATE,111) Between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP5.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' ') ;
    sql.add('and DDZL.GSBH='''+main.edit2.text+''' ');
    sql.add('group by YWCP.DDBH,DDZL.GSBH,xxzl.XieMing,DDZL.KHPO,ddzl.article,xxzl.YSSM,DDZLTR.DDBH,ddzltr.DDBH1,CONVERT(VARCHAR(7), ywcp.indate,111) ');
    SQL.Add('  )YWCP   ');
    SQL.Add('  Where EXEDATE='''+ComboBox5.Text+''' ');
    SQL.Add('  Order by EXEDATE,DDBH ');
    active:=true;
  end;
end;

procedure TScandata_Report.Button9Click(Sender: TObject);
begin
  Scandata_Print_TotalAll:=TScandata_Print_TotalAll.Create(nil);
  Scandata_Print_TotalAll.quickrep1.prepare;
  if combobox2.ItemIndex=1 then
  begin
    Scandata_Print_TotalAll.QRLabel10.Caption:='PHIEU XUAT KHO';
    Scandata_Print_TotalAll.QRLabel11.Caption:='出材料單';
    Scandata_Print_TotalAll.QRLabel18.Caption:='Xuat nhap khau';
    Scandata_Print_TotalAll.QRLabel19.Caption:='進出口';
    Scandata_Print_TotalAll.QRLabel24.Caption:='Xuat tai kho: ';
    Scandata_Print_TotalAll.QRLabel25.Caption:='出庫地點';
    Scandata_Print_TotalAll.QRLabel2.Caption:='Mau so 02 - VT';
    Scandata_Print_TotalAll.QRLabel41.Caption:='Thuc xuat';
  end;
  Scandata_Print_TotalAll.quickrep1.preview;
  Scandata_Print_TotalAll.Free;
end;

procedure TScandata_Report.Button8Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  QryOrder_TotalAll.active  then
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
        for i:=0 to DBGridEh4.Columns.Count-1 do
        begin
          eclApp.Cells(1,i+1):=DBGridEh4.Columns[i].Title.Caption;
        end;
        QryOrder_TotalAll.First;
        j:=2;
        while   not   QryOrder_TotalAll.Eof   do
        begin
          for   i:=0   to  DBGridEh4.fieldcount-1  do
          begin
            eclApp.Cells[j,i+1].NumberFormatLocal:='@';
            eclApp.Cells(j,i+1):=DBGridEh4.Fields[i].Value;
          end;
          QryOrder_TotalAll.Next;
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

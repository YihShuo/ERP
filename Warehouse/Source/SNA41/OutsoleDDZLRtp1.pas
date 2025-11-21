unit OutsoleDDZLRtp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, DateUtils,
  Menus, Comobj, Spin;

type
  TOutsoleDDZLRtp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    BuyNoEdit: TEdit;
    Button2: TButton;
    DDBHEdit: TEdit;
    Button3: TButton;
    QTemp: TQuery;
    OutsoleQry: TQuery;
    DS1: TDataSource;
    OutsoleQryDDMH: TStringField;
    OutsoleQryGJCC: TStringField;
    OutsoleQryPairs: TIntegerField;
    OutsoleQryShipdate: TDateTimeField;
    OutsoleQryDQty: TFloatField;
    OutsoleQryYWPM: TStringField;
    OutsoleQryCLBH: TStringField;
    OutsoleQryProdDays: TFloatField;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    DDZLSQry: TQuery;
    DS2: TDataSource;
    DDZLSQryBUYNO: TStringField;
    DDZLSQryDDBH: TStringField;
    DDZLSQryARTICLE: TStringField;
    DDZLSQryDDZT: TStringField;
    DDZLSQryCC: TStringField;
    DDZLSQryGJCC: TStringField;
    DDZLSQryQuantity: TIntegerField;
    DDZLSQryShipDate: TDateTimeField;
    DDZLSQryDDMH: TStringField;
    DDZLSQryDDGB: TStringField;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Excel1: TMenuItem;
    Label3: TLabel;
    DDMHEdit: TEdit;
    DDZLSQryDDRQ: TDateTimeField;
    OutsoleQryOutSoleQty: TIntegerField;
    Label4: TLabel;
    CBX1: TComboBox;
    WHCKBox: TCheckBox;
    RYTypeCB: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Detail1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    LastMon:string; //上個月(Month)
    LastYear:string;//上個月(Year)
    STLastMonDate:string; //上個月初
    EDLastMonDate:string; //上個月底
    //
    LastMon2:string;//上上一個月(Month) 月結累積加總計算
    LastYear2:string;//上上一個月(Year)
    //
    STDate:string; //當月月初
    EDDate:string; //今天
    { Private declarations }
    procedure GetDateParam();
  public
    { Public declarations }
  end;

var
  OutsoleDDZLRtp: TOutsoleDDZLRtp;

implementation
  uses main1, OutsoleDDZLRpt_XXGJ1, FunUnit;
{$R *.dfm}
//當月天數
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
procedure TOutsoleDDZLRtp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TOutsoleDDZLRtp.FormDestroy(Sender: TObject);
begin
  OutsoleDDZLRtp:=nil;
end;

//取得時間參數
procedure TOutsoleDDZLRtp.GetDateParam();
var myYear, myMonth, myDay : Word;
    tmpDate:TDate;
begin
  //取得上個月起始和結束日期
  tmpDate:=incmonth(Date(),-1);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon:=Format('%.2d',[myMonth]);
  LastYear:=Format('%.4d',[myYear]);
  STLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //月初日期
  EDLastMonDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, DaysOfItsMonth(tmpDate)));//月底
  //取得上上個月用來月結資料累積加總
  tmpDate:=incmonth(Date(),-2);
  DecodeDate(tmpDate, myYear, myMonth, myDay);
  LastMon2:=Format('%.2d',[myMonth]);
  LastYear2:=Format('%.4d',[myYear]);
  //取得當月初和今天日期
  DecodeDate(Date(), myYear, myMonth, myDay);
  STDate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //月初日期
  EDDate:=FormatDateTime('YYYY/MM/DD', Date());//基礎日
end;

procedure TOutsoleDDZLRtp.Button2Click(Sender: TObject);
begin
  //
  if ((BuyNoEdit.Text='')  and (DDBHEdit.Text='') and (WHCKBox.Checked=false) )  then
  begin
    showmessage('Please input BuyNO or PlanDate or DDBH');
    Exit;
  end;
  GetDateParam();
  with OutsoleQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from (');
    SQL.Add('Select DDZL.*,OutsoleS.DQty,OutsoleS.Qty as OutSoleQty,OutsoleS.YWPM,OutsoleS.CLBH,Round(DDZL.Pairs/Convert(float,OutsoleS.Qty*OutsoleS.DQty),1) as ProdDays from ( ');
    SQL.Add('Select DDMH,GJCC,SUM(DDZL.Quantity) as Pairs,Min(Shipdate) as Shipdate from (');
    SQL.Add('Select DDZL.DDBH,DDZL.ARTICLE,DDZL.DDZT,DDZLS.CC,XXGJS.GJCC,DDZLS.Quantity,DDZL.ShipDate,XXZL.DDMH from DDZL ');
    SQL.Add('Left join DDZLs on DDZLS.DDBH=DDZL.DDBH ');
    SQL.Add('left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH ');
    SQL.Add('Left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add('Left join XXGJS on xxgjs.XieXing=DDZL.XieXing and xxgjs.GJLB=101 and xxgjs.XXCC=DDZLs.CC ');
    SQL.Add('Where DDZL.DDZT<>''C'' and DDLB<>''B'' and DDZL.GSBH='''+main.Edit2.Text+'''  ');
    if BuyNOEdit.Text<>'' then
    SQL.Add('  and DDZL.BUYNO like '''+BuyNOEdit.Text+'%'' ');
    if DDBHEdit.Text<>'' then
    SQL.Add('  and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    if DDMHEdit.Text<>'' then
    SQL.Add('  and XXZL.DDMH like '''+DDMHEdit.Text+'%'' ');
    if RYTypeCB.ItemIndex=1 then
      SQL.Add(' and IsNull(DDZL.RYTYPE,'''')<>''SLT'' ');
    if RYTypeCB.ItemIndex=2 then
      SQL.Add(' and IsNull(DDZL.RYTYPE,'''')=''SLT'' ');
    if WHCKBox.Checked=true then
    SQL.Add('  and DDZL.YN=1 and DDZL.Shipdate>GetDate()-60  ');
    //
    SQL.Add(') DDZL Group by DDMH,GJCC  ) DDZL');
    SQL.Add('Left join (');
    SQL.Add('  select OutsoleS.*,IsNull(OutsoleSCBZCL.MDPM,CLZL.YWPM) as YWPM,OutsoleSCBZCL.Qty from (');
    SQL.Add('  select CLBH,SIZ,Sum(RKQty) as DQty from (');
    SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
    SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and OSRKSS.ZLBH=''NEWL'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+STDate+''' and '''+EDDate+''' ');
    SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ ');
    SQL.Add('  Union All ');
    SQL.Add('  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+'#L'' and KCYEAR='''+LastYear+''' and KCMonth='''+LastMon+''' ) as tmpRKTLFL ');
    SQL.Add('  group by CKBH,CLBH,SIZ ) OutsoleS');
    SQL.Add('  left join CLZL on CLZL.cldh=OutSoleS.CLBH');
    SQL.Add('  left join OutsoleSCBZCL on OutsoleSCBZCL.CLDH=OutSoleS.CLBH');
    SQL.Add(') OutsoleS on OutsoleS.YWPM=DDZL.DDMH and OutsoleS.SIZ=DDZL.GJCC  ) DDZL');
    SQL.Add('Order by case when DDZL.GJCC is  null  then 0 else 1 end,DDZL.DDMH,DDZL.GJCC ');
    funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with DDZLSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DDZL.BUYNO,DDZL.DDBH,DDZL.ARTICLE,DDZL.DDZT,DDZLS.CC,XXGJS.GJCC,DDZLS.Quantity,DDZL.DDRQ,DDZL.ShipDate,XXZL.DDMH,DDZL.DDGB from DDZL ');
    SQL.Add('left join DDZLs on DDZLS.DDBH=DDZL.DDBH ');
    SQL.Add('Left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    SQL.Add('left join XXGJS on xxgjs.XieXing=DDZL.XieXing and xxgjs.GJLB=101 and xxgjs.XXCC=DDZLs.CC ');
    SQL.Add('Where  DDZL.DDZT<>''C'' and DDLB<>''B'' and DDZL.GSBH='''+main.Edit2.Text+'''  and XXZL.DDMH=:DDMH and XXGJS.GJCC=:GJCC  ');
    if BuyNOEdit.Text<>'' then
    SQL.Add('  and DDZL.BUYNO like '''+BuyNOEdit.Text+'%'' ');
    if DDBHEdit.Text<>'' then
    SQL.Add('  and DDZL.DDBH like '''+DDBHEdit.Text+'%'' ');
    if DDMHEdit.Text<>'' then
    SQL.Add('  and XXZL.DDMH like '''+DDMHEdit.Text+'%'' ');
    if RYTypeCB.ItemIndex=1 then
      SQL.Add(' and IsNull(DDZL.RYTYPE,'''')<>''SLT'' ');
    if RYTypeCB.ItemIndex=2 then
      SQL.Add(' and IsNull(DDZL.RYTYPE,'''')=''SLT'' ');
    if WHCKBox.Checked=true then
    SQL.Add('  and DDZL.YN=1 and DDZL.Shipdate>GetDate()-60  ');
    SQL.Add('Order by DDZL.ARTICLE,DDZLS.CC,XXGJS.GJCC ');
    funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TOutsoleDDZLRtp.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if OutsoleQry.FieldByName('ProdDays').AsString='' then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
  if OutsoleQry.FieldByName('GJCC').AsString='' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TOutsoleDDZLRtp.Detail1Click(Sender: TObject);
begin
  OutsoleDDZLRpt_XXGJ:=TOutsoleDDZLRpt_XXGJ.Create(self);
  OutsoleDDZLRpt_XXGJ.Show;
end;

procedure TOutsoleDDZLRtp.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if OutsoleQry.Active then
  begin
    if OutsoleQry.recordcount=0 then
    begin
     showmessage('No record.');
     abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    DDZLSQry.Active:=false;
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   OutsoleQry.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=OutsoleQry.fields[i-1].FieldName;
    end;
    OutsoleQry.First;
    j:=2;
    while   not  OutsoleQry.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   OutsoleQry.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=OutsoleQry.Fields[i-1].Value;
        end;
        OutsoleQry.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    DDZLSQry.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

procedure TOutsoleDDZLRtp.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if DDZLSQry.Active then
  begin
    if OutsoleQry.recordcount=0 then
    begin
     showmessage('No record.');
     abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  //
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
    for   i:=1   to   DDZLSQry.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DDZLSQry.fields[i-1].FieldName;
    end;
    DDZLSQry.First;
    j:=2;
    while   not  DDZLSQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   DDZLSQry.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=DDZLSQry.Fields[i-1].Value;
      end;
      DDZLSQry.Next;
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

procedure TOutsoleDDZLRtp.FormCreate(Sender: TObject);
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.items.clear;
    while not eof do
    begin
      CBX1.items.add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CBX1.itemindex:=0;
    active:=false;
  end;
end;

end.

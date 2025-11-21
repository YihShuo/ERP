unit OutsoleStockMonth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, StdCtrls, ComCtrls, GridsEh, DBGridEh,
  ExtCtrls, DateUtils, comobj;

type
  TOutsoleStockMonth = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit1: TEdit;
    Button5: TButton;
    DBGridEh1: TDBGridEh;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    DTP: TDateTimePicker;
    Button4: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    Query1: TQuery;
    DS1: TDataSource;
    EXEQry: TQuery;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UPDet1: TUpdateSQL;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1DDBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1CKBH: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1ARTICLE: TStringField;
    Query2DDBH: TStringField;
    Query2Pairs: TFloatField;
    Query2LastRem: TCurrencyField;
    Query2RKQty: TCurrencyField;
    Query2LLQty: TCurrencyField;
    Query2Qty: TCurrencyField;
    Query2CKBH: TStringField;
    Query2Article: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  OutsoleStockMonth: TOutsoleStockMonth;

implementation

uses main1;

{$R *.dfm}

procedure TOutsoleStockMonth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOutsoleStockMonth.FormDestroy(Sender: TObject);
begin
  OutsoleStockMonth:=nil;
end;

procedure TOutsoleStockMonth.FormCreate(Sender: TObject);
begin
  DTP.Date:=Date();
end;

procedure TOutsoleStockMonth.Button3Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' Select Outsole_Month.*,DDZL.ARTICLE ');
    SQL.Add(' from '+main.LIY_DD+'.dbo.OUTSOLE_Month Outsole_Month ');
    SQL.Add('	left join '+main.LIY_DD+'.dbo.DDZL DDZL on Outsole_Month.DDBH=DDZL.DDBH ');
    SQL.Add('	where Outsole_Month.KCYEAR='''+CBX2.Text+''' ');
    SQL.Add('	and Outsole_Month.KCMONTH='''+CBX3.Text+''' ');
    SQL.Add(' and DDZL.CQDH='''+main.Edit2.Text+''' ');
    if Edit1.Text<>'' then
      SQL.Add(' and Outsole_Month.DDBH like '''+Edit1.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TOutsoleStockMonth.ExportExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if Query.Active then
    begin
      if Query.recordcount=0 then
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
    //
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.Cells(1,1):='NO';
      for   i:=1   to   query.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
      end;
      Query.First;
      j:=2;
      while   not  Query.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   Query.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
          end;
          Query.Next;
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

procedure TOutsoleStockMonth.Button2Click(Sender: TObject);
begin
  ExportExcel(Query1);
end;

procedure TOutsoleStockMonth.Button5Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
    sDate:TDate;
begin
  sDate:=encodedate(strtoint(CBX2.Text),strtoint(CBX3.Text),1);
  DeCodedate(sDate,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  with EXEQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 KCYEAR, YN from  '+main.LIY_DD+'.dbo.OUTSOLE_Month where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' ');
    Active:=true;
    if FieldByName('YN').AsString='1' then
    begin
      Showmessage('Account already Month Cal.:'+CBX2.Text+'/'+CBX3.Text+'¡AWarehouse can''t calculate & override');
      Active:=false;
      Exit;
    end;
    Active:=false;
  end;
  //
  with EXEQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' Delete from '+main.LIY_DD+'.dbo.OUTSOLE_Month where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and DDBH in (select DDBH from ' +main.LIY_DD+ '.dbo.DDZL DDZL where DDZL.CQDH ='''+main.Edit2.Text+''')');
    SQL.Add(' Insert into '+main.LIY_DD+'.dbo.OUTSOLE_Month (KCYEAR, KCMONTH, DDBH, Qty, CKBH, UserID, UserDate, YN) ');
    SQL.Add(' Select * from ( ');
    SQL.Add(' Select '''+CBX2.Text+''' as KCYEAR,'''+CBX3.Text+''' as KCMONTH, Outsole_Month.DDBH, Sum(Outsole_Month.Qty) as Qty, DDZL.CQDH as CKBH, '''+main.Edit1.Text+''' as UserID, GetDate() as UserDate, ''2'' as YN ');
    SQL.Add(' from ( ');
    SQL.Add(' Select DDBH,Qty,''1'' as SB ');
    SQL.Add('   from ' +main.LIY_DD+ '.dbo.OUTSOLE_Month Outsole_Month ');
    SQL.Add('   where Outsole_Month.KCYEAR='''+sYear+''' ');
    SQL.Add('   and Outsole_Month.KCMONTH='''+sMonth+''' ');
    SQL.Add(' union all ');
    SQL.Add(' Select RK.DDBH,Sum(RK.Qty) as Qty,''2'' as SB ');
    SQL.Add('   from '+main.LIY_DD+'.dbo.OUTSOLE_RK RK ');
    SQL.Add('   where Convert(varchar,RK.InDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('   Group by RK.DDBH ');
    SQL.Add(' union all ');
    SQL.Add(' Select LL.DDBH,-1*Sum(LL.Qty) as Qty,''3'' as SB ');
    SQL.Add('   from '+main.LIY_DD+'.dbo.OUTSOLE_LL LL ');
    SQL.Add('   where Convert(varchar,LL.LLDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',EndOfTheMonth(sDate))+''' ');
    SQL.Add('   Group by LL.DDBH) Outsole_Month  ');
    SQL.Add(' left join '+main.LIY_DD+'.dbo.DDZL DDZL on DDZL.DDBH=Outsole_Month.DDBH and DDZL.CQDH ='''+main.Edit2.Text+''' ');
    SQL.Add(' Group by Outsole_Month.DDBH,DDZL.CQDH) Outsole_Month  ');
    SQL.Add(' where 1=1 ');
    SQL.Add(' and Qty>0 ');
    //FuncObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  Showmessage('Finish!');
  Button3Click(nil);
end;

procedure TOutsoleStockMonth.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add(' Select Outsole_MonthAll.DDBH,DDZL.Pairs,isnull(Outsole_Month.Qty,0) as LastRem, isnull(RK.Qty,0) as RKQty, isnull(LL.Qty,0) as LLQty, Outsole_MonthAll.Qty ');
    SQL.Add('        ,DDZL.CQDH as CKBH,DDZL.Article from ( ');
    SQL.Add(' Select DDBH, sum(Qty) as Qty from ( ');
    SQL.Add(' Select DDBH,Qty,''1'' as SB ');
    SQL.Add('   from '+main.LIY_DD+'.dbo.OUTSOLE_Month Outsole_Month ');
    SQL.Add('   where Outsole_Month.KCYEAR='''+sYear+''' ');
    SQL.Add('  	and Outsole_Month.KCMONTH='''+sMonth+''' ');
    SQL.Add(' union all ');
    SQL.Add(' Select RK.DDBH,sum(RK.Qty) as Qty,''2'' as SB ');
    SQL.Add('   from '+main.LIY_DD+'.dbo.OUTSOLE_RK RK ');
    SQL.Add('   where Convert(varchar,RK.InDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
    SQL.Add('   Group by RK.DDBH ');
    SQL.Add(' union all  ');
    SQL.Add('   Select LL.DDBH,-1*sum(LL.Qty) as Qty,''3'' as SB ');
    SQL.Add('   from '+main.LIY_DD+'.dbo.OUTSOLE_LL LL ');
    SQL.Add('   where Convert(varchar,LL.LLDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
    SQL.Add('   Group by LL.DDBH) Outsole_Month  Group by DDBH) Outsole_MonthAll ');
    SQL.Add(' Left join ( ');
    SQL.Add('   Select DDBH,Qty,''1'' as SB  ');
    SQL.Add('   from '+main.LIY_DD+'.dbo.OUTSOLE_Month Outsole_Month  ');
    SQL.Add('   where Outsole_Month.KCYEAR='''+sYear+''' ');
    SQL.Add('  	and Outsole_Month.KCMONTH='''+sMonth+''' ) Outsole_Month on Outsole_Month.DDBH=Outsole_MonthAll.DDBH ');
    SQL.Add(' Left join ( ');
    SQL.Add('   Select RK.DDBH,sum(RK.Qty) as Qty,''2'' as SB ');
    SQL.Add('  	from '+main.LIY_DD+'.dbo.OUTSOLE_RK RK  ');
    SQL.Add('  	where Convert(varchar,RK.InDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
    SQL.Add('  	Group by RK.DDBH) RK on RK.DDBH=Outsole_MonthAll.DDBH  ');
    SQL.Add(' Left join ( ');
    SQL.Add('  	Select LL.DDBH,sum(LL.Qty) as Qty,''3'' as SB ');
    SQL.Add('  	from '+main.LIY_DD+'.dbo.OUTSOLE_LL LL ');
    SQL.Add('  	where Convert(varchar,LL.LLDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP.date)+''' ');
    SQL.Add('  	Group by LL.DDBH) LL on LL.DDBH=Outsole_MonthAll.DDBH  ');
    SQL.Add(' Left join '+main.LIY_DD+'.dbo.DDZL DDZL on DDZL.DDBH=Outsole_MonthAll.DDBH  ');
    SQL.Add(' where 1=1 and DDZL.CQDH='''+main.Edit2.Text+'''');
    if Edit2.Text<>'' then
      SQL.Add(' and DDZL.DDBH like '''+Edit2.Text+'%'' ');
    if CheckBox1.Checked=true then
      SQL.Add(' and Outsole_MonthAll.Qty>0 ');
    if CheckBox2.Checked=true then
      SQL.Add(' and Outsole_MonthAll.Qty<0 ');
    SQL.Add(' order by Outsole_MonthAll.DDBH ');
    //FuncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TOutsoleStockMonth.Button4Click(Sender: TObject);
begin
  ExportExcel(Query2);
end;

procedure TOutsoleStockMonth.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TOutsoleStockMonth.Save1Click(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    case Query1.updatestatus of
      usmodified:
      begin
        if Query1.FieldByName('YN').AsString ='2' then
        begin
          Query1.Edit;
          Query1.FieldByName('userID').Value:=main.edit1.text;
          Query1.FieldByName('userdate').Value:=Date;
          UPDet1.apply(ukmodify);
        end else
        begin
          showmessage('Already be Lock, can''t modify.');
        end;
      end;
    end;
    Query1.Next;
  end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TOutsoleStockMonth.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

end.

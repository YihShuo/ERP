unit ReplenishDayRateDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, Menus, Comobj;

type
  TReplenishDayRateDet = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query1LLNO: TStringField;
    Query1GSBH: TStringField;
    Query1DepName: TStringField;
    Query1DWBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1YYBH: TStringField;
    Query1DepID: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1ACCUS: TCurrencyField;
    Query1FYLB: TStringField;
    Query1CLBH: TStringField;
    Query1BLSB: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    SelSDate,SelEDate:String;
    { Public declarations }
    procedure ShowData();
  end;

var
  ReplenishDayRateDet: TReplenishDayRateDet;

implementation
  uses ReplenishDayRate1,FunUnit, main1;
{$R *.dfm}

procedure TReplenishDayRateDet.ShowData();
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLL.LLNO,KCLL.GSBH,BDepartment.DepName,CLZL.DWBH,CLZL.YWPM,CLZL.ZWPM  ');
    SQL.Add('       ,isnull(KCLLS.YYBH,'''') as YYBH,KCLL.DepID,KCLLS.Qty,CWDJ.USPrice,KCLLS.Qty*isnull(CWDJ.USPrice,0) as ACCUS,CLLBFYS.FYLB,');
    SQL.Add('       KCLLS.CLBH,isnull(KCLLS.BLSB,'''') as BLSB,KCLL.CFMDate,SCBLYY.YWSM,SCBLYY.ZWSM');
    SQL.Add('from KCLLS');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
    SQL.Add('left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    SQL.Add('left join CWDJ on CWDJ.CLBH=KCLLS.CLBH ');
    SQL.Add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLL.CFMDate)) ');
    SQL.Add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLL.CFMDate)) ');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    SQL.Add('         '''+SelSDate+''' and '''+SelEDate+''' ');
    SQL.Add('      and KCLL.CFMID<>''NO''');
    if  ReplenishDayRate.Query1.FieldByName('Factory').AsString<>'  zTotal' then
    SQL.Add('      and Convert(varchar(10),BDepartment.GSBH) = '''+ReplenishDayRate.Query1.FieldByName('Factory').AsString+''' ');
    SQL.Add('      and KCLLS.Qty<>0 ');
    if ReplenishDayRate.CheckBox1.Checked = true then
    begin
      sql.Add('and KCLL.CKBH <> ''VTXX'' and KCLL.CKBH <> ''VTXY'' and KCLL.CKBH <> ''VTXZ'' and KCLL.CKBH <> ''VTXW''');
    end;
    if  ReplenishDayRate.Query1.FieldByName('SB').AsString=' RepACC' then
      SQL.Add('      and IsNull(KCLLS.BLSB,''N'')=''Y'' ');
    Active:=true;
  end;
end;
//
procedure TReplenishDayRateDet.FormDestroy(Sender: TObject);
begin
  ReplenishDayRateDet:=nil;
end;

procedure TReplenishDayRateDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TReplenishDayRateDet.Excel1Click(Sender: TObject);
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
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
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

procedure TReplenishDayRateDet.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);  
end;

end.

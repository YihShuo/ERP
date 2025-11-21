unit FDStatus_Stock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,DateUtils,
  DBCtrls, Menus, GridsEh, DBGridEh,comobj;

type
  TFDStatus_Stock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBGrid3: TDBGridEh;
    DBGrid2: TDBGridEh;
    DBGrid1: TDBGridEh;
    KCRK: TQuery;
    DS1: TDataSource;
    KCLL: TQuery;
    DS2: TDataSource;
    KCRKRKNO: TStringField;
    KCRKUSERDATE: TDateTimeField;
    KCRKQty: TCurrencyField;
    KCLLLLNO: TStringField;
    KCLLQty: TCurrencyField;
    KCLLSCBH: TStringField;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    Material: TQuery;
    UpSQL1: TUpdateSQL;
    DS3: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    KCLLCFMID: TStringField;
    KCRKCFMID: TStringField;
    KCRKZSBH: TStringField;
    KCLLCFMDATE: TDateTimeField;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    KCLLMemo: TStringField;
    KCRKMemo: TStringField;
    Label7: TLabel;
    CBX1: TComboBox;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    PopupMenu2: TPopupMenu;
    EXCEL2: TMenuItem;
    KCRKUSERID: TStringField;
    KCRKRKSB: TStringField;
    KCLLKJMemo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EXCEL2Click(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDStatus_Stock: TFDStatus_Stock;

implementation

uses  main1;

{$R *.dfm}

procedure TFDStatus_Stock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
free;
end;

procedure TFDStatus_Stock.Button1Click(Sender: TObject);
var year,month,day:word;
ayear,amonth:string;
begin
decodedate(DTP1.Date,Year,Month,Day);   //找庫存相關的數據
incAMonth(Year,Month,Day,-1);
ayear:=floattostr(year);
amonth:=floattostr(month);
if length(amonth)=1 then
  amonth:='0'+amonth;


with KCLL do          //出庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,');
    sql.add('JGZL.CFMID1 as CFMID,JGZLS.Qty*JGZLM.Qty as Qty,'+''''+'ZZZZ'+'''');
    sql.add('as SCBH, '+''''+'JG'+''''+' as Memo, JGZLS.Memo as KJMemo ' );
    sql.add('from JGZLS  ');
    sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('          left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
   // sql.add('          and JGZL.CFMDate1 is not null');
    sql.add('          and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('          and JGZL.CKBH='+''''+CBX1.text+'''');
    sql.add('          ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('where JGZL.CFMDate1>='+''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
  //  sql.add('and JGZL.CFMDate1 is not null');
    sql.add('and JGZLS.ZMLB='+''''+edit1.Text+'''');
    sql.add('and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');


    sql.add('union all');    
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo, KCLLS.Memo as KJMemo');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('where  KCLLS.CLBH='+''''+edit1.Text+'''');
    sql.add('and KCLL.CKBH='+''''+CBX1.text+'''');
    sql.add('and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('     and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('     or KCLL.CFMDATE is null)');
    sql.add('order by KCLL.LLNO');

    active:=true;
  end;
with KCRK do     //入庫數量清單
  begin
    active:=false;
    sql.Clear;
    {
    sql.add('select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZL.CFMID1 as CFMID,JGZLS.Qty,');
    sql.add(''''+'JG'+''''+' as Memo ,JGZL.USERID, '' '' AS RKSB ');
    sql.add('from JGZL,JGZLS ');
    sql.add('where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('and JGZLS.CLBH='+''''+edit1.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('and JGZL.CKBH='+''''+CBX1.text+'''');
    sql.add('union all');
    }
    sql.add('select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,KCRK.ZSNO as Memo ,KCRK.USERID,KCRKS.RKSB ');
    sql.add('from KCRKS');
    sql.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('where KCRKS.CLBH='+''''+edit1.Text+'''');
    sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('and KCRK.CKBH='+''''+CBX1.text+'''');
    sql.add('order by KCRK.RKNO');
    active:=true;
  end;
//材料名稱及庫存數量的更新
with material do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,1000.00 as Remainder, ');
    sql.add(' 1000.00 as RKQty,1000.00 as LLQty,1000.00 as NeedQty,1000.00 as OnQty ');
    sql.add('from CLZL  where CLDH='+''''+edit1.Text+'''');
    active:=true;
  end;
end;

procedure TFDStatus_Stock.FormCreate(Sender: TObject);
begin
//DTP1.date:=startofthemonth(Date);
DTP2.date:=date;
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select CKBH from KCCK where GSBH='+''''+main.Edit2.Text+'''');
    active:=true;
    while not eof do
      begin
        CBX1.Items.Add(fields[0].value);
        next;
      end;
    if CBX1.text='' then
      begin
        CBX1.ItemIndex:=0;
      end;
    active:=false;
  end;
material.Active:=false;
KCLL.Active:=false;
KCRK.Active:=false;
end;

procedure TFDStatus_Stock.Button2Click(Sender: TObject);
begin
//MaterialTrace_Print:=TMaterialTrace_Print.create(self);
//MaterialTrace_Print.quickrep1.preview;
//MaterialTrace_Print.free;
end;

procedure TFDStatus_Stock.EXCEL2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if KCRK.Active then
  begin
    if KCRK.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   KCRK.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=KCRK.fields[i-1].FieldName;
    end;
  KCRK.First;
  j:=2;
  while   not  KCRK.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   KCRK.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=KCRK.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      KCRK.Next;
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

procedure TFDStatus_Stock.EXCEL1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if KCLL.Active then
  begin
    if KCLL.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   KCLL.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=KCLL.fields[i-1].FieldName;
    end;
  KCLL.First;
  j:=2;
  while   not  KCLL.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   KCLL.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=KCLL.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      KCLL.Next;
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

procedure TFDStatus_Stock.FormDestroy(Sender: TObject);
begin
FDStatus_Stock:=nil;
end;

end.

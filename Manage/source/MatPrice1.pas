unit MatPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, GridsEh, DBGridEh, DBTables, Buttons, ExtCtrls,
  comobj,dateutils, PrnDbgeh, Menus,ehlibBDE;

type
  TMatPrice = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CB1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    Query1DJYear: TStringField;
    Query1DJMonth: TStringField;
    Query1CLBH: TStringField;
    Query1VNPrice: TFloatField;
    Query1CWHL: TIntegerField;
    Query1USPrice: TCurrencyField;
    Query1SB: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Label2: TLabel;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    N6: TMenuItem;
    N1: TMenuItem;
    N7: TMenuItem;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1CLZMLB: TStringField;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    cnb: TCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure bbt5Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatPrice: TMatPrice;
  NDate,sdate,edate:TDate;

implementation

uses main1, MatPrice_Entry1, MatPrice_Mon1, MatPrice_ACC1,
  MatPrice_Quotation1, MatPrice_JGZL1, MatPrice_For1, FunUnit;

{$R *.dfm}

procedure TMatPrice.FormDestroy(Sender: TObject);
begin
MatPrice:=nil;
end;

procedure TMatPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if BB5.enabled  then
  begin
    showmessage('You have to save data first.');
    action:=canone;
  end
  else
    begin
      action:=cafree;
    end;
end;

procedure TMatPrice.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin 
    active:=false;
    sql.Clear; 
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    {sql.Clear  ;
    sql.add('declare @CWHL bigint ');
    sql.add('set @CWHL=(select top 1 CWHL from CWHLS ');
    sql.add('           order by HLYEAR DESC,HLMONTH DESC,HLDAY DESC )');
    sql.add('insert CWDJ');
    sql.add('select distinct convert(varchar,datepart(yyyy,getdate())) as DJYEAR,');
    sql.add('       convert(varchar,datepart(MM,getdate())) as DJMONTH');
    sql.add('       ,CLBH ,null as VNPrice,@CWHL as CWHL ,null as USPrice,'+''''+'2'+'''');
    sql.add('        as SB ,getdate() as USERDate,'+''''+'16664'+''''+' as USRID ');
    sql.add('from KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('        DATEADD(mm, DATEDIFF(mm,0,getdate()), 0) and dateadd(ms,-3,DATEADD(mm, DATEDIFF(m,0,getdate())+1, 0)) ');
    sql.add('order by CLBH ');
    execsql;
    active:=false; }
  end;

end;

procedure TMatPrice.Button1Click(Sender: TObject);
var a,b,c :word;
    i:word;
    CWHL:string;
begin
  CBX1.Enabled:=false;
  CBX2.Enabled:=false;
  CB1.Enabled:=false;
  a:=strtoint(CBX1.text);
  b:=strtoint(CBX2.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  edate:=endofthemonth(sdate);

    if cnb.Checked then
    begin
      with Qtemp do
      begin
        //20141202　weston修改原本常發現異常CWHL=0
        CWHL:='1';
        active:=false;
        sql.Clear;
        sql.add('select top 1 CWHL from CWHL '); //20150409 weston 修改每月固定匯率
        sql.add('           order by HLYEAR DESC,HLMONTH DESC ');
        active:=true;
        if recordcount>0 then CWHL:=FieldByName('CWHL').AsString;
        active:=false;
      end;
      with query1 do
      begin
        active:=false;
        sql.add('insert CWDJ');
        sql.add('select distinct convert(varchar,datepart(yyyy,KCLL.CFMDate)) as DJYEAR,');
        sql.add('       convert(varchar,datepart(MM,KCLL.CFMDate)) as DJMONTH');
        sql.add('       ,CLBH ,null as VNPrice,'+CWHL+' as CWHL ,null as USPrice,'+''''+'2'+'''');
        sql.add('        as SB ,getdate() as USERDate,'+''''+'16664'+''''+' as USERID ');
        sql.add('from KCLLS ');
        sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
        sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
        sql.add('        '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',edate)+'''' );
        sql.add('      and KCLLS.Qty<>0 ');
        //sql.add('      and KCLL.YN='+''''+'5'+'''');
        sql.add('      and not exists(select CLBH from CWDJ ');
        sql.Add('                     where CWDJ.CLBH=KCLLS.CLBH ');
        sql.add('                           and DJYEAR='+''''+inttostr(strtoint(CBX1.Text))+'''');
        sql.add('                           and DJMONTH='+''''+inttostr(strtoint(CBX2.Text))+''''+')');
        sql.add('order by CLBH ');
        execsql;
      end;
  end;
  
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CWDJ.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH ,CLZL.CLZMLB');
    sql.add('from CWDJ');
    sql.add('left join CLZL on CLZL.CLDH=CWDJ.CLBH');
    sql.add('where CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and DJYEAR='+''''+inttostr(strtoint(CBX1.Text))+'''');
    sql.add('      and DJMONTH='+''''+inttostr(strtoint(CBX2.Text))+'''');
    if CB1.Checked then
      begin
        sql.add('       and USPrice is null ');
      end;
    sql.add('order by CWDJ.CLBH ');
    active:=true;
  end;
BB4.Enabled:=true;
BBT1.enabled:=true;
BBT2.enabled:=true;
BBT3.enabled:=true;
BBT4.enabled:=true;
BBT5.enabled:=true;
BBT6.enabled:=true;
end;

procedure TMatPrice.BB7Click(Sender: TObject);
begin 
close;
end;

procedure TMatPrice.BB4Click(Sender: TObject);
begin
query1.CachedUpdates:=true;
query1.RequestLive:=true;
BB5.Enabled:=true;
BB6.Enabled:=true;
N1.Enabled:=true;
N2.enabled:=true;
N3.enabled:=true;
N4.enabled:=true;
N5.enabled:=true;
N6.enabled:=true;
N7.enabled:=true;
end;

procedure TMatPrice.BB5Click(Sender: TObject);
var YN:integer;
begin
YN:=0;
with query1 do
  begin                   
    first;
    while not eof do
      begin
        case updatestatus of
          usmodified:
            begin
              if fieldbyname('USPrice').IsNull then
                begin
                  edit;
                  fieldbyname('SB').value:='1';
                  fieldbyname('USERDate').value:=NDate;
                  fieldbyname('USERID').value:=main.edit1.text;
                end
                else
                  begin
                    edit;
                    fieldbyname('SB').value:='1';
                  end;
              upsql1.Apply(ukmodify);
            end;
          end;
        next;
      end;
    active:=false;
    active:=true;
    cachedupdates:=false;
    requestlive:=false;
    BB5.Enabled:=false;
    BB6.enabled:=false;
    N1.Enabled:=false;
    N2.enabled:=false;
    N3.enabled:=false;
    N4.enabled:=false;
    N5.enabled:=false;
    N6.enabled:=false;  
    N7.enabled:=false;
  end;
if YN=1 then
  begin
    showmessage('Some material have no USPrice.');
  end;
end;

procedure TMatPrice.BB6Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;  
    N1.Enabled:=false;
    N2.enabled:=false;
    N3.enabled:=false;
    N4.enabled:=false;
    N5.enabled:=false;  
    N6.enabled:=false;  
    N7.enabled:=false;
  end; 
end;

procedure TMatPrice.bbt6Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
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

procedure TMatPrice.Query1NewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TMatPrice.bbt5Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TMatPrice.PrintDBGridEh1BeforePrint(Sender: TObject);
begin 
PrintDBGridEh1.SetSubstitutes(['%[TDate]',CBX1.Text+'/'+CBX2.text]);
end;

procedure TMatPrice.N7Click(Sender: TObject);
var a,b,c :word;
tempdate:TDate;
begin
{if not CB1.Checked then
  begin
    showmessage('Please select the material list with no USprice.');
    abort;
  end;
a:=strtoint(CBX1.text);
b:=strtoint(CBX2.text);
c:=1;
tempdate:=encodedate(a,b,c);
tempdate:=tempdate-1;
decodedate(tempdate,a,b,c);
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select *   ');
    sql.add('from CWDJ ');
    sql.add('where DJYEAR='+''''+inttostr(a)+'''');
    sql.add('      and DJMONTH='+''''+inttostr(b)+'''');
    sql.add('      and USPrice is not null ');
    sql.add('order by CLBH ');
    active:=true;
    query1.First;
    while not query1.Eof do
      begin
        if locate('CLBH',query1.fieldbyname('CLBH').Value,[]) then
          begin
            if ((not fieldbyname('USPrice').isnull ) and (fieldbyname('USPrice').value<>0) ) then
              begin
                query1.Edit;
                query1.FieldByName('VNPrice').Value:=fieldbyname('VNPrice').Value;
                query1.FieldByName('CWHL').Value:=fieldbyname('CWHL').Value;
                query1.FieldByName('USPrice').Value:=fieldbyname('USPrice').Value;
                query1.post;
              end;
          end;
        query1.Next;
      end;
    query1.first;
    active:=false;
  end;  }
MatPrice_For:=TMatPrice_For.create(self);
MatPrice_For.show;
end;

procedure TMatPrice.BB1Click(Sender: TObject);
begin
CBX1.Enabled:=true;
CBX2.Enabled:=true;
CB1.Enabled:=true;
end;

procedure TMatPrice.N1Click(Sender: TObject);
begin
MatPrice_Entry:=TMatPrice_Entry.create(self);{
with MatPrice_Entry.Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select top 30 KCRKS.CLBH,KCRKS.RKNO,KCRKS.VNPrice,KCRKS.USPrice,KCRK.USERDATE ,KCRKS.RKSB');
    sql.add('from KCRKS');
    sql.add('left join KCRK on KCRKS.RKNO=KCRK.RKNO');
    sql.add('where  KCRKS.CLBH=:CLBH ');
    //sql.add('      andKCRK.CFMID<>'+''''+'NO'+'''');
    sql.add('order by KCRKS.RKNO DESC');
    active:=true;
  end;  }

MatPrice_Entry.show;
end;

procedure TMatPrice.N6Click(Sender: TObject);
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        if ((not fieldbyname('VNPrice').isnull) and (fieldbyname('USPrice').IsNull)) then
          begin
            edit;
            fieldbyname('USPrice').Value:=fieldbyname('VNPrice').Value/fieldbyname('CWHL').Value;
            post;
          end;
        next;
      end;
  end;
end;

procedure TMatPrice.N2Click(Sender: TObject);
begin
MatPrice_Mon:=TMatPrice_Mon.create(self);
MatPrice_Mon.show;
end;

procedure TMatPrice.N3Click(Sender: TObject);
begin
MatPrice_ACC:=TMatPrice_ACC.create(self);
MatPrice_ACC.show;

end;

procedure TMatPrice.N4Click(Sender: TObject);
begin
MatPrice_Quotation:=TMatPrice_Quotation.create(self);
MatPrice_Quotation.show;

end;

procedure TMatPrice.N5Click(Sender: TObject);
begin

MatPrice_JGZL:=TMatPrice_JGZL.create(self);
MatPrice_JGZL.show;
end;

end.

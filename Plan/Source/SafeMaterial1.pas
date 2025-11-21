unit SafeMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  DBCtrls, GridsEh, DBGridEh,dateutils, PrnDbgeh;

type
  TSafeMaterial = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Button2: TButton;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1MinQty: TCurrencyField;
    Query1MaxQty: TCurrencyField;
    Query1BLQty: TCurrencyField;
    Query1KCQty: TCurrencyField;
    Query1CLSL: TFloatField;
    Query1SBLB: TStringField;
    Query1ZWPM: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PrintDBGridEh1: TPrintDBGridEh;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SafeMaterial: TSafeMaterial;

implementation

uses main1;

{$R *.dfm}

procedure TSafeMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TSafeMaterial.Button1Click(Sender: TObject);
var 
  // year,month,day:word;
   ayear,amonth:string;
begin   //找庫存相關的數據
ayear:=floattostr(yearof(incMonth(date,-1)));
amonth:=floattostr(monthof(incMonth(date,-1)));
if length(floattostr(monthof(incMonth(date,-1))))=1 then
  amonth:='0'+amonth;

with query1 do
  begin
    active:=true;
    sql.clear;
    sql.Add('select KCSAFE.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCSAFE.MinQty,KCSAFE.MaxQty,KCSAFE.BLQty,KCSAFE.SBLB,(isnull(UseSL.CLSL,0)-isnull(UseLL.LLQty,0)) as CLSL,');
    sql.add('(isnull(LastKC.LastRem,0)+isnull(RK.RKQty,0)-isnull(LL.LLQty,0)+isnull(JGRK.JGRK,0)-isnull(JGCK.JGCK,0)) as KCQty ');
    sql.add('from KCSAFE  ');

    sql.add(' left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
    sql.add('            from KCCLMONTH  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add('                and KCMONTH='+''''+amonth+'''');
    sql.add('                and KCCLMONTH.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCCLMONTH.CLBH)) LastKC ');
    sql.add(' on LastKC.CLBH=KCSAFE.CLBH ');

    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between') ;
    sql.add('                '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add('                and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCRKS.CLBH) ');
    sql.add('           group by KCRKS.CLBH) RK on RK.CLBH=KCSAFE.CLBH ');

    sql.add(' left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    sql.add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between')   ;
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add('                   and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                   and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('                   and exists(select CLBH from KCSAFE where KCSAFE.CLBH=KCLLS.CLBH)');
    sql.add('            group by KCLLS.CLBH) LL on LL.CLBH=KCSAFE.CLBH');

    sql.add(' left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
    sql.add('            left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))  between ');
    sql.add('                   '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add('                   and JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                   and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                   and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('                   and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.CLBH )');
    sql.add('            group by JGZLS.CLBH ) JGRK on JGRK.CLBH=KCSAFE.CLBH');

    sql.add(' left join (select JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty) as JGCK from JGZLS');
    sql.add('            left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('            left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('                       left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between');
    sql.add('                           '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''''+' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add('                           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('                       ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('            where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',date)+''''  );
    sql.add('                  and JGZLS.ZMLB like '+''''+edit1.Text+'%'+'''');
    sql.add('                  and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                  and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.add('                  and exists(select CLBH from KCSAFE where KCSAFE.CLBH=JGZLS.ZMLB )');
    sql.add('            group by JGZLS.ZMLB ) JGCK on JGCK.ZMLB=KCSAFE.CLBH');
    //顯示出本日後的訂單用到的總數量
    sql.add('left join (select ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as CLSL from ZLZLS2 ');
    sql.add('           left join DDZL on DDZL.ZLBH=ZLZLS2.ZLBH ');
    sql.add('           where ZLZLS2.CLBH  like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) >= ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',date)+'''');
    sql.add('           group by ZLZLS2.CLBH ) UseSL on UseSl.CLBH=KCSAFE.CLBH ');
    //日後訂單已領的數量
    sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    sql.add('           left join DDZL on DDZL.ZLBH=KCLLS.SCBH ');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ') ;
    sql.add('           where KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) >= ');
    sql.add('                     '''+formatdatetime('yyyy/MM/dd',date)+'''');
    sql.add('                 and KCLL.CFMID='+''''+'NO'+'''');
    sql.add('           group by KCLLS.CLBH ) UseLL on UseLl.CLBH=KCSAFE.CLBH ');

    sql.add(' left join CLZL on CLZL.CLDH=KCSAFE.CLBH ');
    sql.add(' where KCSAFE.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('       and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('       and CLZL.ZWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('       and KCSAFE.SBLB='+''''+copy(combobox1.text,0,1)+'''');
    sql.add(' order by KCSAFE.CLBH ');
    active:=true;
  end;
end;

procedure TSafeMaterial.FormDestroy(Sender: TObject);
begin
SafeMaterial:=nil;
end;

procedure TSafeMaterial.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TSafeMaterial.Button3Click(Sender: TObject);
begin
PrintDbgrideh1.Preview;
end;

procedure TSafeMaterial.FormCreate(Sender: TObject);
begin
combobox1.ItemIndex:=0;
end;

end.

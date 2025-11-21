unit FeeMaterialOth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, PrnDbgeh, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,dateutils;

type
  TFeeMaterialOth = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DBGrideh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    Detail1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FeeMaterialOth: TFeeMaterialOth; 
  sdate,edate:Tdate;

implementation

{$R *.dfm}

procedure TFeeMaterialOth.FormDestroy(Sender: TObject);
begin
FeeMaterialOth:=nil;
end;

procedure TFeeMaterialOth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFeeMaterialOth.Button1Click(Sender: TObject);
var a,b,c :word;
i:word;
begin
a:=strtoint(CBX1.text);
b:=strtoint(CBX2.text);
c:=1;
sdate:=EncodeDate(a,b,c);
edate:=endofthemonth(sdate);

with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.Add('select  LBBH, MEMO from CLLBFY ');
    sql.add('where  XH='+''''+'01'+'''');
    sql.add('       and len(LBBH)>1');
    sql.add('order by LBBH ');
    active:=true;
  end;
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select FYACC.GSBH ');
     while not QTemp.eof do
       begin
         sql.add(',sum(case  when FYACC.Memo='+''''+Qtemp.fieldbyname('Memo').value+'''');
         sql.add(' then isnull(FYACC.VNACC,0) else 0  end) as '+''''+Qtemp.fieldbyname('Memo').value+'''');
         QTemp.Next;
       end;
     sql.add('from (');
      //幾大費用料別
    sql.add('select  FYACC.GSBH,FYACC.Memo,sum(FYACC.VNACC) as VNACC');
    sql.add('from (select substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) as GSBH');
    sql.add('              ,CLLBFY.Memo,KCLLS.CLBH,KCLLS.VNACC');
    sql.add('      from KCLLS');
    sql.add('      left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.add('      left join CLLBFY on CLLBFYS.FYLB=CLLBFY.LBBH ');
    sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
    //sql.add('                  and KCLLS.VNACC<>0');
    sql.add('            and CLLBFY.LBBH not like '+''''+'A%'+'''');
    sql.add('            and CLLBFY.LBBH not like '+''''+'C%'+'''');
    sql.add('      union  ');
    sql.add('      select substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end ) as GSBH');
    sql.add('              ,CLLBFY.Memo,KCLLS.CLBH,KCLLS.VNACC');
    sql.add('      from KCLLS');
    sql.add('      left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('      left join DDZL on DDZL.ZLBH=KCLLS.SCBH ');
    sql.add('      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.add('      left join CLLBFY on CLLBFY.LBBH=CLLBFYS.FYLB ');
    sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('            and KCLL.CFMID<>'+''''+'NO'+'''');
    //sql.add('                  and KCLLS.VNACC<>0');
    sql.add('            and (CLLBFY.LBBH like '+''''+'A%'+'''');
    sql.add('                 or CLLBFY.LBBH like '+''''+'C%'+''''+')');
    sql.add('            and DDZL.XieXing is null ');
    sql.add('      ) FYACC '); 
    sql.add('group by FYACC.GSBH,FYACC.Memo ) FYACC ');
    sql.add('group by FYACC.GSBH ');
    sql.add('order by FYACC.GSBH');
    active:=true;
  end;
end;

procedure TFeeMaterialOth.Query1AfterOpen(DataSet: TDataSet);
var i:word;
begin
 with DBGrideh1 do
   begin
     //Tfloatfield(Query1.Fields[0]).displayformat:='yyyy/MM/dd' ;
     columns[0].Width:=50;
     for i:=1 to query1.FieldCount-1 do
       begin
         Tfloatfield(query1.Fields[i]).displayformat:='##,#0' ;
         columns[i].Width:=100;
         Columns[i].buttonstyle:=cbsellipsis;
       end;
   end;

end;

end.

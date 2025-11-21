unit CostmaterialAcc1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,dateutils, Menus, DB, DBTables, ComCtrls, GridsEh, DBGridEh,
  StdCtrls, ExtCtrls;

type
  TCostmaterialAcc = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DBGridEh1: TDBGridEh;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query1: TQuery;
    Query1GSBH: TStringField;
    Query1SB: TStringField;
    Query1VNACC: TCurrencyField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1COSTID: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostmaterialAcc: TCostmaterialAcc;
  sdate,edate:TDate;

implementation

uses CostMaterialAccDet1;

{$R *.dfm}

procedure TCostmaterialAcc.FormDestroy(Sender: TObject);
begin
CostmaterialAcc:=nil;
end;

procedure TCostmaterialAcc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostmaterialAcc.Button1Click(Sender: TObject);
var      y,m:word;
begin
try
if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX1.Text);
m:=strtoint(CBX2.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);

with query1 do
  begin
    active:=false;
    sql.Clear;
    //sql.add('select GSBH,SB,KCLLS.COSTID,sum(VNACC) as VNACC from ');
    sql.add('select KCLL.GSBH,KCLLS.COSTID,isnull(KCLLS.CWSB,'+''''+'1'+''''+') as SB,sum(VNACC) as VNACC');
    //sql.add('        ,CLLBFY.LBBH,CLLBFY.MEMO as FYName');
    sql.add('from  KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    //sql.add('left join CLLBFYS on CLLBFYS.GSBH=KCLL.GSBH and CLLBFYS.CLBH=KCLLS.CLBH ');
    //sql.add('left join CLLBFY on CLLBFY.LBBH=substring(CLLBFYS.FYLB,1,1) and CLLBFY.XH='+''''+'01'+'''');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
    sql.add(       ''''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('      and KCLLS.VNACC<>0');
    sql.add('      and ( exists(select DDBH from CWDD where CWDD.CWYEAR+CWDD.CWMONTH<'+''''+ CBX1.text+ CBX2.text+'''');
    sql.add('                     and CWDD.DDBH=KCLLS.SCBH and CWDD.YN='+''''+'2'+''''+')');
    sql.add('            or not exists(select DDBH from DDZL where DDZL.DDBH=KCLLS.SCBH )  )');
    sql.add('group by KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+'),KCLLS.COSTID');
    sql.add('order by KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+'),KCLLS.COSTID');
    {sql.add(' union ');
    sql.add('select KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+') as SB,sum(VNPrice*Qty) as VNACC');
    sql.add('        ,CLLBFY.LBBH,CLLBFY.MEMO as FYName');
    sql.add('from  KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join CLLBFYS on CLLBFYS.GSBH=KCLL.GSBH and CLLBFYS.CLBH=KCLLS.CLBH ');
    sql.add('left join CLLBFY on CLLBFY.LBBH=substring(CLLBFYS.FYLB,1,1) ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
    sql.add(       ''''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('      and not exists(select DDBH from DDZL on DDZL.DDBH=KCLLS.SCBH )');
    sql.add('group by KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+'),CLLBFY.LBBH,CLLBFY.MEMO');
    sql.add(') FYACC group by  GSBH,SB,LBBH,FYName ');
    sql.add('order by GSBH,SB,LBBH,FYName '); }
    active:=true;
  end;
except
  showmessage('Have wrong');
end;

end;

procedure TCostmaterialAcc.Detail1Click(Sender: TObject);
begin

DTP1.Date:=sdate;
DTP2.Date:=edate;
CostMaterialAccDet:=TCostMaterialAccDet.create(self);
CostMaterialAccDet.show;
end;

end.

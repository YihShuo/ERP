unit CostmaterialNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ExtCtrls,dateutils,
  Menus, ComCtrls ;

type
  TCostmaterialNo = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Label4: TLabel;
    CBX1: TComboBox;
    Label6: TLabel;
    CBX2: TComboBox;
    Query1GSBH: TStringField;
    Query1SB: TStringField;
    Query1VNACC: TCurrencyField;
    Query1LBBH: TStringField;
    Query1FYName: TStringField;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
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
  CostmaterialNo: TCostmaterialNo;
  sdate,edate:TDate;
implementation

uses CostMaterialNoDet1;

{$R *.dfm}

procedure TCostmaterialNo.FormDestroy(Sender: TObject);
begin
CostmaterialNo:=nil;
end;

procedure TCostmaterialNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostmaterialNo.Button1Click(Sender: TObject);
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
    //sql.add('select GSBH,SB,LBBH,FYName,sum(VNACC) as VNACC from ');
    sql.add('select KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+') as SB,sum(VNACC) as VNACC');
    sql.add('        ,CLLBFY.LBBH,CLLBFY.MEMO as FYName');
    sql.add('from  KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join CLLBFYS on CLLBFYS.GSBH=KCLL.GSBH and CLLBFYS.CLBH=KCLLS.CLBH ');
    sql.add('left join CLLBFY on CLLBFY.LBBH=substring(CLLBFYS.FYLB,1,1) and CLLBFY.XH='+''''+'01'+'''');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
    sql.add(       ''''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('      and KCLLS.VNACC<>0');
    sql.add('      and ( exists(select DDBH from CWDD where CWDD.CWYEAR+CWDD.CWMONTH<'+''''+ CBX1.text+ CBX2.text+'''');
    sql.add('                     and CWDD.DDBH=KCLLS.SCBH and CWDD.YN='+''''+'2'+''''+')');
    sql.add('            or not exists(select DDBH from DDZL where DDZL.DDBH=KCLLS.SCBH )  )');
    sql.add('group by KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+'),CLLBFY.LBBH,CLLBFY.MEMO');
    sql.add('order by KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+'),CLLBFY.LBBH,CLLBFY.MEMO');
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

procedure TCostmaterialNo.Detail1Click(Sender: TObject);
begin
DTP1.Date:=sdate;
DTP2.Date:=edate;
CostMaterialNoDet:=TCostMaterialNoDet.create(self);
CostMaterialNoDet.show;
end;

end.

unit CostMaterial_DD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils  ,
  EhlibBDE;

type
  TCostMaterial_DD = class(TForm)
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1GSBH: TStringField;
    Query1SB: TStringField;
    Query1DDBH: TStringField;
    Query1VNACC: TCurrencyField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    Query1okVNACC: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostMaterial_DD: TCostMaterial_DD;

implementation

uses CostMaterial1;

{$R *.dfm}

procedure TCostMaterial_DD.FormCreate(Sender: TObject);
var      y,m:word;
begin
try
if (CostMaterial.CBX1.text='')or (CostMaterial.CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CostMaterial.CBX1.Text);
m:=strtoint(CostMaterial.CBX2.Text);
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
    sql.add('select KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+') as SB,KCLLS.SCBH as DDBH,sum(KCLLS.VNACC) as VNACC');
    sql.add('       ,DDZl.Article,XXZl.XieMing,DDZL.Pairs,CWCLFY.VNACC as okVNACC ');
    sql.add('from  KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    //sql.add('left join KCZLS on KCZLS.CKBH=KCLL.CKBH and KCZLS.CLBH=KCLLS.CLBH ');
    sql.add('left join DDZL on DDZl.DDBH=KCLLS.SCBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZL.SheHao ');
    sql.add('left join CWCLFY on CWCLFY.DDBH=KCLLS.SCBH and CWCLFY.SB=KCLLS.YN and CWCLFY.GSBH=KCLL.GSBH ');
    sql.add('                 and CWCLFY.CWYEAR='+''''+CostMaterial.CBX1.text+''''+' and CWCLFY.CWMONTH='+''''+CostMaterial.CBX2.text+'''');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
    sql.add(       ''''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('      and not exists(select YSBH from CWDD where CWDD.CWYEAR+CWDD.CWMONTH<'+''''+ CostMaterial.CBX1.text+ CostMaterial.CBX2.text+'''');
    sql.add('                     and CWDD.YSBH=KCLLS.SCBH and CWDD.SB='+''''+'1'+''''+' and CWDD.YN='+''''+'2'+''''+')');
    sql.add('      and DDZL.Article is not null ');
    sql.add('      and KCLLS.VNACC<>0');
    sql.add('group by KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+'),KCLLS.SCBH,CWCLFY.VNACC,DDZl.Article,XXZl.XieMing ,DDZL.Pairs');
    sql.add('order by KCLL.GSBH,isnull(KCLLS.CWSB,'+''''+'1'+''''+'),KCLLS.SCBH,DDZl.Article,XXZl.XieMing');
    active:=true;
  end;
except
  showmessage('Have wrong');
end;
end;

procedure TCostMaterial_DD.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        CostMaterial.CWCLFY.insert;
        CostMaterial.CWCLFY.FieldByName('CWYEAR').Value:=CostMaterial.CBX1.text ;
        CostMaterial.CWCLFY.FieldByName('CWMONTH').Value:=CostMaterial.CBX2.text ;
        CostMaterial.CWCLFY.FieldByName('GSBH').Value:=FieldByName('GSBH').Value ;
        CostMaterial.CWCLFY.FieldByName('SB').Value:=FieldByName('SB').Value ;
        CostMaterial.CWCLFY.FieldByName('DDBH').Value:=FieldByName('DDBH').Value ;
        CostMaterial.CWCLFY.FieldByName('Article').Value:=FieldByName('Article').Value ;
        CostMaterial.CWCLFY.FieldByName('XieMing').Value:=FieldByName('XieMing').Value ;
        CostMaterial.CWCLFY.FieldByName('VNACC').Value:=FieldByName('VNACC').Value ;
        CostMaterial.CWCLFY.FieldByName('Pairs').Value:=FieldByName('Pairs').Value ;
        CostMaterial.CWCLFY.post;
        next;
      end;
  end;
end;

procedure TCostMaterial_DD.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if query1.FieldByName('VNACC').value=query1.FieldByName('okVNACC').value then
  begin
    dbgrideh1.canvas.font.color:=clred;
  end;
end;

procedure TCostMaterial_DD.Button2Click(Sender: TObject);
var bm:Tbookmark;
i:integer;
bookmarklist:tbookmarklisteh;
begin
if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
//with query1 do
 // begin
query1.disablecontrols;
bm:=query1.getbookmark;
bookmarklist:=dbgrideh1.selectedrows;
if bookmarklist.count>0 then
  begin
    try
    for i:=0 to bookmarklist.count-1 do
      begin
        with query1 do
          begin
            query1.gotobookmark(pointer(bookmarklist[i]));
            CostMaterial.CWCLFY.insert;
            CostMaterial.CWCLFY.FieldByName('CWYEAR').Value:=CostMaterial.CBX1.text ;
            CostMaterial.CWCLFY.FieldByName('CWMONTH').Value:=CostMaterial.CBX2.text ;
            CostMaterial.CWCLFY.FieldByName('GSBH').Value:=FieldByName('GSBH').Value ;
            CostMaterial.CWCLFY.FieldByName('SB').Value:=FieldByName('SB').Value ;
            CostMaterial.CWCLFY.FieldByName('DDBH').Value:=FieldByName('DDBH').Value ;
            CostMaterial.CWCLFY.FieldByName('Article').Value:=FieldByName('Article').Value ;
            CostMaterial.CWCLFY.FieldByName('XieMing').Value:=FieldByName('XieMing').Value ;
            CostMaterial.CWCLFY.FieldByName('VNACC').Value:=FieldByName('VNACC').Value ;
            CostMaterial.CWCLFY.FieldByName('Pairs').Value:=FieldByName('Pairs').Value ;
            CostMaterial.CWCLFY.post;
          end;
      end;
    finally
      begin
        query1.gotobookmark(bm);
        query1.freebookmark(bm);
        query1.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end;
  end;
end;

end;

end.

unit DelOther_Carton_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TDelOther_Carton_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TIntegerField;
    Query1okQty: TCurrencyField;
    DataSource1: TDataSource;
    Query1Person: TFloatField;
    UpdateSQL1: TUpdateSQL;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_Carton_CL: TDelOther_Carton_CL;

implementation

uses DelOther_Conton1, main1;

{$R *.dfm}

procedure TDelOther_Carton_CL.FormDestroy(Sender: TObject);
begin
DelOther_Carton_CL:=nil;
end;

procedure TDelOther_Carton_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDelOther_Carton_CL.DBGridEh1DblClick(Sender: TObject);
begin   
if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
with DelOther_Conton.DelDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('SCBH').value:=query1.fieldbyname('DDBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('TempQty').value:=query1.fieldbyname('Qty').value-query1.fieldbyname('okQty').value;
    fieldbyname('Qty').value:=fieldbyname('TempQty').value;
    fieldbyname('OKqty').Value:=query1.fieldbyname('okQty').value;
    fieldbyname('CostID').value:='621' ;
    fieldbyname('DFL').value:='A';
    fieldbyname('CLSL').value:=query1.fieldbyname('Qty').value;
    post; 
  end;
Query1.Edit;
query1.fieldbyname('okQty').value:=query1.fieldbyname('Qty').value ;
showmessage('Succeed.');
end;

procedure TDelOther_Carton_CL.Button1Click(Sender: TObject);
begin

if   length(edit1.Text)<5 then
  begin
    showmessage('Pls key in condition first.');
    abort;
  end;

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT YWDD.YSBH as DDBH, YWBZPO.CLBH,sum( YWBZPO.CTS) as Qty, ');
    sql.add('       CLZL.YWPM,CLZL.DWBH,isnull(LL.okQty,0) as okQty');
    sql.add('from YWBZPO');
    sql.add('left join YWWX2 on YWWX2.CLBH=YWBZPO.CLBH');
    sql.add('left join CLZl on CLZl.CLDH=YWBZPO.CLBH ');
    sql.add('left join YWDD on YWDD.DDBH=YWBZPO.DDBH');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH ');
    sql.add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as okQty,KCLLS.SCBH from KCLLS');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('           where KCLLS.SCBH like '+''''+edit1.Text+'%'+'''');
    if length(edit1.text)<=8 then
      begin
        sql.add('            and KCLL.USERDate>='+''''+formatdatetime('yyyy/mm/dd',IncMonth(NDate,-2))+'''');
      end;
    sql.add('            and KCLLS.CLBH like '+''''+'U1%'+'''') ;
    //sql.add('            and KCLL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('            group by  KCLLS.CLBH,KCLLS.SCBH ) LL')  ;
    sql.add('           on LL.CLBH=YWBZPO.CLBH and LL.SCBH=YWDD.YSBH') ;
    sql.add('where YWDD.YSBH like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and YWDD.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('      and DDZL.YN='+''''+'1'+'''')  ;
    sql.add('group by  YWDD.YSBH, YWBZPO.CLBH,YWWX2.Square, CLZL.YWPM, ');
    sql.add('          CLZL.DWBH,LL.okQty   ');
    sql.add('order by YWDD.YSBH,YWBZPO.CLBH ');
    //memo1.Text:=sql.Text;
    active:=true;
  end; 
end;

procedure TDelOther_Carton_CL.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
   DBGridEh1DblClick(nil);
end;

procedure TDelOther_Carton_CL.Query1CalcFields(DataSet: TDataSet);
begin

with query1 do
  begin
     if FieldByName('Qty').value<>0 then
      begin
        FieldByName('Person').value:=(FieldByName('okQty').value-FieldByName('Qty').value)/FieldByName('Qty').value*100;
      end;
  end;
end;

procedure TDelOther_Carton_CL.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if  Query1.FieldByName('okQty').value>=(Query1.FieldByName('Qty').value)   then
  begin
    dbgrideh1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDelOther_Carton_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

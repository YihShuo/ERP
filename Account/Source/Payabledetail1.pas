unit Payabledetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, Menus,comobj, StdCtrls, ExtCtrls,
  GridsEh, DBGridEh,EhlibBDE;

type
  TPayabledetail = class(TForm)
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DJLX: TStringField;
    Query1DJNO: TStringField;
    Query1CLBH: TStringField;
    Query1DJDATE: TDateTimeField;
    Query1Qty: TCurrencyField;
    Query1VNPrice: TFloatField;
    Query1VNACC: TFloatField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    Query1FKBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Panel1: TPanel;
    Label1: TLabel;
    Query1CWHL: TIntegerField;
    Query1CGBH: TStringField;
    Query1USQty: TCurrencyField;
    Query1VNQty: TFloatField;
    Query1CostID: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Payabledetail: TPayabledetail;

implementation

uses PayableMaterial1, PayableDetail_Print1;

{$R *.dfm}

procedure TPayabledetail.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWYF.*,CLZL.YWPM,CLZL.DWBH  ');
    sql.add('from CWYF');
    sql.add('left join CLZL on CLZL.CLDH=CWYF.CLBH');
    sql.add('left join CWFK on CWFK.FKBH=CWYF.FKBH ');
    sql.add('where CWFK.ZSBH=:ZSBH');
    sql.add('      and convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between ');
    sql.add('         '''+formatdatetime('yyyy/mm/dd',PayableMaterial.DTP1.date)+'''');
    sql.add('      and '+''''+formatdatetime('yyyy/mm/dd',PayableMaterial.DTP2.Date)+'''');
    if PayableMaterial.CBX1.Checked then
      begin
        sql.Add('       and CWFK.ZHBH is null ');
      end;
    //sql.add('order by CWYF.DJLX,CWYF.DJNO,CWYF.CLBH ') ;
    active:=true;
  end;

end;

procedure TPayabledetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;
action:=cafree;
end;

procedure TPayabledetail.Excel1Click(Sender: TObject);
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

procedure TPayabledetail.Print1Click(Sender: TObject);
var i:integer;
begin
PayableDetail_Print:=TPayableDetail_Print.create(self);
PayableDetail_Print.quickrep1.prepare;
i:=PayableDetail_Print.quickrep1.qrprinter.pagecount;
PayableDetail_Print.page1.caption:=inttostr(i);
PayableDetail_Print.quickrep1.preview;
PayableDetail_Print.free;

end;

procedure TPayabledetail.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

with Query1 do
  begin
    if fieldbyname('USACC').value<>fieldbyname('USQty').value  then
      begin
        DBGRid1.canvas.Font.Color:=clred;
      end;    
    if fieldbyname('VNACC').value<>fieldbyname('VNQty').value  then
      begin
        DBGRid1.canvas.Font.Color:=clred;
      end;
  end;
end;

procedure TPayabledetail.FormDestroy(Sender: TObject);
begin
Payabledetail:=nil;
end;

end.

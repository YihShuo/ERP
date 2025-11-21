unit CostOrderList_GC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DBTables, DB, StdCtrls, GridsEh, DBGridEh,
  ExtCtrls;

type
  TCostOrderList_GC = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CB1: TComboBox;
    CWDD: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    CWDDDDBH: TStringField;
    CWDDArticle: TStringField;
    CWDDXieMing: TStringField;
    CWDDQty: TCurrencyField;
    CWDDokQty: TCurrencyField;
    CWDDIPrice: TCurrencyField;
    CWDDUSACC: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CWDDCalcFields(DataSet: TDataSet);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostOrderList_GC: TCostOrderList_GC;
  NDate:TDate;

implementation

uses CostOrderList1;

{$R *.dfm}

procedure TCostOrderList_GC.FormDestroy(Sender: TObject);
begin
CostOrderList_GC:=nil;
end;

procedure TCostOrderList_GC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCostOrderList_GC.Button1Click(Sender: TObject);
begin
with CWDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWDD.YSBH as DDBH,CWDD.Article,CWDD.XieMing,sum(CWDD.Qty) as Qty,isnull(CWXXCB.JGFY,0) as IPrice');
    sql.add('       ,isnull(CWDDOk.okQty,0) as okQty');
    sql.add('from CWDD ');
    sql.add('left join (select DDBH,sum(Qty) as okQty from CWDD ');
    sql.add('           where YSBH like '+''''+edit1.Text+'%'+'''');
    sql.add('                 and not (CWDD.CWYEAR='+''''+CostOrderList.CBX1.Text+'''');
    sql.add('                 and CWDD.CWMONTH='+''''+CostOrderList.CBX2.Text+''''+')');
    sql.add('                 and CWDD.GSBH='+''''+'VGC'+'''');
    sql.add('           group by DDBH) CWDDok on CWDDok.DDBH=CWDD.YSBH ');
    sql.add('left join DDZL on DDZL.DDBH=CWDD.YSBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZl.SheHao=XXZl.SheHao ');
    sql.add('left join CWXXCB on XXZl.XieXing=CWXXCB.XieXing and CWXXCB.SheHao=XXZl.SheHao ');

    sql.add('where CWDD.CWYEAR='+''''+CostOrderList.CBX1.Text+'''');
    sql.add('      and CWDD.CWMONTH='+''''+CostOrderList.CBX2.Text+'''');
    sql.add('      and CWDD.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CWDD.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CWDD.SB='+''''+'1'+'''');
    if CB1.itemindex<>0 then
      begin
        sql.add('       and CWDD.GSBH='+''''+CB1.Text+'''');
      end;
    sql.add('group by CWDD.YSBH,CWDD.Article,CWDD.XieMing,CWDD.GSBH,CWDDOk.okQty,CWXXCB.JGFY');
    sql.add('order by CWDD.YSBH,CWDD.Article,CWDD.XieMing ');
    active:=true;
  end;
end;

procedure TCostOrderList_GC.FormCreate(Sender: TObject);
var i:word;
begin

with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        dbgrid1.columns[0].picklist.add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.itemindex:=0;
    active:=false;
  end;
end;

procedure TCostOrderList_GC.DBGrid1DblClick(Sender: TObject);
begin

if CWDD.recordcount>0 then
  begin
    with CostOrderList.CWDD do
      begin
        append;
        fieldbyname('DDBH').value:=CWDD.fieldbyname('DDBH').value;
        fieldbyname('YSBH').value:=CWDD.fieldbyname('DDBH').value;
        fieldbyname('GSBH').value:='VGC';
        fieldbyname('MEMO').value:='VGC';
        fieldbyname('XieMing').value:=CWDD.fieldbyname('XieMing').value;
        fieldbyname('Article').value:=CWDD.fieldbyname('Article').value;
        fieldbyname('IPrice').value:=CWDD.fieldbyname('IPrice').value;
        fieldbyname('Qty').value:=CWDD.fieldbyname('Qty').value-CWDD.fieldbyname('okQty').value;
        fieldbyname('USACC').value:=CWDD.fieldbyname('USACC').value;
        fieldbyname('SB').value:='2';
        FieldByName('zlQty').value:=CWDD.FieldByName('Qty').value;
        post;
        CWDD.Edit;
        CWDD.FieldByName('okQty').value:=CWDD.FieldByName('Qty').value;
        //CWDD.FieldByName('okACC').value:=CWDD.FieldByName('USACC').value;
        CWDD.Post;
      end;
  end;
end;

procedure TCostOrderList_GC.CWDDCalcFields(DataSet: TDataSet);
begin
with CWDD do
  fieldbyname('USACC').Value:=fieldbyname('IPrice').Value*fieldbyname('Qty').Value ;
end;

procedure TCostOrderList_GC.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if CWDD.FieldByName('Qty').value=CWDD.FieldByName('okQty').value  then
  begin
    dbgrid1.canvas.font.color:=clRed;
  end;
end;

end.

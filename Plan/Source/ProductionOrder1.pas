unit ProductionOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, DBCtrls, ExtCtrls,
  GridsEh, DBGridEh,ehlibBDE;

type
  TProductionOrder = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button1: TButton;
    Edit3: TEdit;
    DBGrid1: TDBGridEh;
    OrdDet: TQuery;
    OrdDetSCBH: TStringField;
    OrdDetXXCC: TStringField;
    OrdDetQty: TFloatField;
    DS2: TDataSource;
    OrdMas: TQuery;
    OrdMasSCBH: TStringField;
    OrdMasZLBH: TStringField;
    OrdMasXieXing: TStringField;
    OrdMasSheHao: TStringField;
    OrdMasArticle: TStringField;
    OrdMasXieMing: TStringField;
    OrdMasQty: TFloatField;
    OrdMasDDCC: TStringField;
    OrdMasXXCC: TStringField;
    OrdMasDest: TStringField;
    OrdMasShipDate: TDateTimeField;
    OrdMasDDZT: TStringField;
    OrdMasYWSM: TStringField;
    DS1: TDataSource;
    Query1: TQuery;
    DBGrid2: TDBGridEh;
    Edit4: TEdit;
    OrdMasKFJC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProductionOrder: TProductionOrder; 
  sdate,edate:TDate;


implementation

uses main1;

{$R *.dfm}

procedure TProductionOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TProductionOrder.Button1Click(Sender: TObject);
var y,m:word;
begin
  if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(CBX2.Text);
  m:=strtoint(CBX3.Text);
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
  if m=12 then
  begin
    y:=y+1;
    m:=1;
  end
  else
    begin
      m:=m+1;
    end;
  edate:=encodedate(y,m,1)-1;

  with OrdMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.DDZT,DDZL.Dest,LBZLS.YWSM,');
    sql.add('DDZL.XieXing,DDZL.SheHao, DDZL.XieXing,DDZL.CCGB as DDCC,KFZL.KFJC,');
    sql.add('SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,XXZL.XieMing');
    sql.add('from SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH');
    sql.add('left join DDZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB'); 
    sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ') ;
    sql.Add('where SCZL.SCBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like'+''''+edit4.text+'%'+'''');
    sql.add('      and SCZL.SCBH=SCZL.ZLBH');
    sql.add('      and XXZL.ARTICLE like '+''''+edit3.Text+'%'+'''');
    sql.add('      and XXZL.XieMing like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by SCZL.ZLBH');
    active:=true;
  end;
  OrdDet.active:=true;

end;

procedure TProductionOrder.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TProductionOrder.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TProductionOrder.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit4.SetFocus;
end;

procedure TProductionOrder.FormDestroy(Sender: TObject);
begin
 ProductionOrder:=nil;
end;

procedure TProductionOrder.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if OrdMas.FieldByName('DDZT').value<>'Y' then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TProductionOrder.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  CBX2.Items.Clear;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-20 as Oldyear,year(getdate())+20 as Newyear');
    active:=true;
    for i:=Query1.fieldbyname('Oldyear').value to  Query1.fieldbyname('Newyear').value  do
    begin
      CBX2.Items.Add(inttostr(i));
      next;
    end;
    active:=false;
  end;
  //
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myYear then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[i])=myMonth then
    begin
      CBX3.ItemIndex:=i;
      break;
    end;
  end;

end;

end.

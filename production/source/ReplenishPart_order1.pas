unit ReplenishPart_order1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TReplenishPart_order = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    CB4: TCheckBox;
    CB7: TCheckBox;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ETD: TDateTimeField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    DataSource1: TDataSource;
    QDep: TQuery;
    QrecNo: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishPart_order: TReplenishPart_order;

implementation

uses NewreplenishPart1;

{$R *.dfm}

procedure TReplenishPart_order.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select distinct SCZL.SCBH,ZLZL.ZLBH,DDZL.XieXing,DDZL.SheHao,DDZL.ShipDate as ETD, ');
    sql.add('XXZL.Article,XXZL.XieMing');
    sql.add('from SCZL left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH ');
    sql.add('left join DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('where SCZL.DDLB='+''''+'N'+'''');
    sql.add(' and ZLZL.YN<>'+''''+'6'+'''');
    sql.add('and ZLZL.ZLBH like ');
    sql.add(''''+edit1.Text+'%'+'''');  
    sql.add('and DDZL.DDZT='+''''+'Y'+'''');
    sql.add('and XXZL.XieMing like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by ZLZL.ZLBH');
    active:=true;
  end;
end;

procedure TReplenishPart_order.DBGrid1DblClick(Sender: TObject);
var i:integer;
  a:string;
begin
if not CB1.checked  then
begin
  if not CB2. checked then
  begin
    if not CB3.Checked then
    begin
      if not CB4.Checked then
      begin
        if not CB7.Checked then
          begin
            messagedlg('Pls select process first.',mtwarning,[mbyes],0) ;
            abort;
          end;
      end;
    end;
  end
end;
if CBX1.ItemIndex<0 then
  begin
    messagedlg('Pls select replenish department first.',mtwarning,[mbyes],0) ;
    abort;
  end;
if CBX2.ItemIndex<0 then
  begin
    messagedlg('Pls select replenish type first.',mtwarning,[mbyes],0) ;
    abort;
  end;

with QRecNo do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCBH from SCZL where ZLBH=');
    sql.add(''''+Query1.fieldbyname('ZLBH').AsString+'''');
    active:=true;
  end;
i:=QRecNo.RecordCount;
if i<10 then
  begin
    a:='0'+inttostr(i);
  end
  else
    begin
      a:=inttostr(i);
    end;

    NewReplenishpart.QMas.insert;
    NewReplenishpart.QMas.fieldbyname('ZLBH').value:= Query1.fieldbyname('ZLBH').value;
    NewReplenishpart.QMas.fieldbyname('XieXing').value:= Query1.fieldbyname('XieXing').value;
    NewReplenishpart.QMas.fieldbyname('SheHao').value:= Query1.fieldbyname('Shehao').value;
    NewReplenishpart.QMas.fieldbyname('ETD').value:= Query1.fieldbyname('ETD').value;
    NewReplenishpart.QMas.fieldbyname('Article').value:= Query1.fieldbyname('Article').value;
    NewReplenishpart.QMas.fieldbyname('XieMing').value:= Query1.fieldbyname('XieMing').value;
    NewReplenishpart.QMas.fieldbyname('DDLB').value:=CBX2.text;
    NewReplenishpart.QMas.fieldbyname('SCBH').value:=Query1.fieldbyname('ZLBH').value+'_'+a;
    NewReplenishpart.QMas.fieldbyname('ZLDW').value:=CBX1.text;
if CB1.Checked then
  begin
    NewReplenishpart.QMas.fieldbyname('GXLB').value:='C';
  end;
if CB2.Checked then
  begin
    NewReplenishpart.QMas.fieldbyname('GXLB').value:='S';
  end;
if CB3.Checked then
  begin
    NewReplenishpart.QMas.fieldbyname('GXLB').value:='O';
  end;
if CB4.Checked then
  begin
    NewReplenishpart.QMas.fieldbyname('GXLB').value:='A';
  end;
if CB7.Checked then
  begin
    NewReplenishpart.QMas.fieldbyname('GXLB').value:='L';
  end;

close;

end;

procedure TReplenishPart_order.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
  DBGrid1DblClick (nil);
end;

procedure TReplenishPart_order.FormCreate(Sender: TObject);
begin
with QDep do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DepName from BDepartment where ProYN=1 order by ID ')  ;
    active:=true;
    while not eof do
      begin
        CBX1.Items.Add(fieldbyname('DepName').AsString);
        next;
      end;
    active:=false;
    sql.Clear;
  end;
end;

procedure TReplenishPart_order.FormDestroy(Sender: TObject);
begin
ReplenishPart_order:=nil;
end;

procedure TReplenishPart_order.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.

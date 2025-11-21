unit OrderPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, DBCtrls, ExtCtrls,dateutils,
  Menus,comobj;

type
  TOrderPrice = class(TForm)
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button1: TButton;
    Panel1: TPanel;
    DBGrid3: TDBGridEh;
    SpecMas: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    OrdDet: TQuery;
    DS2: TDataSource;
    DBGrid1: TDBGridEh;
    SpecMasDDBH: TStringField;
    SpecMasXieXing: TStringField;
    SpecMasSheHao: TStringField;
    SpecMasXieMing: TStringField;
    SpecMasDDZT: TStringField;
    SpecMasArticle: TStringField;
    SpecMasShipDate: TDateTimeField;
    SpecMasXXCC: TStringField;
    SpecMasDDCC: TStringField;
    SpecMasPairs: TIntegerField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SpecMasACCUS: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderPrice: TOrderPrice;
  sdate,edate,NDate:Tdate;

implementation

{$R *.dfm}

procedure TOrderPrice.FormCreate(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    {active:=false;
    sql.Clear;
    sql.add('select kfdh from kfzl order by kfdh');
    active:=true;
    CBX1.Items.Clear;
    for i:=1 to recordcount do
      begin
        CBX1.Items.Add(fieldbyname('kfdh').asstring);
        next;
      end;
    CBX1.Text:='P'; }
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;
end;

procedure TOrderPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TOrderPrice.Button1Click(Sender: TObject);
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
edate:=endofthemonth(sdate);

with SpecMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,DDZL.DDZT, ');
    sql.add('DDZL.Article,DDZL.ShipDate,XXZL.CCGB as XXCC,DDZL.CCGB as DDCC,DDZL.Pairs,sum(DDZLS.Quantity*DDZLS.IPrice) as ACCUS');
    sql.add('from DDZL');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('left join DDZLS on DDZL.DDBH=DDZLS.DDBH  ');
    sql.add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyyy/MM/dd',edate)+'''');
    sql.add('group by DDZL.DDBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,DDZL.DDZT, ');
    sql.add('DDZL.Article,DDZL.ShipDate,XXZL.CCGB,DDZL.CCGB,DDZL.Pairs ');
    sql.add('order by DDZL.DDBH');
    active:=true;
  end;
OrdDet.Active:=true;

end;

procedure TOrderPrice.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if SpecMas.FieldByName('DDZT').Value<>'Y' then
DBGrid1.canvas.font.color:= clred
end;

procedure TOrderPrice.N1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  SpecMas.active  then
    begin
    try
      OrdDet.Active:=false;
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   SpecMas.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=SpecMas.fields[i].FieldName;
          end;

        SpecMas.First;
        j:=2;
        while   not   SpecMas.Eof   do
          begin
            for   i:=0   to  SpecMas.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=SpecMas.Fields[i].Value;
            end;
          SpecMas.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;  
      OrdDet.Active:=true;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TOrderPrice.FormDestroy(Sender: TObject);
begin
orderprice:=nil;
end;

end.

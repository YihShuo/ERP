unit PackingPrint1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh,dateutils, DB, DBTables;

type
  TPackingPrint = class(TForm)
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button2: TButton;
    DDZL: TQuery;
    DS1: TDataSource;
    DDZLYWDD: TStringField;
    DDZLDDBH: TStringField;
    DDZLArticle: TStringField;
    DDZLShipDate: TDateTimeField;
    DDZLCCGB: TStringField;
    DDZLDDZT: TStringField;
    DDZLGSBH: TStringField;
    DDZLXieMing: TStringField;
    DDZLKFJC: TStringField;
    DDZLPairs: TIntegerField;
    DDZLKHPO: TStringField;
    DDZLDDGB: TStringField;
    DDZLIMGName: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PackingPrint: TPackingPrint;
  sdate,edate:Tdate;

implementation

uses main1, packingPrint_P1;

{$R *.dfm}

procedure TPackingPrint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPackingPrint.Button1Click(Sender: TObject);
var y,m:word;
begin
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


with DDZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  (case when OrderSplit.ZDBH is null then DDZL.DDBH else OrderSplit.ZDBH end) as YWDD,');
    sql.add('DDZL.DDBH,DDZL.Article,DDZL.ShipDate,DDZL.KHPO,DDZL.CCGB,DDZL.DDZT,DDZL.GSBH,');
    sql.add('XXZl.XieMing,KFZL.KFJC,lbzls.YWSM as DDGB, ');
    sql.add('(case when OrderSplit.Pairs is null then DDZL.Pairs else OrderSplit.Pairs end) as Pairs ,XXZL.IMGName');
    sql.add('from DDZL ');
    sql.add('left join OrderSplit on OrderSplit.DDBH=DDZL.DDBH');
    sql.add('left join XXZL on DDZl.XieXing=XXZl.XieXing and DDZl.SheHao=' +
                                                               'XXZl.SheHao ');
    sql.add('left join kfzl on KFZl.KFDH=DDZL.KHBH');
    sql.add('left join LBZLS on lbzls.lb='+''''+'06'+'''');
    sql.add('                  and lbzls.lbdh=DDZL.DDGB ');
    sql.add('where DDZL.DDBH like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+
                            formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
    //sql.add('and DDZL.DDZT<>'+''''+'S'+'''');
    //sql.add('and DDZLTW.DDZT<>'+''''+'C'+'''');
    sql.add('order by DDZL.DDBH,ordersplit.ZDBH ');
    active:=true;
  end;

end;

procedure TPackingPrint.Button2Click(Sender: TObject);
var a:string;
begin
if not DDZL.active then
  begin
    abort;
  end;
if DDZL.recordcount=0 then
  begin
    abort;
  end;
packingPrint_P:=TpackingPrint_P.create(nil);
packingPrint_P.QRCompositeReport1.prepare;
packingPrint_P.PAGEN.caption:='/'+inttostr(packingPrint_P.Quickrep3.QRPrinter.pagecount);
packingPrint_P.PAGEN2.caption:='/'+inttostr(packingPrint_P.Quickrep3.QRPrinter.pagecount);
packingPrint_P.PAGEN3.caption:='/'+inttostr(packingPrint_P.Quickrep2.QRPrinter.pagecount);
    try              // 圖片加載不論是否成功都要打印
      a:=DDZL.fieldbyname('IMGName').AsString  ;
      packingPrint_P.IMGName.Picture.LoadFromFile(a);
    except
      showmessage('No picture of article.');
    end ;
packingPrint_P.QRCompositeReport1.Preview;
packingPrint_P.free;
end;

procedure TPackingPrint.FormDestroy(Sender: TObject);
begin
PackingPrint:=nil;
end;

end.

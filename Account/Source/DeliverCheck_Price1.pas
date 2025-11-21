unit DeliverCheck_Price1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  dateutils;

type
  TDeliverCheck_Price = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1RKNO: TStringField;
    Query1USERDate: TDateTimeField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TFloatField;
    Query1ZSYWJC: TStringField;
    Label3: TLabel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverCheck_Price: TDeliverCheck_Price;

implementation

uses DeliverCheck1, main1;

{$R *.dfm}

procedure TDeliverCheck_Price.FormCreate(Sender: TObject);
begin
DTP1.date:=incmonth(date,-1)  ;
DTP2.date:=date;
edit1.Text:=DeliverCheck.query1.FieldByName('CLBH').Value;
button1click(nil);
end;

procedure TDeliverCheck_Price.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=true;
    sql.Clear;
    //從期初取單價
    sql.add('select KCCLMONTH.KCYEAR+'+''''+'/'+''''+'+KCCLMONTH.KCMONTH as RKNO,KCCLMONTH.USERDate,  ');
    sql.add('       KCCLMONTH.CLBH,KCCLMONTH.USPrice,KCCLMONTH.VNPrice,'+''''+'Stock'+''''+' as ZSYWJC ');
    sql.add('from KCCLMONTH ');
    sql.add('left join KCCK on KCCK.CKBH=KCCLMONTH.CKBH');
    sql.Add('where KCCLMONTH.VNACC<>0 ')  ;
    sql.add('      and KCCK.GSBH='+''''+main.edit2.text+'''');
    sql.add('      and KCCLMONTH.CLBH='+''''+edit1.text+'''');
    sql.add('union ');
    sql.add('select distinct KCRK.RKNO,KCRK.USERDate,KCRKS.CLBH,KCRKS.USPrice,');
    sql.add('       KCRKS.VNPrice,ZSZL.ZSYWJC');
    sql.add('from KCRKS');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDAte,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+ formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and KCRKS.CLBH='+''''+edit1.text+'''');
    sql.add('      and KCCK.GSBH='+''''+main.edit2.text+'''');
    //sql.add('order by USERDATE,RKNO') ;
    active:=true;
  end;
end;

procedure TDeliverCheck_Price.FormDestroy(Sender: TObject);
begin
delivercheck_price:=nil;
end;

procedure TDeliverCheck_Price.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.

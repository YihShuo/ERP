unit OrderMark_Im1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TOrderMark_Im = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    YWDD: TQuery;
    DS1: TDataSource;
    DDMT: TQuery;
    DS2: TDataSource;
    Label2: TLabel;
    Edit2: TEdit;
    YWDDDDBH: TStringField;
    YWDDXieMing: TStringField;
    YWDDArticle: TStringField;
    YWDDETD: TDateTimeField;
    YWDDQty: TFloatField;
    DDMTDDBH: TStringField;
    DDMTXH: TStringField;
    DDMTUSERDATE: TDateTimeField;
    DDMTUSERID: TStringField;
    DDMTYN: TStringField;
    DDMTMTBH1: TStringField;
    DDMTMTLR1: TStringField;
    DDMTMTBH2: TStringField;
    DDMTMTLR2: TStringField;
    DDMTMTBH3: TStringField;
    DDMTMTLR3: TStringField;
    DDMTMTBH4: TStringField;
    DDMTMTLR4: TStringField;
    YWDDKFJC: TStringField;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderMark_Im: TOrderMark_Im;

implementation

uses OrderMark1, OrderList1, main1;

{$R *.dfm}

procedure TOrderMark_Im.Button1Click(Sender: TObject);
begin
if length(edit1.text)<5 then
  begin
    showmessage('Pls key in confidition.');
    abort;
  end;
with YWDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWDD.DDBH, YWDD.YSBH,DDZL.XieXing,DDZL.SheHao, XXZL.XieMing,');
    sql.add('YWDD.Qty,DDZL.Article,YWDD.ETD,KFZL.KFJC');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.Add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    if Edit4.Text<>'' then
      sql.add('      and DDZL.Buyno like ''%'+Edit4.Text+'%'' ');
    sql.add('      and XXZL.Article like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and (LBZLS.YWSM like '+''''+'%'+edit3.text+'%'+''''+' or LBZLS.YWSM is null)');
    sql.add('order by YWDD.DDBH');
    active:=true;
  end;
DDMT.Active:=true;
end;

procedure TOrderMark_Im.DBGridEh1DblClick(Sender: TObject);
begin
if YWDD.recordcount=0 then
  begin
    showmessage('Pls select order old first.');
    abort;
  end;
if DDMT.recordcount=0 then
  begin
    showmessage('Pls select order old first.');
    abort;
  end;
with OrderMark.YWDDMT do
  begin
    DDMT.First;
    while not DDMT.Eof do
      begin
        insert;
        fieldbyname('DDBH').value:=OrderList.SpecMas.fieldbyname('DDBH').value;
        fieldbyname('XH').value:=DDMT.fieldbyname('XH').value;
        fieldbyname('MTBH1').value:=DDMT.fieldbyname('MTBH1').value;
        fieldbyname('MTLR1').value:=DDMT.fieldbyname('MTLR1').value;
        fieldbyname('MTBH2').value:=DDMT.fieldbyname('MTBH2').value;
        fieldbyname('MTLR2').value:=DDMT.fieldbyname('MTLR2').value;
        fieldbyname('MTBH3').value:=DDMT.fieldbyname('MTBH3').value;
        fieldbyname('MTLR3').value:=DDMT.fieldbyname('MTLR3').value;
        fieldbyname('MTBH4').value:=DDMT.fieldbyname('MTBH4').value;
        fieldbyname('MTLR4').value:=DDMT.fieldbyname('MTLR4').value;
        fieldbyname('USERID').value:=main.edit1.text;
        fieldbyname('USERDATE').value:=date;  
        fieldbyname('YN').value:='1';
        post;
        DDMT.Next;
      end;
    showmessage('Succeed');
  end;
end;

procedure TOrderMark_Im.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGridEh1DblClick(nil);
end;

procedure TOrderMark_Im.FormDestroy(Sender: TObject);
begin
ordermark_im:=nil;
end;

procedure TOrderMark_Im.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TOrderMark_Im.FormShow(Sender: TObject);
begin
 main.FormLanguage(Pointer(self),self.Name);
end;

end.

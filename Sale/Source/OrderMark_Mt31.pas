unit OrderMark_Mt31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TOrderMark_Mt3 = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrideh1: TDBGridEh;
    Query1: TQuery;
    Query1MTBH: TStringField;
    Query1MTQZ: TStringField;
    Query1MTLR: TStringField;
    DS1: TDataSource;
    Query1KFJC: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrideh1DblClick(Sender: TObject);
    procedure DBGrideh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderMark_Mt3: TOrderMark_Mt3;

implementation

uses OrderMark1, OrderList1, main1;

{$R *.dfm}

procedure TOrderMark_Mt3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TOrderMark_Mt3.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWMT.*,KFZL.KFJC from YWMT');
    sql.Add('left join KFZL on KFZl.KFDH=YWMT.KHBH ');
    sql.add('where YWMT.MTBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWMT.MTQZ like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and KFZL.KFJC='+''''+OrderList.SpecMas.fieldbyname('KFJC').Value+'''');
    sql.add('order by YWMT.MTBH');
    active:=true;
  end;
end;

procedure TOrderMark_Mt3.DBGrideh1DblClick(Sender: TObject);
var a:string;
begin
if query1.recordcount>0 then
  begin
    with OrderMark.YWDDMT do
      begin
        if  query1.fieldbyname('MTLR').isnull then
         begin
           a:='';
         end
         else
           a:=query1.fieldbyname('MTLR').value  ;
        edit;
        fieldbyname('MTBH3').value:=query1.fieldbyname('MTBH').value;
        fieldbyname('MTLR3').value:=query1.fieldbyname('MTQZ').value+a;
        //post;
      end;
  end;
close;
end;

procedure TOrderMark_Mt3.DBGrideh1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  Dbgrideh1dblclick(nil);
end;

procedure TOrderMark_Mt3.FormDestroy(Sender: TObject);
begin
ordermark_mt3:=nil;
end;

procedure TOrderMark_Mt3.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

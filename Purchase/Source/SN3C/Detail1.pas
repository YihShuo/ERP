unit Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables;

type
  TDetail = class(TForm)
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Detail: TDetail;

implementation

uses OrderControlRecord1, main1,fununit;

{$R *.dfm}

procedure TDetail.FormDestroy(Sender: TObject);
begin
  Detail:=nil;
end;

procedure TDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  query1.active:=false;
end;

procedure TDetail.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear; 
    SQL.Add('  Select kcrk.ZSNO as PO,sum(KCRKS.Qty) as Quantity  ');
    SQL.Add('  From kcrks left join kcrk  ');
    SQL.Add('  on kcrks.RKNO=kcrk.rkno  ');
    SQL.Add('  Left join cgzl on kcrk.ZSNO=cgzl.CGNO  ');
    SQL.Add('  Left join zszl_type on cgzl.ZSBH=zszl_type.zsdh  ');
    SQL.Add('  Left join zszl on cgzl.ZSBH=zszl.zsdh  ');
    SQL.Add('  Where convert(smalldatetime,convert(varchar,kcrk.USERDATE,111))='''+OrderControlRecord.Query1.FieldByName('UserDate').AsString+''' ');
    SQL.Add('  and kcrk.GSBH='''+main.edit2.text+''' and cgzl.ZSBH='''+OrderControlRecord.Query1.FieldByName('ZSBH').Asstring+'''  ');
    if  OrderControlRecord.check.Checked then
      SQL.Add(' and CGZL.USERID='''+main.Edit1.Text+''' ');
    SQL.Add('  Group by kcrk.ZSNO  ');
    SQL.Add('  Order by kcrk.ZSNO  ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  DBGridEh1.columns[0].width:=80;
  DBGridEh1.columns[1].width:=80;
  DBGridEh1.columns[1].displayformat:='##,#0.00';
end;

end.

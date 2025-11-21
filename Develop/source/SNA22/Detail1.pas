unit Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TDetail = class(TForm)
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1TableName: TStringField;
    Query1TNO: TStringField;
    Query1CLBH: TStringField;
    Query1OldID: TStringField;
    Query1DelID: TStringField;
    Query1DelDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Detail: TDetail;

implementation

uses ColorSwatchScan1;

{$R *.dfm}

procedure TDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TDetail.FormDestroy(Sender: TObject);
begin
  Detail:=nil;
end;

procedure TDetail.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select * from BDelRec where tablename = ''CGZLInvoiceS_Check'' ');
    SQL.Add('and TNO='''+ColorSwatchScan.QReport.fieldbyname('CINO').AsString+''' ');
    SQL.Add('and CLBH like '''+ColorSwatchScan.QReport.fieldbyname('CGNO').AsString+'***'+ColorSwatchScan.QReport.fieldbyname('CLBH').AsString+'%'' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

end.

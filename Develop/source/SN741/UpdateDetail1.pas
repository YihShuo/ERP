unit UpdateDetail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TUpdateDetail = class(TForm)
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
  UpdateDetail: TUpdateDetail;

implementation

uses FDExcelData1;

{$R *.dfm}

procedure TUpdateDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TUpdateDetail.FormDestroy(Sender: TObject);
begin
  UpdateDetail:=nil;
end;

procedure TUpdateDetail.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select * from BDelRec where tablename = ''CGZLInvoiceS_Check'' ');
    SQL.Add('and TNO='''+FDExcelData.QReport.fieldbyname('CINO').AsString+''' ');
    SQL.Add('and CLBH like '''+FDExcelData.QReport.fieldbyname('CGNO').AsString+'***'+FDExcelData.QReport.fieldbyname('CLBH').AsString+'%'' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

end.

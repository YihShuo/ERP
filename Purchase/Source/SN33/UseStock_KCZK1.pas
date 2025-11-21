unit UseStock_KCZK1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TUseStock_KCZK = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1YN: TStringField;
    Query1CLBH: TStringField;
    Query1ZKBH: TStringField;
    Query1SIZE: TStringField;
    Query1ZKQty: TFloatField;
    Query1ZKLQty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UseStock_KCZK: TUseStock_KCZK;

implementation
  uses main1, UseStock1;
{$R *.dfm}

procedure TUseStock_KCZK.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TUseStock_KCZK.FormDestroy(Sender: TObject);
begin
  UseStock_KCZK:=nil;
end;

procedure TUseStock_KCZK.FormCreate(Sender: TObject);
begin
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('	Select KCZK.YN,KCZK.CLBH,KCZK.ZKBH,KCZKS.SIZE,KCZKS.Qty as ZKQty,KCZKS.LQty as ZKLQty ');
      SQL.Add('	from KCZK ');
      SQL.Add('	left join KCZKS on KCZKS.ZKBH=KCZK.ZKBH ');
      SQL.Add('	where KCZK.YN<>''X'' and KCZK.ZKNO=''ZZZZZZZZZZ'' and KCZK.GSBH='''+main.Edit2.Text+''' and KCZK.USERDate>GetDate()-180 and KCZKS.LQty>=0  ');
      SQL.Add('	    and KCZK.CLBH=:CLBH ');
      SQL.Add('	order by KCZK.YN DESC, KCZK.ZKBH DESC');
      Active:=true;
    end;
end;

end.

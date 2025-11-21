unit PurSample_SP_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids;

type
  TPurSample_SP_Detail = class(TForm)
    DBGrid1: TDBGrid;
    CGZLSSQry: TQuery;
    DS: TDataSource;
    CGZLSSQryCGNO: TStringField;
    CGZLSSQryokQty: TCurrencyField;
    CGZLSSQryCLBH: TStringField;
    CGZLSSQryZLBH: TStringField;
    CGZLSSQryYWPM: TStringField;
    CGZLSSQryDWBH: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_SP_Detail: TPurSample_SP_Detail;

implementation
  uses main1,PurSample_SP1;
{$R *.dfm}

procedure TPurSample_SP_Detail.FormCreate(Sender: TObject);
begin
  with CGZLSSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CGZLSS.CGNO,CGZLSS.Qty as okQty,CGZLSS.CLBH,CGZLSS.ZLBH,CLZL.YWPM,CLZL.DWBH  ');
    SQL.Add('           from CGZLSS ');
    SQL.Add('           left join CLZL on CLZL.CLDH=CGZLSS.CLBH ');
    SQL.Add('           left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH ');
    SQL.Add('           left join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
    SQL.Add('           where CGZLSS.CLBH=:CLBH ');
    //SQL.Add('                 and CGZLSS.XXCC=''ZZZZZZ'' ');
    SQL.Add('                 and CGZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                 and CGZLSS.ZLBH=:Article ');
    Active:=true;
  end;

end;

end.

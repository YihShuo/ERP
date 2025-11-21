unit OrderUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB;

type
  TOrderUnit = class(TForm)
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DS1: TDataSource;
    ADOQuery1SCNO: TStringField;
    ADOQuery1CGNO: TStringField;
    ADOQuery1ZLBH: TStringField;
    ADOQuery1Qty: TFloatField;
    ADOQuery1ARTICLE: TStringField;
    ADOQuery1Pairs: TIntegerField;
    ADOQuery1ShipDate: TDateTimeField;
    ADOQuery1Assemble: TStringField;
    ADOQuery1ADate: TDateTimeField;
    ADOQuery1DepName: TStringField;
    ADOQuery1DepMemo: TStringField;
    ADOQuery1Xuong: TStringField;
    ADOQuery1KHPO: TStringField;
    ADOQuery1YWSM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ShowData();
  public
    { Public declarations }
  end;

var
  OrderUnit: TOrderUnit;

implementation
  uses main1;
{$R *.dfm}

procedure TOrderUnit.ShowData();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select B.SCNO,B.CGNO,DDZL.KHPO,B.ZLBH,B.Qty,DDZL.ARTICLE,DDZL.Pairs,DDZL.ShipDate,SCZLDate.Assemble,SCZLDate.ADate,BDepartment.DepName,BDepartment.DepMemo,BDepartment.Xuong, LBZLS.YWSM ');
    SQL.Add('from KCRKScan_RFSS A');
    SQL.Add('left join KCRKScan_RFSSS B on A.SCNO=B.SCNO and A.CLBH=B.CLBH and A.Pack=B.Pack');
    SQL.Add('left join DDZL on DDZL.DDBH=B.ZLBH');
    SQL.Add('left join XXZL on XXZL.XieXIng=DDZL.XieXIng and XXZL.SheHao=DDZL.SheHao');
    SQL.Add('left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH');
    SQL.Add('Left join BDepartment on BDepartment.ID=SCZLDate.Assemble');
    SQL.Add('Left join LBZLS on LBZLS.LBDH=DDZL.DDGB AND LBZLS.LB=''06'' ');
    SQL.Add('where A.barcode='''+mainform.QrCodeRes+''' ');
    Active:=true;
  end;
end;

procedure TOrderUnit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:=CaFree;
end;

procedure TOrderUnit.FormCreate(Sender: TObject);
begin
  ShowData();
end;

procedure TOrderUnit.FormDestroy(Sender: TObject);
begin
  OrderUnit:=nil;
end;

end.

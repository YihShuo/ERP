unit OnTime_sczl1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls;

type
  TOnTime_sczl = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    Query1SCBH: TStringField;
    Query1ZLBH: TStringField;
    Query1XieXing: TStringField;
    Query1Shehao: TStringField;
    Query1XieMing: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OnTime_sczl: TOnTime_sczl;

implementation

uses Ontime1;

{$R *.dfm}

procedure TOnTime_sczl.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCZL.SCBH,SCZL.ZLBH,XXZl.XieXing,XXZl.Shehao,XXZl.XieMing ');
    sql.add('from ( select distinct SCZL.SCBH,SCZL.ZLBH ');
    sql.add(' from SCZL where SCZL.SCBH like '+''''+Edit1.Text+'%'+''''+' ) SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZl.ZLBH');
    sql.add('left join DDZL on DDZl.ZLBh=ZLZL.ZLBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl.Shehao');
    sql.add('order by SCZl.SCBH');
    active:=true;
  end;
end;

procedure TOnTime_sczl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.OnClick(nil);
end;

procedure TOnTime_sczl.DBGrid1DblClick(Sender: TObject);
begin

if query1.RecordCount>0 then
  begin
    OnTime.QRepDet.edit;
    OnTime.QRepDet.fieldbyname('SCBH').value:= Query1.fieldbyname('SCBH').value ;
   // OnTime.QRepDet.fieldbyname('GXLB').value:= Query1.fieldbyname('GXLB').value ;
   // OnTime.QRepDet.fieldbyname('YN').value:= Query1.fieldbyname('YN').value ;
    Query1.Active:=false;
    close;
  end;
end;

procedure TOnTime_sczl.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  dbgrid1dblclick(nil);
end;

procedure TOnTime_sczl.FormDestroy(Sender: TObject);
begin
OnTime_sczl:=nil;
end;

procedure TOnTime_sczl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.

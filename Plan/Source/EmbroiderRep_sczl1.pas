unit EmbroiderRep_sczl1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEmbroiderRep_sczl = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1SCBH: TStringField;
    Query1ZLBH: TStringField;
    Query1XieXing: TStringField;
    Query1Shehao: TStringField;
    Query1XieMing: TStringField;
    Query1Article: TStringField;
    Query1BWBH: TStringField;
    Query1YWSM: TStringField;
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
  EmbroiderRep_sczl: TEmbroiderRep_sczl;

implementation

uses EmbroiderRep1;

{$R *.dfm}

procedure TEmbroiderRep_sczl.Button1Click(Sender: TObject);
begin

with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCZL.SCBH,SCZL.ZLBH,XXZl.XieXing,XXZl.Shehao,XXZl.XieMing ,XXZL.Article,BWZL.YWSM,DXBW.BWBH');
    sql.add('from  SCZL');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZl.ZLBH');
    sql.add('left join DDZL on DDZl.ZLBh=ZLZL.ZLBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl.Shehao');
    sql.add('left join DXBW on DXBW.XieXing=XXZl.XieXing  ');
    sql.add('left join BWZL on BWZL.BWDH=DXBW.BWBH');
    sql.add('where  ZLZL.YN<>'+''''+'6'+'''');
    sql.add(' and SCZL.GXLB='+''''+'Y'+'''');
    sql.add('order by SCZl.SCBH');
    active:=true;
  end;
end;

procedure TEmbroiderRep_sczl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  button1.OnClick(nil);
end;

procedure TEmbroiderRep_sczl.DBGrid1DblClick(Sender: TObject);
begin

if query1.RecordCount>0 then
  begin
    EmbroiderRep.QRepDet.edit;
    EmbroiderRep.QRepDet.fieldbyname('SCBH').value:= Query1.fieldbyname('SCBH').value ;
    EmbroiderRep.QRepDet.fieldbyname('BWBH').value:=query1.fieldbyname('BWBH').value;
    Query1.Active:=false;
    close;
  end;
end;

procedure TEmbroiderRep_sczl.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
  dbgrid1dblclick(nil);
end;

procedure TEmbroiderRep_sczl.FormDestroy(Sender: TObject);
begin
EmbroiderRep_sczl:=nil;
end;

procedure TEmbroiderRep_sczl.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.

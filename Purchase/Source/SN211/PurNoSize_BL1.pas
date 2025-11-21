unit PurNoSize_BL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBTables, Grids, DBGrids, ExtCtrls;

type
  TPurNoSize_BL = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    DataSource1: TDataSource;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1Article: TStringField;
    Query1CLBH: TStringField;
    Query1Memo: TStringField;
    Query1XieMing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurNoSize_BL: TPurNoSize_BL;

implementation

uses PurNoSize1, main1;

{$R *.dfm}

procedure TPurNoSize_BL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TPurNoSize_BL.Button1Click(Sender: TObject);
var i:integer;
begin
i:=strtoint(combobox1.Text);
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,CGZLSS.CLBH,CGZLS.Memo ');
    sql.add('from CGZLSS ');
    sql.add('left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
    sql.add('left join CGZL on CGZl.CGNO=CGZLSS.CGNO ');
    sql.add('left join DDZL on DDZL.ZLBH=CGZLSS.ZLBH ');
    sql.add('left join XXZl on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZl.SheHao ');
    sql.add('where CGZLSS.CLBH=:CLBH');
    sql.add('and CGZLS.Memo is not null ');
    sql.add('and CGZLSS.XXCC='+''''+'ZZZZZZ'+'''');
    sql.add('and CGZL.GSBH='+''''+main.edit2.text+'''');
    sql.add('and CGZLSS.CFMDate>getdate()-'+combobox1.Text);
    sql.add('order by  XXZL.XieXing,XXZL.SheHao,XXZL.Article,CGZLS.Memo  ');
    active:=true;
  end;
end;

procedure TPurNoSize_BL.DBGrid1DblClick(Sender: TObject);
begin
if query1.Active then
  begin
    if query1.recordcount>0 then
      begin
        PurNoSize.CGDet.edit;
        IF PurNoSize.CGDet.fieldbyname('Memo').isnull then
          begin
            PurNoSize.CGDet.fieldbyname('Memo').value:=query1.fieldbyname('Memo').value;
          end
          else
            begin
              PurNoSize.CGDet.fieldbyname('Memo').value:=PurNoSize.CGDet.fieldbyname('Memo').value+query1.fieldbyname('Memo').value;
            end;
      end;
  end;
end;

procedure TPurNoSize_BL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TPurNoSize_BL.FormDestroy(Sender: TObject);
begin
PurNoSize_BL:=nil;
end;

end.

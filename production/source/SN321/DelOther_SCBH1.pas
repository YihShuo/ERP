unit DelOther_SCBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TDelOther_SCBH = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DDZL: TQuery;
    DS1: TDataSource;
    DDZLDDBH: TStringField;
    DDZLXieXing: TStringField;
    DDZLSheHao: TStringField;
    DDZLArticle: TStringField;
    DDZLXieMing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_SCBH: TDelOther_SCBH;

implementation

uses DelOther1, main1;

{$R *.dfm}

procedure TDelOther_SCBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DDZL.Active:=false;
end;

procedure TDelOther_SCBH.Button1Click(Sender: TObject);
begin
with DDZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.DDBH,XXZl.XieXing,XXZl.SheHao,XXZl.Article,XXZl.XieMing');
    sql.add('from DDZL');
    sql.add('left join XXZl on DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl.SheHao');
    sql.Add('where 1=1');
    sql.add('      and DDZL.YN<>''5'' ');
    sql.add('      and DDZL.DDBH like '''+edit1.Text+'%'' ');
    sql.add('      and GSBH='''+main.edit2.text+'''');
    sql.add('and exists(select SCZL.SCBH from SCZL where SCZL.SCBH=DDZL.ZLBH)');
    sql.add('order by DDZL.DDBH ');
    active:=true;
  end;

end;

procedure TDelOther_SCBH.DBGrid1DblClick(Sender: TObject);
begin
if DDZl.Active then
  begin
    if DDZL.recordcount>0 then
      begin
        DelOther.DelDet.Edit;
        DelOther.DelDet.fieldbyname('SCBH').value:=DDZL.fieldbyname('DDBH').value;
      end
      else
        begin
            //if DDZL.FieldByName('SB').IsNull then
           // begin
            showmessage('Already finish production 7 Days.');
            abort;
        end;
  end;
end;

procedure TDelOther_SCBH.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TDelOther_SCBH.FormDestroy(Sender: TObject);
begin
DelOther_SCBH:=nil;
end;

procedure TDelOther_SCBH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

unit DelOther_C_SCBH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TDelOther_C_SCBH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DDZL: TQuery;
    DDZLDDBH: TStringField;
    DDZLXieXing: TStringField;
    DDZLSheHao: TStringField;
    DDZLArticle: TStringField;
    DDZLXieMing: TStringField;
    DS1: TDataSource;
    DDZLSB: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_C_SCBH: TDelOther_C_SCBH;

implementation

uses main1, DelOther_C1;

{$R *.dfm}

procedure TDelOther_C_SCBH.FormDestroy(Sender: TObject);
begin
DelOther_C_SCBH:=nil;
end;

procedure TDelOther_C_SCBH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DDZL.active:=false;
action:=cafree;
end;

procedure TDelOther_C_SCBH.Button1Click(Sender: TObject);
begin

with DDZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.DDBH,XXZl.XieXing,XXZl.SheHao,XXZl.Article,XXZl.XieMing,DDZL.YN as SB');
    sql.add('from DDZL');
    sql.add('left join XXZl on DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl.SheHao');
    sql.add('where DDZL.DDZT='+''''+'Y'+'''');
    sql.add('      and DDZL.YN='+''''+'1'+'''');
    sql.add('      and DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and GSBH='+''''+main.edit2.text+'''');
    sql.add('      and exists(select SCZL.SCBH from SCZL where SCZL.SCBH=DDZL.ZLBH)');
    sql.add('order by DDZL.DDBH ');
    active:=true;
  end;
end;

procedure TDelOther_C_SCBH.DBGrid1DblClick(Sender: TObject);
begin
if DDZl.Active then
  begin
    if DDZL.recordcount>0 then
      begin   
        if DDZL.FieldByName('SB').value='5' then
          begin
            showmessage('Already Shipping out.');
            abort;
          end;
        DelOther_C.DelDet.Edit;
        DelOther_C.DelDet.fieldbyname('SCBH').value:=DDZL.fieldbyname('DDBH').value;
      end;
  end;
close;
end;

procedure TDelOther_C_SCBH.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TDelOther_C_SCBH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

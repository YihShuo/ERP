unit ReplenishDel_ZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TReplenishDel_ZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DDZL: TQuery;
    DDZLDDBH: TStringField;
    DDZLXieXing: TStringField;
    DDZLSheHao: TStringField;
    DDZLArticle: TStringField;
    DDZLXieMing: TStringField;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDel_ZL: TReplenishDel_ZL;

implementation

uses main1, ReplenishDel1;

{$R *.dfm}

procedure TReplenishDel_ZL.FormDestroy(Sender: TObject);
begin
ReplenishDel_ZL:=nil;
end;

procedure TReplenishDel_ZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DDZL.active:=false;
end;

procedure TReplenishDel_ZL.Button1Click(Sender: TObject);
begin

with DDZL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.DDBH,XXZl.XieXing,XXZl.SheHao,XXZl.Article,XXZl.XieMing');
    sql.add('from DDZL');
    sql.add('left join XXZl on DDZl.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl.SheHao');
    sql.add('where DDZL.YN<>''5''');
    sql.add('      and DDZL.DDBH like '''+edit1.Text+'%''');
    sql.add('      and GSBH='''+main.edit2.text+'''');
    sql.add('and exists(select SCZL.SCBH from SCZL where SCZL.SCBH=DDZL.ZLBH)');
    sql.add('order by DDZL.DDBH ');
    //memo1.Text:=sql.Text;
    active:=true;
    //showmessage(inttostr(recordcount));
  end;
end;

procedure TReplenishDel_ZL.FormKeyPress(Sender: TObject; var Key: Char);
begin

ReplenishDel_ZL:=nil;
end;

procedure TReplenishDel_ZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TReplenishDel_ZL.DBGridEh1DblClick(Sender: TObject);
begin
  if DDZl.Active then
  begin
    if DDZL.recordcount>0 then
      begin
        ReplenishDel.BLMas.Edit;
        ReplenishDel.BLMas.fieldbyname('ZLBH').value:=DDZL.fieldbyname('DDBH').value;
      end
      else
        begin
          //if DDZL.FieldByName('SB').IsNull then
            //begin
            showmessage('Already finish production .');
            abort;
        end;
    DDZL.active:=false;
    CLOSE;
  end;
end;

procedure TReplenishDel_ZL.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
  DBGridEh1DblClick(nil);
end;

end.

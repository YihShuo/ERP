unit ExecShort_Car1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TExecShort_Car = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CartonBar: TQuery;
    DS1: TDataSource;
    CartonDet: TQuery;
    DS2: TDataSource;
    CartonBarCARTONBAR: TStringField;
    CartonBarDDBH: TStringField;
    CartonBarXH: TStringField;
    CartonBarQty: TIntegerField;
    CartonBarSB: TStringField;
    CartonBarINDATE: TDateTimeField;
    CartonDetDDCC: TStringField;
    CartonDetQty: TIntegerField;
    CartonBarCARTONNO: TIntegerField;
    CartonBarArticle: TStringField;
    CartonBarXieMing: TStringField;
    CartonBarETD: TDateTimeField;
    CartonDetLack: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExecShort_Car: TExecShort_Car;

implementation

uses ExecShort1, main1;

{$R *.dfm}

procedure TExecShort_Car.FormDestroy(Sender: TObject);
begin
ExecShort_Car:=nil;
end;

procedure TExecShort_Car.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ExecShort.enabled:=true;
action:=cafree;
end;

procedure TExecShort_Car.Button1Click(Sender: TObject);
begin
if length(edit1.text)<9 then
  begin
    showmessage('Pls key in Order No and Carton No ');
    abort;
  end;
with CartonBar do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.CartonBar,YWCP.DDBH,YWCP.CartonNO,YWCP.XH,YWCP.Qty,YWCP.SB,YWCP.InDate, ');
    sql.add('       DDZL.Article,XXZL.XieMing,YWDD.ETD ');
    sql.add('from YWCP ');
    sql.add('left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join DDZL on DDZl.DDBH=YWDD.YSBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('where CartonBar like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and YWDD.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by YWCP.CartonBar ');
    active:=true;
  end;
CartonDet.Active:=true;
end;

procedure TExecShort_Car.DBGridEh2DblClick(Sender: TObject);
begin
if not CartonDet.Active then
  abort;
if CartonDet.recordcount=0 then
  abort;
with ExecShort.YWDDSDZS do
  begin
    edit;
    fieldbyname('CartonBar').Value:=CartonBar.fieldbyname('CartonBar').Value;
    fieldbyname('Article').Value:=CartonBar.fieldbyname('Article').Value;
    fieldbyname('XieMing').Value:=CartonBar.fieldbyname('XieMing').Value;
    fieldbyname('ETD').Value:=CartonBar.fieldbyname('ETD').Value; 
    fieldbyname('XH').Value:=CartonBar.fieldbyname('XH').Value;
    fieldbyname('DDCC').Value:=CartonDet.fieldbyname('DDCC').Value;
    post;
  end;
Close;
end;

procedure TExecShort_Car.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  Dbgrideh2dblclick(nil);
end;

end.

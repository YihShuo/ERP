unit Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TDetail = class(TForm)
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    zlzls2: TQuery;
    zlzls2zlbh: TStringField;
    zlzls2xh: TStringField;
    zlzls2bwbh: TStringField;
    zlzls2ywsm: TStringField;
    zlzls2csbh: TStringField;
    zlzls2zsywjc: TStringField;
    zlzls2clbh: TStringField;
    zlzls2ywpm: TStringField;
    zlzls2dwbh: TStringField;
    zlzls2clsl: TFloatField;
    zlzls2usage: TFloatField;
    zlzls2destid: TStringField;
    zlzls2Destination: TStringField;
    zlzls2UserID: TStringField;
    zlzls2UserDate: TDateTimeField;
    zlzls2SIZE: TStringField;
    zlzls2MJBH: TStringField;
    zlzls2ZMLB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Detail: TDetail;

implementation

uses main1,OrderCalculateSpecialBOM1;

{$R *.dfm}

procedure TDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDetail.FormDestroy(Sender: TObject);
begin
  Detail:=nil;
end;

procedure TDetail.FormCreate(Sender: TObject);
begin
  with zlzls2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZLZLS2.*, BWZL.YWSM, ddzl.Dest as DestID, LBZLS.YWSM as Destination, CLZL.YWPM, CLZL.DWBH, ZSZL.ZSYWJC ');
    sql.add('from zlzls2 ');
    sql.add('left join DDZL on DDZL.DDBH= zlzls2.ZLBH ');
    sql.add('left join BWZL on BWZL.BWDH= zlzls2.BWBH ');
    sql.add('left join ZSZL on ZSZL.ZSDH= zlzls2.CSBH ');
    sql.add('left join CLZL on CLZL.CLDH= zlzls2.CLBH ');
    sql.add('left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.add('left join LBZLS on LBZLS.LBDH=ddzl.Dest and LBZLS.LB=''13'' ');
    sql.add('where DDZL.XieXing=:XieXing and DDZL.SheHao=:SheHao and DDZL.Dest=:cond ');
    sql.add('      and DDZL.GSBH = '+''''+main.Edit2.Text+''' ');
    sql.add('      and zlzls2.ZLBH=:zlbh AND zlzls2.XH=''VN'' ');
    sql.add('      and (left(zlzls2.CLBH,1) = ''H'' or left(zlzls2.CLBH,1) = ''L'') ');
    sql.add('order by zlzls2.bwbh ');
    active:=true;
  end;
end;

procedure TDetail.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

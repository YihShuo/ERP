unit CartonOrder_Me1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TCartonOrder_Me = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    YWBZPO: TQuery;
    DS2: TDataSource;
    Qtemp: TQuery;
    YWBZPOXieXing: TStringField;
    YWBZPOCLBH: TStringField;
    YWBZPONW: TCurrencyField;
    YWBZPOGW: TCurrencyField;
    YWBZPOCBM: TCurrencyField;
    YWBZPOXXCC: TStringField;
    YWBZPOXieMing: TStringField;
    YWBZPOL: TIntegerField;
    YWBZPOW: TIntegerField;
    YWBZPOH: TIntegerField;
    YWBZPOCapacity: TSmallintField;
    lbCapacity: TLabel;
    cbCapacity: TComboBox;
    YWBZPOYWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CartonOrder_Me: TCartonOrder_Me;

implementation

uses CartonOrder1, main1;

{$R *.dfm}

procedure TCartonOrder_Me.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
CartonOrder.Enabled:=true;
action:=cafree;
end;

procedure TCartonOrder_Me.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1dblclick(nil);
end;

procedure TCartonOrder_Me.DBGrid1DblClick(Sender: TObject);
begin
  if YWBZPO.recordcount>0 then
    CartonOrder.setCarton(YWBZPO.fieldbyname('CLBH').value,false,YWBZPO.fieldbyname('YWPM').value);
  close;
end;

procedure TCartonOrder_Me.Button1Click(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZl.XieXing,YWDDS.XXCC ');
    sql.add('from YWBZPOS ');
    sql.add('left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBH and YWDDS.DDCC=YWBZPOS.DDCC ');
    sql.add('left join YWDD on YWDD.DDBH=YWBZPOS.DDBH ');
    sql.add('left join DDZL on DDZL.DDBH=YWDD.YSBH ');
    sql.add('where YWBZPOS.DDBH='''+CartonOrder.YWBZPO.fieldbyname('DDBH').Value+'''');
    sql.add(' and YWBZPOS.XH='''+CartonOrder.YWBZPO.fieldbyname('XH').Value+'''');
    sql.add(' order by DDZl.XieXing,YWDDS.XXCC');
    active:=true;
  end;

  with YWBZPO do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct DDZL.XieXing, YWBZPO.CLBH,YWBZPO.L,YWBZPO.W,YWBZPO.H, ');
    sql.add('      YWBZPO.NW,YWBZPO.GW,YWBZPO.CBM,YWDDS.XXCC,XXZl.XieMing,YWWX2.Capacity,CLZL.YWPM ');
    sql.add('from YWBZPO');
    sql.add('left join YWBZPOS on YWBZPOS.DDBH=YWBZPO.DDBH  and YWBZPOS.XH=YWBZPO.XH');
    sql.add('left join YWDDS on YWDDS.DDBH=YWBZPOS.DDBH and YWBZPOS.DDCC=YWDDS.DDCC');
    sql.add('left join YWDD on YWBZPO.DDBH=YWDD.DDBH');
    sql.add('left join DDZL on YWDD.YSBH=DDZL.DDBH');
    sql.add('left join XXZl on DDZL.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.add('left join YWWX2 on YWBZPO.CLBH = YWWX2.CLBH ');
    sql.add('left join CLZL on CLZL.CLDH=YWBZPO.CLBH ');
    sql.add('where DDZL.XieXing='''+Qtemp.fieldbyname('XieXing').Value+'''');
    sql.add('      and YWDDS.XXCC='''+Qtemp.fieldbyname('XXCC').Value+'''');
    if cbCapacity.Text <> '' then
      sql.Add(' and YWWX2.Capacity='+cbCapacity.Text);
    active:=true;
  end;
end;

procedure TCartonOrder_Me.FormDestroy(Sender: TObject);
begin
  cartonorder_me:=nil;
end;

procedure TCartonOrder_Me.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

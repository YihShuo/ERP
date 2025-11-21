unit CartonOrder_CT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TCartonOrder_CT = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    DBGrid1: TDBGridEh;
    YWWX: TQuery;
    YWWXCLDH: TStringField;
    YWWXYWPM: TStringField;
    YWWXDWBH: TStringField;
    YWWXCLBH: TStringField;
    YWWXLength: TFloatField;
    YWWXWidth: TFloatField;
    YWWXHeight: TFloatField;
    YWWXOWeigh: TCurrencyField;
    YWWXSquare: TCurrencyField;
    YWWXMemo: TStringField;
    YWWXUSERDATE: TDateTimeField;
    YWWXUSERID: TStringField;
    YWWXYN: TStringField;
    DS2: TDataSource;
    Qtemp: TQuery;
    YWWXCapacity: TSmallintField;
    lbCapacity: TLabel;
    cbCapacity: TComboBox;
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1XH: TStringField;
    Query1MTBH1: TStringField;
    Query1MTLR1: TStringField;
    Query1MTBH2: TStringField;
    Query1MTLR2: TStringField;
    Query1MTBH3: TStringField;
    Query1MTLR3: TStringField;
    Query1MTBH4: TStringField;
    Query1MTLR4: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    CartonOrVach:Byte;
    { Public declarations }
  end;

var
  CartonOrder_CT: TCartonOrder_CT;

implementation

uses CartonOrder1, main1;

{$R *.dfm}

procedure TCartonOrder_CT.Button1Click(Sender: TObject);
begin
with YWWX do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.YWPM,CLZl.DWBH,YWWX2.* ');
    sql.add('from CLZl');
    sql.add('left join YWWX2 on CLZL.CLDH=YWWX2.CLBH');
    sql.add('where CLZL.CLDH like ''U1%''');
    sql.add('      and CLZL.CLDh like '''+edit1.Text+'%''');
    sql.add('      and CLZL.YWPM like ''%'+edit2.Text+'%''');
    sql.add('      and CLZL.YWPM like ''%'+edit3.Text+'%''');
    sql.add('      and YWWX2.Length is not null ');
    sql.add('      and isnull(CLZL.TYJH,'''')<>''Y''');
    sql.add('      and (CLZL.KFDH is null or CLZL.KFDH='''+CartonOrder.YWDD.fieldbyname('KHBH').Value+''')');
    if cbCapacity.Text <> '' then
      sql.add('      and YWWX2.Capacity ='+cbCapacity.Text);
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TCartonOrder_CT.DBGrid1DblClick(Sender: TObject);
begin
  if CartonOrVach=1 then
  begin
    if YWWX.recordcount>0 then
      CartonOrder.setCarton(YWWX.fieldbyname('CLBH').value,false,YWWX.fieldbyname('YWPM').value);
  end else  if CartonOrVach=2 then
  begin
    CartonOrder.YWBZPOE.Edit;
    CartonOrder.YWBZPOE.FieldByName('CLBH').Value:=YWWX.fieldbyname('CLBH').value;
    CartonOrder.YWBZPOE.Post;
  end;
  close;
end;

procedure TCartonOrder_CT.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1dblclick(nil);
end;

procedure TCartonOrder_CT.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  CartonOrder.Enabled:=true;
  action:=cafree;
end;

procedure TCartonOrder_CT.FormDestroy(Sender: TObject);
begin
  cartonorder_ct:=nil;
end;

procedure TCartonOrder_CT.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from ywddmt');
    sql.Add('where  ddbh='''+CartonOrder.YWDD.fieldbyname('DDBH').Value+'''');
    active:=true;
  end;
end;

procedure TCartonOrder_CT.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

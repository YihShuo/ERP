unit CartonXXZL_CLZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TCartonXXZL_CLZL = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbCapacity: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    cbCapacity: TComboBox;
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
    YWWXCapacity: TSmallintField;
    DS1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CartonXXZL_CLZL: TCartonXXZL_CLZL;

implementation
  uses CartonXXZL1, FunUnit, main1;
{$R *.dfm}

procedure TCartonXXZL_CLZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TCartonXXZL_CLZL.FormDestroy(Sender: TObject);
begin
  CartonXXZL_CLZL:=nil;
end;

procedure TCartonXXZL_CLZL.Button1Click(Sender: TObject);
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
    if cbCapacity.Text <> '' then
      sql.add('      and YWWX2.Capacity ='+cbCapacity.Text);
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TCartonXXZL_CLZL.DBGrid1DblClick(Sender: TObject);
begin
  CartonXXZL.YWWX2SQry.Edit;
  CartonXXZL.YWWX2SQry.FieldByName('CLBH').Value:=YWWX.fieldbyname('CLBH').value;
  CartonXXZL.YWWX2SQry.FieldByName('YWPM').Value:=YWWX.fieldbyname('YWPM').value;
  CartonXXZL.YWWX2SQry.Post;
end;

procedure TCartonXXZL_CLZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

unit KhuonInVatTu1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TKhuonInVatTu = class(TForm)
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1BJNO: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1USPrice: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KhuonInVatTu: TKhuonInVatTu;

implementation

uses KhuonInDeliver1;

{$R *.dfm}

procedure TKhuonInVatTu.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    //
    SQL.Add('select CLZL.CLDH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CGBJ.BJNO,CGBJ.VNPrice,CGBJ.USPrice ');
    SQL.Add('from clzl  ');
    SQL.Add('Left join (');
    SQL.Add('    Select *  from (select KHUONIN_CGBJ.BJNO,KHUONIN_CGBJ.ZSBH,KHUONIN_CGBJS.CLBH,KHUONIN_CGBJS.USPrice,KHUONIN_CGBJS.VNPrice,');
    SQL.Add('	     ROW_NUMBER() over (PARTITION BY KHUONIN_CGBJS.CLBH ORDER BY KHUONIN_CGBJ.BJNO DESC) as  rn');
    SQL.Add('	from KHUONIN_CGBJ');
    SQL.Add('	Left join KHUONIN_CGBJS on KHUONIN_CGBJ.BJNO=KHUONIN_CGBJS.BJNO');
    SQL.Add('	Left join CLZL on CLZL.CLDH=KHUONIN_CGBJS.CLBH');
    SQL.Add('	where 1=1 ');
    SQL.Add('	) CGBJ where rn=1 ) CGBJ on CGBJ.CLBH=clzl.cldh');
    SQL.Add('where 1=1 ');
    if edit1.Text <> '' then
      sql.add('and CLZL.CLDH like  '''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit2.Text+'%'+'''');
    if edit3.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit3.Text+'%'+'''');
    if edit4.Text <> '' then
      sql.add('and CLZL.YWPM like ''%'+edit4.Text+'%'+'''');
    SQL.Add('order by CLZL.CLDH');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TKhuonInVatTu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TKhuonInVatTu.FormDestroy(Sender: TObject);
begin
  KhuonInVatTu:=nil;
end;

procedure TKhuonInVatTu.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if query1.fieldbyname('VNPrice').IsNull then
  begin
    showmessage('Chua Nhap Don Gia.');
    abort;
  end;
  with KhuonInDeliver.DelDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    FieldByName('VNPrice').Value:=query1.fieldbyname('VNPrice').Value;
    post;
  end;
  showmessage('Succeed.');
end;

end.

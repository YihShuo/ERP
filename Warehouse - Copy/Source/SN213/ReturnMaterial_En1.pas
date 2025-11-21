unit ReturnMaterial_En1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls;

type
  TReturnMaterial_En = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Query1RKNO: TStringField;
    Query1GSBH: TStringField;
    Query1CLBH: TStringField;
    Query1CGBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReturnMaterial_En: TReturnMaterial_En;

implementation

uses main1,ReturnMaterial1;

{$R *.dfm}

procedure TReturnMaterial_En.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReturnMaterial_En.FormDestroy(Sender: TObject);
begin
  ReturnMaterial_En:=nil;
end;

procedure TReturnMaterial_En.Button1Click(Sender: TObject);
begin
  if ((edit1.Text = '') and (edit2.Text=''))  then
  begin
    showmessage( ' Pls key in RKNO or MatNo ');
    abort;
  end;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('  select KCRK.RKNO,KCRK.GSBH,KCRKS.CLBH,KCRKS.CGBH,KCRKS.Qty,CLZL.YWPM,CLZL.DWBH  ');
    sql.Add('  from KCRKS  ');
    sql.Add('  left join KCRK on KCRK.RKNO = KCRKS.RKNO  ');
    sql.Add('  left join CLZL on CLZL.CLDH = KCRKS.CLBH  ');
    sql.Add('  where KCRK.GSBH ='+''''+main.Edit2.Text+'''');
    if edit1.Text<>'' then
      sql.Add('  and KCRKS.RKNO like'+''''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
      sql.Add('  and KCRKS.CLBH like'+''''+edit2.Text+'%'+'''');
    sql.Add('  order by KCRKS.RKNO  ');
    active:=true;
  end;

end;

procedure TReturnMaterial_En.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  edit2.SetFocus
end;

procedure TReturnMaterial_En.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TReturnMaterial_En.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ReturnMaterial.DelDet do
      begin
        edit;
        FieldByName('CLBH').Value:=query1.fieldbyname('CLBH').Value;
        FieldByName('SCBH').Value:=query1.fieldbyname('RKNO').Value;
        FieldByName('YWPM').Value:=Query1.fieldbyname('YWPM').Value;
        FieldByName('DWBH').Value:=Query1.fieldbyname('DWBH').Value;
      end;
    close;
  end;
end;

procedure TReturnMaterial_En.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

procedure TReturnMaterial_En.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

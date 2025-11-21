unit DelOther_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDelOther_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Edit3: TEdit;
    Query1KCQty: TFloatField;
    DBGridEh1: TDBGridEh;
    Query1NK: TCurrencyField;
    Query1TC: TCurrencyField;
    Query1HD: TCurrencyField;
    Query1KD: TCurrencyField;
    Query1XT: TCurrencyField;
    Query1GC: TCurrencyField;
    Query1ZZZZ: TCurrencyField;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_Mat: TDelOther_Mat;

implementation

uses DelOther1, main1;

{$R *.dfm}

procedure TDelOther_Mat.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TDelOther_Mat.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TDelOther_Mat.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.DWBH,KCZLS.KCQty,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.XT,KCZLS.GC,KCZLS.ZZZZ');
    sql.add('from CLZL ');
    sql.add('left join KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='+''''+DelOther.DelMas.fieldbyname('CKBH').value+'''');
    sql.add('where CLZL.CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and CLZL.YN<>'+''''+'2'+'''');
    //l.add('      and (CLZL.TYJH<>'+''''+'Y'+''''+' or TYJH is null)')  ;
    sql.add('order by CLZL.CLDH');
    //memo1.text:=sql.text;
    active:=true;
  end;
end;

procedure TDelOther_Mat.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1Click(nil);
end;

procedure TDelOther_Mat.FormDestroy(Sender: TObject);
begin
  DelOther_Mat:=nil;
end;

procedure TDelOther_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDelOther_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;      
  if query1.FieldByName('KCQty').value=0 then
  begin
    showmessage('khong con ton kho, van can mo phieu sao?');
  end;
  with DelOther.DelDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    //fieldbyname('SCBH').value:='ZZZZZZZZZZ';
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('CostID').value:=DelOther.Pro_CostID;
    //fieldbyname('DFL').value:='N';   
    fieldbyname('BLSB').value:='Y';
    post;
  end;
  showmessage('Succeed.');
end;

procedure TDelOther_Mat.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil);
end;

procedure TDelOther_Mat.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

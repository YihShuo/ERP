unit DelChemical_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDelChemical_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1KCQty: TFloatField;
    CKBox: TCheckBox;
    Query1TYJH: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    CKBH:string;
    ParentQry:TQuery;
    { Public declarations }
  end;

var
  DelChemical_Mat: TDelChemical_Mat;

implementation

uses FunUnit, main1;

{$R *.dfm}

procedure TDelChemical_Mat.FormDestroy(Sender: TObject);
begin
  DelChemical_Mat:=nil;
end;

procedure TDelChemical_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  query1.active:=false;
end;

procedure TDelChemical_Mat.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    edit2.SetFocus;
end;

procedure TDelChemical_Mat.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    edit3.SetFocus;
end;

procedure TDelChemical_Mat.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.DWBH,KCZLS.KCQty,TYJH from CLZL ');
    sql.add('left join KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='+''''+CKBH+'''');
    sql.add('where CLZL.CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    //sql.add('      and CLZL.YN='+''''+'2'+'''');
    sql.add('      and CLZL.CLDH>'+''''+'W'+'''');
    //sql.add('      and (CLZL.TYJH<>'+''''+'Y'+''''+' or TYJH is null)')  ;
    if CKBox.Checked=true then
      sql.Add('and IsNull(CLZL.TYJH,'''')<>''Y'' ');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TDelChemical_Mat.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     button1Click(nil);
end;

procedure TDelChemical_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ParentQry do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('SCBH').value:='ZZZZZZZZZZ';
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('CostID').value:='627';
    fieldbyname('DFL').value:='N';
    fieldbyname('BLSB').value:='Y';
    post;
  end;
  showmessage('Succeed.');
end;

procedure TDelChemical_Mat.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil);
end;

procedure TDelChemical_Mat.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

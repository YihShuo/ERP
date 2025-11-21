unit LastBorrow_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TLastBorrow_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    edt1: TEdit;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    CheckBox2: TCheckBox;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LastBorrow_CL: TLastBorrow_CL;

implementation

uses  main1, LYV_Lastborrow1, FunUnit ;

{$R *.dfm}

procedure TLastBorrow_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edt1.SetFocus;
end;

procedure TLastBorrow_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1Click(nil);
end;

procedure TLastBorrow_CL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLDH,CLLB,YWPM,DWBH ');
    sql.add('from CLZL ');
    sql.add('where CLDH like '''+edit1.Text+'%'' ');
    sql.add('  and YWPM like ''%'+edt1.Text+'%''');
    if CheckBox1.Checked=true then
      sql.add('and (TYJH is null or TYJH=''N'') ');
    if CheckBox2.Checked=true then
      sql.add('and CLZL.CLDH in (Select Distinct CLBH from LastSizeR where LB=''01'' ) ');
    sql.add('and YN<>''2'' ');
    sql.add('and CLDH like ''VD%''  ');
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TLastBorrow_CL.FormDestroy(Sender: TObject);
begin
  LastBorrow_CL:=nil;
end;

procedure TLastBorrow_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TLastBorrow_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with LYV_LastBorrow.DelDet do
  begin
      fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
      fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
      insert;
  end;
  showmessage('Succeed');
end;

procedure TLastBorrow_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   DBGridEh1DblClick(nil);
end;

end.

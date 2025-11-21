unit LastSizeR_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TLastSizeR_CL = class(TForm)
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
  LastSizeR_CL: TLastSizeR_CL;

implementation

uses  main1, LastSizeRange1, FunUnit ;

{$R *.dfm}

procedure TLastSizeR_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edt1.SetFocus;
end;

procedure TLastSizeR_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1Click(nil);
end;

procedure TLastSizeR_CL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLDH,CLLB,YWPM,DWBH from CLZL where CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edt1.Text+'%'+'''');
    if CheckBox1.Checked=true then
    begin
      sql.add('and (TYJH is null or TYJH='+''''+'N'+''''+')');
      sql.add('and YN<>'+''''+'2'+'''');
      sql.add('and CLDH not in (select CLBH from LastSizeR    Group by CLBH) ');
    end;
    sql.add('and CLDH like ''V%''  ');
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TLastSizeR_CL.FormDestroy(Sender: TObject);
begin
  LastSizeR_CL:=nil;
end;

procedure TLastSizeR_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TLastSizeR_CL.DBGridEh1DblClick(Sender: TObject);
var i:integer;
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with LastSizeRange.LastSizeRQry do
  begin
      insert;
      fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
      fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      for i:=3 to  FieldCount-2  do
         Fields[i].value:=0;
      Post;
  end;
  showmessage('Succeed');
end;

procedure TLastSizeR_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   DBGridEh1DblClick(nil);
end;

end.

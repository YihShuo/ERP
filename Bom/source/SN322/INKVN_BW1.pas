unit INKVN_BW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TINKVN_BW = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BWDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INKVN_BW: TINKVN_BW;

implementation

uses INKVN1;

{$R *.dfm}

procedure TINKVN_BW.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select BWDH,ZWSM,YWSM from BWZL where BWDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and BWDH<>''VM00'' ');
    sql.add('and YWSM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by BWDH');
    active:=true;
  end;
end;

procedure TINKVN_BW.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TINKVN_BW.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
button1Click(nil);
end;

procedure TINKVN_BW.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil)    ;
end;

procedure TINKVN_BW.FormDestroy(Sender: TObject);
begin
INKVN_BW:=nil;
end;

procedure TINKVN_BW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;



procedure TINKVN_BW.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with INKVN.XXZLSYM do
      begin
        edit;
        fieldbyname('BWBH').value:=query1.fieldbyname('BWDH').value;
        fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
      end;
    query1.Active:=false;
    close;
  end;
end;

end.

unit INKVN_copy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls;

type
  TINKVN_copy = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1XieMing: TStringField;
    Query1KHDH: TStringField;
    Query2: TQuery;
    DBGrid2: TDBGrid;
    DS2: TDataSource;
    Query2XieXing: TStringField;
    Query2SheHao: TStringField;
    Query2BWBH: TStringField;
    Query2CLBH: TStringField;
    Query2CSBH: TStringField;
    Query2CLSL: TCurrencyField;
    Query2FLBH: TStringField;
    Query2USERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2YN: TStringField;
    Query2YWSM: TStringField;
    Query2ZSYWJC: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2DFL: TStringField;
    Query2XFL: TStringField;
    Query1ARTICLE: TStringField;
    Query1YSSM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  INKVN_copy: TINKVN_copy;

implementation

uses INKVN1;

{$R *.dfm}

procedure TINKVN_copy.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from XXZL where XieXing like ');
    sql.add(''''+edit1.Text+'%'+ '''');
    sql.add('and XieMing like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''')  ;
    sql.add('order by XieXing,SheHao');
    active:=true;
  end;
query2.Active:=true;
end;

procedure TINKVN_copy.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 THEN
  edit2.SetFocus;
end;

procedure TINKVN_copy.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 THEN
  button1click(nil);
end;

procedure TINKVN_copy.DBGrid1DblClick(Sender: TObject);
begin
if query2.recordcount>0 then
  begin
    with query2 do
      begin
        while not eof do
          begin
            INKVN.XXZLSYM.insert;
            INKVN.XXZLSYM.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
            INKVN.XXZLSYM.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
            INKVN.XXZLSYM.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
            INKVN.XXZLSYM.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
            INKVN.XXZLSYM.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
            INKVN.XXZLSYM.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
            INKVN.XXZLSYM.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
            INKVN.XXZLSYM.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
            INKVN.XXZLSYM.fieldbyname('FLBH').Value:=fieldbyname('FLBH').Value;
            INKVN.XXZLSYM.fieldbyname('DFL').Value:=fieldbyname('DFL').Value;
            INKVN.XXZLSYM.fieldbyname('XFL').Value:=fieldbyname('XFL').Value;
            next;
          end;
      end;
  end;
end;

procedure TINKVN_copy.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TINKVN_copy.DBGrid2DblClick(Sender: TObject);
begin
if query2.recordcount>0 then
  begin
    with query2 do
      begin
        INKVN.XXZLSYM.insert;
        INKVN.XXZLSYM.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
        INKVN.XXZLSYM.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
        INKVN.XXZLSYM.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
        INKVN.XXZLSYM.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
        INKVN.XXZLSYM.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
        INKVN.XXZLSYM.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
        INKVN.XXZLSYM.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
        INKVN.XXZLSYM.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
        INKVN.XXZLSYM.fieldbyname('FLBH').Value:=fieldbyname('FLBH').Value;
        INKVN.XXZLSYM.fieldbyname('DFL').Value:=fieldbyname('DFL').Value;
        INKVN.XXZLSYM.fieldbyname('XFL').Value:=fieldbyname('XFL').Value;
      end;
  end;
end;

procedure TINKVN_copy.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid2DblClick(nil);
end;

procedure TINKVN_copy.FormDestroy(Sender: TObject);
begin
INKVN_copy:=nil;
end;

procedure TINKVN_copy.FormClose(Sender: TObject; var Action: TCloseAction);
begin              
query2.active:=false;
query1.active:=false;
//action:=Cafree;
end;

end.

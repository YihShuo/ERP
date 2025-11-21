unit BOMVN_copy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls;

type
  TBOMVN_copy = class(TForm)
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMVN_copy: TBOMVN_copy;

implementation

uses BOMVN1, main1;

{$R *.dfm}

procedure TBOMVN_copy.Button1Click(Sender: TObject);
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

procedure TBOMVN_copy.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 THEN
  edit2.SetFocus;
end;

procedure TBOMVN_copy.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 THEN
  button1click(nil);
end;

procedure TBOMVN_copy.DBGrid1DblClick(Sender: TObject);
begin
if query2.recordcount>0 then
  begin
    with query2 do
      begin
        while not eof do
          begin
            BOMVN.XXZLSVN.insert;
            BOMVN.XXZLSVN.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
            BOMVN.XXZLSVN.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
            BOMVN.XXZLSVN.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
            BOMVN.XXZLSVN.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
            BOMVN.XXZLSVN.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
            BOMVN.XXZLSVN.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
            BOMVN.XXZLSVN.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
            BOMVN.XXZLSVN.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
            BOMVN.XXZLSVN.fieldbyname('FLBH').Value:=fieldbyname('FLBH').Value;
            BOMVN.XXZLSVN.fieldbyname('DFL').Value:=fieldbyname('DFL').Value;
            BOMVN.XXZLSVN.fieldbyname('XFL').Value:=fieldbyname('XFL').Value;
            next;
          end;
      end;
  end;
end;

procedure TBOMVN_copy.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1dblclick(nil);
end;

procedure TBOMVN_copy.DBGrid2DblClick(Sender: TObject);
begin
if query2.recordcount>0 then
  begin
    with query2 do
      begin
        BOMVN.XXZLSVN.insert;
        BOMVN.XXZLSVN.fieldbyname('BWBH').Value:=fieldbyname('BWBH').Value;
        BOMVN.XXZLSVN.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
        BOMVN.XXZLSVN.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
        BOMVN.XXZLSVN.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
        BOMVN.XXZLSVN.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
        BOMVN.XXZLSVN.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
        BOMVN.XXZLSVN.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
        BOMVN.XXZLSVN.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
        BOMVN.XXZLSVN.fieldbyname('FLBH').Value:=fieldbyname('FLBH').Value;
        BOMVN.XXZLSVN.fieldbyname('DFL').Value:=fieldbyname('DFL').Value;
        BOMVN.XXZLSVN.fieldbyname('XFL').Value:=fieldbyname('XFL').Value;
      end;
  end;
end;

procedure TBOMVN_copy.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid2DblClick(nil);
end;

procedure TBOMVN_copy.FormDestroy(Sender: TObject);
begin
BOMVN_copy:=nil;
end;

procedure TBOMVN_copy.FormClose(Sender: TObject; var Action: TCloseAction);
begin              
query2.active:=false;
query1.active:=false;
//action:=Cafree;
end;

procedure TBOMVN_copy.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

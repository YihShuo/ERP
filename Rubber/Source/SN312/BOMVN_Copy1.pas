unit BOMVN_Copy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TBOMVN_Copy = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    DS2: TDataSource;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1CQDH: TStringField;
    Query1YSSM: TStringField;
    Query1ARTICLE: TStringField;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Label2: TLabel;
    Edit3: TEdit;
    Query2XieXing: TStringField;
    Query2SheHao: TStringField;
    Query2BWBH: TStringField;
    Query2CQDH: TStringField;
    Query2CLBH: TStringField;
    Query2CSBH: TStringField;
    Query2CLSL: TCurrencyField;
    Query2USERID: TStringField;
    Query2USERDATE: TDateTimeField;
    Query2YN: TStringField;
    Query2YWSM: TStringField;
    Query2ZSYWJC: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMVN_Copy: TBOMVN_Copy;

implementation

uses BOMVN1, main1;

{$R *.dfm}

procedure TBOMVN_Copy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBOMVN_Copy.FormDestroy(Sender: TObject);
begin
  BOMVN_Copy:=nil;
end;

procedure TBOMVN_Copy.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from '+main.LIY_DD+'.dbo.XXZL XXZL');
    sql.Add('where 1=1');
    sql.Add('and cqdh='''+main.Edit2.Text+'''');
    if edit1.Text<>'' then
      sql.Add('and XXZL.XieXing like '''+edit1.Text+'%''');
    if edit2.Text<>'' then
      sql.Add('and XXZL.Shehao like '''+edit2.Text+'%''');
    if edit3.Text<>'' then
      sql.Add('and XXZL.Article like '''+edit3.Text+'%''');
    active:=true;
  end;
  query2.Active:=true;
end;

procedure TBOMVN_Copy.DBGridEh1DblClick(Sender: TObject);
begin
  if query2.recordcount>0 then
  begin
    with query2 do
    begin
      while not eof do
      begin
        BOMVN.XXZLSVN.insert;
        BOMVN.XXZLSVN.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
        BOMVN.XXZLSVN.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
        BOMVN.XXZLSVN.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
        BOMVN.XXZLSVN.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
        BOMVN.XXZLSVN.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
        BOMVN.XXZLSVN.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
        BOMVN.XXZLSVN.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
        next;
      end;
    end;
  end;
end;

procedure TBOMVN_Copy.DBGridEh2DblClick(Sender: TObject);
begin
  if query2.recordcount>0 then
  begin
    with query2 do
    begin
      while not eof do
      begin
        BOMVN.XXZLSVN.insert;
        BOMVN.XXZLSVN.fieldbyname('YWSM').Value:=fieldbyname('YWSM').Value;
        BOMVN.XXZLSVN.fieldbyname('CLBH').Value:=fieldbyname('CLBH').Value;
        BOMVN.XXZLSVN.fieldbyname('YWPM').Value:=fieldbyname('YWPM').Value;
        BOMVN.XXZLSVN.fieldbyname('DWBH').Value:=fieldbyname('DWBH').Value;
        BOMVN.XXZLSVN.fieldbyname('CSBH').Value:=fieldbyname('CSBH').Value;
        BOMVN.XXZLSVN.fieldbyname('ZSYWJC').Value:=fieldbyname('ZSYWJC').Value;
        BOMVN.XXZLSVN.fieldbyname('CLSL').Value:=fieldbyname('CLSL').Value;
        next;
      end;
    end;
  end;
end;

procedure TBOMVN_Copy.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

unit ARTICLE1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TARTICLE = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLDH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    Query1DIENTICH: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ARTICLE: TARTICLE;

implementation

uses OrderKhuonIn1;

{$R *.dfm}

procedure TARTICLE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TARTICLE.FormDestroy(Sender: TObject);
begin
  ARTICLE:=nil;
end;

procedure TARTICLE.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CLDH, YWPM, ZWPM,DIENTICH');
    sql.Add('from CLZL LEFT JOIN KHUONIN_DIENTICH DIENTICH ON CLZL.CLDH=DIENTICH.CLBH where 1=1');
    if edit1.Text<>'' then
      sql.Add('and CLDH like '''+edit1.Text+'%''');
    if edit2.Text<>'' then
      sql.Add('and YWPM like ''%'+edit2.Text+'%''');
    active:=true;
  end;
end;

procedure TARTICLE.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    if ARTICLE.Label2.Caption='ARTICLE' then
    begin
      with OrderKhuonIn.KHUONIN_DDZL do
      begin
        edit;
        fieldbyname('ARTICLE').value:=query1.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
        fieldbyname('DIENTICH').value:= query1.fieldbyname('DIENTICH').value;
      end;
      query1.Active:=false;
      close;
    end;
    if ARTICLE.Label2.Caption='CLZL' then
    begin
      with OrderKhuonIn.KHUONIN_XXZLS do
      begin
        edit;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      end;
      query1.Active:=false;
      close;
    end;
  end;
end;

end.

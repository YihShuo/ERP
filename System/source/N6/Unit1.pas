unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, GridsEh, DBGridEh, StdCtrls;

type
  TGiathanhthieuvattu = class(TForm)
    bb1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    bb2: TButton;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Query1: TQuery;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    bb3: TButton;
    bb4: TButton;
    Panel2: TPanel;
    bb5: TButton;
    bb6: TButton;
    procedure bb1Click(Sender: TObject);
    procedure bb2Click(Sender: TObject);
    procedure bb3Click(Sender: TObject);
    procedure bb4Click(Sender: TObject);
    procedure bb5Click(Sender: TObject);
    procedure bb6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Giathanhthieuvattu: TGiathanhthieuvattu;

implementation

{$R *.dfm}

procedure TGiathanhthieuvattu.bb1Click(Sender: TObject);
begin
  with query1 do
    begin
    active:=false;
    sql.Clear;
    SQL.Add('SET ANSI_NULLS ON');
    SQL.Add('SET ANSI_WARNINGS ON');
    ExecSQL;
    sql.add('select a.XieXing,a.SheHao,a.BWBH,a.XTCC,a.CLSL,''system'' as userid, CONVERT(smalldatetime,a.USERDATE) as userdate, 1 as yn from su2.LIY_SHOE.dbo.XTBWYL1 A');
    sql.add('left join XTBWYL1 B on a.XieXing=b.XieXing and a.SheHao=b.SheHao and a.BWBH=b.BWBH and a.XTCC=b.XTCC');
    sql.add('where a.XieXing ='''+edit1.text+''' and b.XieXing is null');
    sql.Add('and a.shehao  like'''+edit2.text+'%''');
    active:=true;
    end;
end;
procedure TGiathanhthieuvattu.bb2Click(Sender: TObject);
begin
  with query1 do
    begin
    active:=false;
    sql.Clear;
    SQL.Add('SET ANSI_NULLS ON');
    SQL.Add('SET ANSI_WARNINGS ON');
    ExecSQL;
    sql.Add('insert into XTBWYL1');
    sql.add('select a.XieXing,a.SheHao,a.BWBH,a.XTCC,a.CLSL,''system'' as userid, CONVERT(smalldatetime,a.USERDATE) as userdate, 1 as yn from su2.LIY_SHOE.dbo.XTBWYL1 A');
    sql.add('left join XTBWYL1 B on a.XieXing=b.XieXing and a.SheHao=b.SheHao and a.BWBH=b.BWBH and a.XTCC=b.XTCC');
    sql.add('where a.XieXing ='''+edit1.text+''' and b.XieXing is null');
    sql.Add('and a.shehao  like'''+edit2.text+'%''');
    query1.ExecSQL;
    end;
end;

procedure TGiathanhthieuvattu.bb3Click(Sender: TObject);
begin
     with query1 do
    begin
    active:=false;
    sql.Clear;
    sql.add('select cldh, NULL as memo,''SYSTEM'' as userid, GETDATE() as USERDATE, 1 as YN');
    sql.add('from clzl where cldh ='''+edit3.text+'''');
    active:=true;
    end;
end;

procedure TGiathanhthieuvattu.bb4Click(Sender: TObject);
begin
    with query1 do
    begin
    active:=false;
    sql.Clear;
    sql.add('insert into MaterialReviewList_TPM');
    sql.add('select cldh, NULL as memo,''SYSTEM'' as userid, GETDATE() as USERDATE, 1 as YN');
    sql.add('from clzl where cldh ='''+edit3.text+'''');
    query1.ExecSQL;
    end;
end;

procedure TGiathanhthieuvattu.bb5Click(Sender: TObject);
begin
    with query1 do
    begin
    active:=false;
    sql.Clear;
    sql.add('select *');
    sql.add('from MaterialReviewList_TPM where clbh ='''+edit3.text+'''');
    active:=true;
    end;
end;

procedure TGiathanhthieuvattu.bb6Click(Sender: TObject);
begin
     with query1 do
    begin
    active:=false;
    sql.Clear;
    sql.add('delete');
    sql.add('MaterialReviewList_TPM where clbh ='''+edit3.text+'''');
    query1.ExecSQL;
    end;
end;

procedure TGiathanhthieuvattu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TGiathanhthieuvattu.FormDestroy(Sender: TObject);
begin
Giathanhthieuvattu:=nil;
end;

end.

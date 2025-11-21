unit QCXXCJ_XXP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls, GridsEh,
  DBGridEh;

type
  TQCXXCJ_XX = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1KHDH: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query1KFXXCZ: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCXXCJ_XX: TQCXXCJ_XX;

implementation

uses QCXXCJP, main1;

{$R *.dfm}

procedure TQCXXCJ_XX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  query1.cachedupdates:=false;
  query1.requestlive:=false;
  action:=cafree;
  QCXXCJ.enabled:=true;
end;

procedure TQCXXCJ_XX.FormDestroy(Sender: TObject);
begin
  QCXXCJ_XX:=nil;
end;

procedure TQCXXCJ_XX.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select XieXing,SheHao,ARTICLE,KHDH,KFXXCZ from xxzl');
    sql.Add('where not exists (select ARTICLE from QCXXCJ ');
    sql.Add('                  where xxzl.ARTICLE = QCXXCJ.ARTICLE');
    sql.Add('                        and KHDH ='''+QCXXCJ.qccust+''')');
    sql.Add('      and KHDH='''+QCXXCJ.qccust+'''');
    sql.Add('      and Article like '''+edit1.Text+'%'+'''');
    IF edit2.Text<>'' THEN
      sql.Add('and XieXing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.Add('order by xiexing, Shehao');
//    qcxxcj.Memo1.Text:=sql.Text;
    active:=true;
  end;
end;



procedure TQCXXCJ_XX.Query1NewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TQCXXCJ_XX.DBGridEh1DblClick(Sender: TObject);
begin
  with query1 do   //如果無資料就關閉
  begin
    if not Active then
      begin
        abort;
      end;
    if recordcount=0 then
      begin
        abort;
      end;
  end;
  with QCXXCJ.query1 do
  begin
    edit;
    fieldbyname('XieXing').Value:=query1.fieldbyname('XieXing').Value;
    fieldbyname('SheHao').Value:=query1.fieldbyname('SheHao').Value;
    fieldbyname('ARTICLE').Value:=query1.fieldbyname('ARTICLE').Value;
    fieldbyname('KHDH').Value:=query1.fieldbyname('KHDH').Value;
    fieldbyname('CJQTY').Value:='1';
    fieldbyname('USERID').Value:=main.edit1.Text;
    fieldbyname('USERDATE').Value:=date;
    fieldbyname('GSBH').Value:=main.edit2.Text;
    fieldbyname('YN').Value:='1';
    query1.cachedupdates:=true;   //允許變更Query1資料
    query1.requestlive:=true;     //允許變更Query1資料
    query1.Edit;
    query1.FieldByName('KFXXCZ').Value:=main.edit2.Text;  //插入標記至暫存檔中,避免重複選取
    post;     //寫入前一筆新增
    insert;   //再增加一筆空白資料
  end;
end;

procedure TQCXXCJ_XX.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not query1.FieldByName('KFXXCZ').isnull then    //是否已經匯入
  begin
    DBGridEh1.canvas.font.color:=clLime;
  end;
end;

procedure TQCXXCJ_XX.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.

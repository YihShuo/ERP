unit SSAICP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TSSAIC = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query2: TQuery;
    Query1xxiexing: TStringField;
    Query1xshehao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SSAIC: TSSAIC;

implementation

{$R *.dfm}

procedure TSSAIC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree; //釋放resurce
end;

procedure TSSAIC.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
end;

procedure TSSAIC.Button1Click(Sender: TObject);
begin
   query1.First; //flag跳到第一筆
   query2.SQL.Clear;

   while not query1.eof do
   begin
      query2.SQL.add('update simpleshoes');
      query2.SQL.add('set XieXing = '+''''+query1.fieldbyname('xxiexing').AsString+'''');
      query2.sql.add(', Shehao = '+''''+query1.fieldbyname('xshehao').asstring+'''');
      query2.SQL.Add('where ARTICLE = '+''''+query1.fieldbyname('article').asstring+'''' );
      query1.Next; //跳到下一筆
   end;
//   memo1.text:=query2.sql.text;
   query2.ExecSQL;  //執行sql
   query1.Active:=false;
   query1.Active:=true;

end;

end.

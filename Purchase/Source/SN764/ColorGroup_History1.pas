unit ColorGroup_History1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  TColorGroup_History = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1CLDH: TStringField;
    Query1VER: TIntegerField;
    Query1ColorGroup: TStringField;
    Query1Remark: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ColorGroup_History: TColorGroup_History;

implementation

uses MaterialMOQ1;

{$R *.dfm}

procedure TColorGroup_History.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TColorGroup_History.FormDestroy(Sender: TObject);
begin
  ColorGroup_History:=nil;
end;

procedure TColorGroup_History.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select * from CLZL_ColorGroup_His ');
    SQL.Add('where CLDH='''+MaterialMOQ.Query1.fieldbyname('CLBH').AsString+''' ');
    SQL.Add('order by VER');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

end.

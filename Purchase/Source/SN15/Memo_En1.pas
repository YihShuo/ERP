unit Memo_En1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TMemo_En = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DSMemo: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Memo_En: TMemo_En;

implementation

{$R *.dfm}

procedure TMemo_En.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMemo_En.FormDestroy(Sender: TObject);
begin
  Memo_En:=nil;
end;

end.

unit CDGC_SMDDS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TCDGC_SMDDS = class(TForm)
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Button2: TButton;
    SMDDS: TQuery;
    DS1: TDataSource;
    Button1: TButton;
    SMDDSDDBH: TStringField;
    SMDDSZLBH: TStringField;
    SMDDSBWBH: TStringField;
    SMDDSSIZE: TStringField;
    SMDDSQty: TIntegerField;
    SMDDSDQty: TIntegerField;
    SMDDSGCBWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CDGC_SMDDS: TCDGC_SMDDS;

implementation

uses
  CutProcessDispatch1, FunUnit;

{$R *.dfm}

procedure TCDGC_SMDDS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCDGC_SMDDS.FormDestroy(Sender: TObject);
begin
  CDGC_SMDDS := nil;
end;

procedure TCDGC_SMDDS.FormCreate(Sender: TObject);
begin
  SMDDS.Active := true;
end;

procedure TCDGC_SMDDS.Button1Click(Sender: TObject);
var
  bm: Tbookmark;
  i: integer;
  bookmarklist: TBookmarkListEh;
begin
  SMDDS.DisableControls;
  bm := SMDDS.GetBookmark;
  bookmarklist := DBGridEh1.SelectedRows;

  try
    if (bookmarklist.Count > 0) then
    begin
      for i:=0 to bookmarklist.Count-1 do
      begin
        SMDDS.GotoBookmark(Pointer(bookmarklist[i]));
        with (CutProcessDispatch.CPDDetailS) do
        begin
          Edit;
          FieldByName('DDBH').Value := SMDDS.FieldByName('DDBH').AsString;
          Fieldbyname('Qty').Value := SMDDS.FieldByName('Qty').AsString;
          Post;
          Insert;
        end;
      end;
      Close;
    end;
  finally
    SMDDS.GotoBookmark(bm);
    SMDDS.FreeBookmark(bm);
    SMDDS.EnableControls;
  end;
end;

end.

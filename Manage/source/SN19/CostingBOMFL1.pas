unit CostingBOMFL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids , DBGridEh, GridsEh;

type
  TCostingBOMFL = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Query1FLBH: TStringField;
    Query1XFL: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    SingleOrMuit:boolean;
    { Private declarations }
  public
    { Public declarations }
    procedure SetSingleOrMuit(Action:Boolean);
  end;

var
  CostingBOMFL: TCostingBOMFL;

implementation
   uses CostingBOM1;
{$R *.dfm}

procedure TCostingBOMFL.SetSingleOrMuit(Action:Boolean);
begin
   SingleOrMuit:=Action;
end;
//
procedure TCostingBOMFL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCostingBOMFL.FormDestroy(Sender: TObject);
begin
  CostingBOMFL:=nil;
end;

procedure TCostingBOMFL.FormCreate(Sender: TObject);
begin
  SingleOrMuit:=true;
  Query1.Active:=true;
end;

procedure TCostingBOMFL.DBGridEh1DblClick(Sender: TObject);
var i:integer;
    bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
begin
  //
  if Query1.Active=false then exit;
  if SingleOrMuit=true then
  begin
    CostingBOM.XXZLS.Edit;
    CostingBOM.XXZLS.FieldByName('FLBH').Value:=Query1.FieldByName('FLBH').Value;
    CostingBOM.XXZLS.FieldByName('XFL').Value:=Query1.FieldByName('XFL').Value;
    CostingBOM.XXZLS.Post;
  end else
  begin

    CostingBOM.XXZLS.disablecontrols;
    bm:=CostingBOM.XXZLS.getbookmark;
    bookmarklist:=CostingBOM.DBGrid2.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          CostingBOM.XXZLS.gotobookmark(pointer(bookmarklist[i]));
          with CostingBOM.XXZLS do
          begin
             Edit;
             CostingBOM.XXZLS.FieldByName('FLBH').Value:=Query1.FieldByName('FLBH').Value;
             CostingBOM.XXZLS.FieldByName('XFL').Value:=Query1.FieldByName('XFL').Value;
             Post;
          end;
        end;
      finally
        CostingBOM.XXZLS.gotobookmark(bm);
        CostingBOM.XXZLS.freebookmark(bm);
        CostingBOM.XXZLS.enablecontrols;
        showmessage('You have finish copy!');
      end;
    end else
    begin
      CostingBOM.XXZLS.gotobookmark(bm);
      CostingBOM.XXZLS.freebookmark(bm);
      CostingBOM.XXZLS.enablecontrols;
    end;

  end;
  //
  Close;
end;

end.

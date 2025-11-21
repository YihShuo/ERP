unit BOMVN_BWFL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, GridsEh, DBGridEh;

type
  TBOMVN_BWFL = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    Query1FLBH: TStringField;
    Query1DFL: TStringField;
    Query1XFL: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMVN_BWFL: TBOMVN_BWFL;

implementation

uses BOMVN1, main1;

{$R *.dfm}

procedure TBOMVN_BWFL.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TBOMVN_BWFL.FormDestroy(Sender: TObject);
begin
BOMVN_BWFL:=nil;
end;

procedure TBOMVN_BWFL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TBOMVN_BWFL.DBGridEh1DblClick(Sender: TObject);
begin
  with BOMVN.XXBWFL do
  begin
    edit;
    fieldbyname('FLBH').value:=query1.fieldbyname('FLBH').value;
    fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
    fieldbyname('XFL').value:=query1.fieldbyname('XFL').value;
    fieldbyname('USERID').Value:=main.edit1.text;
    fieldbyname('USERDATE').Value:=date;
    fieldbyname('YN').Value:='1';
  end;
  query1.Active:=false;
  close;
end;

procedure TBOMVN_BWFL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil)
end;

procedure TBOMVN_BWFL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

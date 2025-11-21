unit BOMVN_FL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables;

type
  TBOMVN_FL = class(TForm)
    Query1: TQuery;
    Query1FLBH: TStringField;
    Query1DFL: TStringField;
    Query1XFL: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    DS1: TDataSource;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMVN_FL: TBOMVN_FL;

implementation

uses BOMVN1, main1;

{$R *.dfm}

procedure TBOMVN_FL.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TBOMVN_FL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGrid1DblClick(nil)    ;
end;

procedure TBOMVN_FL.DBGrid1DblClick(Sender: TObject);
begin
with BOMVN.XXZLSVN do
  begin
    edit;
    fieldbyname('FLBH').value:=query1.fieldbyname('FLBH').value;
    fieldbyname('DFL').value:=query1.fieldbyname('DFL').value;
    fieldbyname('XFL').value:=query1.fieldbyname('XFL').value;
  end;
query1.Active:=false;
close;
end;

procedure TBOMVN_FL.FormDestroy(Sender: TObject);
begin
BOMVN_FL:=nil;
end;

procedure TBOMVN_FL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

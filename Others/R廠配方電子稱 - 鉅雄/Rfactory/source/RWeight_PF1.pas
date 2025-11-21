unit RWeight_PF1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids;

type
  TRWeight_PF = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    Query1PFBH1: TStringField;
    Query1PFBH2: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RWeight_PF: TRWeight_PF;

implementation

uses RWeightp1;

{$R *.dfm}

procedure TRWeight_PF.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TRWeight_PF.DBGrid1DblClick(Sender: TObject);
begin
  with RWeightp.GSPF do
  begin
    edit;
    fieldbyname('PFBH1').value:=query1.fieldbyname('PFBH1').value;
    fieldbyname('PFBH2').value:=query1.fieldbyname('PFBH2').value;
  end;
  query1.Active:=false;
  close;
end;

procedure TRWeight_PF.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGrid1DblClick(nil)
end;

procedure TRWeight_PF.FormDestroy(Sender: TObject);
begin
RWeight_PF:=nil;
end;

procedure TRWeight_PF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

end.

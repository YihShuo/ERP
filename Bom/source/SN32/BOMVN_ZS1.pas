unit BOMVN_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TBOMVN_ZS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    Edit2: TEdit;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMVN_ZS: TBOMVN_ZS;

implementation

uses BOMVN1, main1;

{$R *.dfm}

procedure TBOMVN_ZS.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TBOMVN_ZS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1Click(nil);
end;

procedure TBOMVN_ZS.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSDH,ZSYWJC,ZSQM from ZSZL where ZSDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ZSYWJC like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and YN='+''''+'2'+'''');
    active:=true;
  end;
end;

procedure TBOMVN_ZS.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with BOMVN.XXZLSVN do
      begin
        edit;
        fieldbyname('CSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TBOMVN_ZS.FormDestroy(Sender: TObject);
begin
BOMVN_ZS:=nil;
end;

procedure TBOMVN_ZS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TBOMVN_ZS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

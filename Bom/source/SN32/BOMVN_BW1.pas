unit BOMVN_BW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TBOMVN_BW = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1BWDH: TStringField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BOMVN_BW: TBOMVN_BW;

implementation

uses BOMVN1, main1;

{$R *.dfm}

procedure TBOMVN_BW.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select BWDH,ZWSM,YWSM from BWZL where BWDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and YWSM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by BWDH');
    active:=true;
  end;
end;

procedure TBOMVN_BW.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TBOMVN_BW.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
button1Click(nil);
end;

procedure TBOMVN_BW.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with BOMVN.XXZLSVN do
      begin
        edit;
        fieldbyname('BWBH').value:=query1.fieldbyname('BWDH').value;
        fieldbyname('YWSM').value:=query1.fieldbyname('YWSM').value;
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TBOMVN_BW.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGrid1DblClick(nil);
end;

procedure TBOMVN_BW.FormDestroy(Sender: TObject);
begin
BOMVN_BW:=nil;
end;

procedure TBOMVN_BW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TBOMVN_BW.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

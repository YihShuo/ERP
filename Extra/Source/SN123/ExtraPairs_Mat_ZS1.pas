unit ExtraPairs_Mat_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TExtraPairs_Mat_ZS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
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
  ExtraPairs_Mat_ZS: TExtraPairs_Mat_ZS;

implementation

uses ExtraPairs_Material1, main1;

{$R *.dfm}

procedure TExtraPairs_Mat_ZS.Button1Click(Sender: TObject);
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
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TExtraPairs_Mat_ZS.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.setfocus
end;

procedure TExtraPairs_Mat_ZS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TExtraPairs_Mat_ZS.FormDestroy(Sender: TObject);
begin
  ExtraPairs_Mat_ZS:=nil;
end;

procedure TExtraPairs_Mat_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraPairs_Mat_ZS.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ExtraPairs_Material.JGMas do
      begin
        edit;
        fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TExtraPairs_Mat_ZS.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

procedure TExtraPairs_Mat_ZS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

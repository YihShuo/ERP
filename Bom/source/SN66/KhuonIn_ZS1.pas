unit KhuonIn_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TKhuonIn_ZS = class(TForm)
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
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
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
  KhuonIn_ZS: TKhuonIn_ZS;

implementation

uses  main1, KhuongInQuotation1;

{$R *.dfm}

procedure TKhuonIn_ZS.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSDH,ZSYWJC,ZSQM from ZSZL ');
    sql.add('where ZSDH like '''+edit1.Text+'%'+'''');
    sql.add('and ZSYWJC like ''%'+edit2.Text+'%'' ');
    if RB1.Checked=true then
       sql.add('      and YN=''2'' ')
    else if RB2.Checked=true then
       sql.add('      and YN=''1'' ');
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TKhuonIn_ZS.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TKhuonIn_ZS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TKhuonIn_ZS.FormDestroy(Sender: TObject);
begin
  KhuonIn_ZS:=nil;
end;

procedure TKhuonIn_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=CaFree;
end;

procedure TKhuonIn_ZS.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with KhuonInQuotation.BJMas do
    begin
      edit;
      fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
      fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
    //  showmessage('Succeed.');
    end;
    query1.Active:=false;
    showmessage('Succeed.');
    close;
  end;
end;

procedure TKhuonIn_ZS.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

procedure TKhuonIn_ZS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

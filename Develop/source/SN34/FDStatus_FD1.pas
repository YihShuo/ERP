unit FDStatus_FD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDStatus_FD = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1FD: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDStatus_FD: TFDStatus_FD;

implementation

uses  FDStatus1;

{$R *.dfm}

procedure TFDStatus_FD.Button1Click(Sender: TObject);
begin

  if FDStatus.SeasonEdit.Text = '' then
    Messagedlg('Pls Keyin Season first !',mtwarning,[mbyes],0);

  with query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.add('SELECT YPZL.FD FROM kfxxzl');
    SQL.add('LEFT JOIN YPZL ON YPZL.XieXing = kfxxzl.XieXing AND YPZL.SheHao = kfxxzl.SheHao');
    SQL.add('WHERE ISNULL(YPZL.FD, '''') <> '''' AND kfxxzl.jijie = ''' + FDStatus.SeasonEdit.Text + '''');
    SQL.add('GROUP BY YPZL.FD');
    SQL.add('ORDER BY YPZL.FD');
    Active := true;
  end;
end;

procedure TFDStatus_FD.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TFDStatus_FD.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TFDStatus_FD.FormDestroy(Sender: TObject);
begin
FDStatus_FD:=nil;
end;

procedure TFDStatus_FD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TFDStatus_FD.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TFDStatus_FD.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    FDStatus.FDEdit.text:= query1.fieldbyname('FD').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TFDStatus_FD.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.

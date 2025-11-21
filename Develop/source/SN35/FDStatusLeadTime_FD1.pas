unit FDStatusLeadTime_FD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDStatusLeadTime_FD = class(TForm)
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
  FDStatusLeadTime_FD: TFDStatusLeadTime_FD;

implementation

uses  FDStatus1, FDStatusLeadTime1;

{$R *.dfm}

procedure TFDStatusLeadTime_FD.Button1Click(Sender: TObject);
begin

{if  FDStatusLeadTime.Edit2.Text='' then
    Messagedlg('Pls Keyin Season first !',mtwarning,[mbyes],0);   }

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  FD from kfxxzl ');
    sql.add('   WHERE FD IS NOT NULL ');
    sql.add('        and jijie='+''''+FDStatusLeadTime.Edit2.Text+'''');
    sql.add('    group by FD order by FD');
    active:=true;
  end;
end;

procedure TFDStatusLeadTime_FD.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TFDStatusLeadTime_FD.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TFDStatusLeadTime_FD.FormDestroy(Sender: TObject);
begin
FDStatusLeadTime_FD:=nil;
end;

procedure TFDStatusLeadTime_FD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TFDStatusLeadTime_FD.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

procedure TFDStatusLeadTime_FD.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    FDStatusLeadTime.Edit1.text:= query1.fieldbyname('FD').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TFDStatusLeadTime_FD.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.

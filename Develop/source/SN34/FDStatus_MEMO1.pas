unit FDStatus_MEMO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDStatus_MEMO = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    dbgrdh3: TDBGridEh;
    Query1: TQuery;
    strngfldqry4LineNum: TStringField;
    strngfldqry4Remark: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDStatus_MEMO: TFDStatus_MEMO;

implementation

uses  FDStatus1;

{$R *.dfm}

procedure TFDStatus_MEMO.Button1Click(Sender: TObject);
begin

if  FDStatus.SeasonEdit.Text='' then
    Messagedlg('Pls Keyin Season first !',mtwarning,[mbyes],0);

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  XXZLKF.FD  ');
    sql.add(' from kfxxzl ');
    sql.add(' left join xxzlKF on xxzlkf.xiexing=kfxxzl.XieXing and xxzlkf.SheHao=kfxxzl.SheHao and xxzlkf.YN=''N''');
    sql.add('   WHERE XXZLKF.FD IS NOT NULL ');
    sql.add('        and kfxxzl.jijie='+''''+FDStatus.SeasonEdit.Text+'''');
    sql.add('    group by XXZLKF.FD order by XXZLKF.FD');

    active:=true;
  end;
end;

procedure TFDStatus_MEMO.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  // edit2.setfocus
end;

procedure TFDStatus_MEMO.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    FDStatus.FDEdit.text:= query1.fieldbyname('FD').value ;
    query1.Active:=false;
    close;
  end;
end;

procedure TFDStatus_MEMO.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TFDStatus_MEMO.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TFDStatus_MEMO.FormDestroy(Sender: TObject);
begin
FDStatus_MEMO:=nil;
end;

procedure TFDStatus_MEMO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

procedure TFDStatus_MEMO.FormCreate(Sender: TObject);
begin
   Button1.Click();
end;

end.

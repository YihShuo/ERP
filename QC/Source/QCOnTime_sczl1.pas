unit QCOnTime_sczl1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls;

type
  TQCOnTime_sczl = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DS1: TDataSource;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCOnTime_sczl: TQCOnTime_sczl;

implementation

uses QCOntime1, main1;

{$R *.dfm}

procedure TQCOnTime_sczl.Button1Click(Sender: TObject);
begin

//if length(edit1.text)<5 then
//  begin
//    showmessage('pls key in condition first.');
//    abort;
//  end;

with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YYBH,YWSM,ZWSM ');
    sql.add('from QCBLYY ');
    IF Edit1.Text<>'' THEN
       sql.add('WHERE YYBH LIKE '+''''+Edit1.Text+'%'+''''   );
    sql.add('order by YYBH');
    active:=true;
  end;
end;

procedure TQCOnTime_sczl.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.OnClick(nil);
end;

procedure TQCOnTime_sczl.DBGrid1DblClick(Sender: TObject);
begin

if query1.RecordCount>0 then
  begin
    QCOnTime.QRepDet.edit;
    QCOnTime.QRepDet.fieldbyname('SCBH').value:= Query1.fieldbyname('YYBH').value ;
    QCOnTime.QRepDet.fieldbyname('YWSM').value:= Query1.fieldbyname('YWSM').value ;
   // OnTime.QRepDet.fieldbyname('GXLB').value:= Query1.fieldbyname('GXLB').value ;
   // OnTime.QRepDet.fieldbyname('YN').value:= Query1.fieldbyname('YN').value ;
    Query1.Active:=false;
    close;
  end;
end;

procedure TQCOnTime_sczl.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  dbgrid1dblclick(nil);
end;

procedure TQCOnTime_sczl.FormDestroy(Sender: TObject);
begin
QCOnTime_sczl:=nil;
end;

end.

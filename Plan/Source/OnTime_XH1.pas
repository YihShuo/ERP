unit OnTime_XH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TOnTime_XH = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    Edit1: TEdit;
    Label2: TLabel;
    CB1: TComboBox;
    Button1: TButton;
    SCSJ: TQuery;
    SCSJXH: TStringField;
    SCSJFTime: TStringField;
    SCSJTTime: TStringField;
    SCSJUSERID: TStringField;
    SCSJUSERDATE: TDateTimeField;
    SCSJYN: TStringField;
    DS1: TDataSource;
    SCSJYXGS: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OnTime_XH: TOnTime_XH;

implementation

uses Ontime1, OnTime_sczl1;

{$R *.dfm}

procedure TOnTime_XH.Button1Click(Sender: TObject);
begin
with SCSJ do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from SCSJ ');
    sql.add('where XH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and FTime like '+''''+CB1.text+'%'+'''');
    sql.add('      and YN<>'+''''+'5'+'''');
    sql.add('order by XH ');
    active:=true;
  end;
end;

procedure TOnTime_XH.DBGridEh1DblClick(Sender: TObject);
begin

if SCSJ.RecordCount>0 then
  begin
    OnTime.QRepMas.edit;
    OnTime.QRepMas.fieldbyname('SJXH').value:= SCSJ.fieldbyname('XH').value ;
    OnTime.QRepMas.fieldbyname('SCTime').value:= SCSJ.fieldbyname('FTime').value +'-'+ SCSJ.fieldbyname('TTime').value ;
    OnTime.QRepMas.fieldbyname('YXGS').value:= SCSJ.fieldbyname('YXGS').value ;
    SCSJ.Active:=false;
    close;
  end;
end;

procedure TOnTime_XH.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  dbgrideh1dblclick(nil);
end;

procedure TOnTime_XH.FormDestroy(Sender: TObject);
begin

OnTime_sczl:=nil;
end;

procedure TOnTime_XH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=Cafree;
end;

end.

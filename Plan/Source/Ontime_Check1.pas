unit Ontime_Check1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls;

type
  TOntime_Check = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    CBX1: TComboBox;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    Qtemp: TQuery;
    Query1SCDate: TStringField;
    Query1ProNo: TStringField;
    Query1DepName: TStringField;
    Query1Time: TStringField;
    Query1SCBH: TStringField;
    Query1GXLB: TStringField;
    Query1XXCC: TStringField;
    Query1ProQty: TFloatField;
    Query1USERID: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Ontime_Check: TOntime_Check;

implementation

{$R *.dfm}

procedure TOntime_Check.FormDestroy(Sender: TObject);
begin
Ontime_Check:=nil;
end;

procedure TOntime_Check.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
action:=cafree;
end;

procedure TOntime_Check.FormCreate(Sender: TObject);
begin
with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.add('select distinct GX from SCGXDY ');
    sql.add('order by GX');
    //CBX1.items.clear;
    while not eof do
      begin
        CBX1.items.add(fieldbyname('GX').value);
        next;
      end;
    CBX1.itemindex:=0;
    active:=false;
  end;
DTP1.date:=date-7;
DTP2.date:=date;
end;

procedure TOntime_Check.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select SCBBSS.ProNO,convert(varchar,SCBB.SCDate,111) as SCDate,SCBB.ProNo,BDepartment.DepName,');
    sql.add('      (SCSJ.FTime+'+''''+'-'+''''+'+SCSJ.TTime) as Time,SCBBSS.SCBH,SCBBSS.GXLB,SCBBSS.XXCC,');
    sql.add('      isnull(SCBBSS.Qty,0) as ProQty,SCBB.USERID');
    sql.add('from SCBBSS');
    sql.add('left join SCBB on SCBB.ProNO=SCBBSS.ProNO ');
    sql.add('left join SCSJ on SCSJ.XH=SCBB.SJXH');
    sql.add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    sql.add('where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    if CBX1.itemindex<>0 then
      begin
        sql.add('       and SCBBSS.GXLB like '+''''+'%'+CBX1.text+'%'+'''');
      end;
    sql.add('      and SCBBSS.SCBH like '+''''+edit2.text+'%'+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit1.text+'%'+'''');
    sql.add('order by SCBBSS.SCBH,SCBB.SCDate,SCBBSS.XXCC ');
    active:=true;
  end;
end;

end.

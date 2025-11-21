unit ScanAdjust1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls,
  Menus;

type
  TScanAdjust = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit3: TEdit;
    CBX1: TComboBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    Query1XH: TAutoIncField;
    Query1SMLX: TStringField;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1XXCC: TStringField;
    Query1Qty: TCurrencyField;
    Query1USERID1: TStringField;
    Query1USERID2: TStringField;
    Query1USERDate: TDateTimeField;
    Query1THour: TStringField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    UpSQL1: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanAdjust: TScanAdjust;

implementation

{$R *.dfm}

procedure TScanAdjust.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanAdjust.FormCreate(Sender: TObject);
begin
DTP1.Date:=date-7;
DTP2.Date:=date;
end;

procedure TScanAdjust.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCSM.*,BDepartment.DepName,XXZl.Article,XXZl.XieMing ');
    sql.add('from SCSM ');
    sql.add('left join DDZL on DDZL.DDBH=SCSM.DDBH ');
    sql.add('left join XXZL on XXZL.XieXing=DDZl.XieXing and XXZL.SheHao=DDZL.SheHao ');
    sql.add('left join BDepartment on BDepartment.ID=SCSM.DepID ');
    sql.add('where SCSM.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and BDepartment.DepName like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,SCSM.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if CBX1.itemindex<>-1 then
      begin
        sql.add('and SMLX='+''''+inttostr(CBX1.itemindex)+'''');
      end;
    active:=true;
  end;
end;

procedure TScanAdjust.N1Click(Sender: TObject);
begin

if messagedlg('Do you really want to delete this record?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    query1.cachedupdates:=true;
    query1.RequestLive:=true;
    UpSQL1.apply(ukdelete);
    query1.Delete;
    query1.cachedupdates:=false;
    query1.RequestLive:=false;
    query1.Active:=false;
    query1.Active:=true;
  end;

end;

procedure TScanAdjust.Query1AfterOpen(DataSet: TDataSet);
begin
if query1.recordcount>0 then
  N1.Enabled:=true
  else
    N1.Enabled:=false;
end;

procedure TScanAdjust.FormDestroy(Sender: TObject);
begin
ScanAdjust:=nil;
end;

end.

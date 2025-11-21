unit PurchaseAdjust1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Menus, StdCtrls, ComCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TPurchaseAdjust = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid2: TDBGridEh;
    CGMas: TQuery;
    DS3: TDataSource;
    CGDet: TQuery;
    DS4: TDataSource;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    Label3: TLabel;
    Edit2: TEdit;
    CGMasCGNO: TStringField;
    CGMasGSBH: TStringField;
    CGMasZSBH: TStringField;
    CGMasCGDate: TDateTimeField;
    CGMasUSERDate: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasCGLX: TStringField;
    CGMasYN: TStringField;
    CGMasZSYWJC: TStringField;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetXqQty: TCurrencyField;
    CGDetQty: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    Button2: TButton;
    UpdateSQL1: TUpdateSQL;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurchaseAdjust: TPurchaseAdjust;

implementation

uses main1;

{$R *.dfm}

procedure TPurchaseAdjust.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPurchaseAdjust.FormDestroy(Sender: TObject);
begin
PurchaseAdjust:=nil;
end;

procedure TPurchaseAdjust.FormCreate(Sender: TObject);
begin

DTP1.Date:=date-3;
DTP2.Date:=date;
end;

procedure TPurchaseAdjust.Button1Click(Sender: TObject);
begin

with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZL.* ,ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ');
    sql.add('from CGZL');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('where CGZL.CGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and ZSZL.ZSYWJC like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,CGZL.CGDATE,111))  between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CGZL.CGNO DESC');
    active:=true;
  end;
CGDet.Active:=true;
end;

procedure TPurchaseAdjust.Button2Click(Sender: TObject);
begin
updatesql1.Apply(ukmodify);
CGMas.Active:=false;
CGMas.Active:=true;
end;

end.

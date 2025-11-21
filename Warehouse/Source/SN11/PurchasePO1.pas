unit PurchasePO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,IniFiles;

type
  TPurchasePO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1Qty: TCurrencyField;
    Query1zsywjc: TStringField;
    Label5: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    WH_Decimal:String;
    WH_DiplayFormat:String;
  end;

var
  PurchasePO: TPurchasePO;

implementation

uses main1, DeliverList1;

{$R *.dfm}
procedure TPurchasePO.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;  

procedure TPurchasePO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPurchasePO.FormDestroy(Sender: TObject);
begin
  PurchasePO:=nil;
end;

procedure TPurchasePO.FormCreate(Sender: TObject);
begin
  DTP1.Date:=now-30;
  DTP2.Date:=now;
  ReadIni();
end;

procedure TPurchasePO.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select CGZLS.CGNO,CGZLS.CLBH,clzl.ywpm,clzl.dwbh,cgzls.Qty,zszl.zsywjc ');
    sql.Add(' From CGZLs left join CGZL ');
    sql.Add(' on CGZLS.CGNO=CGZL.CGNO  ');
    sql.Add(' Left join clzl on cgzls.CLBH=clzl.cldh ');
    sql.Add(' Left join zszl on cgzl.ZSBH=zszl.zsdh  ');
    sql.Add(' Where CGZL.GSBH='''+main.Edit2.text+''' and CGZLs.clbh ='''+edit1.Text+''' ');
    sql.Add(' and convert(smalldatetime,convert(varchar,CGZL.CGDate,111)) between ');
    sql.add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''' ');
    if edit2.Text <> '' then
      sql.Add(' and CGZLS.CGNO like '''+edit2.Text+'%'' ');
    if edit3.Text <> '' then
      sql.Add(' and zszl.zsywjc like ''%'+edit3.Text+'%'' ');
    sql.Add(' Order by CGZLS.CGNO ');
    active:=true;
  end;
end;

procedure TPurchasePO.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with DeliverList.DelDet do
    begin
      edit;
      fieldbyname('PONO').value:=fieldbyname('PONO').AsString+ query1.fieldbyname('CGNO').AsString+ ',';
    end;
    //query1.Active:=false;
  end;
end;

end.

unit MaterialReleased_LotNO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  ExtCtrls, ComCtrls;

type
  TMaterialReleased_LotNO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    QueryBtn: TButton;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1SCNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1Pack: TIntegerField;
    Query1Qty: TFloatField;
    Query1LotNO: TStringField;
    Edit1: TEdit;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Qtemp: TQuery;
    Query1ZSBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private  
    NDate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialReleased_LotNO: TMaterialReleased_LotNO;

implementation

uses main1, fununit, MaterialReleasedCofirm1;

{$R *.dfm}

procedure TMaterialReleased_LotNO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialReleased_LotNO.FormDestroy(Sender: TObject);
begin
  MaterialReleased_LotNO:=nil;
end;

procedure TMaterialReleased_LotNO.QueryBtnClick(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    sql.Clear;
    sql.add('SELECT SCNO,CLBH,CLZL.YWPM,Pack,Qty,LotNO, KCRKScan_RFSS.USERID AS ZSBH FROM KCRKScan_RFSS ');
    sql.add('left join CLZL on CLZL.CLDH=KCRKScan_RFSS.CLBH ');
    sql.add('where CLBH='''+DBEdit1.Text+''' AND Memo_RY LIKE ''%'+DBEdit2.Text+'%'' ');
    active:=true;
    if Query1.RecordCount = 0 then
    begin
      Active:=false;
      sql.Clear;
      sql.add('SELECT SCNO,CLBH,CLZL.YWPM,Pack,Qty,LotNO, KCRKScan_RFSS.USERID AS ZSBH FROM KCRKScan_RFSS ');
      sql.add('left join CLZL on CLZL.CLDH=KCRKScan_RFSS.CLBH ');
      sql.add('where CLBH='''+DBEdit1.Text+''' ');
      SQL.Add('AND CONVERT(SmallDateTime, CONVERT(VARCHAR, KCRKScan_RFSS.UserDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.date ) + ''' ');
      if Edit1.Text <> '' then
        SQL.Add('      AND LotNO LIKE ''%' + Edit1.Text + '%''');
      active:=true;
    end;
  end;
end;

procedure TMaterialReleased_LotNO.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    DTP1.Date:=Ndate-3;
    DTP2.Date:=Ndate;  
    active:=false;    
  end;
  QueryBtnClick(nil);
end;

procedure TMaterialReleased_LotNO.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with MaterialReleasedCofirm.DelDet do
  begin
    edit;
    fieldbyname('LotNO').value:=query1.fieldbyname('LotNO').value;
    post;
  end;
  showmessage('Succeed.');
  Close;
end;

end.

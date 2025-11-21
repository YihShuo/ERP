unit EntryMatRFIDCode_CG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TEntryMatRFIDCode_CG = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    CLBHEdit: TEdit;
    CGNOEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1CGQty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1ZSYWJC: TStringField;
    Query1okQty: TFloatField;
    Query1Qty: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryMatRFIDCode_CG: TEntryMatRFIDCode_CG;

implementation

uses EntryMatRFIDCode1,main1,FunUnit;

{$R *.dfm}

procedure TEntryMatRFIDCode_CG.FormDestroy(Sender: TObject);
begin
  EntryMatRFIDCode_CG:=nil;
end;

procedure TEntryMatRFIDCode_CG.Button1Click(Sender: TObject);
begin
  if ((CGNOEdit.Text='') and (CLBHEdit.Text='')) then
  begin
    Showmessage('Xin nhap PO.NO hoac MatID ');
    Exit;
  end;
  //
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  select CGZLS.CGNO,CGZLS.CLBH,CGZLS.Qty as CGQty,CLZL.YWPM,ZSZL.ZSYWJC,isnull(CGRK.okQty,0.0) as okQty ');
    SQL.Add('  ,Round(CGZLS.Qty-IsNull(CGRK.okQty,0.0),2) as Qty ');
    SQL.Add('  from CGZLS ');
    SQL.Add('  left join CGZL on CGZL.CGNO=CGZLS.CGNO ');
    SQL.Add('  left join CLZL on CLZL.CLDH=CGZLS.CLBH ');
    SQL.Add('  left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH ');
    SQL.Add('  left join ( select CGNO,CLBH,sum(Qty) as okQty from KCRKScan_RFS ');
    SQL.Add('  			       left join KCRKScan_RF ON KCRKScan_RF.SCNO=KCRKScan_RFS.SCNO ');
    SQL.Add('  			       where isnull(KCRKScan_RF.LB,''01'')=''01'' ');
    SQL.Add('  			       group by CGNO,CLBH ');
    SQL.Add('  		       ) CGRK on CGRK.CGNO = CGZLS.CGNO and CGRK.CLBH=CGZLS.CLBH ');
    SQL.Add('  where 1=1 ');
    if CGNOEdit.Text<>'' then
      SQL.Add('  and CGZLS.CGNO like '''+CGNOEdit.Text+'%'' ');
    if CLBHEdit.Text<>'' then
      SQL.Add('  and CGZLS.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('  and CGZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('  group by CGZLS.CGNO,CGZLS.CLBH,CGZLS.Qty,CLZL.YWPM,ZSZL.ZSYWJC,CGRK.okQty ');
    SQL.Add('  order by CGZLS.CGNO,CGZLS.CLBH ');
    Active:=true;
  end;
  //
end;

procedure TEntryMatRFIDCode_CG.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  {if query1.FieldByName('Qty').Value<=0 then
  begin
    showmessage('Phieu mua hang da nhap kho ok.');
    abort;
  end;}
  //
  with EntryMatRFIDCode.KCRKRFS do
  begin
    insert;
    fieldbyname('CGNO').value:=query1.fieldbyname('CGNO').value;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('Qty').value:=query1.fieldbyname('Qty').value;
    fieldbyname('PackQty').value:=100.0;
    fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
    fieldbyname('SFL').value:='TM';
    post;
  end;
  showmessage('Succeed.');
end;

end.

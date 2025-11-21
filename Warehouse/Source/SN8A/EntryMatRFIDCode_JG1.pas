unit EntryMatRFIDCode_JG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TEntryMatRFIDCode_JG = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    CLBHEdit: TEdit;
    JGNOEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1JGNO: TStringField;
    Query1CLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1ZSYWJC: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryMatRFIDCode_JG: TEntryMatRFIDCode_JG;

implementation

uses EntryMatRFIDCode1,main1,FunUnit;

{$R *.dfm}

procedure TEntryMatRFIDCode_JG.FormDestroy(Sender: TObject);
begin
  EntryMatRFIDCode_JG:=nil;
end;

procedure TEntryMatRFIDCode_JG.Button1Click(Sender: TObject);
begin
  if ((JGNOEdit.Text='') and (CLBHEdit.Text='')) then
  begin
    Showmessage('Xin nhap PO.NO hoac MatID ');
    Exit;
  end;
  //
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  select JGZLSS.JGNO,JGZLSS.CLBH,sum(JGZLSS.Qty) as Qty,CLZL.YWPM,ZSZL.ZSYWJC  ');
    SQL.Add('  from JGZLSS   ');
    SQL.Add('  inner join JGZL on JGZL.JGNO=JGZLSS.JGNO  ');
    SQL.Add('  inner join JGZLS on JGZLSS.JGNO = JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH  ');
    SQL.Add('  left join CLZL on CLZL.CLDH=JGZLS.CLBH  ');
    SQL.Add('  left join ZSZL on JGZL.ZSBH=ZSZL.ZSDH  ');
    SQL.Add('  where 1=1   ');
    if JGNOEdit.Text<>'' then
    SQL.Add('  and JGZLSS.JGNO like '''+JGNOEdit.Text+'%'' ');
    if CLBHEdit.Text<>'' then
    SQL.Add('  and JGZLSS.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('  and JGZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('  Group by JGZLSS.JGNO,JGZLSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC  ');
    SQL.Add('  order by JGZLSS.CLBH   ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TEntryMatRFIDCode_JG.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with EntryMatRFIDCode.KCRKRFS do
  begin
    insert;
    fieldbyname('CGNO').value:=query1.fieldbyname('JGNO').value;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('Qty').value:=query1.fieldbyname('Qty').value;
    fieldbyname('PackQty').value:=100.0;
    fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
    fieldbyname('SFL').value:='GC';
    post;
  end;
  showmessage('Succeed.');
end;

end.

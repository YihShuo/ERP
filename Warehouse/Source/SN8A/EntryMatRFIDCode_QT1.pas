unit EntryMatRFIDCode_QT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables;

type
  TEntryMatRFIDCode_QT = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1CKBH: TStringField;
    Query1KCBH: TStringField;
    Query1KCMC: TStringField;
    Query1zwpm: TStringField;
    DS1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryMatRFIDCode_QT: TEntryMatRFIDCode_QT;

implementation
  uses EntryMatRFIDCode1,FunUnit;
{$R *.dfm}

procedure TEntryMatRFIDCode_QT.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.*,KCZLS.CKBH,KCZLS.KCBH,KCZL.KCMC  ');
    sql.add('from clzl');
    sql.add('left join (select KCZLS.* from KCZLS ');
    sql.add('           where KCZLS.CKBH='''+EntryMatRFIDCode.KCRKRF.fieldbyname('CKBH').value+'''');
    sql.add('           ) KCZLS on KCZLS.CLBH=CLZL.CLDH  ');
    sql.add('left join KCZL on KCZL.CKBH=KCZLS.CKBH and KCZL.KCBH=KCZLS.KCBH');
    sql.add(' where CLZL.CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add('''%'+edit2.Text+'%''');
    sql.add('and CLZL.YWPM like ');
    sql.add('''%'+edit3.Text+'%'' ');
    sql.add('and CLZL.YWPM like ');
    sql.add('''%'+edit4.Text+'%'' ');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TEntryMatRFIDCode_QT.FormDestroy(Sender: TObject);
begin
  EntryMatRFIDCode_QT:=nil;
end;

procedure TEntryMatRFIDCode_QT.DBGrid1DblClick(Sender: TObject);
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
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('Qty').value:=0.0;
    fieldbyname('PackQty').value:=100.0;
    post;
  end;
  showmessage('Succeed.');
end;

procedure TEntryMatRFIDCode_QT.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TEntryMatRFIDCode_QT.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    edit4.SetFocus;
end;

procedure TEntryMatRFIDCode_QT.Edit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    button1Click(nil);
end;

procedure TEntryMatRFIDCode_QT.EDIT1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    button1Click(nil);
end;

end.

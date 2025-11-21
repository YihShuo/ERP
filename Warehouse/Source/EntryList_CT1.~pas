unit EntryList_CT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls;

type
  TEntryList_CT = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DDBH: TStringField;
    Query1CLBH: TStringField;
    Query1Qty: TIntegerField;
    Query1PaQty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1KCBH: TStringField;
    Query1okQty: TCurrencyField;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryList_CT: TEntryList_CT;

implementation

uses MaterialArea1, EntryList1, main1;

{$R *.dfm}

procedure TEntryList_CT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=CaFree;
end;

procedure TEntryList_CT.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if Query1.FieldByName('KCBH').IsNull then       //如果沒有確定位置則重新確定先
  begin
    MaterialArea:=TMaterialArea.create(self);
    MaterialArea.Edit1.Text:=Query1.fieldbyname('CLBH').AsString;
    MaterialArea.CBX1.Text:=EntryList.EnMas.fieldbyname('CKBH').AsString;
    MaterialArea.button1click(nil);
    MaterialArea.show;
    query1.Active:=false;
    close;
    abort;
  end;
  with EntryList.ENDet do
  begin
    insert;
    fieldbyname('CGBH').value:=query1.fieldbyname('DDBH').value;
    fieldbyname('RKSB').value:='CT';
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;  
    fieldbyname('PaQty').value:=query1.fieldbyname('PaQty').value; 
    if query1.FieldByName('okQty').value<query1.FieldByName('Qty').value then
      begin
        fieldbyname('Qty').value:=query1.fieldbyname('Qty').value-query1.FieldByName('okQty').value;
      end
      else
        begin
          fieldbyname('Qty').value:=0;
        end;
    post;
  end;
  showmessage('Succeed.');
end;

procedure TEntryList_CT.Button1Click(Sender: TObject);
begin
  if   length(edit1.Text)<5 then
  begin
    showmessage('Pls key in condition first.');
    abort;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT YWDD.YSBH as DDBH, YWBZPO.CLBH,sum( YWBZPO.CTS) as Qty,YWWX2.Square as PaQty, ');
    sql.add('       CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,isnull(CGRK.okQty,0) as okQty');
    sql.add('from (select ddbh,CLBH,CTS,UserDate from ywbzpo union all select  ddbh,CLBH,CTS,UserDate from YWBZPOE )YWBZPO');
    sql.add('left join YWWX2 on YWWX2.CLBH=YWBZPO.CLBH');
    sql.add('left join CLZl on CLZl.CLDH=YWBZPO.CLBH ');
    sql.add('left join YWDD on YWDD.DDBH=YWBZPO.DDBH');
    sql.add('left join (select KCZLS.* from KCZLS ');
    sql.add('           where KCZLS.CKBH='+''''+EntryList.ENMas.fieldbyname('CKBH').value+'''');
    sql.add('           )KCZLS on KCZLS.CLBH=CLZL.CLDH  ');
    sql.add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as okQty,KCRKS.CGBH from KCRKS');
    sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    //sql.add('           where KCRK.ZSBH='''+EntryList.ENMas.fieldbyname('ZSBH').value+'''');
    sql.add('           where KCRKS.CGBH like '+''''+edit1.Text+'%'+'''');
    if length(edit1.text)<=8 then
    begin
      sql.add('            and KCRK.USERDate>='+''''+formatdatetime('yyyy/mm/dd',IncMonth(NDate,-2))+'''');
    end;
    sql.add('            and KCRKS.CLBH like ''U1%'' ') ;
    sql.add('            group by  KCRKS.CLBH,KCRKS.CGBH ) CGRK')  ;
    sql.add('           on CGRK.CLBH=YWBZPO.CLBH and CGRK.CGBH=YWDD.YSBH') ;
    sql.add('where YWDD.YSBH like ''%'+edit1.Text+'%''');
    sql.add('      and YWDD.GSBH='''+main.Edit2.Text+'''');
    //
    sql.add('group by  YWDD.YSBH, YWBZPO.CLBH,YWWX2.Square, CLZL.YWPM, ');
    sql.add('          CLZL.DWBH,KCZLS.KCBH,CGRK.okQty   ');
    sql.add('order by YWDD.YSBH,YWBZPO.CLBH ');
    active:=true;
  end;
end;

procedure TEntryList_CT.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     DBGridEh1DblClick(nil);
end;

procedure TEntryList_CT.FormDestroy(Sender: TObject);
begin
  EntryList_CT:=nil;
end;

procedure TEntryList_CT.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

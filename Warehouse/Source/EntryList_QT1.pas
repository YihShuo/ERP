unit EntryList_QT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh, ComCtrls;

type
  TEntryList_QT = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1KCBH: TStringField;
    Query1CKBH: TStringField;
    Query1KCMC: TStringField;
    Query1zwpm: TStringField;
    PageControl1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    Label3: TLabel;
    Button2: TButton;
    LLNOEdit: TEdit;
    DS2: TDataSource;
    Query2: TQuery;
    Query2LLNO: TStringField;
    Query2SCBH: TStringField;
    Query2CLBH: TStringField;
    Query2DWBH: TStringField;
    Query2YWPM: TStringField;
    Query2TempQty: TCurrencyField;
    Query2KCBH: TStringField;
    Panel3: TPanel;
    DBGrid2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DS3: TDataSource;
    Query3: TQuery;
    Query3CGNO: TStringField;
    Query3Qty: TCurrencyField;
    Query3ZSBH: TStringField;
    Query3ZSJC: TStringField;
    Query2GSBH: TStringField;
    Query2DFL: TStringField;
    Query2HGLB: TStringField;
    Query2Qty: TCurrencyField;
    Label4: TLabel;
    SCBHEdit: TEdit;
    Label5: TLabel;
    CLBHEdit: TEdit;
    Query2RKQty: TCurrencyField;
    Query2CNO: TStringField;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryList_QT: TEntryList_QT;

implementation

uses EntryList1, MaterialArea1, main1, EntryTotal1, FunUnit;

{$R *.dfm}

procedure TEntryList_QT.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TEntryList_QT.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TEntryList_QT.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.*,KCZLS.CKBH,KCZLS.KCBH,KCZL.KCMC  ');
    sql.add('from clzl');
    sql.add('left join (select KCZLS.* from KCZLS ');
    sql.add('           where KCZLS.CKBH='+''''+EntryList.ENMas.fieldbyname('CKBH').value+'''');
    sql.add('           )KCZLS on KCZLS.CLBH=CLZL.CLDH  ');
    sql.add('left join KCZL on KCZL.CKBH=KCZLS.CKBH and KCZL.KCBH=KCZLS.KCBH');
    sql.add(' where CLZL.CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit3.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit4.Text+'%'+'''');
    //sql.add('and CLZL.YN<>'+''''+'2'+'''');
    //sql.add('and (CLZL.TYJH is null or CLZL.TYJH='+''''+'N'+''''+')');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TEntryList_QT.DBGrid1DblClick(Sender: TObject);
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
    MaterialArea.Edit1.Text:=Query1.fieldbyname('CLDH').AsString;
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
    fieldbyname('CGBH').value:='ZZZZZZZZZZ';
    fieldbyname('RKSB').value:='QT';
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
  showmessage('Succeed.');
end;

procedure TEntryList_QT.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
     DBGrid1DblClick(nil);
end;

procedure TEntryList_QT.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit4.SetFocus;
end;

procedure TEntryList_QT.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1Click(nil);
end;

procedure TEntryList_QT.FormDestroy(Sender: TObject);
begin
  EntryList_QT:=nil;
end;

procedure TEntryList_QT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=CaFree;
end;

procedure TEntryList_QT.Button2Click(Sender: TObject);
begin
  Query3.Active:=false;
  if ((LLNOEdit.Text = '') and (SCBHEdit.Text=''))  then
  begin
    showmessage( ' Pls key in Delivery No or Order No ');
    abort;
  end;
  with Query2 do
  begin
    SQL.Clear;
    SQL.Add('select KCLLS.LLNO,KCLLS.SCBH,KCLLS.CLBH,CLZL.DWBH,CLZL.YWPM,KCLLS.TempQty,KCLLS.Qty,isnull(KCRKS.okQty,0) as RKQty,KCZLS.KCBH,KCLL.GSBH,KCLLS.DFL,KCLLS.HGLB,KCLLS.CNO');
    sql.Add('from KCLLS left join KCLL on KCLLS.LLNO=KCLL.LLNO');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    SQL.Add('left join (select KCZLS.* from KCZLS ');
    SQL.Add('           where KCZLS.CKBH='''+EntryList.ENMas.fieldbyname('CKBH').value+''')  KCZLS on KCZLS.CLBH=CLZL.CLDH');
    sql.Add('left join (');
    sql.Add('select kcrk.memo,kcrks.clbh,kcrks.cgbh,sum(KCRKS.Qty) as okQty ');
    sql.Add('from kcrk ');
    sql.Add('inner join kcrks on kcrk.rkno=kcrks.rkno ');
    sql.Add('where 1=1 ');
    if LLNOEdit.Text<>'' then
      sql.Add(' and kcrk.memo='''+LLNOEdit.Text+''' ');
    if SCBHEdit.Text <> '' then
      sql.Add(' and kcrks.CGBH like '''+SCBHEdit.Text+'%''');
    sql.Add('group by  kcrk.memo,kcrks.clbh,kcrks.cgbh) kcrks on kcrks.clbh=kclls.clbh and kcrks.CGBH=kclls.SCBH');
    sql.Add('where 1=1  ');
    if LLNOEdit.Text<>'' then
      sql.Add('and kcll.LLNO='''+LLNOEdit.Text+''' ');
    if SCBHEdit.Text <> '' then
      sql.Add(' and kclls.scbh like '''+SCBHEdit.Text+'%''');
    if CLBHEdit.Text <> '' then
      sql.Add(' and kclls.clbh like '''+CLBHEdit.Text+'%''');
    if EntryList.ENMas.FieldByName('SFL').Value = 'THU HOI' then
      sql.Add(' and kclls.hglb='''+EntryList.ENMas.FieldByName('HGLB').Value+'''');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  Query3.Active:=true;
end;

procedure TEntryList_QT.DBGrid2DblClick(Sender: TObject);
begin
  if (not query2.Active) then
  begin
    abort;
  end;
  if (Query2.recordcount<1) then
  begin
    abort;
  end;
  if Query2.FieldByName('KCBH').IsNull then       //如果沒有確定位置則重新確定先
  begin
    MaterialArea:=TMaterialArea.create(self);
    MaterialArea.Edit1.Text:=Query1.fieldbyname('CLDH').AsString;
    MaterialArea.CBX1.Text:=EntryList.EnMas.fieldbyname('CKBH').AsString;
    MaterialArea.button1click(nil);
    MaterialArea.show;
    query1.Active:=false;
    close;
    abort;
  end;
  if EntryList.ENMas.FieldByName('SFL').Value='THU HOI' then
  begin
    with EntryList.ENDet do
    begin
      insert;
      fieldbyname('CGBH').value:=query2.fieldbyname('SCBH').value;
      fieldbyname('RKSB').value:=query2.fieldbyname('DFL').value;
      fieldbyname('CLBH').value:=query2.fieldbyname('CLBH').value;
      fieldbyname('YWPM').value:=query2.fieldbyname('YWPM').value;
      fieldbyname('DWBH').value:=query2.fieldbyname('DWBH').value;
      fieldbyname('Qty').value:=query2.fieldbyname('Qty').value;
      fieldbyname('PaQty').value:=query2.fieldbyname('Qty').value;
      fieldbyname('GSBH').value:=query2.fieldbyname('GSBH').value;
      fieldbyname('Memo').value:=query2.fieldbyname('LLNO').value;
      fieldbyname('CNO').value:=query2.fieldbyname('CNO').value;
      post;
    end;  
  end else
  begin
    //檢查領料單沒有採購單才能入庫
    if Query3.RecordCount=0 then
    begin
      with EntryList.ENDet do
      begin
          insert;
          fieldbyname('CGBH').value:=query2.fieldbyname('SCBH').value;
          fieldbyname('RKSB').value:='QT';
          fieldbyname('CLBH').value:=query2.fieldbyname('CLBH').value;
          fieldbyname('YWPM').value:=query2.fieldbyname('YWPM').value;
          fieldbyname('DWBH').value:=query2.fieldbyname('DWBH').value;
          fieldbyname('Qty').value:=(query2.fieldbyname('TempQty').value-query2.fieldbyname('RKQty').value);
          fieldbyname('PaQty').value:=query2.fieldbyname('TempQty').value;
          post;
      end;
      showmessage('Succeed.');
    end else
    begin
      showmessage('Please use CGNO in warehouse.');
    end;
  end;
end;

procedure TEntryList_QT.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if query2.FieldByName('RKQty').value>=query2.FieldByName('TempQty').value then
 begin
    DBGrid2.canvas.font.color:=clred;
    DBGrid2.defaultdrawcolumncell(rect,datacol,column,state);
 end;
end;

procedure TEntryList_QT.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

unit OrderpackMemo_Im1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Menus,
  ComCtrls;

type
  TOrderpackMemo_Im = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    YWDD: TQuery;
    YWDDDDBH: TStringField;
    YWDDArticle: TStringField;
    YWDDXieMing: TStringField;
    YWDDETD: TDateTimeField;
    YWDDQty: TFloatField;
    YWDDKFJC: TStringField;
    DS1: TDataSource;
    DDBZ: TQuery;
    DS2: TDataSource;
    Label3: TLabel;
    Edit3: TEdit;
    DDBZDDBH: TStringField;
    DDBZMENO: TStringField;
    DDBZZWSM: TStringField;
    DDBZVNSM: TStringField;
    DDBZUSERID: TStringField;
    DDBZUSERDate: TDateTimeField;
    DDBZYN: TStringField;
    DDBZLX: TStringField;
    DDBZXH: TStringField;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    Shipping1: TMenuItem;
    Production1: TMenuItem;
    Label4: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    YWDDCountry: TStringField;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Shipping1Click(Sender: TObject);
    procedure Production1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderpackMemo_Im: TOrderpackMemo_Im;

implementation

uses OrderpackMemo1, OrderList1, main1, uAutoComplete;

{$R *.dfm}

procedure TOrderpackMemo_Im.FormCreate(Sender: TObject);
begin
if OrderpackMemo.production.Checked then
  Label5.Caption :=  'Production';
if OrderpackMemo.shipping.Checked then
  Label5.Caption :=  'Shipping';

// 先找 500 天內的 article  coountry
sdate:=DATE - 500;
edate:=DATE;

// autocomplete
with Query1 do
begin
  // country
  active:=false;
  sql.Clear;
  sql.add('select distinct lbzls.ywsm ');
  sql.add('from ddzl                  ');
  sql.add('left join lbzls on lbzls.lb = ''06'' and lbzls.lbdh = ddzl.ddgb');
  sql.add('where convert(smalldatetime,convert(varchar,DDZL.DDRQ ,111)) between ');
  sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
  sql.add('      and DDZL.KHBH = ''' + OrderList.SpecMas.fieldbyname('KHBH').value +'''');
  Active:=True;

  First;
  while not Eof do
  begin
    if not fieldbyname('ywsm').IsNull then
      Memo1.Lines.Add( fieldbyname('ywsm').value );
    next;
   end;

  // article
  active:=false;
  sql.Clear;
  sql.add('select distinct article ');
  sql.add('from ddzl                  ');
  sql.add('where convert(smalldatetime,convert(varchar,DDZL.DDRQ ,111)) between ');
  sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
  sql.add('      and DDZL.KHBH = ''' + OrderList.SpecMas.fieldbyname('KHBH').value +'''');
  Active:=True;

  First;
  while not Eof do
  begin
    if not fieldbyname('article').IsNull then
      Memo2.Lines.Add( fieldbyname('article').value );
    next;
  end;
end;

SetAutoCompleteControl(Edit3, Memo1.Lines);
SetAutoCompleteControl(Edit2, Memo2.Lines);

// 一開始近半年的紀錄
DTP1.date:=DATE - 180;
DTP2.date:=DATE;
end;


procedure TOrderpackMemo_Im.Button1Click(Sender: TObject);
begin

  if ( length(edit1.text)<5 ) and ( edit1.text <> '' ) then
  begin
    showmessage('Pls key 5 digits or no key in .');
    abort;
  end;

  sdate:=DTP1.Date;
  edate:=DTP2.Date;

  with YWDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select max(YWDD.DDBH) as DDBH, max(XXZL.XieMing) as XieMing,');
    sql.add('max(YWDD.Qty) as max_Qty, DDZL.Article, max(YWDD.ETD) as ETD, KFZL.KFJC, LBZLS.YWSM as Country');
    sql.add('from YWDD');
    sql.add('left join DDZL on YWDD.YSBH=DDZl.DDBH ');
    sql.Add('left join KFZL on KFZl.KFDH=DDZL.KHBH ');
    sql.add('left join ZLZL  on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
    sql.add('where convert(smalldatetime,convert(varchar,DDZL.Shipdate ,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and DDZL.KHBH = ''' + OrderList.SpecMas.fieldbyname('KHBH').value +'''');

    if Edit1.Text <> '' then
      sql.Add('    and DDZL.DDBH like '+''''+edit1.Text+'%'+'''');

    if OrderpackMemo.production.Checked then
      sql.add('    and exists ( select * from YWDDBZ where YWDDBZ.DDBH = YWDD.DDBH and YWDDBZ.YN = 1 ) ');
    if OrderpackMemo.shipping.Checked then
      sql.add('    and exists ( select * from YWDDBZ where YWDDBZ.DDBH = YWDD.DDBH and YWDDBZ.YN = 2 ) ');
    if OrderpackMemo.total.Checked then
      sql.add('    and exists ( select * from YWDDBZ where YWDDBZ.DDBH = YWDD.DDBH ) ');

    if edit2.text<>'' then
          sql.add('    and DDZL.Article like '+''''+'%'+edit2.text+'%'+'''');
    if edit3.text<>'' then
        sql.add('      and LBZLS.YWSM like '+''''+'%'+edit3.text+'%'+'''');

    sql.add('group by DDZL.Article, LBZLS.YWSM, KFZL.KFJC');
    sql.add('order by YWDD.DDBH desc');
    active:=true;
  end;

// FIX
if OrderpackMemo.production.Checked then
  DDBZ.sql.Add('and YN = 1');
if OrderpackMemo.shipping.Checked then
  DDBZ.sql.Add('and YN = 2');
DDBZ.Active:=true;

end;

procedure TOrderpackMemo_Im.DBGridEh1DblClick(Sender: TObject);
begin

if YWDD.recordcount=0 then
  begin
    showmessage('Pls select order old first.');
    abort;
  end;
if DDBZ.recordcount=0 then
  begin
    showmessage('Pls select order old first.');
    abort;
  end;
with OrderpackMemo.YWDDBZ do
  begin
    DDBZ.First;
    while not DDBZ.Eof do
      begin
        if  not OrderpackMemo.YWDDBZ.locate('MENO', DDBZ.fieldbyname('MENO').value,[]) then
        begin
          insert;
          fieldbyname('DDBH').value:=OrderList.SpecMas.fieldbyname('DDBH').value;
          // bug 除非一開始為空  否則有可能會變成重複的複合鍵而導致錯誤
          //   fieldbyname('XH').value:=DDBZ.fieldbyname('XH').value;
          fieldbyname('MENO').value:=DDBZ.fieldbyname('MENO').value;
          fieldbyname('LX').value:=DDBZ.fieldbyname('LX').value;
          fieldbyname('ZWSM').value:=DDBZ.fieldbyname('ZWSM').value;
          fieldbyname('VNSM').value:=DDBZ.fieldbyname('VNSM').value;
          fieldbyname('USERID').value:=main.edit1.text;
          fieldbyname('USERDATE').value:=date;
          // FIX 須加入 YWDDBZ.YN
          fieldbyname('YN').value:=DDBZ.fieldbyname('YN').value;
          post;
        end;
        DDBZ.Next;
      end;
    showmessage('Succeed');
  end;
end;

procedure TOrderpackMemo_Im.FormDestroy(Sender: TObject);
begin
orderpackmemo_im:=nil;
end;

procedure TOrderpackMemo_Im.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TOrderpackMemo_Im.Shipping1Click(Sender: TObject);
var meno:string;
begin
  if messagedlg('change to shipping ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin

    with query1 do
    begin

      active:=false;
      sql.clear;
      sql.add('update YWBZZL');
      sql.Add('set');
      sql.Add('yn = 2');
      sql.Add('where meno = ''' + ddbz.FieldByName('MENO').Value +'''');
      ExecSQL;

      active:=false;
      sql.clear;
      sql.add('update YWDDBZ');
      sql.Add('set');
      sql.Add('yn = 2');
      sql.Add('where meno = ''' + ddbz.FieldByName('MENO').Value +'''');
      ExecSQL;
    end;

    meno:=ddbz.FieldByName('meno').Value;
    ddbz.Next;
    if not DDBZ.Eof then
      meno:=ddbz.FieldByName('meno').Value;
    ddbz.Active:=false;
    DDBZ.Active:=true;
    ddbz.locate('meno', meno,[]);
    ShowMessage('sucessed');
  end;   // end of  messagedlg
end;

procedure TOrderpackMemo_Im.Production1Click(Sender: TObject);
var meno:string;
begin
if messagedlg('change to production ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin

  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('update YWBZZL');
    sql.Add('set');
    sql.Add('yn = 1');
    sql.Add('where meno = ''' + ddbz.FieldByName('MENO').Value +'''');
    ExecSQL;

    active:=false;
    sql.clear;
    sql.add('update YWDDBZ');
    sql.Add('set');
    sql.Add('yn = 1');
    sql.Add('where meno = ''' + ddbz.FieldByName('MENO').Value +'''');
    ExecSQL;
  end;

  meno:=ddbz.FieldByName('meno').Value;
  ddbz.Next;
  if not DDBZ.Eof then
    meno:=ddbz.FieldByName('meno').Value;
  ddbz.Active:=false;
  DDBZ.Active:=true;
  ddbz.locate('meno', meno,[]);
  ShowMessage('sucessed');
end;   // end of  messagedlg
end;

procedure TOrderpackMemo_Im.FormShow(Sender: TObject);
begin
 main.FormLanguage(Pointer(self),self.Name);
end;

end.

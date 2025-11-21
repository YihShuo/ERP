unit EntryTotal_TH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,IniFiles;

type
  TEntryTotal_TH = class(TForm)
    PageControl1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Panel3: TPanel;
    DBGrid2: TDBGridEh;
    DS2: TDataSource;
    SCBHEdit: TEdit;
    LLNOEdit: TEdit;
    CLBHEdit: TEdit;
    Query2: TQuery;
    Query2LLNO: TStringField;
    Query2SCBH: TStringField;
    Query2CLBH: TStringField;
    Query2DWBH: TStringField;
    Query2YWPM: TStringField;
    Query2TempQty: TCurrencyField;
    Query2Qty: TCurrencyField;
    Query2RKQty: TCurrencyField;
    Query2KCBH: TStringField;
    Query2GSBH: TStringField;
    Query2DFL: TStringField;
    Query2HGLB: TStringField;
    Query2CNO: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  EntryTotal_TH: TEntryTotal_TH;

implementation

uses EntryTotal1, MaterialArea1, EntryList1, main1;

{$R *.dfm}
procedure TEntryTotal_TH.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query2.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('TempQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TEntryTotal_TH.FormDestroy(Sender: TObject);
begin
  EntryTotal_TH:=nil;
end;

procedure TEntryTotal_TH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntryTotal_TH.Button2Click(Sender: TObject);
begin
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
    SQL.Add('           where KCZLS.CKBH='''+EntryTotal.ENMas.fieldbyname('CKBH').value+''')  KCZLS on KCZLS.CLBH=CLZL.CLDH');
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
    if EntryTotal.ENMas.FieldByName('SFL').Value = 'THU HOI' then
      sql.Add(' and kclls.hglb='''+EntryTotal.ENMas.FieldByName('HGLB').Value+'''');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TEntryTotal_TH.DBGrid2DblClick(Sender: TObject);
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
    MaterialArea.Edit1.Text:=Query2.fieldbyname('CLBH').AsString;
    MaterialArea.CBX1.Text:=EntryTotal.EnMas.fieldbyname('CKBH').AsString;
    MaterialArea.button1click(nil);
    MaterialArea.show;
    query2.Active:=false;
    close;
    abort;
  end;
  with EntryTotal.ENDet do
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
end;

procedure TEntryTotal_TH.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
   DBGrid2DblClick(nil);
end;

procedure TEntryTotal_TH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TEntryTotal_TH.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.

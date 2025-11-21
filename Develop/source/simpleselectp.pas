unit simpleselectp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, Mask, DBCtrls,
  ComCtrls, GridsEh, DBGridEh;

type
  Tsimpleselect = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    SimpleQry: TQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SimpleQryypdh: TStringField;
    SimpleQryxiexing: TStringField;
    SimpleQryshehao: TStringField;
    SimpleQryarticle: TStringField;
    SimpleQrykfjd: TStringField;
    SimpleQrycfm: TStringField;
    SimpleQryjijie: TStringField;
    SimpleQryquantity: TFloatField;
    Label3: TLabel;
    dtp2: TDateTimePicker;
    Label4: TLabel;
    Edit1: TEdit;
    SimpleQrydevcode: TStringField;
    Label5: TLabel;
    Edit2: TEdit;
    Label6: TLabel;
    Edit3: TEdit;
    Label7: TLabel;
    Edit4: TEdit;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    SelectSimpleOrder:TStringlist;//紀錄已經選取新增的樣品單號
    { Private declarations }
    Function CheckSelectSimpleOrder(SimpleOrder:string):boolean;
  public
    { Public declarations }
  end;

var
  simpleselect: Tsimpleselect;

implementation

uses smapleorderlistp, main1, FunUnit;

{$R *.dfm}

procedure Tsimpleselect.Button1Click(Sender: TObject);
begin
  with SimpleQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ypzl.ypdh,ypzl.xiexing,ypzl.shehao,ypzl.article,ypzl.kfjd,');
    sql.Add('	ypzl.cfm,kfxxzl.jijie,ypzl.quantity,kfxxzl.devcode ');
    sql.Add('from ypzl');
    sql.Add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.Add('where ypzl.ypdh not in ');
    sql.add('(select ypdh from ypzlzls ');
    sql.add(' left join ypzlzl on ypzlzl.ypzlbh=ypzlzls.ypzlbh ');
    sql.add(  'where (pd='+''''+smapleorderlist.Flag.Text+''') and (ypzlzls.ypzlbh='''+smapleorderlist.ypzlzl.fieldByName('YPZLBH').AsString+''')  ) ');
    sql.Add('     and CONVERT(SMALLDATETIME,sdrq,111) >= '+''''+datetostr(dtp2.Date)+'''');
    sql.Add('     and kfxxzl.khdh='+''''+edit3.text+'''');
    if dbedit1.Text <> '' then
      sql.Add('   and ypzl.kfjd='+''''+dbedit1.Text+'''');
    if dbedit2.Text <> '' then
      sql.Add('   and kfxxzl.jijie='+''''+dbedit2.Text+'''');
    if edit1.Text <> '' then
      sql.Add('   and  kfxxzl.devcode like ''%'+edit1.text+'%''');
    if edit2.Text <> '' then
      sql.Add('   and  ypzl.article like ''%'+edit2.text+'%''');
    if edit4.Text <> '' then
      sql.Add('   and  ypzl.ypdh like  ''%'+edit4.text+'%''');
    //memo1.text:=sql.text;
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
end;

procedure Tsimpleselect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SelectSimpleOrder.Free;
  action:=Cafree;
end;

procedure Tsimpleselect.FormDestroy(Sender: TObject);
begin
  simpleselect:=nil;
end;

procedure Tsimpleselect.FormCreate(Sender: TObject);
begin
  SelectSimpleOrder:=TStringlist.Create;
  dtp2.Date:=now-14;
  if (main.edit2.Text='CDC') then
    edit3.text:='036'
  else
    edit3.Text:='0049';
end;
//檢查是否已經新增選取樣品單號
Function Tsimpleselect.CheckSelectSimpleOrder(SimpleOrder:string):boolean;
var i:integer;
    tmpRes:boolean;
begin
   tmpRes:=false;
   for i:=0 to  SelectSimpleOrder.Count-1 do
   begin
     if SelectSimpleOrder.Strings[i]=SimpleOrder then
     begin
       tmpRes:=true;
       break;
     end;
   end;
   result:=tmpRes;
end;
//DBGrid顏色提示已經選取新增過了
procedure Tsimpleselect.DBGridEh1DblClick(Sender: TObject);
begin
  //檢查是否已經新增過樣品單號
  if CheckSelectSimpleOrder(SimpleQry.FieldByName('ypdh').AsString)=false then
  begin
    smapleorderlist.ypzlzls.Insert;
    smapleorderlist.ypzlzls.FieldByName('ypzlbh').Value:=smapleorderlist.ypzlzl.FieldByName('ypzlbh').Value;
    smapleorderlist.ypzlzls.FieldByName('ypdh').Value:=SimpleQry.FieldByName('ypdh').Value;
    smapleorderlist.ypzlzls.FieldByName('pairs').Value:=SimpleQry.FieldByName('quantity').Value;
    smapleorderlist.ypzlzls.FieldByName('XieXing').Value:=SimpleQry.FieldByName('XieXing').Value;
    smapleorderlist.ypzlzls.FieldByName('SheHao').Value:=SimpleQry.FieldByName('SheHao').Value;
    smapleorderlist.ypzlzls.FieldByName('Article').Value:=SimpleQry.FieldByName('Article').Value;
    smapleorderlist.ypzlzls.FieldByName('userdate').Value:=date;
    smapleorderlist.ypzlzls.FieldByName('userid').value:=main.edit1.text;
    smapleorderlist.ypzlzls.FieldByName('remark').value:=SimpleQry.FieldByName('devcode').Value;
    smapleorderlist.ypzlzls.FieldByName('YN').value:='N';
    smapleorderlist.upSQL1.apply(ukinsert);
    //紀錄點選樣品單號
    SelectSimpleOrder.Add(SimpleQry.FieldByName('ypdh').AsString);
  end;
end;

procedure Tsimpleselect.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //檢查是否已經新增選取樣品單號
    if CheckSelectSimpleOrder(SimpleQry.FieldByName('ypdh').asstring)=true then
    begin
      DBGridEh1.canvas.font.color:=clred;
      DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
    end;
end;

end.

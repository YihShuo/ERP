unit DelOther_O_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh, iniFiles, Dateutils;

type
  TDelOther_O_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1zwpm: TStringField;
    Label3: TLabel;
    Query1KCQty: TFloatField;
    Query1tyjh: TStringField;
    Query1UnLLQty: TCurrencyField;
    Query1AvailQty: TCurrencyField;
    CB1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    CB2: TCheckBox;
    Query2CKBH: TStringField;
    Query2CLBH: TStringField;
    Query2DepID: TStringField;
    Query2Qty: TFloatField;
    Query2DepName: TStringField;
    Query2DepMemo: TStringField;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CB2Click(Sender: TObject);
  private
    WH_TXSQL:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  DelOther_O_CL: TDelOther_O_CL;

implementation

uses DelOther_O1,FunUnit, main1;

{$R *.dfm}

procedure TDelOther_O_CL.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WH_TXSQL:=MyIni.ReadString('Warehouse','WarehouseN32_TXSQL',' (''VTXX'',''VTXY'',''VTXZ'') ');
    finally
      MyIni.Free;
    end;
  end;

end;

procedure TDelOther_O_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TDelOther_O_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TDelOther_O_CL.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.TYJH,KCZLS.KCQty,UnKCLL.UnLLQty,(IsNull(KCZLS.KCQty,0)-IsNull(UnKCLL.UnLLQty,0) )as AvailQty from CLZL  ');
    sql.add('left join  KCZLS on KCZLS.CLBH=CLZL.CLDh and KCZLS.CKBH='+''''+DelOther_O.DelMas.fieldbyname('CKBH').AsString+'''');
    sql.add('left join ( ');
    sql.add('   select KCLLS.CLBH,Sum(KCLLS.TempQty) as UnLLQty from KCLLS,KCLL where ISNULL(flowflag,'''')<>''X'' and KCLLS.LLNO=KCLL.LLNO and KCLL.LLNO<>'''+DelOther_O.DelMas.FieldByName('LLNO').AsString+''' and KCLL.CFMID=''NO'' and KCLL.CKBH='''+DelOther_O.DelMas.fieldbyname('CKBH').AsString+''' Group by KCLLS.CLBH ) UnKCLL on UnKCLL.CLBH=CLZL.CLDH ');
    sql.add('where CLZL.CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.ZWPM like '+''''+'%'+edit3.Text+'%'+'''');
    //  20150619 not show material with TYJH='y'
    sql.add('      and ((CLZL.TYJH<>'+''''+'Y'+''''+')or (TYJH is null))')  ;
    //
    if CB1.Checked=true then 
    sql.add('and IsNull(KCQty,0)>0 ');
    sql.add('order by CLZL.CLDH desc');
    active:=true;
  end;
end;

procedure TDelOther_O_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
     button1Click(nil);
end;

procedure TDelOther_O_CL.FormDestroy(Sender: TObject);
begin
  DelOther_O_CL:=nil;
end;

procedure TDelOther_O_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TDelOther_O_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  if query1.FieldByName('AvailQty').value<=0 then
  begin
    showmessage('khong con ton kho, khong cho phep  mo phieu');
    if CB1.Checked=true then exit;
  end;
  with DelOther_O.DelDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('SCBH').value:='ZZZZZZZZZZ';
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;  
    fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('CostID').value:=DelOther_O.Pro_CostID_TV;
    fieldbyname('DFL').value:='N';
    //fieldbyname('BLSB').value:='N';
    post;
  end;
  showmessage('Succeed.');
end;

procedure TDelOther_O_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil);
end;

procedure TDelOther_O_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;



procedure TDelOther_O_CL.FormCreate(Sender: TObject);
begin
  ReadIni();
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select KCCLMONTH_Dep.CKBH,KCCLMONTH_Dep.CLBH,KCCLMONTH_Dep.DepID,KCCLMONTH_Dep.Qty,IsNull(Bdepartment.DepName,''Stock'') as DepName,IsNull(Bdepartment.DepMemo,''庫存'') as DepMemo ');
    SQL.Add('from KCCLDAY_BDepartment KCCLMONTH_Dep');
    SQL.Add('left join BDepartment on BDepartment.ID=KCCLMONTH_Dep.DepID');
    SQL.Add('where KCCLMONTH_Dep.Qty>0 and KCCLMONTH_Dep.CLBH=:CLDH  ');
    //funcObj.WriteErrorLog(sql.Text);
  end;
end;

procedure TDelOther_O_CL.CB2Click(Sender: TObject);
begin
  //檢查總務組別領料
  if CB2.Checked=true then
  begin
    DBGridEh2.Visible:=true;
    Query2.Active:=true;
    Splitter1.Align:=alright;
  end else
  begin
    DBGridEh2.Visible:=false;
    Query2.Active:=false;
    Splitter1.Align:=alNone;
  end;
end;

end.

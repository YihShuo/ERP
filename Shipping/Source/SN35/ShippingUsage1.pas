unit ShippingUsage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables,
  Menus, Comobj, DateUtils, iniFiles, ExcelXP,ShellApi;

type
  TShippingUsage = class(TForm)
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    RY: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Button2: TButton;
    Label2: TLabel;
    Label1: TLabel;
    MaHQ: TEdit;
    Button4: TButton;
    Query1DDBH: TStringField;
    Query1CNO: TStringField;
    Query1Pairs: TFloatField;
    Query1Usage: TFloatField;
    Query1Qty: TFloatField;
    Qtemp: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    CurrencyField15: TCurrencyField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    Query1KCLLS_CNO: TStringField;
    Label3: TLabel;
    Memo: TEdit;
    Query1Memo: TStringField;
    Query1KCLLS_Qty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure RYKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaHQKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
  private

    AppDir:string;
    RYEditSubSQL,CNOEditSubSQL:String;
    { Private declarations }
    procedure RYEditPaste();
    procedure CNOEditPaste();
    function GetMutiRYSubSQL(Str:String):String;
    function GetMutiCNOSubSQL(Str:String):String;

  public

    { Public declarations }
  end;

var
  ShippingUsage: TShippingUsage;

implementation
  uses main1, FunUnit,
  ImportHaiQuan1,untClipboard;
{$R *.dfm}



procedure TShippingUsage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TShippingUsage.FormDestroy(Sender: TObject);
begin
  ShippingUsage:=nil;
end;

function TShippingUsage.GetMutiRYSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   //BDE TQuery 不能太長所以改用暫存
   if ((tmpList.Count>=20) and (tmpList.Count<=500)) then
   begin
     {with Qtemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.add('if object_id(''tempdb..#RYList'') is not null    ');
       SQL.add('begin drop table #RYList end                 ');
       SQL.Add('select DDBH into #RYList from DDZL');
       SQL.Add('where  DDBH '+tmResult);
       //funcobj.WriteErrorLog(sql.Text);
       ExecSQL();
       Result:=' in (select DDBH from #RYList) ';
     end; }
     Result:=tmResult;
   end else if (tmpList.Count>=500) then
   begin
      showmessage('Vui long khong nhap nhieu hon 500 RY#');
      abort;
   end else
   begin
      Result:=tmResult;
   end;
   tmpList.Free;
 end else
 begin
   Result:=' like '''+Str+'%'' ';
 end;
end;

function TShippingUsage.GetMutiCNOSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   Result:=tmResult;
   tmpList.Free;
 end else
 begin
   Result:=' like '''+Str+'%'' ';
 end;
end;

procedure TShippingUsage.Button1Click(Sender: TObject);
begin
  if (RY.Text='') and (MaHQ.Text='') and  (Memo.Text='') then
  begin
    Showmessage('Pls key in condition RY or MaHQ or Ghi Chu');
    abort;
  end;
  RYEditSubSQL:=GetMutiRYSubSQL(RY.Text);
  CNOEditSubSQL:=GetMutiCNOSubSQL(MaHQ.Text);
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' Select HG_Usage.DDBH,HG_Usage.CNO,HG_Usage.Usage,HG_Usage.Pairs,HG_Usage.Qty,KCLLS.CNO as KCLLS_CNO,KCLLS.Qty as KCLLS_Qty,HG_Usage.Memo');
    SQL.Add(' From HG_Usage ');
    SQL.Add(' Left join ( Select KCLLS.SCBH,KCLLS.CNO,round(Sum(Qty),6) as Qty From ( ');
    SQL.Add('             Select KCLLS.SCBH,CNO,round(sum(qty *RateC ),6) as Qty ');
    SQL.Add('			        From KCLLS_1416 KCLLS ');
    SQL.Add('             Left join KCLL_1416 KCLL on KCLLS.LLNO=KCLL.LLNO ');
    SQL.Add('       			Where KCLL.CFMID<>''NO'' ');
    if RY.Text <> '' then
        SQL.Add('         AND KCLLS.SCBH '+RYEditSubSQL+'  ');
    if MaHQ.Text <> '' then
        SQL.Add('         AND KCLLS.CNO '+CNOEditSubSQL+' ');
    SQL.Add('			        Group by kclls.SCBH,CNO    ');
    SQL.Add('             Union All ');
    SQL.Add('             Select KCLLS.SCBH,CNO,round(sum(qty *RateC ),6) as Qty ');
    SQL.Add('			        From KCLLS_1416_Child KCLLS ');
    SQL.Add('             Left join KCLL_1416_Child KCLL on KCLLS.LLNO=KCLL.LLNO ');
    SQL.Add('       			Where KCLL.CFMID<>''NO'' ');
    if RY.Text <> '' then
        SQL.Add('         AND KCLLS.SCBH '+RYEditSubSQL+'  ');
    if MaHQ.Text <> '' then
        SQL.Add('         AND KCLLS.CNO '+CNOEditSubSQL+' ');
    SQL.Add('			        Group by kclls.SCBH,CNO    ');
    SQL.Add('            ) KCLLS Group by KCLLS.SCBH,KCLLS.CNO ');
    SQL.Add('    ) KCLLS on HG_Usage.DDBH=KCLLS.SCBH and HG_Usage.CNO=KCLLS.CNO  ');
    SQL.Add(' WHERE 1=1 ');
    if RY.Text <> '' then
      SQL.Add(' AND HG_Usage.DDBH '+RYEditSubSQL+'  ');
    if MaHQ.Text <> '' then
      SQL.Add(' AND HG_Usage.CNO '+CNOEditSubSQL+' ');
    if Memo.Text <> '' then
       SQL.Add(' AND HG_Usage.Memo like ''%'+Memo.Text+'%'' ');
    SQL.Add('Order By  HG_Usage.DDBH');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TShippingUsage.Button4Click(Sender: TObject);
begin
  ImportHaiQuan:=TImportHaiQuan.create(self);
  ImportHaiQuan.show
end;

procedure TShippingUsage.RYEditPaste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalDDBH:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalDDBH:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalDDBH:=TotalDDBH+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalDDBH)>0 then
    begin
      RY.Text:=Copy(TotalDDBH,1,length(TotalDDBH)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;

procedure TShippingUsage.RYKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    RYEditPaste();
  end;
end;

procedure TShippingUsage.CNOEditPaste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalCNO:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalCNO:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalCNO:=TotalCNO+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalCNO)>0 then
    begin
      RY.Text:=Copy(TotalCNO,1,length(TotalCNO)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;

procedure TShippingUsage.MaHQKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    CNOEditPaste();
  end;
end;

procedure TShippingUsage.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.

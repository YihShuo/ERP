unit Import_Label_Usage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,comobj;

type
  TImport_Label_Usage = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Import: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Qtemp: TQuery;
    Button2: TButton;
    Query1ZLBH: TStringField;
    Query1xh: TStringField;
    Query1BWBH: TStringField;
    Query1CSBH: TStringField;
    Query1MJBH: TStringField;
    Query1CLBH: TStringField;
    Query1ZMLB: TStringField;
    Query1SIZE: TStringField;
    Query1CLSL: TFloatField;
    Query1USAGE: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1YWPM: TStringField;
    chkFG: TCheckBox;
    OpenDialog: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImportClick(Sender: TObject);
  private
    RYEditSubSQL: String;
    { Private declarations }
    procedure Edit1Paste();
    function GetMutiRYSubSQL(Str:String):String;
  public
    { Public declarations }
  end;

var
  Import_Label_Usage: TImport_Label_Usage;

implementation

uses main1,untClipboard,fununit;

{$R *.dfm}

procedure TImport_Label_Usage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TImport_Label_Usage.FormDestroy(Sender: TObject);
begin
  Import_Label_Usage:=nil;
end;

procedure TImport_Label_Usage.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TImport_Label_Usage.Edit1Paste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalZLBH:String;
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
    TotalZLBH:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalZLBH:=TotalZLBH+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalZLBH)>0 then
    begin
      Edit1.Text:=Copy(TotalZLBH,1,length(TotalZLBH)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;

function TImport_Label_Usage.GetMutiRYSubSQL(Str:String):String;
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
     with Qtemp do
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
     end;
   end else if (tmpList.Count>500) then
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

procedure TImport_Label_Usage.Button1Click(Sender: TObject);
begin
  if edit1.Text='' then
  begin
    showmessage('Pls key in RY#');
    abort;
  end;
  RYEditSubSQL:=GetMutiRYSubSQL(Edit1.Text);
  with Query1 do
  begin
    Active:=false;           //BOM與業務都會改用量，改為業務改過之後，只顯示業務改的
    sql.clear;
    SQL.add(' select ZLBH,xh,BWBH,CSBH,MJBH,CLBH,ZMLB,SIZE,CLSL,USAGE,USERID,USERDATE,YN,ZWPM,DWBH');
    SQL.add('       ,max (Case when (CCQQ is not null and CCQZ is not null) and (CCQQ <> '''' and CCQZ <> '''') then YWPM +''(''+CCQQ +''-'' +CCQZ +'')'' else YWPM end) as YWPM');
    SQL.add(' from (');
    SQL.add(' select ZLZLS2.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH');
    SQL.add('       ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQQ else DXXZLS.CCQQ end) as CCQQ');
    SQL.add('       ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQZ else DXXZLS.CCQZ end) as CCQZ');
    SQL.add(' from ZLZLS2');
    SQL.add(' left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    SQL.add(' LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH');
    SQL.add(' LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING ');
    SQL.add('           AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH ');
    SQL.add(' LEFT JOIN DDZL_XXZLS AS DXXZLS ON DDZL.XIEXING = DXXZLS.XIEXING');
    SQL.add('           AND DDZL.SHEHAO = DXXZLS.SHEHAO AND ZLZLS2.BWBH = DXXZLS.BWBH and DXXZLS.DDBH = DDZL.DDBH');
    SQL.add(' where 1=1 and DDZL.GSBH='''+main.Edit2.Text+''' ');
    if chkFG.Checked then
    SQL.Add(' and DDZL.YN=''1'' ');
    if edit1.Text <>'' then
    SQL.Add(' and ZLZLS2.ZLBH '+RYEditSubSQL+' ');
    if edit2.Text <>'' then
    SQL.Add(' and ZLZLS2.CLBH like '''+edit2.Text+'%'' ');
    if edit3.Text <>'' then
    SQL.Add(' and CLZL.YWPM like ''%'+edit3.Text+'%'' ');
    SQL.Add(' and Left(ZLZLS2.CLBH,3) in (''L09'',''H15'',''H14'' ');
    SQL.add(' )');
    SQL.add('         and  not exists (');
    SQL.add('         select *');
    SQL.add('         from ZLZLS2 A');
    SQL.add('         where ZLZLS2.ZLBH=A.ZLBH and ZLZLS2.BWBH=A.BWBH and ZLZLS2.CLBH=A.CLBH  and ZLZLS2.MJBH=A.MJBH and ZLZLS2.SIZE=A.SIZE and A.YN=2)');
    SQL.add(' group by ZLZLS2.ZLBH,ZLZLS2.xh,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJBH,ZLZLS2.CLBH,ZLZLS2.ZMLB,ZLZLS2.SIZE,');
    SQL.add('          ZLZLS2.CLSL,ZLZLS2.USAGE,ZLZLS2.USERID,ZLZLS2.USERDATE,ZLZLS2.YN,CLZL.ZWPM,CLZL.YWPM,CLZL.dwbh');
    SQL.add(' union all');
    SQL.add(' select ZLZLS2.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH');
    SQL.add('        ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQQ else DXXZLS.CCQQ end) as CCQQ');
    SQL.add('        ,max (Case when DXXZLS.DDBH is null then XXZLS.CCQZ else DXXZLS.CCQZ end) as CCQZ');
    SQL.add(' from ZLZLS2');
    SQL.add(' left join CLZL on ZLZLS2.CLBH=CLZL.CLDH ');
    SQL.add(' LEFT JOIN DDZL AS DDZL ON ZLZLS2.ZLBH = DDZL.ZLBH');
    SQL.add(' LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING ');
    SQL.add('           AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.BWBH');
    SQL.add(' LEFT JOIN DDZL_XXZLS AS DXXZLS ON DDZL.XIEXING = DXXZLS.XIEXING');
    SQL.add('           AND DDZL.SHEHAO = DXXZLS.SHEHAO AND ZLZLS2.BWBH = DXXZLS.BWBH and DXXZLS.DDBH = DDZL.DDBH ');
    SQL.add(' where 1=1 and DDZL.GSBH='''+main.Edit2.Text+''' ');
    if chkFG.Checked then
    SQL.Add(' and DDZL.YN=''1'' ');
    if edit1.Text <>'' then
    SQL.Add(' and ZLZLS2.ZLBH '+RYEditSubSQL+'  ');
    if edit2.Text <>'' then
    SQL.Add(' and ZLZLS2.CLBH like '''+edit2.Text+'%'' ');
    if edit3.Text <>'' then
    SQL.Add(' and CLZL.YWPM like ''%'+edit3.Text+'%'' ');
    SQL.Add(' and Left(ZLZLS2.CLBH,3) in (''L09'',''H15'',''H14'' ');
    SQL.add(' )');
    SQL.add(' and zlzls2.YN=''2'' ');
    SQL.add(' group by ZLZLS2.ZLBH,ZLZLS2.xh,ZLZLS2.BWBH,ZLZLS2.CSBH,ZLZLS2.MJBH,ZLZLS2.CLBH,ZLZLS2.ZMLB,ZLZLS2.SIZE,');
    SQL.add(' ZLZLS2.CLSL,ZLZLS2.USAGE,ZLZLS2.USERID,ZLZLS2.USERDATE,ZLZLS2.YN,CLZL.ZWPM,CLZL.YWPM,CLZL.dwbh');
    SQL.add(' ) ZLZLS2');
    SQL.add(' group by ZLBH,xh,BWBH,CSBH,MJBH,CLBH,ZMLB,SIZE,CLSL,USAGE,USERID,USERDATE,YN,ZWPM,DWBH');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  if Query1.RecordCount>0 then
  begin
    BB4.Enabled:=true;
  end;
end;

procedure TImport_Label_Usage.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  Import.Enabled:=true;
end;

procedure TImport_Label_Usage.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
  Import.Enabled:=false;
end;

procedure TImport_Label_Usage.BB5Click(Sender: TObject);
var  Ndate:TDate;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
  end;

  with Query1 do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
        begin
          edit;
          fieldbyname('YN').Value:='2';
          FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd hh:mm:ss',Ndate);
          FieldByName('userid').Value:=main.Edit1.Text;
          post;
          UpdateSQL1.Apply(ukmodify);
        end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    BB5.enabled:=false;
    BB6.enabled:=false;
    Import.Enabled:=false;
  end;
end;

procedure TImport_Label_Usage.Button2Click(Sender: TObject);
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

procedure TImport_Label_Usage.Edit1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    Edit1Paste();
  end;
end;

procedure TImport_Label_Usage.ImportClick(Sender: TObject);
var
  ExcelApp: Variant;
  ZLBH,CLBH: string;
  CLSL:real;
  i,j:integer;
begin
  if OpenDialog.Execute then
  begin

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    i:=2;
    ZLBH:=ExcelApp.Cells[i,1].Value;
    CLBH:=ExcelApp.Cells[i,3].Value;
    CLSL:=ExcelApp.Cells[i,4].Value;
    while ((trim(ZLBH)<>'') and (trim(CLBH)<>''))  do
    begin
      Query1.First;
      for j:=0 to Query1.RecordCount-1 do
      begin
        if ((Query1.FieldByName('ZLBH').Value= ZLBH) and (Query1.FieldByName('CLBH').Value= CLBH)) then
        begin
          Query1.Edit;
          Query1.FieldByName('CLSL').Value:=CLSL;
          Query1.Post;
        end;
        Query1.Next;
      end;
      i:=i+1;
      ZLBH:=ExcelApp.Cells[i,1].Value;
      CLBH:=ExcelApp.Cells[i,3].Value;
      CLSL:=ExcelApp.Cells[i,4].Value;
    end;
    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

end.

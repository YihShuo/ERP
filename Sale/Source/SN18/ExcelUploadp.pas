unit ExcelUploadp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh, DB,
  DBTables, ADODB,iniFiles;

type
  TExcelUpload = class(TForm)
    Panel3: TPanel;
    bbt2: TBitBtn;
    bb1: TBitBtn;
    Panel2: TPanel;
    Label5: TLabel;
    Button1: TButton;
    Panel1: TPanel;
    DDZL_ODGrid: TDBGridEh;
    Splitter1: TSplitter;
    DDZL_ODsGrid: TDBGridEh;
    UPDDZL_OD: TUpdateSQL;
    DDZL_OD: TQuery;
    DDZLDS: TDataSource;
    DDZL_ODs: TQuery;
    XXCCDS: TDataSource;
    ImportDateQuery: TQuery;
    TW_ERP: TDatabase;
    TW_DDZL: TQuery;
    TW_DDZLs: TQuery;
    NotYetUploadCK: TCheckBox;
    bbt3: TBitBtn;
    OpenDialog: TOpenDialog;
    ProcessLB: TLabel;
    ExeQuery: TQuery;
    Label1: TLabel;
    ImportDateCombo: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    KFCQCombo: TComboBox;
    Label3: TLabel;
    DDZL_ODDDBH: TStringField;
    DDZL_ODDDLB: TStringField;
    DDZL_ODXieXing: TStringField;
    DDZL_ODSheHao: TStringField;
    DDZL_ODCCGB: TStringField;
    DDZL_ODArticle: TStringField;
    DDZL_ODKHBH: TStringField;
    DDZL_ODBB: TStringField;
    DDZL_ODKHPO: TStringField;
    DDZL_ODShipDate: TStringField;
    DDZL_ODCPLB: TStringField;
    DDZL_ODLABELCHARGE: TFloatField;
    DDZL_ODDDRQ: TStringField;
    DDZL_ODPairs: TIntegerField;
    DDZL_ODDest: TStringField;
    DDZL_ODDDGB: TStringField;
    DDZL_ODBUYNO: TStringField;
    DDZL_ODVersion: TSmallintField;
    DDZL_ODDDZT: TStringField;
    DDZL_ODUserID: TStringField;
    DDZL_ODUserDATE: TDateTimeField;
    DDZL_ODImportDATE: TDateTimeField;
    DDZL_ODYN: TStringField;
    DDZL_ODOGAC: TDateTimeField;
    DDZL_ODKGAC: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bb1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DDZL_ODAfterOpen(DataSet: TDataSet);
    procedure bbt2Click(Sender: TObject);
    procedure TW_ERPLogin(Database: TDatabase; LoginParams: TStrings);
    procedure DDZL_ODGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt3Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
    DBUser,DBPass:string;
    { Private declarations }
    procedure ReadIni(); //讀取資料庫連線設定檔
    procedure Upload2TWServer(); //上傳台灣資料庫
    function DeleteTWOrder(DDBH:string):boolean;
    procedure CheckXieXingIsSync(STDDBH,EDDDBH:string); //檢查鞋型和設號是否和TW BOM資料是否一致性
    procedure WriteUploadDDBHLog(WriteStr:string); //記錄此次上傳DDBH編號 Log
    procedure LoadImortDateCombo(); //載入ImportDateCombo
  public
    { Public declarations }
  end;

var
  ExcelUpload: TExcelUpload;

implementation
  uses main1,FunUnit;
{$R *.dfm}
//
procedure TExcelUpload.ReadIni();
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create( ExtractFilePath(Application.ExeName)+'\LY_ERP.ini' );
  try
   //資料庫IP
   DBUser := Ini.ReadString( 'Sales_N18_DB', 'User', 'JNG');
   DBPass := Ini.ReadString( 'Sales_N18_DB', 'Pass', 'jng@428');
   //
   TW_ERP.Connected:=true;
   //
  finally
    Ini.Free;
  end;
end;
//
procedure TExcelUpload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure TExcelUpload.FormDestroy(Sender: TObject);
begin
  ExcelUpload:=nil;
end;

procedure TExcelUpload.bb1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TExcelUpload.Button1Click(Sender: TObject);
begin
  with DDZL_OD do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from DDZL_OD ');
    SQL.Add('where  (ImportDate='''+ImportDateCombo.Text+''')');
    SQL.Add('  and DDBH like ''%'+Edit1.Text+'%''');
    if NotYetUploadCK.Checked=true then
       SQL.Add(' and DDRQ is  null ');
    SQL.Add(' order by ');
    SQL.Add(' DDBH');
    Active:=true;
  end;
  DDZL_ODs.Active:=true;
  Panel2.Visible:=false;
  if Copy(DDZL_OD.FieldByName('DDBH').AsString,1,1)='Y' then KFCQCombo.ItemIndex:=0;
  if Copy(DDZL_OD.FieldByName('DDBH').AsString,1,1)='B' then KFCQCombo.ItemIndex:=1;
  if Copy(DDZL_OD.FieldByName('DDBH').AsString,1,1)='I' then KFCQCombo.ItemIndex:=2;
end;
//載入ImportDateList
procedure TExcelUpload.LoadImortDateCombo();
begin
  ImportDateQuery.Active:=false;
  ImportDateQuery.Active:=true;
  ImportDateCombo.Clear;
  while Not ImportDateQuery.Eof do
  begin
    ImportDateCombo.items.add(ImportDateQuery.FieldByName('ImportDate').AsString);
    ImportDateQuery.Next;
  end;
  if ImportDateCombo.Items.Count>0 then ImportDateCombo.ItemIndex:=0;
  ImportDateQuery.Active:=false;
end;
procedure TExcelUpload.FormCreate(Sender: TObject);
begin
  ReadIni();
  LoadImortDateCombo();
end;

procedure TExcelUpload.FormResize(Sender: TObject);
begin
  DDZL_ODGrid.width:=Panel1.Width-225;
end;

procedure TExcelUpload.DDZL_ODAfterOpen(DataSet: TDataSet);
begin
  if DDZL_OD.RecordCount>0 then bbt2.Enabled:=true;
end;

procedure TExcelUpload.bbt2Click(Sender: TObject);
begin
  Upload2TWServer();//上傳資料到台灣
end;
//檢查更新同步鞋型
procedure TExcelUpload.CheckXieXingIsSync(STDDBH,EDDDBH:string);
var i:integer;
begin
  with TW_DDZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DDZL.DDBH,DDZL.XieXing as D_XieXing,DDZL.SheHao as D_SheHao,XXZL.XieXing as X_XieXing,XXZL.SheHao as X_SheHao from DDZL ');
    SQL.Add('Inner join XXZL on (DDZL.Article=XXZL.Article) and  XXZL.KFCQ='''+KFCQCombo.Text+'''  ');
    SQL.Add('where (DDBH>='''+STDDBH+''') and (DDBH<='''+EDDDBH+''') order by DDZL.DDBH');
    Active:=true;
  end;
  for i:=1 to TW_DDZL.RecordCount-1 do
  begin
    with TW_DDZL do
    begin
      if ((FieldByName('D_XieXing').AsString<>FieldByName('X_XieXing').AsString) or (FieldByName('D_SheHao').AsString<>FieldByName('X_SheHao').AsString) ) then
      begin
        if ( (trim(FieldByName('X_XieXing').AsString)<>'') and (trim(FieldByName('X_SheHao').AsString)<>'') ) then
        begin
          //更新同步鞋型色號
          TW_DDZLs.Active:=false;
          TW_DDZLs.SQL.Clear;
          TW_DDZLs.SQL.Add('Update DDZl Set XieXing='''+FieldByName('X_XieXing').AsString+''',SheHao='''+FieldByName('X_SheHao').AsString+''' where DDBH='''+FieldByName('DDBH').AsString+'''');
          funcObj.WriteErrorLog('同步台灣鞋型色號:'+TW_DDZLs.SQL.Text);
          TW_DDZLs.ExecSQL();
        end;
      end;
    end;
    TW_DDZL.Next;
  end;
end;
//
procedure TExcelUpload.WriteUploadDDBHLog(WriteStr:string);
var  TF:Textfile;
    strFileName:string;
    tempstr:string;
begin
    if trim(WriteStr)<>'' then
    begin
      tempstr:='Sales_N18_DDBH_'+FormatDatetime('YYYYMMDDHHNNSS',now());
      strFileName:=ExtractFilePath(Application.ExeName)+'\Log\'+tempstr+'.DDBH';

      WriteStr:=trim(WriteStr);
      AssignFile(TF, strFileName);
          if FileExists(strFileName) then
          begin
          Append(TF);
          end else begin
          ReWrite(TF);
          end;
      Writeln(TF, WriteStr );
      CloseFile(TF);
    end;
end;
//
procedure TExcelUpload.Upload2TWServer();
var i,j:integer;
    STDDBH,EDDDBH:string;
    SQLStr:string;
    TotalDDBH:string;
    ErrorDDBH:string; //顯示錯誤
    GSDH:String;
begin
  //
  if  Messagedlg(Pchar('Are you sure Upload Orders?'),mtInformation,[mbYES,mbNo],0)=mrYes then
  begin
    //
    try
      with DDZL_OD do
        begin
          cachedupdates:=true;
          requestlive:=true;
      end;
      //
      GSDH:='LAI';
      if RB1.Checked=true then GSDH:=RB1.Caption;
      if RB2.Checked=true then GSDH:=RB2.Caption;
      STDDBH:='';//第一筆DDBH
      EDDDBH:='';//最後一筆DDBH
      TotalDDBH:='';//記錄新增DDBH清單
      ErrorDDBH:='';//發生新增失敗錯誤DDBH
      funcObj.WriteErrorLog(datetimetostr(now)+' start upload!');
      DDZL_OD.First;
      for i:=0 to DDZL_OD.RecordCount-1 do
      begin
        with DDZL_OD do
        begin
          //接單日期DDRQ=上傳日期 為空值才上傳
          if FieldByName('DDRQ').asstring='' then
          begin
            Edit;
            FieldByName('DDRQ').value:=FormatDatetime('YYYYMMDD',Date());
            Post;
            //新增主檔
            TW_DDZL.Active:=false;
            TW_DDZL.SQL.Clear;
            SQLStr:='Insert into DDZL (DDBH,DDLB,XieXing,SheHao,CCGB,Article,KHBH,KHPO,ShipDate,CPLB,DDRQ,Pairs,DDGB, Dest,BUYNO,Version,DDZT,GSDH, ZLBH, UserDate,UserID) '+
                    ' Values('''+FieldByName('DDBH').AsString+''','''+FieldByName('DDLB').AsString+''','''+FieldByName('XieXing').AsString+''','+
                    ''''+FieldByName('SheHao').AsString+''','''+FieldByName('CCGB').AsString+''','''+FieldByName('Article').AsString+''','''+FieldByName('KHBH').AsString+''','+
                    ''''+FieldByName('KHPO').AsString+''','''+FieldByName('ShipDate').AsString+''','''+FieldByName('CPLB').AsString+''','''+FieldByName('DDRQ').AsString+''','+
                    FieldByName('Pairs').AsString+','''+FieldByName('DDGB').AsString+''','''+FieldByName('Dest').AsString+''','''+FieldByName('BUYNO').AsString+''','''+FieldByName('Version').AsString+''','+
                    ''''+FieldByName('DDZT').AsString+''','''+GSDH+''','''+FieldByName('DDBH').AsString+''','''+FormatDatetime('YYYYMMDD',Date())+''','''+main.edit1.text+''')';
            TW_DDZL.SQL.Add(SQLStr);
            funcObj.WriteErrorLog(SQLStr);
            TW_DDZL.ExecSQL();
            //檢查主檔是否新增成功
            TW_DDZL.Active:=false;
            TW_DDZL.SQL.Clear;
            SQLStr:='select DDBH from DDZL where DDBH='''+FieldByName('DDBH').AsString+'''';
            TW_DDZL.SQL.Add(SQLStr);
            TW_DDZL.Active:=true;
            if TW_DDZL.RecordCount=1 then
            begin
              TW_DDZL.Active:=false;
            end else
            begin
              ErrorDDBH:=FieldByName('DDBH').AsString;
              funcObj.WriteErrorLog(datetimetostr(now)+' 新增主檔 TW DDZL失敗 DDBH:'+ErrorDDBH);
              TW_DDZL.Active:=false;
              break;
            end;
            //=====================
            TotalDDBH:=TotalDDBH+FieldByName('DDBH').AsString+#13#10;//記錄上傳DDBH編號
            //新增明細
            DDZL_ODs.First;
            for j:=0 to DDZL_ODs.RecordCount-1 do
            begin
              TW_DDZLs.Active:=false;
              TW_DDZLs.SQL.Clear;
              SQLStr:='Insert into DDZLS (DDBH,LineNum,CC,Quantity,USERDATE,USERID ) Values('+
                      ''''+DDZL_ODs.FieldByName('DDBH').asstring+''','''+DDZL_ODs.FieldByName('LineNum').asstring+''','''+DDZL_ODs.FieldByName('CC').asstring+''','+
                      DDZL_ODs.FieldByName('Quantity').asstring+','''+FormatDatetime('YYYYMMDD',Date())+''','''+main.edit1.text+''')';
              TW_DDZLs.SQL.Add(SQLStr);
              funcObj.WriteErrorLog(SQLStr);
              TW_DDZLs.ExecSQL();
              DDZL_ODs.Next;
            end;
            //檢查明細是否新增成功
            TW_DDZLs.Active:=false;
            TW_DDZLs.SQL.Clear;
            SQLStr:='select DDBH from DDZLs where DDBH='''+FieldByName('DDBH').AsString+'''';
            TW_DDZLs.SQL.Add(SQLStr);
            TW_DDZLs.Active:=true;
            if TW_DDZLs.RecordCount=DDZL_ODs.RecordCount then
            begin
              TW_DDZLs.Active:=false;
            end else
            begin
              ErrorDDBH:=FieldByName('DDBH').AsString;
              funcObj.WriteErrorLog(datetimetostr(now)+' 新增明細 TW DDZL 失敗 DDBH:'+ErrorDDBH);
              TW_DDZLs.Active:=false;
              break;
            end;
            //新增20220727 ZLZL

            TW_DDZL.Active:=false;
            TW_DDZL.SQL.Clear;
            SQLStr:='Insert into ZLZL (ZLBH, DDBH, CQDH, KDRQ, CGBH, GJJH, YLJS, YLBB, SHQR, GSDH, USERDATE, USERID ) '+
                    ' Values ('''+FieldByName('DDBH').AsString+''','''+FieldByName('DDBH').AsString+''','''+KFCQCombo.Text+''','+
                    ''''+FormatDatetime('YYYYMMDD',Date())+''',''ZERO'',''N'',''N'','+
                    '''B'',''B'','''+GSDH+''','''+FormatDatetime('YYYYMMDD',Date())+''','''+main.edit1.text+''')';
            TW_DDZL.SQL.Add(SQLStr);
            funcObj.WriteErrorLog(SQLStr);
            TW_DDZL.ExecSQL();

            //更新越南DDRQ資料庫
            UPDDZL_OD.apply(ukModify);
          end;
          //儲存第一筆和最後一筆DDBH
          if i=0 then STDDBH:=DDZL_OD.FieldByName('DDBH').AsString;
          if i=(DDZL_OD.RecordCount-1) then EDDDBH:=DDZL_OD.FieldByName('DDBH').AsString;
          //
          DDZL_OD.Next;
          Application.ProcessMessages;
          ProcessLB.Caption:='Upload Count:'+inttostr(i+1);
        end;
      end;
      WriteUploadDDBHLog(TotalDDBH);
      funcObj.WriteErrorLog(datetimetostr(now)+' end upload!');
      //檢查XieXing SheHao 越南和台灣是否一致，不一致以台灣鞋型色號為主更新  先不檢查
      if ( (STDDBH<>'') and (EDDDBH<>'') ) then CheckXieXingIsSync(STDDBH,EDDDBH);
      //發生新增失敗 嘗試刪除台灣訂單資料
      if ErrorDDBH<>'' then
      begin
        DeleteTWOrder(ErrorDDBH);
        Showmessage('新增實際資料部份失敗!中斷還原最後一筆上傳');
      end;
      //
      NotYetUploadCK.Checked:=true;
      with DDZL_OD do
      begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;

    except
       on E:Exception do
       begin
         WriteUploadDDBHLog(TotalDDBH);
         //發生新增失敗 嘗試刪除台灣訂單資料
         if ErrorDDBH<>'' then  DeleteTWOrder(ErrorDDBH);
         funcObj.WriteErrorLog(datetimetostr(now)+' Error:'+E.Message);
         showmessage(E.Message);
       end;
    end;
  end;
end;


procedure TExcelUpload.TW_ERPLogin(Database: TDatabase;
  LoginParams: TStrings);
begin
  loginparams.Values['user name']:=DBUser;
  loginparams.values['password']:=DBPass;
end;

procedure TExcelUpload.DDZL_ODGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
   if (trim(DDZL_OD.FieldByName('DDRQ').AsString)<>'') then  //PD 生產RSL 逾期或未確認日期
   begin
     DDZL_ODGrid.canvas.font.color:=clblue;
     DDZL_ODGrid.defaultdrawcolumncell(rect,datacol,column,state);
   end;
end;
//刪除台灣訂單
function TExcelUpload.DeleteTWOrder(DDBH:string):boolean;
var  SQLStr,ErrorMsg:string;
     iRes:boolean;
begin
  try
     iRes:=true;
     ErrorMsg:='';
     //刪除以上傳訂單資料
     //刪除明細
     TW_DDZLs.Active:=false;
     TW_DDZLs.SQL.Clear;
     SQLStr:='Delete from DDZLs where DDBH='''+DDBH+'''';
     TW_DDZLs.SQL.Add(SQLStr);
     TW_DDZLs.ExecSQL();
     //檢查是否刪除成功
     TW_DDZLs.Active:=false;
     TW_DDZLs.SQL.Clear;
     SQLStr:='Select DDBH from  DDZLs where DDBH='''+DDBH+'''';
     TW_DDZLs.SQL.Add(SQLStr);
     TW_DDZLs.Active:=true;
     if  TW_DDZLs.RecordCount>0 then
     begin
       ErrorMsg:=ErrorMsg+DDBH+' TW DDZLS 刪除失敗!'+#1310;
       TW_DDZLs.Active:=false;
       iRes:=false;
     end else
     begin
       TW_DDZLs.Active:=false;
     end;
     //刪除主檔
     TW_DDZL.Active:=false;
     TW_DDZL.SQL.Clear;
     SQLStr:='Delete from DDZL where DDBH='''+DDBH+'''';
     TW_DDZL.SQL.Add(SQLStr);
     TW_DDZL.ExecSQL();
     //檢查是否刪除成功
     TW_DDZL.Active:=false;
     TW_DDZL.SQL.Clear;
     SQLStr:='Select DDBH from  DDZL where DDBH='''+DDBH+'''';
     TW_DDZL.SQL.Add(SQLStr);
     TW_DDZL.Active:=true;
     if  TW_DDZL.RecordCount>0 then
     begin
       ErrorMsg:=ErrorMsg+DDBH+' TW DDZLS 刪除失敗!'+#1310;
       TW_DDZL.Active:=false;
       iRes:=false;
     end else
     begin
       TW_DDZL.Active:=false;
     end;
     //更新
     ExeQuery.Active:=false;
     ExeQuery.SQL.Clear;
     SQLStr:='Update DDZL_OD set DDRQ = null where DDBH='''+DDBH+'''';
     ExeQuery.SQL.Add(SQLStr);
     ExeQuery.ExecSQL();
     if ExeQuery.RowsAffected<>1 then
     begin
       ErrorMsg:=ErrorMsg+DDBH+' DDZL_OD 更新DDRQ失敗!';
       iRes:=false;
     end;
     if  ErrorMsg<>'' then showmessage(ErrorMsg); //顯示訊息
     result:=iRes;//回傳成功或失敗
  except
    on E:Exception do
    begin
      if  ErrorMsg<>'' then showmessage(ErrorMsg); //顯示訊息
      showmessage('刪除台灣DDZL資料錯誤:'+E.Message);
      result:=false;
    end;
  end;
end;
//
procedure TExcelUpload.bbt3Click(Sender: TObject);
var DDBHList:TStringlist;
    i:integer;
begin
   if OpenDialog.Execute() then
   begin
     DDBHList:=TStringlist.Create;
     DDBHList.LoadFromFile(OpenDialog.FileName);
     if  Messagedlg(Pchar('Are you sure restore Upload Orders?'),mtInformation,[mbYES,mbNo],0)=mrYes then
     begin
         for i:=0 to DDBHList.Count-1 do
         begin
           if  trim(DDBHList.Strings[i])<>'' then
           begin
             if DeleteTWOrder(DDBHList.Strings[i])=false then break;
           end;
           Application.ProcessMessages;
           ProcessLB.Caption:='Recover Count:'+inttostr(i+1);
         end;
      end;
     DDBHList.Free;
   end;
end;
//
procedure TExcelUpload.Label1Click(Sender: TObject);
begin
  bbt3.Enabled:=true;
end;

end.

unit MatLabCheck_Upload1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, DBTables, GridsEh, DBGridEh, Comobj;

type
  TMatLabCheck_Upload = class(TForm)
    Panel1: TPanel;
    btnRelease: TBitBtn;
    BitBtn1: TBitBtn;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1No_ID: TIntegerField;
    Query1Lab_FinishDate: TDateTimeField;
    Query1Lab_Check: TStringField;
    Query1Lab_PDM_ID: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query1Remark: TStringField;
    OpenDialog1: TOpenDialog;
    Query1File_Name_Lab: TStringField;
    ExeQry: TQuery;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnReleaseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    NO_ID:string;
    Lab_FinishDate:String;
    Lab_Check:string;
    ReportID:string;
    sToDirName:String;
    { Private declarations }
    function CheckExcelFile(FullFilePath:String;tfile:String):boolean;
  public
    { Public declarations }
  end;

var
  MatLabCheck_Upload: TMatLabCheck_Upload;

implementation
  uses main1, FileTransClient1, FunUnit;
{$R *.dfm}

procedure TMatLabCheck_Upload.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMatLabCheck_Upload.FormDestroy(Sender: TObject);
begin
  MatLabCheck_Upload:=nil;
end;

function TMatLabCheck_Upload.CheckExcelFile(FullFilePath:String;tfile:String):boolean;
    function CheckIsDateYYYYMMDD(DateStr:String):string;
    var split:TStringlist;
    begin
      if Pos('/',Copy(DateStr,length(DateStr)-4,4))>0 then
      begin
        split:=funcObj.SplitString(DateStr,'/');
        if split.Count=3 then
        begin
          result:=split.Strings[2]+'/'+split.Strings[1]+'/'+split.Strings[0];
        end;
      end else
      begin
        result:=DateStr;
      end;
    end;
var eclApp,WorkBook:olevariant;
    h,i,sheeti:integer;
    Str:string;
begin
  //
  ReportID:='';
  Lab_FinishDate:='';
  NO_ID:='';
  Lab_Check:='';
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    result:=false;
    Exit;
  end;
  try
     eclApp.WorkBooks.Open(FullFilePath);
     for h:=1 to  eclApp.WorkSheets.Count do
     begin
       ReportID:='';
       Lab_FinishDate:='';
       NO_ID:='';
       Lab_Check:='';
       //funcObj.WriteErrorLog(inttostr(eclApp.WorkSheets.Count));
       eclApp.WorkSheets[h].Activate;//第一頁為主
       Str:=eclApp.Cells[3,16];
       if lowercase(trim(Str))='report no:' then   ReportID:=eclApp.Cells[3,18];
       Str:=eclApp.Cells[4,16];
       if lowercase(trim(Str))='date:' then   Lab_FinishDate:=eclApp.Cells[4,18];
       NO_ID:=eclApp.Cells[4,13];
       if Lab_FinishDate<>'' then Lab_FinishDate:=CheckIsDateYYYYMMDD(Lab_FinishDate);
       for i:=9 to 80 do
       begin
         Str:=eclApp.Cells[i,1];
         if lowercase(trim(Str))='comment :' then
         begin
           Lab_Check:=eclApp.Cells[i,3];
           if lowercase(trim(Lab_Check))='released' then Lab_Check:='Pass' else Lab_Check:='Fail';
           break;
         end;
       end;
       if ((ReportID<>'') and (Lab_FinishDate<>'') and (NO_ID<>'') and (Lab_Check<>'')) then
       begin
          Query1.Insert;
          Query1.FieldByName('No_ID').AsString:=No_ID;
          Query1.FieldByName('Lab_FinishDate').AsString:=Lab_FinishDate;
          Query1.FieldByName('Lab_Check').AsString:=Lab_Check;
          Query1.FieldByName('Lab_PDM_ID').AsString:=ReportID;
          Query1.FieldByName('File_Name_Lab').AsString:=tFile;
          Query1.Post;
          result:=true;
       end else
       begin
          funcObj.WriteErrorLog(tFile+' Sheet'+inttostr(h)+' ReportID:'+ReportID);
          funcObj.WriteErrorLog(tFile+' Sheet'+inttostr(h)+' Lab_FinishDate:'+ReportID);
          funcObj.WriteErrorLog(tFile+' Sheet'+inttostr(h)+' NO_ID:'+NO_ID);
          funcObj.WriteErrorLog(tFile+' Sheet'+inttostr(h)+' Lab_Check:'+Lab_Check);
          result:=false;
       end;
     end;
     eclApp.quit;
     //
  except
    on   F:Exception   do
    begin
      eclApp.quit;
      showmessage(F.Message);
    end;
  end;
  //
end;

procedure TMatLabCheck_Upload.BitBtn1Click(Sender: TObject);
var F: TSearchRec;
    sCurDir:String[255];
    FindFileData:WIN32_FIND_DATA;
    tfile:String;
begin
  Query1.Active:=false;
  Query1.Active:=true;
  if OpenDialog1.Execute then
  begin
    if OpenDialog1.FileName<>'' then
    begin
       sToDirName:=ExtractFilePath(OpenDialog1.FileName);
       //
       sCurDir:=GetCurrentDir;
       ChDir(sToDirName);
       F.FindHandle:=FindFirstFile('*.*',FindFileData);
       if F.FindHandle<>INVALID_HANDLE_VALUE then
       begin
          repeat
           tfile:=FindFileData.cFileName;
           if (ExtractFileExt(tfile)='.xls') or (ExtractFileExt(tfile)='.xlxs') then
           begin
             //取得NO_ID /Report ID/ FinishData/ Result
             if  CheckExcelFile(sToDirName+'\'+tfile,tfile)=true then
             begin
               {
               Query1.Insert;
               Query1.FieldByName('No_ID').AsString:=No_ID;
               Query1.FieldByName('Lab_FinishDate').AsString:=Lab_FinishDate;
               Query1.FieldByName('Lab_Check').AsString:=Lab_Check;
               Query1.FieldByName('Lab_PDM_ID').AsString:=ReportID;
               Query1.FieldByName('File_Name_Lab').AsString:=tFile;
               Query1.Post;
               }
             end;
           end;
          until FindNextFile(F.FindHandle,FindFileData)=false;
          FindClose(F);
       end;
       ChDir(sCurDir);
    end;
  end;
end;

procedure TMatLabCheck_Upload.btnReleaseClick(Sender: TObject);
var i:integer;
   UploadObj: TFileTransClient;
   SaveFN,Response,FileString:String;
   IsActionUpload:boolean;
begin
  //
  Query1.First;
  UploadObj := TFileTransClient.Create();
  Label1.Caption:='Upload Status: 0/'+inttostr(Query1.RecordCount);
  for i:=0 to Query1.RecordCount-1 do
  begin
    Application.ProcessMessages;
    //上傳
    SaveFN:=Query1.fieldByName('File_Name_Lab').AsString;
    FileString := UploadObj.List('QC\' + main.Edit2.Text + '\Lab\');
    IsActionUpload:=true;
    // check file exists
    if Pos(SaveFN, FileString) > 0 then
    begin
      if MessageDlg('Override Lab File', mtCustom, [mbYes,mbNo], 0) = mrNo then
      begin
        IsActionUpload:=false;
        ShowMessage('File name exists!');
      end;
    end;
    if IsActionUpload=true then
    begin
      //先檢查是否擋案存在 先刪除
      if Query1.fieldByName('File_Name_Lab').AsString<>'' then
         Response := UploadObj.delete(Query1.fieldByName('File_Name_Lab').AsString,'QC\'+main.Edit2.Text+'\Lab\', false);

      Response := UploadObj.put(sToDirName+'\'+Query1.fieldByName('File_Name_Lab').AsString,SaveFN,'QC\'+main.Edit2.Text+'\Lab\', false);
      if pos(',', Response) > 0 then  //fail
      begin
         //上傳失敗
         Query1.Edit;
         Query1.FieldByName('Remark').Value:=Response;
         Query1.Post;
      end else
      begin
        with ExeQry do
        begin
          active:=false;
          sql.Clear;
          SQL.Add('update MaterialQCCheck set File_Name_Lab='''+Query1.fieldByName('File_Name_Lab').AsString+''',  ');
          SQL.Add('                           Lab_FinishDate='''+Query1.fieldByName('Lab_FinishDate').AsString+''',');
          SQL.Add('                           Lab_Check='''+Query1.fieldByName('Lab_Check').AsString+''',');
          SQL.Add('                           Lab_PDM_ID='''+Query1.fieldByName('Lab_PDM_ID').AsString+''',Lab_UserID='''+main.Edit1.Text+''',Lab_Date=CONVERT(varchar(10),GetDate(),111) ');
          sql.Add('FROM MaterialQCcheck ');
          sql.Add('WHERE MaterialQCcheck.No_ID='+Query1.fieldByName('NO_ID').AsString+' ');
          ExecSQL;
        end;
      end;
    end;
    Label1.Caption:='Upload Status: '+inttostr(i+1)+'/'+inttostr(Query1.RecordCount);
    //
    Query1.Next;
  end;
  UploadObj.Free;
  //
  Showmessage('Success');
end;

procedure TMatLabCheck_Upload.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.

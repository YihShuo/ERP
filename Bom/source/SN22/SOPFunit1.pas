unit SOPFunit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls,Registry ,StrUtils
  ,MsHtml,ActiveX, Axctrls,WinInet, Buttons, ExtCtrls,UExternalContainer,
  ComCtrls, ShellCtrls, GpTextFile, GPHugeF, Comobj, XMLDoc, XMLIntf, untClipboard;

type
  TSOPFunit = class(TObject)
    WebBrowser: TWebBrowser;
  public
    AppDir:string;
    //
    XieXing:string;
    SheHao:string;
    LB:string;
    //
    GERP_Value_XML:String;
    //
    HTMLDoc:IHTMLDocument2;
    //
    procedure DocHtml_AddImg();
    procedure DocHtml_AddTxt();
    procedure DocHtml_AddLie();
    //
    procedure DeleteDocHtml(index:integer;FN:string);
    function GetDocuHTMLHead(Html:WideString):WideString;
    function GetDocuHTMLBody(Html:WideString):WideString;
    //
    procedure SaveDocuHTMLCode(index:integer;FN:string;IsClear_TableDispayNone:boolean);
    procedure SaveHtmlXML(index:integer;FN:string);
    procedure LoadHtmlXML(index:integer;FN:string);
    function SetJSVariable(Variable:PWideChar;Value:WideString):boolean;
    function GetJSVariable(Variable:PWideChar):WideString;
    procedure SaveUTFFile(Str:WideString;FileNM:String);
    function LoadUTFFile(FileNM:String):WideString;
    //
    procedure Convert2Excel(index:integer;FN:string);
    //
    function CompressHtml():boolean;
    function UnCompressHtml():boolean;
    function DoCopyDir(sDirName:String;sToDirName:String):Boolean;
    function ClearSOPFolderFile():boolean;
    procedure DoDeleteDir(sDirName:String);
    //取得ERP資訊
    function GetERPParamValue():boolean;
    //剪貼簿圖片儲存
    Function GetClipboardImag():string;
    Function GetClipboardText():WideString;
    //
    procedure ReadRegistry();
    procedure WriteRegistry();
    function ReadIE_Ver11():boolean;
    //
    procedure SaveTxtFile(Str:String;FileNM:String);
    function LoadTxtFile(FileNM:String):String;
  private
    function GetXMLFileList_WidString():WideString;
    //ImgUsed:aray
    function HMLDoc_AddXMLObj(var workSheet:OleVariant;FN:string;TopOffSet:double):WideString;
    //合併ERP XML資訊
    procedure MergeERPParamValue(XMLStr:string);
  end;
  //
 {
type
  TUnicodeClipboard = class(TClipboard)
private
  function GetAsUnicodeText: WideString;
  procedure SetAsUnicodeText(const Value: WideString);
public
  property AsUnicodeText: WideString read GetAsUnicodeText write SetAsUnicodeText;
end;
   }
//==============================

const SOPFun_ImgUsed : array [0..12] of string = ('arrow.png','arrow1.png','arrow2.png','arrow3.png','arr.png','img.png','txt.png','copy.png','update.png','delete.png','vai.png','da.png','big_bgcolor.jpg');
var  SOPFunObj:TSOPFunit;

implementation
  uses SOPDocu1,sevenzip, jpeg, FunUnit;
function TSOPFunit.DoCopyDir(sDirName:String;sToDirName:String):Boolean;
var
   F: TSearchRec;
   //hFindFile:Cardinal;
   t,tfile:String;
   sCurDir:String[255];
   FindFileData:WIN32_FIND_DATA;
begin
   //
   sCurDir:=GetCurrentDir;
   ChDir(sDirName);
   F.FindHandle:=FindFirstFile('*.*',FindFileData);
   if F.FindHandle<>INVALID_HANDLE_VALUE then
   begin
    if not DirectoryExists(sToDirName) then //
     ForceDirectories(sToDirName); //
    repeat
     tfile:=FindFileData.cFileName;
     if (tfile='.') or (tfile='..') then
      Continue;
     if FindFileData.dwFileAttributes=FILE_ATTRIBUTE_DIRECTORY then
     begin
      t:=sToDirName+'\'+tfile;
      if not DirectoryExists(t) then
       ForceDirectories(t);
      if sDirName[Length(sDirName)]<>'\' then
       DoCopyDir(sDirName+'\'+tfile,t)
      else
       DoCopyDir(sDirName+tfile,sToDirName+tfile);
     end
     else
     begin
      t:=sToDirName+'\'+tFile;
      CopyFile(PChar(tfile),PChar(t),false);
     end;
    until FindNextFile(F.FindHandle,FindFileData)=false;
    FindClose(F);
   end
   else
   begin
    ChDir(sCurDir);
    result:=false;
    exit;
   end;
   ChDir(sCurDir);
   result:=true;
end;
//
procedure TSOPFunit.DoDeleteDir(sDirName:String);
var
  Result: TSearchRec;
begin
  if FindFirst(sDirName + '\*', faAnyFile, Result) = 0 then
  begin
    Try
      repeat
        if (Result.Attr and faDirectory) = faDirectory then
        begin
          if (Result.Name <> '.') and (Result.Name <> '..') then
            DoDeleteDir(sDirName + '\' + Result.Name)
        end
        else if not DeleteFile(sDirName + '\' + Result.Name) then
          RaiseLastOSError;
      until FindNext(Result) <> 0;
    Finally
      FindClose(Result);
    End;
  end;
  if not RemoveDir(sDirName) then
    RaiseLastOSError;
end;
//取得Head資訊
function TSOPFunit.GetDocuHTMLHead(Html:WideString):WideString;
var identify:string;
    Posi:integer;
begin
  identify:='<!--bodydivStart-->';
  Posi:=Pos(identify,Html);
  if Posi>0 then
  begin
    result:=Copy(Html,1,Posi-1);
  end else
  begin
    result:='';
  end;
end;

//整理Body資訊
function TSOPFunit.GetDocuHTMLBody(Html:WideString):WideString;
  function WStrTrim(const W: Widestring): Widestring;
  var
    I, N, Len: Integer;
  begin
    if W = '' then
      Result := W
    else begin
      Len := Length(W); // calls WStrLen in D5
      I:= 1;
      while (I <= Len) and (W[I] <= Widechar(32)) do
        Inc(I);
      if I > Len then
        Result := ''
      else begin
        N:= Len;
        while (N >I) and (W[N] <= Widechar(32)) do
          Dec(N);
        Result := Copy(W, I, N-I+1); // calls WStrCopy in D5
      end;
    end;
  end;
var identify:string;
    Posi:integer;
    resultString:WideString;
begin
   identify:='<!--bodydivEnd-->';
   Posi:=Pos(identify,Html);
   if Posi>0 then
   begin
    resultString:=Copy(Html,Posi+length(identify),length(Html)-Posi+length(identify));
    //加上動態JS區塊
    resultString:='<!--bodydivStart--><div id="bodydiv" ></div><!--bodydivEnd-->'+#13#10+WStrTrim(resultString);
   end else
   begin
    resultString:='';
   end;
   result:=resultString;
end;
//
procedure TSOPFunit.SaveDocuHTMLCode(index:integer;FN:string;IsClear_TableDispayNone:boolean);
var FileNM:string;
    Html,Head,ERP_PFCinnerHTML:WideString;
    HTMLWindow: IHTMLWindow2;
begin
  //
  FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.htm';
  Html:=LoadUTFFile(FileNM);
  Head:=GetDocuHTMLHead(Html);
  if head<>'' then
  begin
    if IsClear_TableDispayNone=false then
      FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.htm'
    else if IsClear_TableDispayNone=true then
      FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.html'; // 轉出Excel for html
    //
    HTMLWindow := HTMLDoc.parentWindow;
    //轉出Excel刪除table Dispay:None
    if IsClear_TableDispayNone=true then
      HTMLWindow.execScript('Clear_TableDispayNone()', 'JavaScript');
    //
    HTMLWindow.execScript('GetinnerHTML()', 'JavaScript');   //儲存字串到JS變數
    ERP_PFCinnerHTML:=GetJSVariable('ERP_PFCinnerHTML');
    //
    ERP_PFCinnerHTML:=GetDocuHTMLBody(ERP_PFCinnerHTML);
    SaveUTFFile(head+ERP_PFCinnerHTML+'</body></html>',FileNM);
  end;
end;
//儲存Save XML 檔案
procedure TSOPFunit.SaveHtmlXML(index:integer;FN:string);
   function CheckCopyImgSrc(ERP_PFCOBJ_XML:WideString):WideString;
   var Posi,Posj:integer;
       FName,FileNM:String;
       XML_S,XML_E:WideString;
       ResXML:WideString;
       IsBreak:boolean;
       //
       DTFlowI:byte;
       DTStr:string;
   begin
     //
     IsBreak:=false;
     ResXML:=ERP_PFCOBJ_XML;
     //
     DTFlowI:=1;
     DTStr:=FormatDateTime('YYYYMMDDhhnnss',now());
     //
     while IsBreak=false do
     begin
       Posi:=Pos('file:///',ResXML);
       if Posi>0 then
       begin
         XML_S:=Copy(ResXML,1,Posi-1);
         XML_E:=Copy(ResXML,Posi,length(ResXML)+1-Posi);
         Posj:=Pos('</src>',XML_E);
         if Posj>0 then
         begin
           Posj:=Posi-1+Posj;
           //Src File name
           FName:=Copy(ResXML,Posi,Posj-Posi);
           FName:=stringreplace(FName, '/', '\',[rfReplaceAll, rfIgnoreCase]);
           FName:=stringreplace(FName, 'file:\\\', '',[rfReplaceAll, rfIgnoreCase]);
           //Destion File name
           FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\images\'+ExtractFileName(FName);
           if (FileExists(FName)=true) then
           begin
             if  (FName<>FileNM) then
             begin
               //如果目錄下覆蓋檔案名稱已經存在改用年月日時分秒
               if FileExists(FileNM)=true then
               begin
                 FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\images\'+DTStr+'-'+Format('%.3d',[DTFlowI])+ExtractFileExt(FName);
                 DTFlowI:=DTFlowI+1;
               end;
               CopyFile(PChar(FName),PChar(FileNM),false);
             end;
           end else
           begin
             Showmessage('XML image File not Exist:'+FName);
           end;
           XML_E:=Copy(ResXML,Posj,length(ResXML)+1-Posj);
           ResXML:=XML_S+'images\'+ExtractFileName(FileNM)+XML_E;
         end else
         begin
           IsBreak:=true;
         end;
       end else
       begin
         IsBreak:=true;
       end;
     end;
     //
     result:=ResXML;
   end;
var HTMLWindow: IHTMLWindow2;
    FileNM:string;
    ERP_PFCOBJ_XML:WideString;
begin
  if index>=0 then
  begin
    HTMLWindow := HTMLDoc.parentWindow;
    HTMLWindow.execScript('Save_PFCObj()', 'JavaScript');   //儲存字串到JS變數
    //
    FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.xml';
    ERP_PFCOBJ_XML:=GetJSVariable('ERP_PFCOBJ_XML');
    ERP_PFCOBJ_XML:=CheckCopyImgSrc(ERP_PFCOBJ_XML);
    if ERP_PFCOBJ_XML<>'' then SaveUTFFile(ERP_PFCOBJ_XML,FileNM);
    //
  end;
end;

//載入Load XML 檔案
procedure TSOPFunit.LoadHtmlXML(index:integer;FN:string);
var FileNM:String;
    HTMLWindow: IHTMLWindow2;
    Value:WideString;
begin

  if index>=0 then
  begin
    FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.xml';
    if FileExists(FileNM)=true then
      Value:=LoadUTFFile(FileNM);
    if Value<>'' then
    begin
      SetJSVariable('ERP_PFCOBJ_XML',Value);
      HTMLWindow := HTMLDoc.parentWindow;
      HTMLWindow.execScript('Load_PFCObj()', 'JavaScript');
    end;
  end;
end;

//取得JavaScritp變數
function TSOPFunit.GetJSVariable(Variable:PWideChar):WideString;
var  Window: IHTMLWindow2;
  DispatchIdOfProperty: Integer;
  MyPropertyValue: OleVariant;
  Temp: TExcepInfo;
  Res: Integer;
  Params:TDispParams;
begin
  // get window interface
  Window:= (WebBrowser.ControlInterface.Document as IHTMLDocument2).parentWindow;
  Assert(Assigned(Window));
  // get dispatch ID of our variable
  if (Window as IDispatchEx).GetDispID(Variable, fdexNameCaseSensitive, DispatchIdOfProperty) = S_OK then
  begin
    // no parameters
    ZeroMemory(@Params, SizeOf(Params));
    // get value of our variable
    Res:=(Window as IDispatchEx).InvokeEx(DispatchIdOfProperty, LOCALE_USER_DEFAULT, DISPATCH_PROPERTYGET, @Params, MyPropertyValue, Temp, nil);
    if Res=S_OK then
    begin
      //SaveUTFFile(MyPropertyValue,FileNM);
      result:=MyPropertyValue;
    end else
      ShowMessage('Error reading property value');
  end else
    ShowMessage('Property not found');
end;
//更新JavaScritp變數
function TSOPFunit.SetJSVariable(Variable:PWideChar;Value:WideString):boolean;
const
  IID_NULL: TGUID = '{00000000-0000-0000-0000-000000000000}';
  DISPID_PROPERTYPUT: Integer = -3;
var
  NewValue, Dummy: OleVariant;
  //
  Window: IHTMLWindow2;
  DispatchIdOfProperty: Integer;
  MyPropertyValue: OleVariant;
  Temp: TExcepInfo;
  Res: Integer;
  Params:TDispParams;
  //
  FileNM:String;
  index:integer;
  HTMLWindow: IHTMLWindow2;
begin
  Window:= (WebBrowser.ControlInterface.Document as IHTMLDocument2).parentWindow;
  Assert(Assigned(Window));

  if (Window as IDispatchEx).GetDispID(Variable, fdexNameCaseSensitive, DispatchIdOfProperty) = S_OK  then
  begin
    NewValue:= Value;//LoadUTFFile(FileNM);
    Params.rgvarg:= @NewValue;
    Params.rgdispidNamedArgs:= @DISPID_PROPERTYPUT;
    Params.cArgs:= 1;
    Params.cNamedArgs:= 1;
    if (Window as IDispatchEx).InvokeEx(DispatchIdOfProperty, LOCALE_USER_DEFAULT, DISPATCH_PROPERTYPUT, @Params, Dummy, Temp, nil) <> S_OK then
    begin
      Showmessage('Setting property value failed');
      result:=false;
    end else
    begin
      result:=true;
    end;
  end else
  begin
    Showmessage('Property not found');
    result:=false;
  end;

end;
//
procedure TSOPFunit.SaveUTFFile(Str:WideString;FileNM:String);
var strUnicode: TGpTextFile;
begin
  strUnicode := TGpTextFile.Create(FileNM);
  try
    strUnicode.Rewrite([cfUnicode]);
    strUnicode.Writeln(Str);
  finally
    FreeAndNil(strUnicode);
  end;
end;
//
function TSOPFunit.LoadUTFFile(FileNM:String):WideString;
var strUnicode: TGpTextFile;
    resultStr:WideString;
begin
  strUnicode := TGpTextFile.Create(FileNM);
  try
    strUnicode.Reset();
    resultStr:='';
    while strUnicode.EOF=false do
    begin
      resultStr:=resultStr+strUnicode.ReadLn+#13#10;
    end;
    result:=resultStr;
  finally
    FreeAndNil(strUnicode);
  end;
end;
//刪除Doc HTML文件
procedure TSOPFunit.DeleteDocHtml(index:integer;FN:string);
var FileNM:string;
begin
  FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.htm';
  if FileExists(FileNM)=true then
  begin
    DeleteFile(FileNM);
  end;
  FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.xml';
  if FileExists(FileNM)=true then
  begin
    DeleteFile(FileNM);
  end;
end;
//
procedure TSOPFunit.Convert2Excel(index:integer;FN:string);
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
      37:str:='AK';  38:str:='AL';  39:str:='AM';
      40:str:='AN';  41:str:='AO';  42:str:='AP';
      43:str:='AQ';  44:str:='AR';  45:str:='AS';
      46:str:='AT';  47:str:='AU';  48:str:='AV';
      49:str:='AW';  50:str:='AX';  51:str:='AY';
      52:str:='AZ';  53:str:='BA';  54:str:='BB';
      55:str:='BC';  56:str:='BD';  57:str:='BE';
      58:str:='BF';  59:str:='BG';  60:str:='BH';
      61:str:='BI';  62:str:='BJ';  63:str:='BK';
      64:str:='BL';  65:str:='BM';  66:str:='BN';
      67:str:='BO';  68:str:='BP';  69:str:='BQ';
      70:str:='BR';  71:str:='BS';  72:str:='BT';
      73:str:='BU';  74:str:='BV';  75:str:='BW';
      76:str:='BX';  77:str:='BY';  78:str:='BZ';
      79:str:='CA';  80:str:='CB';  81:str:='CC';
      82:str:='CD';  83:str:='CE';  84:str:='CF';
      85:str:='CG';  86:str:='CH';  87:str:='CI';
      88:str:='CJ';  89:str:='CK';  90:str:='CL';
      91:str:='CM';  92:str:='CN';  93:str:='CO';
    end;
    result:=str;
  end;
var eclApp,workSheet,eclAppAll,workSheetAll:olevariant;
    FileNM,FileSrc:string;
    splitList:TStringlist;
    i,j:integer;
    RangeCol,RangeRow,RowPos:integer;
    RowPosFloat:double;
begin
   //單一個頁面檔案
   if ((index>-1) and (FN<>'')) then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        eclapp.DisplayAlerts := False;
      except
        Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.html';
      eclapp.WorkBooks.Open(FileNM);
      workSheet := eclApp.WorkSheets[1];
      //增加物件
      HMLDoc_AddXMLObj(workSheet,FN,0);
      if(not DirectoryExists(AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\'))  then ForceDirectories(AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\');
      FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\'+FN+'.xls';
      //清空列印範圍 橫列 30%
      workSheet.PageSetup.PrintArea:='';
      workSheet.PageSetup.Orientation:= 2;
      workSheet.PageSetup.Zoom:= 30;
      //
      eclapp.ActiveWorkbook.SaveAs(FileNM,-4143 );
      //

      //
      eclApp.quit;
      showmessage('Succeed.');
      //
      eclapp.WorkBooks.Open(FileNM);
      eclApp.Visible:=True;
      eclapp.ActiveWindow.View := 2;//xlNormalView=1; xlPageBreakPreview=2; xlPageLayoutView=3;
   end else if ((index=-1) and (FN<>'')) then //合併成一個Excel
   begin
     try
        eclApp:=CreateOleObject('Excel.Application');
        eclapp.DisplayAlerts := False;
     except
        Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
     end;
     try
        eclAppAll:=CreateOleObject('Excel.Application');
        eclAppAll.DisplayAlerts := False;
     except
        Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
     end;
      //先轉成各自Excel
     splitList:=FuncObj.SplitString(FN,',');
     for i:=0 to splitList.Count-1 do
     begin
       FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+splitList.Strings[i]+'.html';
       eclApp.WorkBooks.Open(FileNM);
       workSheet := eclApp.WorkSheets[1];
       if(not DirectoryExists(AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\'))  then ForceDirectories(AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\');
       FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\'+splitList.Strings[i]+'.xls';
       eclApp.ActiveWorkbook.SaveAs(FileNM,-4143 );
       eclApp.quit;
     end;
     // 複製儲存格貼上在同一個SHEET
     FileSrc:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\'+splitList.Strings[0]+'.xls';
     FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\All.xls';
     CopyFile(PChar(FileSrc),PChar(FileNM),false);
     //
     eclAppAll.WorkBooks.Open(FileNM);
     workSheetAll := eclAppAll.WorkSheets[1];
     RowPos:=0;
     RowPosFloat:=0;
     HMLDoc_AddXMLObj(workSheetAll,splitList.Strings[0],RowPosFloat);
     RowPos:=workSheetAll.UsedRange.Rows.count; //資料高度
     for j:=1 to RowPos-1 do
     begin
       RowPosFloat:=RowPosFloat+workSheetAll.Cells[j,1].height;
     end;
     for i:=1 to splitList.Count-1 do
     begin
       FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\'+splitList.Strings[i]+'.xls';
       eclApp.WorkBooks.Open(FileNM);
       workSheet := eclApp.WorkSheets[1];
       //表格複製
       RangeCol:=workSheet.UsedRange.Columns.count;
       RangeRow:=workSheet.UsedRange.Rows.count;
       eclApp.Range[GetExcelColumnID(1)+'1:'+GetExcelColumnID(RangeCol)+inttostr(RangeRow)].Copy;
       eclAppAll.Cells[RowPos,1].Select;
       eclAppAll.ActiveSheet.Paste;
       //整理格式高度eclAppAll.Rows[i].RowHeight
       for j:=1 to RangeRow-1 do
       begin
         eclAppAll.Rows[(j-1)+RowPos].RowHeight:=eclApp.Rows[j].RowHeight;
       end;
       eclApp.quit;
       //增加Shapes物件
       HMLDoc_AddXMLObj(workSheetAll,splitList.Strings[i],RowPosFloat);
       RowPos:=RowPos+RangeRow-1;
       //資料Rows數更新
       RowPosFloat:=0;
       for j:=1 to RowPos-1 do
       begin
         RowPosFloat:=RowPosFloat+workSheetAll.Cells[j,1].height;
       end;
     end;
     //最後整理格式寬度，以首頁為主
     eclApp.WorkBooks.Open(FileSrc);
     workSheet := eclApp.WorkSheets[1];
     RangeCol:=workSheet.UsedRange.Columns.count;
     for j:=1 to RangeCol do
     begin
       eclAppAll.Columns[j].ColumnWidth:=eclApp.Columns[j].ColumnWidth;
     end;
     eclApp.quit;
     //
     splitList.Free;
     FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\ExportXLS\All.xls';
     //清空列印範圍 橫列 30%
     workSheetAll.PageSetup.PrintArea:='';
     workSheetAll.PageSetup.Orientation:= 2;
     workSheetAll.PageSetup.Zoom:= 30;
     //
     eclAppAll.ActiveWorkbook.SaveAs(FileNM,-4143 );
     eclAppAll.quit;
     showmessage('Succeed.');
     //
     eclAppAll.WorkBooks.Open(FileNM);
     eclAppAll.Visible:=True;
     eclAppAll.ActiveWindow.View := 2;//xlNormalView=1; xlPageBreakPreview=2; xlPageLayoutView=3;
   end;
   //
end;

//Html SVG 轉 ExcelVML標籤
function  TSOPFunit.HMLDoc_AddXMLObj(var workSheet:OleVariant;FN:string;TopOffSet:double):WideString;
   procedure Hex2RGB(Hex:string;var R:integer;var G:integer;var B:integer);
   begin
     R:=strtoint('$'+Copy(Hex,2,2));
     G:=strtoint('$'+Copy(Hex,4,2));
     B:=strtoint('$'+Copy(Hex,6,2));
   end;
var SVGAllTag:WideString;
    XMLDoc: IXMLDocument;
    NodeElement,Node1,Node2:IXMLNode;
    i:integer;
    FileNM:string;
    XMLStr:WideString;
    //Tag Attribue
    text:WideString;
    src,color,bgcolor,strokeDasharray,arrowS,arrowE:string;
    x1,y1,x2,y2,fSize,strokeWidth,left,top,width,height:double;
    DashStyle:integer;
    //
    txtlefPer,txtTopPer:double;
    txtWidPer,txtHeiPer:double;
    //
    picImg,txtbox,Arrow: OleVariant;
    ColorR,ColorG,ColorB:integer;
begin
   //
   FileNM:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+FN+'.xml';
   if FileExists(FileNM)=true then
   begin
     XMLDoc:=TXMLDocument.Create(nil);
     XMLStr:=LoadUTFFile(FileNM);
     XMLDoc.LoadFromXML(XMLStr);
     //
     NodeElement := XMLDoc.ChildNodes.FindNode('PFCObj');
     if (NodeElement <> nil) then
     begin
       for i:=0  to NodeElement.ChildNodes.Count-1 do
       begin
          Node1:=NodeElement.ChildNodes[i];
          Node2:=Node1.ChildNodes.FindNode('type');
          if  Node2<>nil then
          begin
            if Node2.Text='img' then
            begin
              src:=Node1.ChildNodes.FindNode('src').Text;
              src:=AppDir+'Html\'+XieXing+'_'+SheHao+'\'+LB+'\'+src;
              left:=strtofloat(Node1.ChildNodes.FindNode('left').Text)*3/4*0.9821;
              top:=strtofloat(Node1.ChildNodes.FindNode('top').Text)*3/4*0.9721+TopOffSet;
              width:=strtofloat(Node1.ChildNodes.FindNode('width').Text)*3/4*0.9821;
              height:=strtofloat(Node1.ChildNodes.FindNode('height').Text)*3/4*0.9721;
              //增加圖片
              picImg:=workSheet.shapes.AddPicture(src,false,true, left, top, width, height);
              picImg.Rotation:=strtoint(Node1.ChildNodes.FindNode('rotation').Text);
            end;
            if Node2.Text='txt' then
            begin
              //
              txtLefPer:=strtofloat(Node1.ChildNodes.FindNode('width').Text)*0.05;
              txtTopPer:=strtofloat(Node1.ChildNodes.FindNode('height').Text)*0.05;
              txtWidPer:=strtofloat(Node1.ChildNodes.FindNode('width').Text)*0.1;
              txtHeiPer:=strtofloat(Node1.ChildNodes.FindNode('height').Text)*0.1;
              //
              text:=Node1.ChildNodes.FindNode('text').Text;
              fsize:=strtofloat(Node1.ChildNodes.FindNode('fsize').Text)*3/4;
              color:=Node1.ChildNodes.FindNode('color').Text;
              bgcolor:=Node1.ChildNodes.FindNode('bgcolor').Text;
              left:=(strtofloat(Node1.ChildNodes.FindNode('left').Text)+txtLefPer) *3/4*0.9821;
              top:=(strtofloat(Node1.ChildNodes.FindNode('top').Text)+txtTopPer)*3/4*0.9721+TopOffSet;
              width:=(strtofloat(Node1.ChildNodes.FindNode('width').Text)-txtWidPer)*3/4*0.9821;
              height:=(strtofloat(Node1.ChildNodes.FindNode('height').Text)-txtHeiPer)*3/4*0.9721;
              //增加文字方塊
              txtbox:=workSheet.shapes.addTextbox(1, left, top, width, height);
              if Copy(Node1.ChildNodes.FindNode('border').Text,1,1)<>'0' then
              begin
                txtbox.Line.Visible := true;
                txtbox.Line.ForeColor.RGB:=RGB(0, 0, 0);
              end else
              begin
                txtbox.Line.Visible := false;
              end;
              //
              txtbox.TextFrame2.WordWrap:=true;
              txtbox.TextFrame.characters.Text:=text;
              txtbox.TextFrame.characters.font.size:=fsize;
              txtbox.TextFrame.MarginBottom:=1.5;
              txtbox.TextFrame.MarginRight:=1.5;
              txtbox.TextFrame.MarginTop:=1.5;
              txtbox.TextFrame.MarginLeft:=1.5;
              Hex2RGB(color,ColorR,ColorG,ColorB);
              txtbox.TextFrame.characters.font.color:=RGB(ColorR, ColorG, ColorB);
              if Copy(bgcolor,1,1)='#' then
              begin
                Hex2RGB(bgcolor,ColorR,ColorG,ColorB);
                txtbox.Fill.ForeColor.RGB:=RGB(ColorR, ColorG, ColorB);
              end else
              begin
                txtbox.Fill.Transparency:=1;
              end;
            end;
            if Node2.Text='lie' then
            begin
              strokeWidth:=strtofloat(Node1.ChildNodes.FindNode('strokeWidth').Text);
              color:=Node1.ChildNodes.FindNode('stroke').Text;
              strokeDasharray:=Node1.ChildNodes.FindNode('strokeDasharray').Text;
              if strokeDasharray='' then DashStyle:=1 else DashStyle:=11;
              arrowS:=Node1.ChildNodes.FindNode('arrowS').Text;
              if arrowS<>'' then arrowS:='Classic';
              arrowE:=Node1.ChildNodes.FindNode('arrowE').Text;
              if arrowE<>'' then arrowE:='Classic';
              x1:=strtofloat(Node1.ChildNodes.FindNode('x1').Text)*3/4*0.9821;
              y1:=strtofloat(Node1.ChildNodes.FindNode('y1').Text)*3/4*0.9721+TopOffSet;
              x2:=strtofloat(Node1.ChildNodes.FindNode('x2').Text)*3/4*0.9821;
              y2:=strtofloat(Node1.ChildNodes.FindNode('y2').Text)*3/4*0.9721+TopOffSet;
              //增加箭頭
              Arrow := workSheet.Shapes.AddLine(x1,y1,x2,y2);
              Hex2RGB(color,ColorR,ColorG,ColorB);
              Arrow.Line.ForeColor.RGB := RGB(ColorR, ColorG, ColorB);
              Arrow.Line.Weight:=strokeWidth;
              Arrow.Line.DashStyle:=DashStyle;
              if arrowS<>'' then
              begin
                Arrow.Line.BeginArrowheadStyle := 2;
                Arrow.Line.BeginArrowheadLength := 3;
                Arrow.Line.BeginArrowheadWidth := 3;
              end;
              if arrowE<>'' then
              begin
                Arrow.Line.EndArrowheadStyle  := 2;
                Arrow.Line.EndArrowheadLength  := 3;
                Arrow.Line.EndArrowheadWidth  := 3;
              end;
            end;
          end;
       end;
     end;
     XMLDoc:=nil;
   end;
   result:='S_OK';

end;

//新增圖片
procedure TSOPFunit.DocHtml_AddImg();
var HTMLWindow: IHTMLWindow2;
begin
    HTMLWindow := HTMLDoc.parentWindow;
    HTMLWindow.execScript('Create_PFCObj("img")', 'JavaScript');   //儲存字串到JS變數
end;
//新增文字
procedure TSOPFunit.DocHtml_AddTxt();
var HTMLWindow: IHTMLWindow2;
begin
    HTMLWindow := HTMLDoc.parentWindow;
    HTMLWindow.execScript('Create_PFCObj("txt")', 'JavaScript');   //儲存字串到JS變數
end;
//新增箭頭線
procedure TSOPFunit.DocHtml_AddLie();
var HTMLWindow: IHTMLWindow2;
begin
    HTMLWindow := HTMLDoc.parentWindow;
    HTMLWindow.execScript('Create_PFCObj("lie")', 'JavaScript');   //儲存字串到JS變數
end;
//回傳XML Object 字串
function TSOPFunit.GetXMLFileList_WidString():WideString;
var SR:TSearchRec;
    FileNM:string;
    XMLFileStr:WideString;
begin
  if FindFirst(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+'*.xml', faArchive, SR) = 0 then
  begin
    XMLFileStr:='';
    repeat
      FileNM:=AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+SR.Name;
      XMLFileStr:=XMLFileStr+LoadUTFFile(FileNM);
    until FindNext(SR) <> 0;
    FindClose(SR);
  end;
  result:=XMLFileStr;
end;
//清空目錄下檔案
function TSOPFunit.ClearSOPFolderFile():boolean;
var tmpList:TStringlist;
    SR:TSearchRec;
    i:integer;
begin
    //
    tmpList:=TStringlist.Create;
    //html folder
    tmpList.Clear;
    if FindFirst(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+'*.*', faArchive, SR) = 0 then
    begin
      repeat
        if AnsiPos(ExtractFileExt(SR.Name), '.txt;.htm;.css;.xml') > 0 then
        tmpList.Add(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+SR.Name);
      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
    for i := 0 to tmpList.Count - 1 do
      DeleteFile(tmpList.Strings[i]);
    //images folder
    tmpList.Clear;
    result:=true;
end;
//7z壓縮檔案Process
function ProgressCallback(Sender: Pointer; total: boolean; value: int64)
  : HRESULT; stdcall;  
begin  
  {
  if total then
    FormMain.ProgressBar.Max := value
  else
    FormMain.ProgressBar.Position := value;
  }
  Result := S_OK;  
end;

//7z壓縮檔案
function TSOPFunit.CompressHtml():boolean;
var SR:TSearchRec;
    Arch:I7zOutArchive;
    i:integer;
    tmpList:TStringlist;
    Is_SOPFun_ImgUsed,Is_SOPSys_ImgUsed:boolean;
    //檢查images File是否有使用
    XMLFileStr:WideString;
begin
  try
    Arch := CreateOutArchive(CLSID_CFormat7z);
    Arch.SetProgressCallback(nil, ProgressCallback);
    //
    tmpList:=TStringlist.Create;
    //html folder
    tmpList.Clear;
    if FindFirst(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+'*.*', faArchive, SR) = 0 then
    begin
      repeat
        if AnsiPos(ExtractFileExt(SR.Name), '.txt;.htm;.css;.xml') > 0 then
        tmpList.Add(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\'+SR.Name);
      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
    for i := 0 to tmpList.Count - 1 do
      Arch.AddFile(tmpList.Strings[i],
        ExtractFileName(tmpList.Strings[i]));
    //images folder
    tmpList.Clear;
    XMLFileStr:=GetXMLFileList_WidString();//檢查圖片是否被使用
    if FindFirst(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\images\'+'*.*', faArchive, SR) = 0 then
    begin
      repeat
        for i:=0 to High(SOPFun_ImgUsed) do
        begin
          Is_SOPFun_ImgUsed:=false;
          Is_SOPSys_ImgUsed:=false;
          if SR.Name=SOPFun_ImgUsed[i] then
          begin
            Is_SOPSys_ImgUsed:=true;
            break;
          end;
        end;
        //
        if Pos(SR.Name,XMLFileStr)>0 then Is_SOPFun_ImgUsed:=true;
        //
        if ((Is_SOPSys_ImgUsed=false) and (Is_SOPFun_ImgUsed=true)) then
        tmpList.Add(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\images\'+SR.Name);
      until FindNext(SR) <> 0;
      FindClose(SR);
    end;
    for i := 0 to tmpList.Count - 1 do
      Arch.AddFile(tmpList.Strings[i],
        'images\'+ExtractFileName(tmpList.Strings[i]));
    //
    SetCompressionLevel(Arch, 5);
    SevenZipSetCompressionMethod(Arch, m7Deflate64);
    Arch.SaveToFile(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'.7z');
    tmpList.Free;
    Arch := nil;
    result:=true;
  except
    on E:Exception do
    begin
      Showmessage(E.Message);
      result:=false;
    end;
  end;
end;
//7z解壓縮檔案
function TSOPFunit.UnCompressHtml():boolean;
var Arch:I7zInArchive;
    i:integer;
begin
  try
    if not FileExists(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'.7z') then
    begin
      result:=true;
      Exit;
    end;
    //
    DoDeleteDir(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\');
    //
    Arch := CreateInArchive(CLSID_CFormat7z);
    Arch.SetProgressCallback(nil, ProgressCallback);
    Arch.OpenFile(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'.7z');
    //if folder
    {
    for i := 0 to Arch.NumberOfItems - 1 do
    begin
      if not Arch.ItemIsFolder[i] then   showmesage(Arch.ItemPath[i]);
    end;
    }
    if ForceDirectories(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\') then
    begin
      Arch.ExtractTo(AppDir+'Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\');
      Arch := nil;
    end else
      ShowMessage('UnCompress Error Folder');
    //Copy Images
    DoCopyDir(AppDir+'\Html\Template\images',AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\images');
    //Copy JSFolder
    DoCopyDir(AppDir+'\Html\Template\jquery-ui-1.12',AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\jquery-ui-1.12');
    result:=true;
  except
    on E:Exception do
    begin
      Showmessage(E.Message);
      result:=false;
    end;
  end;
end;
//取得ERP資訊欄位資訊
function TSOPFunit.GetERPParamValue():boolean;
var HTMLWindow: IHTMLWindow2;
    iRes:boolean;
    ERP_Value_XML:String;
begin
    HTMLWindow := SOPFunObj.HTMLDoc.parentWindow;
    HTMLWindow.execScript('GetERPParamValue()', 'JavaScript'); //取得ERP資料
    //
    ERP_Value_XML:=SOPFunObj.GetJSVariable('ERP_Value_XML');
    //funcObj.WriteErrorLog('ERP XML 資訊:'+ERP_Value_XML);
    iRes:=strtobool(SOPFunObj.GetJSVariable('ERP_Value_XML_Err'));  //true =ERP資料XML不完整
    if iRes=false then
    begin
      if ERP_Value_XML<>'' then
      MergeERPParamValue(ERP_Value_XML);
    end else
    begin
      //Showmessage('Please input red cell value');
    end;
    result:=iRes;
end;
//合併ERP XML資訊
procedure TSOPFunit.MergeERPParamValue(XMLStr:string);
var XMLDoc: IXMLDocument;
    GXMLDoc: IXMLDocument;
    NodeElement,Node1,GNodeElement,GNode1:IXMLNode;
    i,j:integer;
    kvalue,kerp,Gkvalue,Gkerp:string;
    IsFind:boolean;
    GERP_Value_XML_Temp:string;
begin
  if GERP_Value_XML='' then
  begin
    GERP_Value_XML:=XMLStr;
  end else
  begin
     //完整XML
     GXMLDoc:=TXMLDocument.Create(nil);
     GXMLDoc.LoadFromXML(GERP_Value_XML);
     //解析合併
     XMLDoc:=TXMLDocument.Create(nil);
     XMLDoc.LoadFromXML(XMLStr);
     //
     GERP_Value_XML_Temp:='';
     GNodeElement := GXMLDoc.ChildNodes.FindNode('data');
     //
     NodeElement := XMLDoc.ChildNodes.FindNode('data');
     for i:=0 to GNodeElement.ChildNodes.Count-1 do
     begin
       GNode1:=GNodeElement.ChildNodes[i];
       Gkerp:=GNode1.ChildNodes.FindNode('kerp').Text;
       Gkvalue:=GNode1.ChildNodes.FindNode('kvalue').Text;
       //檢查是否存在kerp欄位和kvalue
       IsFind:=false;
       for j:=0  to NodeElement.ChildNodes.Count-1 do
       begin
         Node1:=NodeElement.ChildNodes[j];
         kerp:=Node1.ChildNodes.FindNode('kerp').Text;
         kvalue:=Node1.ChildNodes.FindNode('kvalue').Text;
         if ((Gkerp=kerp) and (Gkvalue=kvalue)) then
         begin
           IsFind:=true;
           break;
         end;
       end;
       //
       if IsFind=false then //原本NodeXML
       begin
          GERP_Value_XML_Temp:=GERP_Value_XML_Temp+GNode1.XML;
       end else //原本NodeXML更新
       begin
          GERP_Value_XML_Temp:=GERP_Value_XML_Temp+Node1.XML;
       end;
     end;
     //檢查新增Node

     if (NodeElement <> nil) then
     begin
       for i:=0  to NodeElement.ChildNodes.Count-1 do
       begin
         Node1:=NodeElement.ChildNodes[i];
         kerp:=Node1.ChildNodes.FindNode('kerp').Text;
         kvalue:=Node1.ChildNodes.FindNode('kvalue').Text;
         //檢查是否存在kerp欄位和kvalue
         IsFind:=false;
         if (GNodeElement <> nil) then
         begin
           for j:=0 to GNodeElement.ChildNodes.Count-1 do
           begin
             GNode1:=GNodeElement.ChildNodes[j];
             Gkerp:=GNode1.ChildNodes.FindNode('kerp').Text;
             Gkvalue:=GNode1.ChildNodes.FindNode('kvalue').Text;
             if ((Gkerp=kerp) and (Gkvalue=kvalue)) then
             begin
               IsFind:=true;
               break;
             end;
           end;
         end;
         //Merge
         if IsFind=false then
         begin
            GERP_Value_XML_Temp:=GERP_Value_XML_Temp+Node1.XML;
         end;
       end;
     end;
     //End
     GERP_Value_XML_Temp:='<?xml version="1.0" encoding="UTF-8"?><data>'+GERP_Value_XML_Temp+'</data>';
     GERP_Value_XML:=GERP_Value_XML_Temp;
     //
     GXMLDoc:=nil;
     XMLDoc:=nil;
  end;

end;
//Save Clipboard to Pictrue
Function TSOPFunit.GetClipboardImag():string;
var
  Bmp: TBitmap;
  JPGImage: TGraphic ;
  FName:string;
begin
  FName:='';
  if Clipboard.HasFormat(CF_PICTURE) then
  begin
    Bmp := TBitmap.Create;
    JPGImage := TJPegImage.Create;
    try
      Bmp.Assign(Clipboard);
      JpgImage.Assign(Bmp) ;
      FName:=FormatDateTime('YYYYMMDDhhnnss',now())+'.jpg';
      JpgImage.SaveToFile(AppDir+'\Html\'+SOPDocu.XieXing+'_'+SOPDocu.SheHao+'\'+SOPDocu.LB+'\images\'+FName);
    finally
      JpgImage.Free;
      Bmp.Free;
    end;
  end;
  result:=FName;
end;
//Get Clipboard Text
Function TSOPFunit.GetClipboardText():WideString;
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
begin
 Text:='';
 if Clipboard.HasFormat(CF_TEXT) then
 begin
  Handle := ClipBoard.GetAsHandle(CF_TEXT);
  BufSize := GlobalSize(Handle);
  GetMem(CbBuf, BufSize);
  Text:=Clipboard.AsUnicodeText;
 end;
 result:=Text;
end;
//註冊Reg使用IE Browser 11
procedure TSOPFunit.ReadRegistry();
var ARegistry : TRegistry;
    IEVersion:string;
begin
  ARegistry := TRegistry.Create;
  with ARegistry do
  begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey('Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION\',false ) then
    begin
      if ARegistry.KeyExists('Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION\BOM.exe') then
         IEVersion:=inttostr(ReadInteger('BOM.exe'));
      if IEVersion<>'11000' then  WriteRegistry();
    end;
    CloseKey;
    Destroy;
  end;
end;
//寫入Reg
procedure TSOPFunit.WriteRegistry();
var ARegistry : TRegistry;
begin
  ARegistry := TRegistry.Create;
  with ARegistry do
  begin
    RootKey := HKEY_CURRENT_USER;
    if OpenKey('Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION\',true ) then
    begin
     WriteInteger('BOM.exe',11000);
    end;
    CloseKey;
    Destroy;
  end;
end;
//
function TSOPFunit.ReadIE_Ver11():boolean;
var
  Reg:TRegistry; // registry access object
  Version:string;
begin
  Version := '';
  Reg := Registry.TRegistry.Create;
  try
    Reg.RootKey := Windows.HKEY_LOCAL_MACHINE;
    if Reg.OpenKeyReadOnly('Software\Microsoft\Internet Explorer') then
    begin
      if Reg.ValueExists('SvcVersion') then
        Version := Reg.ReadString('SvcVersion');
    end;
  finally
    Reg.Free;
  end;
  if Version<>'' then
  begin
    if strtoint(Copy(Version,1,Pos('.',Version)-1))=11 then
      result:=true
    else
      result:=false;
  end else
  begin
    result:=false;
  end;
end;

//儲存文字檔
procedure TSOPFunit.SaveTxtFile(Str:String;FileNM:String);
var  TF:Textfile;
begin
    AssignFile(TF, FileNM);
    ReWrite(TF);
    Writeln(TF, Str );
    CloseFile(TF);
end;

//讀取文字檔
function TSOPFunit.LoadTxtFile(FileNM:String):String;
var Str:string;
    TF:Textfile;
begin
  if FileExists(FileNM)=true then
  begin
    AssignFile(TF, FileNM);
    Reset(TF);
    ReadLn(TF, Str );
    CloseFile(TF);
  end;
  result:=Str;
end;

end.

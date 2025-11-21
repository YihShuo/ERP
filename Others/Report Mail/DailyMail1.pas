unit DailyMail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB,IniFiles,IdMessage, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, StdCtrls, Comobj;

type
  TDaily_Mail = class(TForm)
    ADOConn: TADOConnection;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    ADOQuery: TADOQuery;
    ADOBuser: TADOQuery;
    Button1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    AppDir:String;
    DBIP,DBUser,DBPass:string;
    MailServerIP:string;
    MailServerUser:string;
    MailServerPass:string;
    MailServerPort:integer;
    //執行時間
   // ExeTime:TStringlist;
    FromMail:string;
    //發信人
    tmpBodyScript:TStringlist;

    { Private declarations }
    procedure ReadIni();
    procedure bSendMail(ToMailAddr:string;ToCCMail:string;FromMailAddr:string;MailTitle:string);
    procedure DailySendMail_Report(GSBH:string;ReportID:string;MailUserList:String);
    procedure Busers();
    procedure OutputExcel(ReportID:string;xlsRowPos:integer;XlsFileName:string);
  public
    DaySpecD1,DaySpecD2:String;
    CheckD:String;

    { Public declarations }
  end;

var
  Daily_Mail: TDaily_Mail;

implementation
  uses FunUnit;

{$R *.dfm}


procedure TDaily_Mail.FormDestroy(Sender: TObject);
begin
  tmpBodyScript.Free;
  FuncObj.Free;
  Daily_Mail:=nil;
end;
//
procedure TDaily_Mail.ReadIni();
var ini:TiniFile;
    ExeTimeStr:String;
    tmpList:TStringlist;
    i:integer;
begin
  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Setting.ini');
    DBIP:=ini.ReadString('DB','IP','192.168.23.9');

    //20160908 get user /pass 23.9
    DBUser:=ini.ReadString('DB','User','userguest');
    DBPass:=ini.ReadString('DB','Pass','jack');

    DaySpecD1:= ini.ReadString('DaySpec','D1','2015/04/30');
    DaySpecD2:= ini.ReadString('DaySpec','D2','2015/04/30');


    ADOCOnn.ConnectionString:='Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=True;Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=LIY_ERP;Data Source='+DBIP;

    //
    MailServerIP := Ini.ReadString( 'MailServer', 'IP', '');
    MailServerUser := Ini.ReadString( 'MailServer', 'User', '');
    MailServerPass := Ini.ReadString( 'MailServer', 'Pass', '');
    MailServerPort := strtoint(Ini.ReadString( 'MailServer', 'Port', '25'));
    //
    FromMail:=Ini.ReadString( 'Setting', 'FromMail', 'LYN_ERP<weston@tyxuan.com.vn>');
    //
  Finally
    ini.Free;
  end;
end;
//

procedure TDaily_Mail.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true, AppDir);

  tmpBodyScript:=TStringlist.Create;

  ReadIni();
  if ParamCount=1 then
  begin
    if ParamStr(1)='Auto_Run_DailyMail' then
    begin
      CheckD:=formatdatetime('yyyy/mm/dd',now);
      if ((dayofweek(now)=2) or (CheckD=DaySpecD1) or (CheckD=DaySpecD2))  then
      begin
        Application.Terminate;
      end else
      begin
       Application.ShowMainForm:=false;
       funcObj.WriteErrorLog(datetimetostr(now)+' Start');
       Busers();
       funcObj.WriteErrorLog(datetimetostr(now)+' End');
       Application.Terminate;
      end;
    end;
    //
  end;
end;

//發信
procedure TDaily_Mail.bSendMail(ToMailAddr:string;ToCCMail:string;FromMailAddr:string;MailTitle:string);
var Attachment    :TIdAttachment;  //夾帶檔案
    i:integer;
    IdBody,IdHTML:TidText;
    FTextBody:TStringList;
begin

  IdSMTP1.Username := MailServerUser;
  IdSMTP1.Password := MailServerPass;
  IdSMTP1.Host := MailServerIP;
  IdSMTP1.Port := MailServerPort;
  IdSMTP1.Connect;
  try
    IdSMTP1.Authenticate;
    IdSMTP1.Disconnect;
  except
    on e : exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' Mail錯誤:'+E.Message);
      IdSMTP1.Disconnect;
    end;
  end;
 try
      with IdMessage1 do
      begin
        Clear;
        IdMessage1.ContentType:='multipart/mixed';
        IdMessage1.Encoding :=meMIME;
        //
        IdBody:=TIdText.Create(IdMessage1.MessageParts);
        IdBody.ContentType:='text/plain';
        FTextBody:=TStringlist.Create;
        FTextBody.Add('');
        if FTextBody<>nil then IdBody.Body.Assign(FTextBody);
        IdBody.Body.Add('');    //   Add   more   to   the   plain-text   bodypart.
        //   Create   HTML   body.
        if tmpBodyScript<>nil then
        begin
          if tmpBodyScript.Count>0 then
          begin
            IdHTML   :=   TIdText.Create(IdMessage1.MessageParts);
            IdHTML.ContentType   :=   'text/html';
            IdHTML.Body.Assign(tmpBodyScript);
          end;
        end;
        //
        FTextBody.Free;
        //
        if FileExists(AppDir+MailTitle+'.xls')=true then
          Attachment := TIdAttachment.Create(IdMessage1.MessageParts, AppDir+MailTitle+'.xls');

        From.Text := FromMailAddr;
        Recipients.EMailAddresses := ToMailAddr;
        CCList.EMailAddresses:=ToCCMail;

        //
      end;
      IdMessage1.Subject :=FormatDateTime('YYYY/MM/DD',Date())+' '+MailTitle;
      IdSMTP1.Connect;
      IdSMTP1.Send(IdMessage1);

      IdSMTP1.Disconnect;
 except
    on e : exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' Mail錯誤:'+E.Message);
      IdSMTP1.Disconnect;
    end;
 end;

end;
procedure TDaily_Mail.Busers();
var SQLStrBuser:string;
    tmpHtmlBusers,tmpListBusers:TStringlist;
    i:integer;
    Prior_DepID, Prior_ReportID, Next_DepID, Next_ReportID: string;
    MailUserList:string;
begin

  try
   //
   if FileExists(AppDir+'SQL\Busers.txt')=true then
   begin
     tmpListBusers:=TStringlist.Create;
     tmpListBusers.LoadFromFile(AppDir+'SQL\Busers.txt');
     //
     with ADOBuser do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add(tmpListBusers.Text);
       Active:=true;
       Prior_DepID:='';
       Prior_ReportID:='';

       if recordcount >0 then
       begin
         if fieldbyname('ReportID').AsString<>'' then Prior_ReportID:= fieldbyname('ReportID').Value;
         if fieldbyname('DepID').AsString<>'' then Prior_DepID:= fieldbyname('DepID').Value;
         for i:=0 to Recordcount-1 do
         begin
            if Next_ReportID<>'' then Prior_ReportID:=Next_ReportID;
            if Next_DepId<>'' then Prior_DepID:=Next_DepId;
            Next_DepId:=fieldbyname('DepID').Value;
            Next_ReportID:= fieldbyname('ReportID').Value;
            if Prior_ReportID<> Next_ReportID then
            begin
               DailySendMail_Report(Prior_DepID,Prior_ReportID,MailUserList);
               Prior_DepID:=Next_DepId;
               Prior_ReportID:=Next_ReportID;
               MailUserList:=fieldbyname('Email').AsString+';';
           end else
            begin
              if  Prior_DepID<>Next_DepId then
              begin
                 DailySendMail_Report(Prior_DepID,Prior_ReportID,MailUserList);
                 Prior_DepID:=Next_DepId;
                 Prior_ReportID:=Next_ReportID;
                 MailUserList:=fieldbyname('Email').AsString+';';
             end else
              begin
                MailUserList:=MailUserList+fieldbyname('Email').AsString+';';
             end;
            end;
            //Last recordcount
            if i=Recordcount-1 then
            begin
              DailySendMail_Report(Prior_DepID,Prior_ReportID,MailUserList);
            end;
            ADOBuser.Next;
         end;
       end;
     end;
     tmpListBusers.Free;
   end;
  except
   on E:Exception do
   begin
     ADOConn.Connected:=false;
     funcObj.WriteErrorLog(datetimetostr(now)+' Busers Error:'+E.Message);
  end;
 end;
end;

procedure TDaily_Mail.DailySendMail_Report(GSBH:string;ReportID:string;MailUserList:String);
var SQLStr,MailTitle:string;
    tmpHtml,tmpList:TStringlist;
    i,j,xlsRowPos:integer;
begin
  try
   //
   if FileExists(AppDir+'SQL\'+ReportID+'.txt')=true then
   begin
     tmpList:=TStringlist.Create;
     tmpList.LoadFromFile(AppDir+'SQL\'+ReportID+'.txt');
     with ADOQuery do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add( StringReplace( tmpList.Text ,':GSBH', ''''+GSBH+'''',[rfReplaceAll, rfIgnoreCase]) );
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
       //MailTitle
       if FileExists(AppDir+'SQL\'+ReportID+'_Info.txt')=true then
       begin
         tmpHtml:=TStringlist.Create;
         tmpHtml.LoadFromFile(AppDir+'SQL\'+ReportID+'_Info.txt');
         for i:=0 to tmpHtml.Count-1 do
         begin
           if Pos('@Mail Title=',tmpHtml.Strings[i])>0 then
              MailTitle:=Copy(tmpHtml.Strings[i],13,length(tmpHtml.Strings[i]));
           if Pos('@SQLData xlsRowPos=',tmpHtml.Strings[i])>0 then
              xlsRowPos:=strtoint(Copy(tmpHtml.Strings[i],20,length(tmpHtml.Strings[i])));
         end;
         tmpHtml.Free;
       end;
       //儲存Excel
       OutputExcel(ReportID,xlsRowPos,MailTitle);
       //
       tmpBodyScript.Clear;
       if FileExists(AppDir+'Head.txt')=true then
       begin
         tmpHtml:=TStringlist.Create;
         tmpHtml.LoadFromFile(AppDir+'Head.txt');
         for i:=0 to tmpHtml.Count-1 do
         begin
           tmpBodyScript.Add(tmpHtml.Strings[i]);
         end;
         tmpHtml.Free;
       end;
       //
       tmpBodyScript.Add('此郵件內容是ERP系統發出，請勿回覆郵件，如有問題可以洽IT單位協助，謝謝 敬上<br><br>');
       tmpBodyScript.Add('<table border="1" cellpadding="0" cellspacing="0" width="1000" >');
       //抬頭名稱
       tmpBodyScript.Add('<tr bgcolor="#99CCFF" align="center" >');
       For i:=0 to ADOQuery.Fields.Count-1 do
       begin
         tmpBodyScript.Add('<td width="133" class="t1"><span style="font-size:10px;">'+ADOQuery.Fields[i].FieldName+'</span></td>');
       end;
       tmpBodyScript.Add('</tr>');
       ADOQuery.First;
       for i:=1 to RecordCount do
       begin
         if ADOQuery.Fields[0].AsString<>'zTotal' then
            tmpBodyScript.Add('<tr  align="center" >')
         else
            tmpBodyScript.Add('<tr bgcolor="#FFFF00"  align="center" >');
         For j:=0 to ADOQuery.Fields.Count-1 do
         begin
           if ADOQuery.Fields[j].AsString<>'' then
             tmpBodyScript.Add('<td width="117" class="t2"><span style="font-size:10px;">'+ADOQuery.Fields[j].AsString+'</span></td>')
           else
             tmpBodyScript.Add('<td width="117" class="t2"><span style="font-size:10px;">&nbsp</span></td>');
         end;
         tmpBodyScript.Add('</tr>');
         Next;
       end;
       tmpBodyScript.Add('</table>');
       //
       Active:=false;
     end;
     if FileExists(AppDir+'Footer.txt')=true then
     begin
       tmpHtml:=TStringlist.Create;
       tmpHtml.LoadFromFile(AppDir+'Head.txt');
       for i:=0 to tmpHtml.Count-1 do
       begin
         tmpBodyScript.Add(tmpHtml.Strings[i]);
       end;
       tmpHtml.Free;
     end;

     bSendMail(MailUserList,'',FromMail,MailTitle);
     funcobj.WriteErrorLog('MailUser:'+MailUserList);
     tmpList.Free;
   end;
 except
   on E:Exception do
   begin
     ADOConn.Connected:=false;
     funcObj.WriteErrorLog(datetimetostr(now)+' 錯誤:'+E.Message);
   end;
 end;
   //
end;
//

procedure TDaily_Mail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDaily_Mail.Button1Click(Sender: TObject);
begin
  Busers();
  showmessage('Send Succeed!');
end;

//導出Excel
procedure TDaily_Mail.OutputExcel(ReportID:string;xlsRowPos:integer;XlsFileName:string);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    IsDefaultXLS:boolean;
begin

  if  ADOQuery.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      //Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        IsDefaultXLS:=false;
        If FileExists(AppDir+'SQL\'+ReportID+'.xls') then
        begin
          IsDefaultXLS:=true;
          CopyFile(Pchar(AppDir+'SQL\'+ReportID+'.xls'),Pchar(AppDir+'SQL\'+ReportID+'_temp.xls'),false);
          eclApp.workbooks.Open(AppDir+'SQL\'+ReportID+'_temp.xls');
        end else
        begin
          WorkBook:=eclApp.workbooks.Add;
        end;
        //抬頭顏色
        j:=xlsRowPos;
        if IsDefaultXLS=false then
        begin
          for   i:=0   to   ADOQuery.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=ADOQuery.fields[i].FieldName;
          end;
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,i]].interior.color:=clskyblue;
          j:=1;
        end;
        ADOQuery.First;
        while   not   ADOQuery.Eof   do
        begin
          for   i:=0   to  ADOQuery.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=ADOQuery.Fields[i].Value;
          end;
          if  ADOQuery.Fields[0].AsString='zTotal' then
          begin
            eclApp.Rows[j].Interior.Color := clYellow;  //Font.Color
          end;
          inc(j);
          ADOQuery.Next;
        end;

        //格式和自動換行 置中
        if  IsDefaultXLS=false then
        begin
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ADOQuery.RecordCount+1,ADOQuery.Fields.Count]].Borders.weight:=2;
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ADOQuery.RecordCount+1,ADOQuery.Fields.Count]].NumberFormatLocal:='@';
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ADOQuery.RecordCount+1,ADOQuery.Fields.Count]].WrapText:=true;
          eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[ADOQuery.RecordCount+1,ADOQuery.Fields.Count]].HorizontalAlignment:= -4108; //靠左:-4131；靠右:-4152
          eclapp.columns.autofit;
          if FileExists(AppDir+'ERP_Daiyl_Report.xls') then DeleteFile(AppDir+'ERP_Daiyl_Report.xls');
          WorkBook.saveAs(AppDir+'ERP_Daiyl_Report.xls');
        end else
        begin
          eclApp.Range[eclApp.Cells[xlsRowPos,1],eclApp.Cells[ADOQuery.RecordCount+xlsRowPos,ADOQuery.Fields.Count]].Borders.weight:=2;
          eclApp.Range[eclApp.Cells[xlsRowPos,1],eclApp.Cells[ADOQuery.RecordCount+xlsRowPos,ADOQuery.Fields.Count]].HorizontalAlignment:= -4108; //靠左:-4131；靠右:-4152
          if FileExists(AppDir+XlsFileName+'.xls') then DeleteFile(AppDir+XlsFileName+'.xls');
          eclApp.WorkBooks[1].saveAs(AppDir+XlsFileName+'.xls')
        end;

        eclApp.Visible:=false;
        eclApp.quit;
    except
      eclApp.quit;
    end;
  end;
end;

end.

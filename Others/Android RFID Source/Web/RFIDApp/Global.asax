<%@ Application Language="C#" %>

<script runat="server">

void Application_Start(Object sender, EventArgs e) {
    MyCS.Kernel.XmlParser.VConfig.ReadDBConn();//讀取檔案參數 
    string path=System.Web.HttpContext.Current.Request.PhysicalApplicationPath+"\\Log";
    if(System.IO.Directory.Exists(path) == false){

        System.IO.Directory.CreateDirectory(path);
    }
    FunUnit.writeLog("歡迎光臨 起始化!");
}

void Application_OnBeginRequest(Object sender, EventArgs E)
{
    //FunUnit.writeLog("歡迎光臨<br>");
}

protected void Application_OnEndRequest()
{
    //FunUnit.writeLog("Application_OnEndRequest");
}

protected void Application_Error(Object sender, EventArgs e)
{
   string Message = "";   
   Exception ex = Server.GetLastError();   
   Message = "發生錯誤的網頁:{0}錯誤訊息:{1}堆疊內容:{2}";   
   Message = String.Format(Message, Request.Path + Environment.NewLine, ex.GetBaseException().Message + Environment.NewLine, Environment.NewLine + ex.StackTrace);   

   //寫入事件撿視器,方法一   
   //System.Diagnostics.EventLog.WriteEntry("WebAppError", Message, System.Diagnostics.EventLogEntryType.Error);   

   //寫入文字檔,方法二   
   //System.IO.File.AppendAllText(Server.MapPath(string.Format("Log\\{0}.txt", DateTime.Now.Ticks.ToString())), Message);
   //FunUnit.writeLog(Message);
   //寄出Email,方法三   
   //此方法請參考System.Net.Mail.MailMessage   

   //清除Error   
   //Server.ClearError();   
   
   //Response.Write("系統異常,請聯絡系統管理員!!");   
}
protected void Session_Start(object sender, EventArgs e)
{
    //FunUnit.writeLog("Session_Start<br>");
    //FunUnit.writeLog("Session_Start:" + Session.SessionID.ToString());
}
private void ExeSQLCmd(string SQLstr)
{
    //資料庫連線
    System.Data.Odbc.OdbcConnection CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
    System.Data.Odbc.OdbcDataAdapter DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
    System.Data.DataSet DS = new System.Data.DataSet();
    DA.Fill(DS);
    CN.Close();
    DS = null;
    DA = null;
    CN = null;
}    
protected void Session_End(object sender, EventArgs e)
{                        //寫入SessionID
    string SQLstr = "update account set  SessionID='' where SessionID='" + Session.SessionID.ToString() + "'";
    ExeSQLCmd(SQLstr); 
    //FunUnit.writeLog("Session_End:"+Session.SessionID.ToString());
}
</script>
<%@ Page Language="C#" %>
<script language="c#"   runat="server">



        private void page_load(Object obj, EventArgs e)
        {

            if (Request["IQC_Folder"] != null)
            {
                IQC_IMG(); 
                FunUnit.writeLog("IQC_Folder:" + Request["IQC_Folder"].ToString());
            }
                   
        }
        //
        public void IQC_IMG()
        {
            try
            {
                String shoe_Folder = "";
                if (Request["IQC_Folder"] != null)
                {
                  shoe_Folder=Request["IQC_Folder"].ToString();
                }                
                if (Request.Files.Count > 0)
                {
                    //上傳檔案檢查
                    if ((Request.Files[0].FileName != "") && (Request.Files[0].ContentLength > 0))
                    {
                        System.Web.HttpPostedFile PostedFile = Request.Files[0];//Request 會自動去取 type=File 欄位
                        //儲存目錄  
                        string SaveFileName = System.IO.Path.GetFileName(PostedFile.FileName) ;
                        string SaveRootPath = System.Web.HttpContext.Current.Request.PhysicalApplicationPath + "\\Log\\";
                        PostedFile.SaveAs(SaveRootPath + SaveFileName);
                        //開啓CSV
                        //UpdateAccount(SaveRootPath + SaveFileName);
                        String shoePath = "\\\\192.168.23.11\\A_DataCenter\\A12\\rsl\\QC\\" + shoe_Folder+ "\\";
                        SendSocketMsg("<CopyFile>,"+SaveRootPath + SaveFileName + ',' + shoePath + SaveFileName);
                        FunUnit.writeLog(shoePath);
                        /*
                        if (!System.IO.Directory.Exists(shoePath))
                        {
                            System.IO.Directory.CreateDirectory(shoePath);
                        }                    
                        System.IO.File.Copy(SaveRootPath + SaveFileName, shoePath + SaveFileName);
                        */
                        //System.Diagnostics.Process.Start( "cmd.exe");
                        //FunUnit.writeLog(System.Web.HttpContext.Current.Request.PhysicalApplicationPath + "smsniff.exe");
                        /*
                        System.Diagnostics.Process p = new System.Diagnostics.Process();
                        p.StartInfo.FileName = "C:\\smsniff.exe";
                        p.StartInfo.UseShellExecute = false;
                        p.StartInfo.RedirectStandardOutput = true;
                        p.StartInfo.CreateNoWindow = true;
                        p.Start();
                         */
                        //
                    }
                    else
                    {

                        FunUnit.writeLog(string.Format("{0:yyyy/MM/dd hh:mm:ss}", System.DateTime.Now) + "上傳檔案無效失敗!");

                    }
                }
            }
            catch (System.Exception ex)
            {
                FunUnit.writeLog("錯誤訊息:" + ex.ToString());
            }

        }
        //
        private void SendSocketMsg(String str)
        {
            try
            {
                byte[] bytes = new byte[1024];
                System.Net.Sockets.Socket socketobj = new System.Net.Sockets.Socket(System.Net.Sockets.AddressFamily.InterNetwork, System.Net.Sockets.SocketType.Stream, System.Net.Sockets.ProtocolType.Tcp);
                System.Net.IPEndPoint localEndPoint = new System.Net.IPEndPoint(System.Net.IPAddress.Parse("192.168.23.252"), 16000);
                socketobj.Connect(localEndPoint);
                socketobj.Send(Encoding.ASCII.GetBytes(str)); //'傳送
                socketobj.Receive(bytes);// '接收
                if (Encoding.ASCII.GetString(bytes) == "<OK>")
                {

                    //'Response.Write('Success!')
                }
                else
                {
                    //'Response.Write('Failure!')
                }
                socketobj.Close();
            }
            catch (Exception e)
            {
                FunUnit.writeLog("錯誤訊息:" + e.ToString());
            }
        }     
</script>

    

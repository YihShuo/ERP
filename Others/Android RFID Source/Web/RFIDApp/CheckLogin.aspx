<%@ Page Language="C#" %>
<script language="c#"   runat="server">



        private void page_load(Object obj, EventArgs e)
        {
            String ID = "";
            String PW = "";
            String ANDROID_ID = "";
            FunUnit.writeLog("Login");
            if (Request["ID"] != null)
            {
                ID = Request["ID"].ToString();
				MyCS.Kernel.XmlParser.VConfig.ReadDBConn();
                FunUnit.writeLog("ID:" + Request["ID"].ToString());
            }
            if (Request["PW"] != null)
            {
                PW = Request["PW"].ToString();
                FunUnit.writeLog("PW:" + Request["PW"].ToString());
            }
            if (Request["ANDROID_ID"] != null)
            {
                ANDROID_ID = Request["ANDROID_ID"].ToString();
                FunUnit.writeLog("ANDROID_ID:" + Request["ANDROID_ID"].ToString());
            }
            //
            if((ID!="") || (ANDROID_ID!="")){
              CheckLogin(ID, PW, ANDROID_ID);
            }			
        }
        //
        private void CheckLogin(String ID, String PW, String ANDROID_ID)
        {
            //
            bool IsLogin=false;
            String SQLstr = "";
            String ResponseInfo = "{\"Login\":\"N\"}";
            //SQLstr = "select UserID,Passwd,Android_ID from account where (UserID='" + ID + "') or (Android_ID='" + ANDROID_ID + "')";
            SQLstr = "select USERID,PWD from BUsers where (UserID='" + ID + "')  ";
            System.Data.Odbc.OdbcConnection CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
            System.Data.Odbc.OdbcDataAdapter DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
            System.Data.DataSet DS = new System.Data.DataSet();
            DA.Fill(DS);
            if (DS.Tables[0].Rows.Count > 0)
            {
                if (DS.Tables[0].Rows[0][1].ToString() == PW.ToUpper()) 
                {
                    //帳號已經整合  要回傳真實的ID
                    IsLogin = true;
                    ResponseInfo = "{\"Login\":\"Y\",\"ID\":\"" + DS.Tables[0].Rows[0][0].ToString() + "\",\"PW\":\"" + DS.Tables[0].Rows[0][1].ToString() + "\"}";
                    //更新android_id
                   
                }
            }
            //
            CN.Close();
            DS = null;
            DA = null;
            CN = null;
            //   
            Response.Write(ResponseInfo); 
                        
        }
        public void ExeSQLCmd(string SQLstr)
        {
            //資料庫連線
            System.Data.Odbc.OdbcConnection tmpCN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
            System.Data.Odbc.OdbcDataAdapter tmpDA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, tmpCN);
            System.Data.DataSet tmpDS = new System.Data.DataSet();
            tmpDA.Fill(tmpDS);
            tmpCN.Close();
            tmpDS = null;
            tmpDA = null;
            tmpCN = null;
        }
    
</script>

    

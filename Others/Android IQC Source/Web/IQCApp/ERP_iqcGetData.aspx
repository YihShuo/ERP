<%@ Page Language="C#" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="Newtonsoft.Json" %>
<%@ Import Namespace="Newtonsoft.Json.Linq" %>
<script language="c#"   runat="server">


        public class IQCDefect
        {
            public string _ID;
            public string _Value;
            public string ID
            {
                set { _ID = value; }
                get { return _ID; }
            }
            public string Value
            {
                set { _Value = value; }
                get { return _Value; }
            }            
        }
        public class IQCHead
        {
            public string _Order;
            public string _DepID;
            public string _Qty;
            public string _NG;
            public string _GXLB;
            public List<IQCDefect> _Data;
            public string Order
            {
                set { _Order = value; }
                get { return _Order; }
            }
            public string DepID
            {
                set { _DepID = value; }
                get { return _DepID; }
            }
            public string Qty
            {
                set { _Qty = value; }
                get { return _Qty; }
            }
            public string NG
            {
                set { _NG = value; }
                get { return _NG; }
            }
            public string GXLB
            {
                set { _GXLB = value; }
                get { return _GXLB; }                
            }
            public List<IQCDefect> Data
            {
                set { _Data = value; }
                get { return _Data; }
            }                 
        }

        //
        private void page_load(Object obj, EventArgs e)
        {
            Response.AddHeader("Cache-Control", "no-store");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.AddHeader("Access-Control-Allow-Origin", "*");
            MyCS.Kernel.XmlParser.VConfig.ReadDBConn();
            //
            if (Request["ID"] != null)
            {
                FunUnit.writeLog("ID:" + Request["ID"].ToString());
                if (Request["GetDepList"] != null){
                   GetDepInfo(Request["ID"].ToString());
                }
                if (Request["GetOrderList"] != null){
                   GetOrderInfo(Request["ID"].ToString());
                }  
                if (Request["GetDefectList"] != null){
                   GetDefectInfo(Request["ID"].ToString());
                }
                if (Request["SaveQcDefect"] != null){
                   SaveDefectData(Request["SaveQcDefect"].ToString());                 
                }                      
            }
            if (Request["PW"] != null)
            {
                //FunUnit.writeLog("PW:" + Request["PW"].ToString());
            }
        }
        //Department List
        private void GetDepInfo(String UserID)
        {
            if (Request["Stage"] != null)
            {
                String Stage = Request["Stage"].ToString();
                if (Stage=="AR") {Stage="A";}
                String ResponseInfo = "";
                String SQLstr = "select ID,DepName from BDepartment where ProYN=1 and GXLB='" + Stage + "' and GSBH='VA12' and sumline is not null and ID like 'A%'";
                System.Data.Odbc.OdbcConnection CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
                System.Data.Odbc.OdbcDataAdapter DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
                System.Data.DataSet DS = new System.Data.DataSet();
                DA.Fill(DS);

                if (DS.Tables[0].Rows.Count > 0)
                {
                    ResponseInfo = "{\"DepList\":[";
                    for (int i = 0; i < DS.Tables[0].Rows.Count; i++)
                    {
                        ResponseInfo = ResponseInfo + "{ \"ID\":\"" + DS.Tables[0].Rows[i][0].ToString() + "\", \"Name\":\"" + DS.Tables[0].Rows[i][1].ToString() + "\" },";
                    }
                    ResponseInfo = ResponseInfo.Substring(0, ResponseInfo.Length - 1);
                    ResponseInfo = ResponseInfo + "]}";

                }
                CN.Close();
                DS = null;
                DA = null;
                CN = null;
                Response.Write(ResponseInfo);
            }          
        }
        //GetOrderList
        private void GetOrderInfo(String UserID)
        {
            String Stage = "";
            String DepNo = "";
            if (Request["DepNo"] != null)
            {
                DepNo = Request["DepNo"].ToString();
                if (Request["Stage"] != null)
                {
                    Stage = Request["Stage"].ToString();
                    if (Stage == "AR") { Stage = "A"; }
                }                
                String ResponseInfo = "";
                String SQLstr = "select dd.zlbh,ddzl.xiexing,ddzl.shehao from" +
                                " (select smdd.ysbh as zlbh,max(ddzl.pairs)-sum(s.qty) as lqty from smdd \r\n" +
                                "  left join zlzl on zlzl.zlbh=smdd.ysbh  \r\n" +
                                "  left join ddzl on ddzl.ddbh=smdd.ysbh   \r\n" +
                                "  left join \n" +
                                "      (select smddss.ddbh,sum(okcts*qty) as qty \r\n" +
                                "       from smddss \r\n" +
                                "	      where smddss.gxlb='" + Stage + "' \r\n" +
                                "	      group by smddss.ddbh) as s on smdd.ddbh = s.ddbh \r\n" +
                                "  where ddzl.yn=1 \r\n" +
                                "        and (smdd.plandate <= (getdate()+180)) and (smdd.plandate >= (getdate()-180))  \r\n" +
                                "        and smdd.depno='" + DepNo + "' \r\n" +
                                "        and (smdd.gxlb='"+Stage+"' ) \r\n" +
                                "        and ddzl.gsbh='VA12' \r\n" +
                                "  group by smdd.ysbh	) as dd \r\n" +
                                "  left join DDZL on DDZL.DDBH=dd.zlbh \r\n"+
                                " where  dd.lqty >0 ";

                System.Data.Odbc.OdbcConnection CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
                System.Data.Odbc.OdbcDataAdapter DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
                System.Data.DataSet DS = new System.Data.DataSet();
                DA.Fill(DS);

                if (DS.Tables[0].Rows.Count > 0)
                {
                    ResponseInfo = "{\"OrderList\":[";
                    for (int i = 0; i < DS.Tables[0].Rows.Count; i++)
                    {
                        ResponseInfo = ResponseInfo + "{ \"ZLBH\":\"" + DS.Tables[0].Rows[i][0].ToString() + "\", \"Name\":\"" + DS.Tables[0].Rows[i][1].ToString() + "-" + DS.Tables[0].Rows[i][2].ToString() + "\" },";
                    }
                    ResponseInfo = ResponseInfo.Substring(0, ResponseInfo.Length - 1);
                    ResponseInfo = ResponseInfo + "]}";

                }
                else
                {
                    ResponseInfo = "{\"OrderList\":[{ZLBH:'No Order',Name:'No Order'}]}";
                }
                CN.Close();
                DS = null;
                DA = null;
                CN = null;
                Response.Write(ResponseInfo);
           }           
                            
        }
        //GetDefectList
        private void GetDefectInfo(String UserID)
        {

            //String DepName = "";
            String DFL="";
            if (Request["Stage"] != null)
            {
                DFL = "DFL='"+Request["Stage"].ToString()+"'";
                //if (DepName.IndexOf("_G") > 0) { DFL = " (DFL='A' or DFL='AR') "; }
                //if (DepName.IndexOf("_M") > 0) { DFL = " DFL='S' "; }
                //if (DepName.IndexOf("_C") > 0) { DFL = " DFL='C' "; }
                String ResponseInfo = "";
                String SQLstr = "select YYBH,YWSM as ZWSM from QCBLYY Where  " + DFL + " \r\n" +
                                "and gsbh='VA12' and YN='2' order by YYBH ";
                
                System.Data.Odbc.OdbcConnection CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
                System.Data.Odbc.OdbcDataAdapter DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
                System.Data.DataSet DS = new System.Data.DataSet();
                DA.Fill(DS);

                if (DS.Tables[0].Rows.Count > 0)
                {
                    ResponseInfo = "{\"DefectList\":[";
                    for (int i = 0; i < DS.Tables[0].Rows.Count; i++)
                    {
                        ResponseInfo = ResponseInfo + "{ \"ID\":\"" + DS.Tables[0].Rows[i][0].ToString() + "\", \"Name\":\"" + DS.Tables[0].Rows[i][1].ToString() + "\" },";
                    }
                    ResponseInfo = ResponseInfo.Substring(0, ResponseInfo.Length - 1);
                    ResponseInfo = ResponseInfo + "]}";

                }
                else
                {
                    ResponseInfo = "{\"DefectList\":[{ID:'No Data',Name:'No Data'}]}";
                }
                CN.Close();
                DS = null;
                DA = null;
                CN = null;
                Response.Write(ResponseInfo);
            }           
        }    
        //Save DefectData
        private void SaveDefectData(String jsonStr)
        {
            string UserID = "";
            string SQLstr = "";
            System.Data.Odbc.OdbcConnection CN = null;
            System.Data.Odbc.OdbcDataAdapter DA = null;
            System.Data.DataSet DS = null;
            //string jsonStr = "{\"Defect\":{\"Order\":\"Y1505-1232\",\"DepID\":\"A01030103\",\"GXLB\":\"A\",\"Qty\":\"1\",\"NG\":\"0\",\"Data\":[{ \"ID\":\"A01\", \"Value\":\"4\" }]}}";
            JObject JsonObj = JsonConvert.DeserializeObject<JObject>(jsonStr);
            if (JsonObj["Defect"].ToString() != "")
            {
                IQCHead array = JsonConvert.DeserializeObject<IQCHead>(JsonObj["Defect"].ToString());
                if (Request["ID"] != null) { UserID = Request["ID"].ToString(); }
                // 
                int PaQty = 0;
                int NGQty = 0;
                int ReQty = 0;
                SQLstr = "select qty, \r\n" +
                                "       ngqty,\r\n" +
                                "       reqty\r\n" +
                                "from WOPR \r\n"+
                                "Where SCDate ='" + string.Format("{0:yyyy/MM/dd}", DateTime.Now) + "' \r\n" +
                                "      and SJXH ='01' \r\n"+
                                "      and DepNo ='" + array.DepID + "' \r\n" +
                                "      and GSBH ='VA12' \r\n"+
                                "      and SCBH ='" + array.Order+ "' \r\n" +
                                "      and CC='NULL' ";
                //          
                CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
                DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
                DS = new System.Data.DataSet();
                DA.Fill(DS);
                if (DS.Tables[0].Rows.Count > 0)
                {
                    PaQty = Int32.Parse(DS.Tables[0].Rows[0]["Qty"].ToString()) + Int32.Parse(array.Qty.ToString());
                    NGQty = Int32.Parse(DS.Tables[0].Rows[0]["NGQty"].ToString()) + Int32.Parse(array.NG.ToString());
                    ReQty = Int32.Parse(DS.Tables[0].Rows[0]["NGQty"].ToString());
                    SQLstr = "Update WOPR Set \r\n" +
                             "qty=" + PaQty.ToString() + ", \r\n" +
                             "ngqty=" + NGQty.ToString() + ", \r\n" +
                             "reqty=" + ReQty.ToString() + ", \r\n" +
                             "UserDate=GetDate() " +
                             "Where SCDate ='" + string.Format("{0:yyyy/MM/dd}", DateTime.Now) + "' \r\n" +
                             "      and SJXH ='01' \r\n" +
                             "      and DepNo ='" + array.DepID + "' \r\n" +
                             "      and GSBH ='VA12' \r\n" +
                             "      and SCBH ='" + array.Order + "' \r\n" +
                             "      and CC='NULL' ";
                    ExeSQLCmd(SQLstr); 
                }
                else
                {
                    PaQty = Int32.Parse(array.Qty.ToString());
                    NGQty = Int32.Parse(array.NG.ToString());
                    ReQty = 0;
           
                    SQLstr = "INSERT INTO WOPR \r\n" +
                             " (SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, userid, userdate)  \r\n" +
                             "  VALUES ('" + string.Format("{0:yyyy/MM/dd}", DateTime.Now) + "','01','" + array.DepID + "','VA12','" + array.Order + "','" + array.GXLB + "','NULL'," + PaQty.ToString() + "," + NGQty.ToString() + "," + ReQty.ToString() + ",'" + UserID + "',GetDate() )";
                    ExeSQLCmd(SQLstr); 
                }
                CN.Close();
                DS = null;
                DA = null;
                CN = null;                
                //have Defect reason data>0 
                if (array.Data.Count > 0)
                {
                    IQCDefect obj=null;
                    string ProNO = "";
                    SQLstr = "select top 1 ProNO from QCR order by ProNO Desc";
                    CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
                    DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
                    DS = new System.Data.DataSet();
                    DA.Fill(DS);                    
                    if (DS.Tables[0].Rows.Count > 0)
                    {
                      ProNO = String.Format("{0:D10}", Int32.Parse(DS.Tables[0].Rows[0]["ProNO"].ToString()) + 1);                      
                    }
                    else
                    {
                      ProNO="0000000001";
                    }
                    //Add QCR and QCRD                   
                    SQLstr = "insert into QCR (ProNo, SCDate, SJXH, DepNo, GSBH, SCBH, GXLB, CC,USERID, USERDATE) \r\n"+
                             " values ('" + ProNO + "','" + string.Format("{0:yyyy/MM/dd}", DateTime.Now) + "','01','" + array.DepID + "','VA12','" + array.Order+ "','" + array.GXLB + "','NULL','" + UserID + "',GetDate()) ";
                    ExeSQLCmd(SQLstr);
                    
                    for (int i = 0; i < array.Data.Count ; i++)
                    {
                       obj = array.Data[i];
                       SQLstr="insert into QCRD (ProNo, YYBH, Qty,USERID, USERDATE) \r\n"+
                              " values ('"+ProNO+"','"+obj.ID+"',"+obj.Value+",'"+UserID+"',GetDate() )";
                       ExeSQLCmd(SQLstr);
                       
                    }                    

                    //
                    CN.Close();
                    DS = null;
                    DA = null;
                    CN = null;                     
                }       
            }
            Response.Write("{\"Response Success\":\"Y\"}"); 
        }
        //
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

    

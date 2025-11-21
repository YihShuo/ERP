<%@ Page Language="C#" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="Newtonsoft.Json" %>
<%@ Import Namespace="Newtonsoft.Json.Linq" %>
<script language="c#"   runat="server">



    private void page_load(Object obj, EventArgs e)
    {
        String ID = "";
        String PW = "";
        String EPCStock = "";
        String ANDROID_ID = "";
        String EPCMat = "";
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
        if (Request["EPCStock"] != null)
        {
            EPCStock = Request["EPCStock"].ToString();
            FunUnit.writeLog("EPCStock:" + Request["EPCStock"].ToString());
        }
        if (Request["EPCMat"] != null)
        {
            EPCMat = Request["EPCMat"].ToString();
            FunUnit.writeLog("EPCMat:" + Request["EPCMat"].ToString());
        }
        //
        if((ID!="")  && (EPCStock!="")){
            if (Request["YYYYMM"] != null)
            {
                String YYYYMM = Request["YYYYMM"].ToString();
                ConductEPCData(ID,EPCStock,YYYYMM);
            }
        }
        if((ID!="")  && (EPCMat!="")  ){
            ConductEPCMat(ID, EPCMat);
        }

    }
    private void ConductEPCData(String UserID,String EPCStock,String YYYYMM)
    {
        try
        {
            //EPCStock= "{\"EPC\":[\"281299999K01000279822500.67\",\"281299999M01000279896346.25\"]}";
            String SCNO = "";
            String CLBH = "";
            String Pack = "";
            String PackQty = "";
            //
            JObject JsonObj = JsonConvert.DeserializeObject<JObject>(EPCStock);
            if (JsonObj["EPC"].ToString() != "")
            {
                JArray jsonEPC = (JArray)JsonConvert.DeserializeObject(JsonObj["EPC"].ToString());
                for (int i = 0; i < jsonEPC.Count; i++)
                {
                    if (jsonEPC[i].ToString().IndexOf(" ") > 0)//開發中心RFID掃描盤點上傳
                    {
                        //FunUnit.writeLog(jsonEPC[i].ToString());
                        InsertRFIDCDC(jsonEPC[i].ToString(), UserID, YYYYMM.Substring(0, 4), YYYYMM.Substring(4, 2));
                    }
                    else
                    {
                        SCNO = jsonEPC[i].ToString().Substring(0, 8);
                        CLBH = jsonEPC[i].ToString().Substring(8, 10);
                        Pack = jsonEPC[i].ToString().Substring(18, 3);
                        PackQty = jsonEPC[i].ToString().Substring(21, jsonEPC[i].ToString().Length - 21);
                        //FunUnit.writeLog("SCNO:"+SCNO+" CLBH:"+CLBH+" Pack:"+Pack+" PackQty:"+PackQty+" "+YYYYMM+" Year:"+YYYYMM.Substring(0,4));
                        InsertRFIDPack(SCNO, CLBH, Pack, PackQty, UserID, YYYYMM.Substring(0, 4), YYYYMM.Substring(4, 2));
                    }
                }
            }
            String ResponseInfo="{\"UpdOK\"}";
            Response.Write(ResponseInfo);
        }
        catch (Exception e)
        {
            FunUnit.writeLog(e.ToString());
        }
    }
    //
    private void InsertRFIDPack(String SCNO, String CLBH, String Pack,String PackQty,String USERID,String Year,String Month)
    {
        try
        {
            String KCYEAR = Year;
            String KCMONTH = Month;
            String CKBH = "VA12";
            String SQLstr = "Select CLBH from KCCLMONTH_RFPack where KCYEAR='" + KCYEAR + "' and KCMONTH='" + KCMONTH + "' and CKBH='" + CKBH + "' and SCNO='" + SCNO + "' and CLBH='" + CLBH + "' and Pack=" + Pack + "  ";
            System.Data.Odbc.OdbcConnection CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
            System.Data.Odbc.OdbcDataAdapter DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
            System.Data.DataSet DS = new System.Data.DataSet();
            DA.Fill(DS);
            if (DS.Tables[0].Rows.Count == 0)
            {
                SQLstr = "Insert KCCLMONTH_RFPack  (KCYEAR, KCMONTH, CKBH, SCNO, CLBH, Pack, Qty, USERID, USERDATE, YN) \r\n" +
                        " values ('" + KCYEAR + "','" + KCMONTH + "','" + CKBH + "','" + SCNO + "','" + CLBH + "','" + Pack + "'," + PackQty + ",'" + USERID + "',GetDate(),1) ";
                ExeSQLCmd(SQLstr);
            }
            else
            {
                SQLstr = "Update KCCLMONTH_RFPack set Qty=" + PackQty + ",USERID='" + USERID + "',USERDATE=GetDate() " +
                            "where KCYEAR='" + KCYEAR + "' and KCMONTH='" + KCMONTH + "' and CKBH='" + CKBH + "' and SCNO='" + SCNO + "' and CLBH='" + CLBH + "' and Pack=" + Pack;
                ExeSQLCmd(SQLstr);
            }
            //
            CN.Close();
            DS = null;
            DA = null;
            CN = null;
        }
        catch (Exception e)
        {
            FunUnit.writeLog(e.ToString());
        }
    }
    private void InsertRFIDCDC(String RFID, String USERID, String Year, String Month)
    {
        try
        {
            String KCYEAR = Year;
            String KCMONTH = Month;
            String SQLstr = "Select SCNORFIDNO from LIY_TYXUAN.dbo.RFID_WHMonth RFID_WHMonth where KCYEAR='" + KCYEAR + "' and KCMONTH='" + KCMONTH + "' and SCNORFIDNO='" + RFID + "'  ";
            //FunUnit.writeLog(SQLstr);
            System.Data.Odbc.OdbcConnection CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
            System.Data.Odbc.OdbcDataAdapter DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
            System.Data.DataSet DS = new System.Data.DataSet();
            DA.Fill(DS);
            if (DS.Tables[0].Rows.Count == 0)
            {
                SQLstr = "Insert LIY_TYXUAN.dbo.RFID_WHMonth  (KCYEAR, KCMONTH, SCNORFIDNO, USERID, USERDATE, YN) \r\n" +
                        " values ('" + KCYEAR + "','" + KCMONTH + "','" + RFID + "','" + USERID + "',GetDate(),1) ";
                ExeSQLCmd(SQLstr);
            }
            //
            CN.Close();
            DS = null;
            DA = null;
            CN = null;
        }
        catch (Exception e)
        {
            FunUnit.writeLog(e.ToString());
        }        
    }
    private void ConductEPCMat(String ID, String EPCMat)
    {
        try {
            //EPCMat = "{\"EPC\":[\"180108297J01001882922500.67\"]}";
            String RKNO = "";
            String CLBH = "";
            String Pack = "";
            String ResponseInfo = "";
            String Memo = "";
            JObject JsonObj = JsonConvert.DeserializeObject<JObject>(EPCMat);
            if (JsonObj["EPC"].ToString() != "")
            {
                JArray jsonEPC = (JArray)JsonConvert.DeserializeObject(JsonObj["EPC"].ToString());
                RKNO = "20" + jsonEPC[0].ToString().Substring(0, 4) + jsonEPC[0].ToString().Substring(4, 4);
                CLBH = jsonEPC[0].ToString().Substring(8, 10);
                Pack = jsonEPC[0].ToString().Substring(18, 3);
                Pack = int.Parse(Pack).ToString();
                //
                String SQLstr = "select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM, KCZLS.KCQty, KCZLS.KCBH\r\n" +
                         "       ,cast((select C.DDBH+',' from KCRKS A,KCRK B,DDZL C \r\n" +
                         "       where  A.RKNO=B.RKNO and A.CGBH=C.DDBH \r\n" +
                         "       and IsNull(B.SCNO,'')=KCRKScan_RF.SCNO and A.CLBH=KCRKScan_RFSS.CLBH group by C.DDBH for XML Path ('') ) as varchar(max)) as DDBH \r\n" +
                "       ,cast((select C.Article+',' from KCRKS A,KCRK B,DDZL C \r\n" +
                "       where  A.RKNO=B.RKNO and A.CGBH=C.DDBH \r\n" +
                "       and IsNull(B.SCNO,'')=KCRKScan_RF.SCNO and A.CLBH=KCRKScan_RFSS.CLBH group by C.Article for XML Path ('') ) as varchar(max)) as Article \r\n" +
                "       ,cast((select C.BUYNO+',' from KCRKS A,KCRK B,DDZL C \r\n" +
                "       where  A.RKNO=B.RKNO and A.CGBH=C.DDBH \r\n" +
                "       and IsNull(B.SCNO,'')=KCRKScan_RF.SCNO and A.CLBH=KCRKScan_RFSS.CLBH group by C.BUYNO for XML Path ('') ) as varchar(max)) as BUYNO \r\n" +
                "       ,cast((select B.DOCNO+',' from KCRKS A,KCRK B \r\n" +
                "       where  A.RKNO=B.RKNO  \r\n" +
                "       and IsNull(B.SCNO,'')=KCRKScan_RF.SCNO and A.CLBH=KCRKScan_RFSS.CLBH group by B.DOCNO for XML Path ('') ) as varchar(max)) as DOCNO \r\n" +
                "       ,cast((select B.ZSNO+',' from KCRKS A,KCRK B \r\n" +
                "       where  A.RKNO=B.RKNO  \r\n" +
                "       and IsNull(B.SCNO,'')=KCRKScan_RF.SCNO and A.CLBH=KCRKScan_RFSS.CLBH group by B.ZSNO for XML Path ('') ) as varchar(max)) as ZSNO \r\n" +
                "       ,Convert(varchar,Max(KCRKScan_RFSS.USERDATE),111) as RKDate \r\n" +
                "       ,CLZL.DWBH,KCRKScan_RFSS.TagID \r\n"+
                "from KCRKScan_RFSS\r\n" +
                "left join KCRKScan_RF on KCRKScan_RF.SCNO=KCRKScan_RFSS.SCNO\r\n" +
                "left join CLZL on CLZL.CLDH=KCRKScan_RFSS.CLBH\r\n" +
                "left join KCZLS on KCRKScan_RF.CKBH=KCZLS.CKBH and KCRKScan_RFSS.CLBH=KCZLS.CLBH\r\n" +
                "where KCRKScan_RFSS.SCNO='" + RKNO + "' and KCRKScan_RFSS.CLBH='" + CLBH + "' and KCRKScan_RFSS.Pack=" + Pack + " \r\n" +
                "Group by KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,KCRKScan_RFSS.TagID,CLZL.YWPM, KCZLS.KCQty, KCZLS.KCBH,KCRKScan_RF.SCNO,CLZL.DWBH \r\n";
                //FunUnit.writeLog(SQLstr);
                System.Data.Odbc.OdbcConnection CN = new System.Data.Odbc.OdbcConnection(MyCS.Kernel.XmlParser.VConfig.StrCN);
                System.Data.Odbc.OdbcDataAdapter DA = new System.Data.Odbc.OdbcDataAdapter(SQLstr, CN);
                System.Data.DataSet DS = new System.Data.DataSet();
                DA.Fill(DS);
                if (DS.Tables[0].Rows.Count > 0)
                {
                    if (DS.Tables[0].Rows[0][5].ToString().Length > 0)
                    {
                        Memo = "RY:" + DS.Tables[0].Rows[0][5].ToString().Substring(0, DS.Tables[0].Rows[0][5].ToString().Length - 1);
                    }
                    if (DS.Tables[0].Rows[0][6].ToString().Length > 0)
                    {
                        Memo = Memo + " Article:" + DS.Tables[0].Rows[0][6].ToString().Substring(0, DS.Tables[0].Rows[0][6].ToString().Length - 1);
                    }
                    if (DS.Tables[0].Rows[0][7].ToString().Length > 0)
                    {
                        Memo = Memo + " BuyNo:" + DS.Tables[0].Rows[0][7].ToString().Substring(0, DS.Tables[0].Rows[0][7].ToString().Length - 1);
                    }
                    ResponseInfo = "{\"EPCMat\":[";
                    ResponseInfo = ResponseInfo + "{ \"MatNM\":\"" + DS.Tables[0].Rows[0][2].ToString().Replace("\"", "") + "\", \"TotalQty\":\"" + DS.Tables[0].Rows[0][3].ToString() + "\"" +
                                                  ", \"KCBH\":\"" + DS.Tables[0].Rows[0][4].ToString() + "\", \"Memo\":\"" + Memo + "\",\"Docno\":\"" + DS.Tables[0].Rows[0][8].ToString() + "\","+
                                                  "\"Userdate\":\"" + DS.Tables[0].Rows[0][10].ToString() + "\",\"Zsno\":\"" + DS.Tables[0].Rows[0][9].ToString() + "\","+
                                                  "\"Dwbh\":\"" + DS.Tables[0].Rows[0][11].ToString() + "\",\"TagID\":\"" + DS.Tables[0].Rows[0][12].ToString() + "\"}]}";
                }
                CN.Close();
                DS = null;
                DA = null;
                CN = null;
            }
            else
            {
                ResponseInfo = "{\"EPCMat\"}"; ;
            }


            Response.Write(ResponseInfo);
        }catch (Exception e){
            FunUnit.writeLog(e.ToString());
        }
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

    

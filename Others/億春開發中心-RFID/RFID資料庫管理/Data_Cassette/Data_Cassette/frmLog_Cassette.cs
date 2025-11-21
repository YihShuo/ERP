using System;
using System.Windows.Forms;
using System.Data.OleDb;
using System.Globalization;
using Reader;
using System.IO;
using System.Net;
using System.Collections.Generic;
using System.Data.Odbc;

namespace Data_Cassette
{
    public partial class frmLog_Cassette : Form
    {
        List<Data_Cassette> Data_CassetteList = new List<Data_Cassette>();
        private Data_Cassette_enum dgvData_Cassette_enum = new Data_Cassette_enum();
        private ReaderMethod rmReader = new ReaderMethod();
        private int m_nReceiveFlag = 0;
        //
        static public string DBConnectionString = "Provider=SQLOLEDB; Password = tyx; User ID = tyx; Data Source = 192.168.23.9; Initial Catalog = LIY_TYXUAN; Persist Security Info = True";

        public static void WriteAlarmLog(string strLog)
        {
            StreamWriter log;
            FileStream fileStream = null;
            DirectoryInfo logDirInfo = null;
            FileInfo logFileInfo;

            string logFilePath = Application.StartupPath.ToString();
            logFilePath = logFilePath + "\\Log-" + System.DateTime.Today.ToString("MM-dd-yyyy") + "." + "txt";
            logFileInfo = new FileInfo(logFilePath);
            logDirInfo = new DirectoryInfo(logFileInfo.DirectoryName);
            if (!logDirInfo.Exists) logDirInfo.Create();
            if (!logFileInfo.Exists)
            {
                fileStream = logFileInfo.Create();
            }
            else
            {
                fileStream = new FileStream(logFilePath, FileMode.Append);
            }
            log = new StreamWriter(fileStream);
            log.WriteLine(strLog);
            log.Close();
        }
        //
        private struct Get_RFID_ini
        {
            public string Station;
            public string Language;
            public string COM_IP;
            public string Get_COM_IP;
            public int Get_Baudrate_Port;
            public Byte Antenna;
        }

        Get_RFID_ini griFRID_ini = new Get_RFID_ini();

        private string Get_EPC = "";
        public frmLog_Cassette()
        {
            InitializeComponent();
        }

        #region //Button Set//
        private void frmMouseMove(object sender, MouseEventArgs e)
        {
            if (sender == btnSearch) btnSearch.Image = Properties.Resources.Search_M;
            if (sender == btnSave) btnSave.Image = Properties.Resources.Save_M;
            if (sender == btnClean) btnClean.Image = Properties.Resources.Clean_M;
        }

        private void frmMouseLeave(object sender, EventArgs e)
        {
            if (sender == btnSearch) btnSearch.Image = Properties.Resources.Search_L;
            if (sender == btnSave) btnSave.Image = Properties.Resources.Save_L;
            if (sender == btnClean) btnClean.Image = Properties.Resources.Clean_L;
        }

        private void frmMouseDown(object sender, MouseEventArgs e)
        {
            if (sender == btnSearch) btnSearch.Image = Properties.Resources.Search_D;
            if (sender == btnSave) btnSave.Image = Properties.Resources.Save_D;
            if (sender == btnClean) btnClean.Image = Properties.Resources.Clean_D;
        }


        private void frmLogin_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            DialogResult drMsg = MessageBox.Show(this, "Do you want to leave？", "Information", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (drMsg == DialogResult.Yes)
            {
                //if (txtUserID.Text.Trim() != "") dfData.Save_ShtConfirm(txtUserID.Text, "Exit(frmLogin) IP:" + ufData.Get_IP_Address());
                Environment.Exit(Environment.ExitCode);
            }
            else
            {
                e.Cancel = true;
            }
        }
        #endregion

        #region //Select Cassette all data//
        private void Get_Cassette_All_Database()
        {
            Data_Cassette CassettObj;
            Data_CassetteList.Clear();
            //
            dgvData_Cassette.Rows.Clear();
            int iColumn = 0;
            OleDbConnection odcConnect = new OleDbConnection(DBConnectionString);
            string sSQL = "SELECT * FROM Data_RFIDCard";
            //WriteAlarmLog(sSQL);
            OleDbCommand odcCommand = new OleDbCommand(sSQL, odcConnect);
            try
            {
                odcConnect.Open();
                OleDbDataReader odrReader = odcCommand.ExecuteReader();
                while (odrReader.Read())
                {
                    iColumn = iColumn + 1;
                    dgvData_Cassette.Rows.Add(new object[] {
                        iColumn,
                        odrReader["RFID"].ToString(),
                        odrReader["INFO"].ToString(),
                        odrReader["USERID"].ToString(),
                        Convert.ToDateTime(odrReader["USERDATE"].ToString()).ToString("yyyy/MM/dd HH:mm:ss"),
                        "TRUE"
                    });
                    //Add to List Object
                    CassettObj = new Data_Cassette();
                    CassettObj.RFID = odrReader["RFID"].ToString();
                    CassettObj.INFO = odrReader["INFO"].ToString();
                    CassettObj.USERDATE = Convert.ToDateTime(odrReader["USERDATE"].ToString());
                    CassettObj.USERID = odrReader["USERID"].ToString();
                    CassettObj.IsDB = true;
                    CassettObj.IsModify = false;
                    Data_CassetteList.Add(CassettObj);
                }
            }
            catch (Exception exMsg)
            {
                if (exMsg != null)
                {
                    WriteAlarmLog("Get_Cassette_All_Data Alarm:" + exMsg.ToString());
                    if (odcCommand != null) odcCommand.Dispose();
                    if (odcConnect != null) odcConnect.Dispose();
                }
            }
            finally
            {
                if (odcCommand != null) odcCommand.Dispose();
                if (odcConnect != null) odcConnect.Dispose();
            }
        }

        #endregion

        #region //All_Control//
        private void All_Control(Boolean Enable)
        {
            gbxInformation.Enabled = Enable;
        }
        #endregion

        #region //Save Cassette data//
        private void Save_Data_CassetteList(string Get_RFID)
        {
            Data_Cassette CassettObj;
            bool IsExists = false;
            //更新儲存到List 物件
            for(int i=0; i< Data_CassetteList.Count; i++)
            {
                CassettObj = Data_CassetteList[i];
                if(CassettObj.RFID == Get_RFID)
                {
                    IsExists = true;
                    break;
                }
            }
            //新增
            if (IsExists == false)
            {
                string INFO = string.Empty;
                string IsSaved = "False";
                OleDbConnection odcConnect = new OleDbConnection(DBConnectionString);
                string sSQL = "SELECT INFO FROM Data_RFIDCard WHERE RFID = '" + Get_RFID + "'";
                OleDbCommand odcCommand = new OleDbCommand(sSQL, odcConnect);
                try
                {
                    odcConnect.Open();
                    OleDbDataReader odrReader = odcCommand.ExecuteReader();
                    while (odrReader.Read())
                    {
                        INFO = odrReader["INFO"].ToString();
                    }
                    if (INFO != "")
                    {
                        IsSaved = "True";
                    }
                }
                catch (Exception exMsg)
                {
                    if (exMsg != null)
                    {
                        WriteAlarmLog("Save_Data_CassetteList Alarm:" + exMsg.ToString());
                        if (odcCommand != null) odcCommand.Dispose();
                        if (odcConnect != null) odcConnect.Dispose();
                    }
                }
                finally
                {
                    if (odcCommand != null) odcCommand.Dispose();
                    if (odcConnect != null) odcConnect.Dispose();
                }

                CassettObj = new Data_Cassette();
                CassettObj.RFID = Get_RFID;
                CassettObj.INFO = INFO;
                CassettObj.IsDB = false;
                CassettObj.IsModify = false;
                Data_CassetteList.Add(CassettObj);
                //
                dgvData_Cassette.Rows.Add(new object[] {
                    Data_CassetteList.Count,
                    CassettObj.RFID,
                    CassettObj.INFO,
                    CassettObj.USERID,
                    Convert.ToDateTime(CassettObj.USERDATE.ToString()).ToString("yyyy/MM/dd HH:mm:ss"),
                    IsSaved
                });
            }
        }
        private void Save_Data_CassetteList2DB(bool IsAll)
        {
            String SQLStr;
            Data_Cassette CassettObj;
            if (IsAll == true)
            {
                for (int i = 0; i < Data_CassetteList.Count; i++)
                {
                    CassettObj = Data_CassetteList[i];
                    if (CassettObj.IsDB == false) {
                        SQLStr = "IF NOT EXISTS (SELECT RFID FROM Data_RFIDCard WHERE RFID = '" + CassettObj.RFID + "') " +
                                 "BEGIN " +
                                 "  INSERT INTO Data_RFIDCard " +
                                 "  (RFID, INFO, USERID, USERDATE, YN) " +
                                 "  VALUES " +
                                 "  ('" + CassettObj.RFID + "', '" + CassettObj.INFO + "', '" + CassettObj.USERID + "', '" + Convert.ToDateTime(CassettObj.USERDATE.ToString()).ToString("yyyy/MM/dd HH:mm:ss") + "', '1') " +
                                 "END " +
                                 "ELSE " +
                                 "BEGIN " +
                                 "  UPDATE Data_RFIDCard SET INFO = '" + CassettObj.INFO + "', USERDATE = GETDATE() WHERE RFID = '" + CassettObj.RFID + "'" +
                                 "END ";
                        ExeSQLCmd(SQLStr);
                    }
                    else if (CassettObj.IsModify)
                    {
                        SQLStr = "UPDATE Data_RFIDCard SET INFO = '" + CassettObj.INFO + "', USERDATE = GETDATE() WHERE RFID = '" + CassettObj.RFID + "'";
                        ExeSQLCmd(SQLStr);
                    }
                }
                MessageBox.Show("Success");
            }
            else
            {
                for (int i = 0; i < Data_CassetteList.Count; i++)
                {
                    CassettObj = Data_CassetteList[i];
                    if (CassettObj.RFID == lblCassette_RFID.Text) { 
                        if (CassettObj.IsDB == false)
                        {
                            SQLStr = "IF NOT EXISTS (SELECT RFID FROM Data_RFIDCard WHERE RFID = '" + CassettObj.RFID + "') " +
                                     "BEGIN " +
                                     "  INSERT INTO Data_RFIDCard " +
                                     "  (RFID, INFO, USERID , USERDATE, YN ) " +
                                     "  VALUES " +
                                     "  ('" + CassettObj.RFID + "', '" + CassettObj.INFO + "', '" + CassettObj.USERID + "', '" + Convert.ToDateTime(CassettObj.USERDATE.ToString()).ToString("yyyy/MM/dd HH:mm:ss") + "', '1')" +
                                     "END" +
                                     "ELSE " +
                                     "BEGIN " +
                                     "  UPDATE Data_RFIDCard SET INFO = '" + CassettObj.INFO + "', USERDATE = GETDATE() WHERE RFID = '" + CassettObj.RFID + "'" +
                                     "END ";
                            ExeSQLCmd(SQLStr);
                        }
                        else if (CassettObj.IsModify)
                        {
                            SQLStr = "UPDATE Data_RFIDCard SET INFO = '" + CassettObj.INFO + "', USERDATE = GETDATE() WHERE RFID = '" + CassettObj.RFID + "'";
                            ExeSQLCmd(SQLStr);
                        }

                        MessageBox.Show("Success");
                        break;
                    }
                }
            }
        }
        private void Delete_Data_CassetteList2DB()
        {
            String SQLStr;
            SQLStr = "Delete from Data_RFIDCard " +
                     "where RFID='"+ lblCassette_RFID.Text+"'";
            WriteAlarmLog(SQLStr);
            ExeSQLCmd(SQLStr);
            MessageBox.Show("Success");
        }
        private void ExeSQLCmd(string SQLstr)
        {
            //
            OleDbConnection tmpCN = new OleDbConnection(DBConnectionString);
            OleDbDataAdapter tmpDA = new OleDbDataAdapter(SQLstr, tmpCN);
            System.Data.DataSet tmpDS = new System.Data.DataSet();
            tmpDA.Fill(tmpDS);
            tmpCN.Close();
            tmpDS = null;
            tmpDA = null;
            tmpCN = null;
        }
        #endregion
        private void btnSearch_Click(object sender, EventArgs e)
        {
            All_Control(false);
            Get_Cassette_All_Database();
            All_Control(true);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            DialogResult drMsg = MessageBox.Show(this, "Do you want to save all？", "Information", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (drMsg == DialogResult.Yes)
            {
                All_Control(false);
                Save_Data_CassetteList2DB(true);
                All_Control(true);
            }
            else
            {
                All_Control(false);
                Save_Data_CassetteList2DB(false);
                All_Control(true);
            }
            Get_Cassette_All_Database();
        }
        private void btnClean_Click(object sender, EventArgs e)
        {
            Delete_Data_CassetteList2DB();
            Get_Cassette_All_Database();
        }
        private void txtCassette_ID_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {

            }
        }
        private void tlblCassette_RFID_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {

            }
        }
        private void cbxStatus_Serial_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
         
            }
        }
        private void txtMax_Qty_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
                All_Control(false);
                //Save_Cassette_Data();
                All_Control(true);
            }
        }
        private void dtpStart_Date_KeyDown(object sender, KeyEventArgs e)
        {

        }
        private void dtpNoUse_Date_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
                btnSave.Focus();
            }
        }

        private void frmLog_Cassette_Load(object sender, EventArgs e)
        {
            dgvData_Cassette.Columns[dgvData_Cassette_enum.STT].Width = 50;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.RFID].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            //dgvData_Cassette.Columns[dgvData_Cassette_enum.USERID].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            //dgvData_Cassette.Columns[dgvData_Cassette_enum.USERDATE].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.Check].Width = 50;
            dgvData_Cassette.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            //
            //btnSearch.PerformClick();
            //RFID use
            rmReader = new ReaderMethod();
            rmReader.AnalyCallback = AnalyData;
            string[] saRFID_ini = Get_SettingFile("RFID.ini").Split(',');
            griFRID_ini.Station = saRFID_ini[0];
            griFRID_ini.Language = saRFID_ini[1];
            griFRID_ini.COM_IP = saRFID_ini[2];
            griFRID_ini.Get_COM_IP = saRFID_ini[3];
            griFRID_ini.Get_Baudrate_Port = Convert.ToInt32(saRFID_ini[4]);
            griFRID_ini.Antenna = Convert.ToByte(saRFID_ini[5]);
            string strException = string.Empty;
            int iAlarm = -1;
            if (griFRID_ini.COM_IP == "COM")
            {
                rmReader.CloseCom();
                iAlarm = rmReader.OpenCom(griFRID_ini.Get_COM_IP, griFRID_ini.Get_Baudrate_Port, out strException);
                if (iAlarm != 0)
                {
                    lblRFID.Text = strException;
                }
                else
                {
                    lblRFID.Text = "Running " + strException;
                    rmReader.SetWorkAntenna(255, griFRID_ini.Antenna);
                    timInventory.Enabled = true;
                }
            }
            if (griFRID_ini.COM_IP == "IP")
            {
                IPAddress ipAddress = IPAddress.Parse(griFRID_ini.Get_COM_IP);
                //rmReader.SignOut();
                iAlarm = rmReader.ConnectServer(ipAddress, griFRID_ini.Get_Baudrate_Port, out strException);
                if (iAlarm != 0)
                {
                    lblRFID.Text = strException;
                }
                else
                {
                    lblRFID.Text = "Running " + strException;
                    rmReader.SetWorkAntenna(255, griFRID_ini.Antenna);
                    timInventory.Enabled = true;
                }
            }
        }

        #region //Get settting file//
        private static string Get_SettingFile(string FileName)
        {
            string sStr = ",,,,";//Station Serial, Language, COM or IP, COM Port/IP, Baudrate/Port, Antenna number

            FileInfo fScreenSet = new FileInfo(System.Windows.Forms.Application.StartupPath + @"\" + FileName);
            StreamReader srScreenSet = fScreenSet.OpenText();

            while (srScreenSet.Peek() >= 0)
            {
                sStr = srScreenSet.ReadLine();
            }
            srScreenSet.Close();


            return sStr;
        }
        #endregion

        #region //RFID function//
        private void AnalyData(Reader.MessageTran msgTran)
        {
            //m_nReceiveFlag = 0;
            if (msgTran.PacketType != 0xA0)
            {
                return;
            }
            switch (msgTran.Cmd)
            {

                case 0x89:
                   // WriteAlarmLog("rece:0x89");
                    ProcessInventoryReal(msgTran);
                    break;
                default:
                    break;
            }
        }

        private void ProcessInventoryReal(Reader.MessageTran msgTran)
        {
            if (msgTran.AryData.Length > 0)
            {
                Get_EPC = 
                          string.Format("{0:X2}", msgTran.AryData[3], 16) +
                          string.Format("{0:X2}", msgTran.AryData[4], 16) +
                          string.Format("{0:X2}", msgTran.AryData[5], 16) +
                          string.Format("{0:X2}", msgTran.AryData[6], 16) +
                          string.Format("{0:X2}", msgTran.AryData[7], 16) +
                          string.Format("{0:X2}", msgTran.AryData[8], 16) +
                          string.Format("{0:X2}", msgTran.AryData[9], 16) +
                          string.Format("{0:X2}", msgTran.AryData[10], 16) +
                          string.Format("{0:X2}", msgTran.AryData[11], 16) +
                          string.Format("{0:X2}", msgTran.AryData[12], 16) +
                          string.Format("{0:X2}", msgTran.AryData[13], 16) +
                          string.Format("{0:X2}", msgTran.AryData[14], 16);
            }
        }

        private delegate void RunLoopInventoryUnsafe();
        private void RunLoopInventroy()
        {
            if (this.InvokeRequired)
            {
                RunLoopInventoryUnsafe InvokeRunLoopInventory = new RunLoopInventoryUnsafe(RunLoopInventroy);
                this.Invoke(InvokeRunLoopInventory, new object[] { });
            }
            else
            {
                rmReader.InventoryReal(255, 1);
                GC.Collect();
            }
        }
        #endregion

        private void timInventory_Tick(object sender, EventArgs e)
        {
            m_nReceiveFlag++;
            if (m_nReceiveFlag >= 1)
            {
                RunLoopInventroy();
                lblCassette_RFID.Text = Get_EPC;
                if (Get_EPC != "")
                {
                    timInventory.Enabled = false;
                    //儲存到ListOject
                    Save_Data_CassetteList(Get_EPC);
                }

                timInventory.Enabled = true;
                m_nReceiveFlag = 0;
            }
        }

        private void dgvData_Cassette_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvData_Cassette.RowCount > 0)
            {
                dgvData_Cassette.CurrentRow.Selected = true;
                lblCassette_RFID.Text = dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.RFID].Value.ToString();
            }
        }

        private void dgvData_Cassette_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 2 && e.RowIndex >= 0)
            {
                if (dgvData_Cassette.Rows[e.RowIndex].Cells[e.ColumnIndex].Value != null)
                {
                    Data_CassetteList[e.RowIndex].INFO = dgvData_Cassette.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
                }
                else
                {
                    Data_CassetteList[e.RowIndex].INFO = "";
                }
                Data_CassetteList[e.RowIndex].IsModify = true;
            }
        }
    }


    public class Data_Cassette_enum
    {
        public int STT { get { return 0; } }
        public int RFID { get { return 1; } }
        public int INFO { get { return 2; } }
        public int USERID { get { return 3; } }
        public int USERDATE { get { return 4; } }
        public int Check { get { return 5; } }
    }

    //資料庫DataList 結構
    public class Data_Cassette
    {
        public string RFID;
        public string INFO;
        public string USERID;
        public DateTime USERDATE;
        public bool IsDB, IsModify;

        public Data_Cassette()
        {
            this.USERID = "SYSTEM";
            this.USERDATE = System.DateTime.Now;        
        }

        public Data_Cassette(string RFID, string INFO, string USERID, DateTime USERDTAT, bool IsDB, bool IsModify)
        {
            this.INFO = INFO;
            this.USERID = USERID;
            this.USERDATE = USERDTAT;
            this.IsDB = IsDB;
            this.IsModify = IsModify;
        }

    }
}

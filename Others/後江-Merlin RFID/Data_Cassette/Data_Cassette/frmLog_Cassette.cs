using System;
using System.Windows.Forms;
using MES_SampleRoom;
using System.Data.OleDb;
using System.Globalization;
using Reader;
using System.IO;
using System.Net;


namespace Data_Cassette
{
    public partial class frmLog_Cassette : Form
    {
        private Log_Cassette cluLog_Cassette = new Log_Cassette();

        private Data_Cassette_enum dgvData_Cassette_enum = new Data_Cassette_enum();

        private ReaderMethod rmReader = new ReaderMethod();

        private int m_nReceiveFlag = 0;
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
            Get_Type_Status_List();
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

        /*
        private void frmKeyPress(object sender, KeyPressEventArgs e)
        {
            if (sender == txtUserID) if (e.KeyChar == (char)13) txtPassword.Focus();
            if (sender == txtPassword)
                if (e.KeyChar == (char)13)
                {
                    Desptop_Control(false);
                    if (LoginProcedure()) Desptop_Control(true);
                    PriorityProcedure();
                }
        }*/

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

        #region //Select status//
        private void Get_Type_Status_List()
        {
            //Type_Status.Get_Type_Status()
            cbxStatus_Name.Items.Clear();
            OleDbConnection odcConnect = new OleDbConnection(DatabaseClass.ConnectionString);
            string sSQL = "SELECT Status_Name " +
                          " FROM Type_Status WHERE Status_Serial LIKE 'SC%' " +
                          " ORDER BY Status_Serial ASC";
            OleDbCommand odcCommand = new OleDbCommand(sSQL, odcConnect);

            try
            {
                odcConnect.Open();
                OleDbDataReader odrReader = odcCommand.ExecuteReader();
                while (odrReader.Read())
                {
                    cbxStatus_Name.Items.Add(odrReader["Status_Name"].ToString().Trim());
                }
            }
            catch (Exception exMsg)
            {
                if (exMsg != null)
                {
                    DatabaseClass.WriteAlarmLog("Get_Type_Status_List Alarm:" + exMsg.ToString(), "clsDatabase_Alarm.txt");
                    if (odcCommand != null) odcCommand.Dispose();
                    if (odcConnect != null) odcConnect.Dispose();
                }
            }
            finally
            {
                if (odcCommand != null) odcCommand.Dispose();
                if (odcConnect != null) odcConnect.Dispose();
            }
            cbxStatus_Name.SelectedIndex = 0;

        }

        private static string Get_Status_Serial(string Status_Name)
        {
            string sData="";
            OleDbConnection odcConnect = new OleDbConnection(DatabaseClass.ConnectionString);
            string sSQL = "SELECT Status_Serial " +
                          " FROM Type_Status WHERE Status_Name = ?" ;
            OleDbCommand odcCommand = new OleDbCommand(sSQL, odcConnect);
            odcCommand.Parameters.Add("Status_Name", OleDbType.VarChar).Value = Status_Name ;

            try
            {
                odcConnect.Open();
                OleDbDataReader odrReader = odcCommand.ExecuteReader();
                while (odrReader.Read())
                {
                    sData=odrReader["Status_Serial"].ToString().Trim();
                }
            }
            catch (Exception exMsg)
            {
                if (exMsg != null)
                {
                    DatabaseClass.WriteAlarmLog("Get_Status_Serial Alarm:" + exMsg.ToString(), "clsDatabase_Alarm.txt");
                    if (odcCommand != null) odcCommand.Dispose();
                    if (odcConnect != null) odcConnect.Dispose();
                }
            }
            finally
            {
                if (odcCommand != null) odcCommand.Dispose();
                if (odcConnect != null) odcConnect.Dispose();
            }
            return sData;
        }
        #endregion

        #region //Select Cassette all data//
        private void Get_Cassette_All_Data()
        {
            dgvData_Cassette.Rows.Clear();
            int iColumn = 0;
            OleDbConnection odcConnect = new OleDbConnection(DatabaseClass.ConnectionString);
            string sSQL = "SELECT Cassette_Serial, Cassette_ID, Cassette_RFID, Data_Cassette.Status_Serial, Status_Name, Max_Qty, Start_Date, NoUse_Date, Modify_Date, USERID "+
                          "FROM Data_Cassette LEFT JOIN Type_Status ON Type_Status.Status_Serial = Data_Cassette.Status_Serial ";
            OleDbCommand odcCommand = new OleDbCommand(sSQL, odcConnect);
            //odcCommand.Parameters.Add("Cassette_RFID", OleDbType.VarChar).Value = Cassette_RFID;

            try
            {
                odcConnect.Open();
                OleDbDataReader odrReader = odcCommand.ExecuteReader();
                while (odrReader.Read())
                {
                    iColumn = iColumn + 1;
                    dgvData_Cassette.Rows.Add(new object[] {iColumn, odrReader["Cassette_Serial"].ToString()
                                                                , odrReader["Cassette_ID"].ToString()
                                                                , odrReader["Cassette_RFID"].ToString()
                                                                , odrReader["Status_Serial"].ToString()
                                                                , odrReader["Status_Name"].ToString()
                                                                , odrReader["Max_Qty"].ToString()
                                                                , Convert.ToDateTime(odrReader["Start_Date"].ToString()).ToString("yyyy/MM/dd HH:mm:ss")
                                                                , Convert.ToDateTime(odrReader["NoUse_Date"].ToString()).ToString("yyyy/MM/dd HH:mm:ss")
                                                                , Convert.ToDateTime(odrReader["Modify_Date"].ToString()).ToString("yyyy/MM/dd HH:mm:ss")
                                                                //, DateTime.ParseExact(odrReader["Start_Date"].ToString(), "dd/MM/yyyy", CultureInfo.CurrentCulture)
                                                                //, DateTime.ParseExact(odrReader["NoUse_Date"].ToString(), "dd/MM/yyyy", CultureInfo.CurrentCulture)
                                                                //, DateTime.ParseExact(odrReader["Modify_Date"].ToString(), "dd/MM/yyyy", CultureInfo.CurrentCulture)
                                                                , odrReader["USERID"].ToString()
                                                                , "False" });
                    //lblRFID.Text = iColumn.ToString() +"---"+ odrReader["Cassette_RFID"].ToString();
                    //lblRFID.Refresh();
                    //GC.Collect();
                }
            }
            catch (Exception exMsg)
            {
                if (exMsg != null)
                {
                    DatabaseClass.WriteAlarmLog("Get_Cassette_All_Data Alarm:" + exMsg.ToString(), "clsDatabase_Alarm.txt");
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

        private void Get_Cassette_All_Data(string Cassette_RFID)
        {
            dgvData_Cassette.Rows.Clear();
            int iColumn = 0;
            OleDbConnection odcConnect = new OleDbConnection(DatabaseClass.ConnectionString);
            string sSQL = "SELECT Cassette_Serial, Cassette_ID, Cassette_RFID, Data_Cassette.Status_Serial, Status_Name, Max_Qty, Start_Date, NoUse_Date, Modify_Date, USERID " +
                          "FROM Data_Cassette LEFT JOIN Type_Status ON Type_Status.Status_Serial = Data_Cassette.Status_Serial WHERE Cassette_RFID = ?";
            OleDbCommand odcCommand = new OleDbCommand(sSQL, odcConnect);
            odcCommand.Parameters.Add("Cassette_RFID", OleDbType.VarChar).Value = Cassette_RFID;

            try
            {
                odcConnect.Open();
                OleDbDataReader odrReader = odcCommand.ExecuteReader();
                while (odrReader.Read())
                {
                    iColumn = iColumn + 1;
                    dgvData_Cassette.Rows.Add(new object[] {iColumn, odrReader["Cassette_Serial"].ToString()
                                                                , odrReader["Cassette_ID"].ToString()
                                                                , odrReader["Cassette_RFID"].ToString()
                                                                , odrReader["Status_Serial"].ToString()
                                                                , odrReader["Status_Name"].ToString()
                                                                , odrReader["Max_Qty"].ToString()
                                                                , Convert.ToDateTime(odrReader["Start_Date"].ToString()).ToString("yyyy/MM/dd HH:mm:ss")
                                                                , Convert.ToDateTime(odrReader["NoUse_Date"].ToString()).ToString("yyyy/MM/dd HH:mm:ss")
                                                                , Convert.ToDateTime(odrReader["Modify_Date"].ToString()).ToString("yyyy/MM/dd HH:mm:ss")
                                                                //, DateTime.ParseExact(odrReader["Start_Date"].ToString(), "dd/MM/yyyy", CultureInfo.CurrentCulture)
                                                                //, DateTime.ParseExact(odrReader["NoUse_Date"].ToString(), "dd/MM/yyyy", CultureInfo.CurrentCulture)
                                                                //, DateTime.ParseExact(odrReader["Modify_Date"].ToString(), "dd/MM/yyyy", CultureInfo.CurrentCulture)
                                                                , odrReader["USERID"].ToString()
                                                                , "False" });
                    lblRFID.Text = iColumn.ToString() + "---" + odrReader["Cassette_RFID"].ToString();
                    lblRFID.Refresh();
                    //GC.Collect();
                }
            }
            catch (Exception exMsg)
            {
                if (exMsg != null)
                {
                    DatabaseClass.WriteAlarmLog("Get_Cassette_All_Data Alarm:" + exMsg.ToString(), "clsDatabase_Alarm.txt");
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
        private void Save_Cassette_Data()
        {
            if (txtCassette_ID.Text.Trim() != "") cluLog_Cassette.Cassette_ID = txtCassette_ID.Text; else { return; }
            if (lblCassette_RFID.Text.Trim() != "") cluLog_Cassette.Cassette_RFID = lblCassette_RFID.Text; else { return; }
            if (txtMax_Qty.Text.Trim() == "")  return; 

            Log_Cassette lclLog_Cassette = Log_Cassette.Get_Data_Cassette(lblCassette_RFID.Text);
            if (lclLog_Cassette.Cassette_RFID == null)
            {
                cluLog_Cassette.Start_Date = dtpStart_Date.Value;
                cluLog_Cassette.NoUse_Date = dtpNoUse_Date.Value;
                cluLog_Cassette.Max_Qty = Convert.ToDouble(System.Text.RegularExpressions.Regex.Replace(txtMax_Qty.Text, @"[^-.0-9]+", ""));
                txtMax_Qty.Text = cluLog_Cassette.Max_Qty.ToString();
                cluLog_Cassette.USERID = "99999";
                cluLog_Cassette.Status_Serial = Get_Status_Serial(cbxStatus_Name.Text);
                cluLog_Cassette.Program_Log = "btnSave_Click Insert";
                cluLog_Cassette.Cassette_Serial = Log_Cassette.Cassette_Serial_Data();
                Log_Cassette.Save_Data_Cassette(cluLog_Cassette);
                Log_Cassette.Save_Log_Cassette(cluLog_Cassette);
            }
            else
            {
                DialogResult drMsg = MessageBox.Show(this, "Do you want to modify cassette data？", "Information", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (drMsg == DialogResult.Yes)
                {
                    cluLog_Cassette.Cassette_Serial = lclLog_Cassette.Cassette_Serial;
                    cluLog_Cassette.Start_Date = lclLog_Cassette.Start_Date;
                    cluLog_Cassette.NoUse_Date = dtpNoUse_Date.Value;
                    cluLog_Cassette.Max_Qty = Convert.ToDouble(System.Text.RegularExpressions.Regex.Replace(txtMax_Qty.Text, @"[^-.0-9]+", ""));
                    txtMax_Qty.Text = cluLog_Cassette.Max_Qty.ToString();
                    cluLog_Cassette.USERID = "99999";
                    cluLog_Cassette.Status_Serial = Get_Status_Serial(cbxStatus_Name.Text);
                    cluLog_Cassette.Program_Log = "btnSave_Click Update";
                    Log_Cassette.Update_Data_Cassette(cluLog_Cassette);
                    Log_Cassette.Save_Log_Cassette(cluLog_Cassette);
                }
            }
            Get_Cassette_All_Data();
        }
        #endregion
        private void btnSearch_Click(object sender, EventArgs e)
        {
            All_Control(false);
            Get_Cassette_All_Data();
            All_Control(true);
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            All_Control(false);
            Save_Cassette_Data();
            All_Control(true);
        }
        public void Function_Clean()
        {
            txtCassette_ID.Text = "";
            lblCassette_RFID.Text = "";
            cbxStatus_Name.SelectedIndex = 0;
            txtMax_Qty.Text = "";
            dtpStart_Date.ResetText();
            dtpNoUse_Date.Value = DateTime.ParseExact("31/12/2099", "dd/MM/yyyy", CultureInfo.InvariantCulture);
        }

        private void btnClean_Click(object sender, EventArgs e)
        {
            Function_Clean();
        }

        private void dgvData_Cassette_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvData_Cassette.RowCount > 0)
            {
                dgvData_Cassette.CurrentRow.Selected = true;
                cluLog_Cassette.Cassette_Serial = dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.Cassette_Serial].Value.ToString();
                txtCassette_ID.Text = dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.Cassette_ID].Value.ToString();
                lblCassette_RFID.Text = dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.Cassette_RFID].Value.ToString();
                cbxStatus_Name.Text = dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.Status_Name].Value.ToString();
                txtMax_Qty.Text = dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.Max_Qty].Value.ToString();
                dtpStart_Date.Value = Convert.ToDateTime(dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.Start_Date].Value.ToString());
                dtpNoUse_Date.Value = Convert.ToDateTime(dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.NoUse_Date].Value.ToString());
                //dtpStart_Date.Value = DateTime.ParseExact(dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.Start_Date].Value.ToString(), "dd/MM/yyyy", CultureInfo.CurrentCulture);
                //dtpNoUse_Date.Value = DateTime.ParseExact(dgvData_Cassette.CurrentRow.Cells[dgvData_Cassette_enum.NoUse_Date].Value.ToString(), "dd/MM/yyyy", CultureInfo.CurrentCulture);
            }
        }
        private void txtCassette_ID_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
                //lblCassette_RFID.Focus();
                txtMax_Qty.Focus();
            }
        }
        private void tlblCassette_RFID_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
                cbxStatus_Name.Focus();
            }
        }
        private void cbxStatus_Serial_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
                txtMax_Qty.Focus();
            }
        }
        private void txtMax_Qty_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
                //dtpStart_Date.Focus();
                All_Control(false);
                Save_Cassette_Data();
                All_Control(true);
                txtCassette_ID.Focus();
            }
        }
        private void dtpStart_Date_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData == Keys.Enter)
            {
                dtpNoUse_Date.Focus();
            }
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
            dgvData_Cassette.Columns[dgvData_Cassette_enum.Cassette_ID].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.Cassette_RFID].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.Status_Name].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.Max_Qty].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.Start_Date].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.NoUse_Date].AutoSizeMode = DataGridViewAutoSizeColumnMode.DisplayedCells;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.Modify_Date].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            dgvData_Cassette.Columns[dgvData_Cassette_enum.Check].Width = 50;
            dgvData_Cassette.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
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
                    ProcessInventoryReal(msgTran);
                    break;
                default:
                    break;
            }
        }

        private void ProcessInventoryReal(Reader.MessageTran msgTran)
        {
            if (msgTran.AryData.Length > 7)
            {
                Get_EPC = string.Format("{0:X2}", msgTran.AryData[3], 16) +
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
                //lblRFID.Text = Get_EPC;
                lblCassette_RFID.Text = Get_EPC;
                if (Get_EPC != "")
                {
                    timInventory.Enabled = false;
                    cluLog_Cassette = Log_Cassette.Get_Data_Cassette(Get_EPC);
                    
                    if (cluLog_Cassette.Cassette_Serial == null)
                    {

                        cluLog_Cassette.Cassette_Serial = Log_Cassette.Cassette_Serial_Data();
                        //cluLog_Cassette.Cassette_ID = Log_Cassette_Add.Get_Cassette_Serial_ID();
                        cluLog_Cassette.Cassette_ID = Convert.ToInt32(System.Text.RegularExpressions.Regex.Replace(cluLog_Cassette.Cassette_Serial, @"[^-.0-9]+", "")).ToString();
                        cluLog_Cassette.Cassette_RFID = Get_EPC;
                        cluLog_Cassette.Max_Qty = 1;
                        cluLog_Cassette.Start_Date = dtpStart_Date.Value;
                        cluLog_Cassette.NoUse_Date = dtpNoUse_Date.Value;
                        txtMax_Qty.Text = cluLog_Cassette.Max_Qty.ToString();
                        cluLog_Cassette.USERID = "99999";
                        cluLog_Cassette.Status_Serial = Get_Status_Serial(cbxStatus_Name.Text);
                        cluLog_Cassette.Program_Log = "timInventory_Tick Insert";
                        Log_Cassette.Save_Data_Cassette(cluLog_Cassette);
                        Log_Cassette.Save_Log_Cassette(cluLog_Cassette);
                        Get_Cassette_All_Data(Get_EPC);
                        //GC.Collect();
                    }
                    Get_Cassette_All_Data(Get_EPC);
                }
                else
                    Get_Cassette_All_Data(lblRFID.Text);
                timInventory.Enabled = true;
                m_nReceiveFlag = 0;
            }
        }
    }

    public class Log_Cassette_Add : Log_Cassette
    {
        public static string Get_Cassette_Serial_ID()
        {
            string sData = "";
            int iCount = 0;
            OleDbConnection odcConnect = new OleDbConnection(DatabaseClass.ConnectionString);
            string sSQL = "SELECT MAX(Cassette_ID) AS Cassette_ID FROM Data_Cassette WHERE Cassette_ID LIKE ?";
            OleDbCommand odcCommand = new OleDbCommand(sSQL, odcConnect);
            odcCommand.Parameters.Add("Cassette_ID", OleDbType.VarChar).Value = "%";
            try
            {
                odcConnect.Open();
                sData = odcCommand.ExecuteScalar().ToString();
            }
            catch (Exception exMsg)
            {
                if (exMsg != null)
                {
                    DatabaseClass.WriteAlarmLog("Get_Cassette_Serial_ID Alarm:" + exMsg.ToString(), "clsDatabase_Alarm.txt");
                    if (odcCommand != null) odcCommand.Dispose();
                    if (odcConnect != null) odcConnect.Dispose();
                }
            }
            finally
            {
                if (odcCommand != null) odcCommand.Dispose();
                if (odcConnect != null) odcConnect.Dispose();
            }

            if (sData.Trim().Length == 0)
                sData = "0001";
            else
            {
                iCount = Convert.ToInt32(sData) + 1;
                sData = string.Format("{0:0000}", iCount);
            }
            return sData;
        }
    }
    public class Data_Cassette_enum
    {
        public int STT { get { return 0; } }
        public int Cassette_Serial { get { return 1; } }
        public int Cassette_ID { get { return 2; } }
        public int Cassette_RFID { get { return 3; } }
        public int Status_Serial { get { return 4; } }
        public int Status_Name { get { return 5; } }
        public int Max_Qty { get { return 6; } }
        public int Start_Date { get { return 7; } }
        public int NoUse_Date { get { return 8; } }
        public int Modify_Date { get { return 9; } }
        public int USERID { get { return 10; } }
        public int Check { get { return 11; } }
    }
}

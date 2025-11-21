using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Net;
using System.Threading;
using System.Data.SqlClient;
using System.Threading.Tasks;
using System.IO;
using Microsoft.Office.Interop.Excel;
using CustomControl;

namespace UHF
{
    public partial class R2000UartDemo : Form
    {
        private Reader.ReaderMethod reader;
        private ReaderSetting m_curSetting = new ReaderSetting();
        private InventoryBuffer m_curInventoryBuffer = new InventoryBuffer();

        //盘存操作前，需要先设置工作天线，用于标识当前是否在执行盘存操作
        private bool m_bInventory = false;
        //实时盘存锁定操作
        private bool m_bLockTab = false;
        //是否显示串口监控数据
        private bool m_bDisplayLog = false;
        //实时盘存次数
        private int m_nTotal = 0;
        //列表更新频率
        private int m_nRealRate = 20;
        private int m_nReceiveFlag = 0;
        private ListView lvtempe;
        private string str = "server=192.168.23.9;database= LIY_TYXUAN;uid=tyxuan;pwd=Itkhua@!admin";

        public R2000UartDemo()
        {
            InitializeComponent();
        }
        private void FrmMain_Load(object sender, EventArgs e)
        {
            try
            {
                string ip = "", name = "", user = "", pass = "";

                IniFile ini = new IniFile(System.Windows.Forms.Application.StartupPath.Substring(0, 3) + "ERP\\ComName.ini");

                ip = ini.IniReadValue("ERPServer", "IP");
                name = ini.IniReadValue("ERPServer", "Database");
                user = ini.IniReadValue("ERPServer", "User");
                pass = ini.IniReadValue("ERPServer", "Pass");

                String sline_LT = "";
                int ad_LT = 0;
                ad_LT = int.Parse(pass.Substring(0, 1));
                for (int i = 1; i < pass.Length; i++)
                {
                    char[] tempstr_LT = pass.Substring(i, 1).ToCharArray();
                    int ASCII_int = Convert.ToInt32(tempstr_LT[0]) - ad_LT;
                    sline_LT = sline_LT + Convert.ToString((char)ASCII_int);
                }
                pass = sline_LT;

                str = "Data Source=" + ip + ";Initial Catalog=LIY_TYXUAN;Uid=" + user + ";Pwd=" + pass;
            }
            catch (System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            //初始化访问读写器实例
            reader = new Reader.ReaderMethod();
            SetFormEnable(false);
            gbRS232.Enabled = true;
            btnDisconnectRs232.Enabled = false;
            //设置按钮字体颜色
            btnConnectRs232.ForeColor = Color.Indigo;
            SetButtonBold(btnConnectRs232);
            //回调函数
            reader.AnalyCallback = AnalyData;
            reader.ReceiveCallback = ReceiveData;
            reader.SendCallback = SendData;
            //初始化连接读写器默认配置
            cmbComPort.SelectedIndex = 0;
            cmbBaudrate.SelectedIndex = 1;
            AutoComplete("ARTICLE", textBox5);
            AutoComplete("TESTNO", textBox12);
            lvtempe = new ListView();
            foreach (ColumnHeader column in lvshoes.Columns)
            {
                if (column.Text.Equals(""))
                {
                    lvtempe.Columns.Add("Number");
                }else
                lvtempe.Columns.Add(column.Text);
            }
            lvtempe.Columns.Add("EXPORTUSER");
            lvtempe.Columns.Add("EXPORTDATE");
        }
        private void ExportToExcel(ListView lv)
        {
            try
            {
                using (SaveFileDialog sfd = new SaveFileDialog() { Filter = "Excel Workbook|*.xlsx", ValidateNames = true })
                {
                    if (sfd.ShowDialog() == DialogResult.OK)
                    {
                        Microsoft.Office.Interop.Excel.Application app = new Microsoft.Office.Interop.Excel.Application();
                        app.Visible = false;
                        app.DisplayAlerts = false;
                        Workbook wb = app.Workbooks.Add(Type.Missing);
                        Worksheet ws = (Worksheet)wb.Sheets["Sheet1"];

                        for (int j = 1; j <= lv.Columns.Count; j++)
                        {
                            ws.Cells[1, j] = lv.Columns[j - 1].Text;
                        }
                        int i = 2;
                        foreach (ListViewItem item in lv.Items)
                        {
                            for (int k = 1; k <= item.SubItems.Count; k++)
                            {
                                ws.Cells[i, k] = item.SubItems[k - 1].Text;
                            }
                            i++;
                        }
                        wb.SaveAs(sfd.FileName);
                        wb.Close();
                        app.Quit();
                        MessageBox.Show("Exported Successfully.");
                    }
                    else
                    {
                        lrtxtLog.Clear();
                        lrtxtLog.AppendText("Cancel Exported Completed !");
                    }
                }
            }
            catch (Exception ex)
            {
                lrtxtLog.Clear();
                lrtxtLog.AppendText("Exported Error !" + ex.Message);
                MessageBox.Show("Exported Error !", "Error",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void AnalyData(Reader.MessageTran msgTran)
        {
            m_nReceiveFlag = 0;
            if (msgTran.PacketType != 0xA0)
            {
                return;
            }
            switch (msgTran.Cmd)
            {
                case 0x74:
                    ProcessSetWorkAntenna(msgTran);
                    break;
                case 0x75:
                    ProcessGetWorkAntenna(msgTran);
                    break;
                case 0x7A:
                    ProcessSetBeeperMode(msgTran);
                    break;
                case 0x80:
                    ProcessInventory(msgTran);
                    break;
                case 0x89:
                case 0x8B:
                    ProcessInventoryReal(msgTran);
                    break;
                default:
                    break;
            }
        }
        private void ReceiveData(byte[] btAryReceiveData)
        {
            if (m_bDisplayLog)
            {
                string strLog = CCommondMethod.ByteArrayToString(btAryReceiveData, 0, btAryReceiveData.Length);
                WriteLog(lrtxtLog, strLog, 1);
            }
        }
        private void SendData(byte[] btArySendData)
        {
            if (m_bDisplayLog)
            {
                string strLog = CCommondMethod.ByteArrayToString(btArySendData, 0, btArySendData.Length);
                WriteLog(lrtxtLog, strLog, 0);
            }
        }
        private void SetButtonBold(System.Windows.Forms.Button btnBold)
        {
            System.Drawing.Font oldFont = btnBold.Font;
            System.Drawing.Font newFont = new System.Drawing.Font(oldFont, oldFont.Style ^ FontStyle.Bold);
            btnBold.Font = newFont;
        }
        private void SetFormEnable(bool bIsEnable)
        {
            gbCmdBeeper.Enabled = bIsEnable;
            btnResetReader.Enabled = bIsEnable;
        }
        private delegate void WriteLogUnSafe(RichTextBox logRichTxt, string strLog, int nType);
        private void WriteLog(RichTextBox logRichTxt, string strLog, int nType)
        {
            if (this.InvokeRequired)
            {
                WriteLogUnSafe InvokeWriteLog = new WriteLogUnSafe(WriteLog);
                this.Invoke(InvokeWriteLog, new object[] { logRichTxt, strLog, nType });
            }
            else
            {
                if (nType == 0)
                {
                    AppendTextEx(strLog,Color.Indigo);
                }
                else
                {
                    AppendTextEx(strLog, Color.Red);
                }
                if (ckClearOperationRec.Checked)
                {
                    if (logRichTxt.Lines.Length > 50)
                    {
                        logRichTxt.Clear();
                    }
                }
                logRichTxt.Select(logRichTxt.TextLength, 0);
                logRichTxt.ScrollToCaret();
            }
        }
        public void AppendTextEx(string strText, Color clAppend)
        {
            int nLen = lrtxtLog.TextLength;

            if (nLen != 0)
            {
                lrtxtLog.AppendText(Environment.NewLine + System.DateTime.Now.ToString() + ": " + strText);
            }
            else
            {
                lrtxtLog.AppendText(System.DateTime.Now.ToString() + ": " + strText);
            }
            lrtxtLog.Select(nLen, lrtxtLog.TextLength - nLen);
            lrtxtLog.SelectionColor = clAppend;
        }
        private void tabCtrMain_Click(object sender, EventArgs e)
        {
            if ((m_curSetting.btRegion < 1) || (m_curSetting.btRegion > 4)) //如果是自定义的频谱则需要先提取自定义频率信息
            {
                reader.GetFrequencyRegion(m_curSetting.btReadId);
                Thread.Sleep(5);
            }
        }
        private void tabCtrMain_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tabCtrMain.SelectedIndex == 1 && btnConnectRs232.Enabled == true)
            {
                tabCtrMain.SelectedIndex = 0;
                MessageBox.Show("Please Connect RFID Reader First !");
                return;
            }
            if (tabCtrMain.SelectedIndex == 2 && btnConnectRs232.Enabled == true)
            {
                tabCtrMain.SelectedIndex = 0;
                MessageBox.Show("Please Connect RFID Reader First !");
                return;
            }
            if (tabCtrMain.SelectedIndex == 2 && button2.Text == "Login")
            {
                tabCtrMain.SelectedIndex = 1;
                MessageBox.Show("Please Login First !");
                return;
            }
        }
        private void btnConnectRs232_Click(object sender, EventArgs e)
        {
            //处理串口连接读写器
            string strException = string.Empty;
            string strComPort = cmbComPort.Text;
            int nBaudrate = Convert.ToInt32(cmbBaudrate.Text);

            int nRet = reader.OpenCom(strComPort, nBaudrate, out strException);
            if (nRet != 0)
            {
                string strLog = "Connect Failed，Error Code： " + strException;
                WriteLog(lrtxtLog, strLog, 1);
                return;
            }
            else
            {
                string strLog = "Connect " + strComPort + "@" + nBaudrate.ToString();
                WriteLog(lrtxtLog, strLog, 0);
            }
            //处理界面元素是否有效
            SetFormEnable(true);

            btnConnectRs232.Enabled = false;
            btnDisconnectRs232.Enabled = true;
            //设置按钮字体颜色
            btnConnectRs232.ForeColor = Color.Black;
            btnDisconnectRs232.ForeColor = Color.Indigo;
            SetButtonBold(btnConnectRs232);
            SetButtonBold(btnDisconnectRs232);
        }
        private void btnDisconnectRs232_Click(object sender, EventArgs e)
        {
            //处理串口断开连接读写器
            reader.CloseCom();
            //处理界面元素是否有效
            SetFormEnable(false);
            btnConnectRs232.Enabled = true;
            btnDisconnectRs232.Enabled = false;
            //设置按钮字体颜色
            btnConnectRs232.ForeColor = Color.Indigo;
            btnDisconnectRs232.ForeColor = Color.Black;
            SetButtonBold(btnConnectRs232);
            SetButtonBold(btnDisconnectRs232);
        }
        private void btnResetReader_Click(object sender, EventArgs e)
        {
            int nRet = reader.Reset(m_curSetting.btReadId);
            if (nRet != 0)
            {
                string strLog = "Failed to reset the reader";
                WriteLog(lrtxtLog, strLog, 1);
            }
            else
            {
                string strLog = "Reset the reader";
                WriteLog(lrtxtLog, strLog, 0);
            }
        }
        private void btnSetBeeperMode_Click(object sender, EventArgs e)
        {
            byte btBeeperMode = 0xFF;

            if (rdbBeeperModeSlient.Checked)
            {
                btBeeperMode = 0x00;
            }
            else if (rdbBeeperModeInventory.Checked)
            {
                btBeeperMode = 0x01;
            }
            else
            {
                return;
            }
            reader.SetBeeperMode(m_curSetting.btReadId, btBeeperMode);
            m_curSetting.btBeeperMode = btBeeperMode;
        }
        private void btRealTimeInventory_Click(object sender, EventArgs e)
        {
            try
            {
                m_curInventoryBuffer.ClearInventoryPar();
                if (button2.Text == "Login")
                {
                    MessageBox.Show("Please Login First !");
                    return;
                }
                if (btRealTimeInventory.Text == "Start Read" && textBox1.Text != "")
                {
                    SqlConnection conn;

                    conn = new SqlConnection(str);
                    conn.Open();
                    string sql = "select COUNT(*) from LIY_ERP.dbo.ShoeTest ShoeTest where Testno='" + textBox1.Text + "'";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    int r = Convert.ToInt32(cmd.ExecuteScalar());
                    if (r == 0)
                    {
                        MessageBox.Show("TestNo is not in Data !");
                        conn.Close();
                        return;
                    }
                    conn.Close();
                }
                m_curInventoryBuffer.btRepeat = Convert.ToByte("1");
                m_curInventoryBuffer.bLoopCustomizedSession = false;
                m_curInventoryBuffer.lAntenna.Add(0x00);
                //默认循环发送命令
                if (m_curInventoryBuffer.bLoopInventory)
                {
                    m_bInventory = false;
                    m_curInventoryBuffer.bLoopInventory = false;
                    btRealTimeInventory.BackColor = Color.WhiteSmoke;
                    btRealTimeInventory.ForeColor = Color.DarkBlue;
                    btRealTimeInventory.Text = "Start Read";
                    textBox1.Enabled = true;
                    timerInventory.Enabled = false;
                    return;
                }
                else
                {
                    m_bInventory = true;
                    m_curInventoryBuffer.bLoopInventory = true;
                    btRealTimeInventory.BackColor = Color.DarkBlue;
                    btRealTimeInventory.ForeColor = Color.White;
                    btRealTimeInventory.Text = "Stop Read";
                    textBox1.Enabled = false;
                }

                m_curInventoryBuffer.bLoopInventoryReal = true;

                m_curInventoryBuffer.ClearInventoryRealResult();
                lvRealList.Items.Clear();
                lvRealList.Items.Clear();
                m_nTotal = 0;

                byte btWorkAntenna = m_curInventoryBuffer.lAntenna[m_curInventoryBuffer.nIndexAntenna];
                reader.SetWorkAntenna(m_curSetting.btReadId, btWorkAntenna);
                m_curSetting.btWorkAntenna = btWorkAntenna;

                timerInventory.Enabled = true;

            }
            catch (System.Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void button2_Click(object sender, EventArgs e)
        {
            if (btRealTimeInventory.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }
            if (button2.Text == "Logout")
            {
                DialogResult result;
                result = MessageBox.Show("Do you want to Logout ?", "Ask", MessageBoxButtons.YesNo);
                if (result == DialogResult.Yes)
                {
                    textBox2.Enabled = true;
                    textBox3.Enabled = true;
                    textBox2.Text = "";
                    textBox3.Text = "";
                    button2.Text = "Login";
                    label21.Text = "";

                    btRealFresh_Click(sender, e);
                    return;

                }
            }
            if (textBox2.Text == "")
            {
                MessageBox.Show("Please Keyin USERID !");
                return;
            }
            if (textBox3.Text == "")
            {
                MessageBox.Show("Please Keyin Password !");
                return;
            }

            if (btRealTimeInventory.Text == "Start Read")
            {
                SqlConnection conn = new SqlConnection(str);
                conn.Open();

                string sql = "select USERNAME from LIY_ERP.dbo.BUSERS where USERID='" + textBox2.Text + "' and PWD = '" + textBox3.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader dataReader = cmd.ExecuteReader();

                string USERNAME = "";
                while ((dataReader.Read()))
                {
                    USERNAME = dataReader[0].ToString();
                }
                if (USERNAME == "")
                {
                    dataReader.Close();
                    sql = "select USERID from LIY_ERP.dbo.BUSERS where USERID='" + textBox2.Text + "'";
                    cmd = new SqlCommand(sql, conn);
                    dataReader = cmd.ExecuteReader();

                    string USERID = "";
                    while ((dataReader.Read()))
                    {
                        USERID = dataReader[0].ToString();
                    }
                    if (USERID == "")
                    {
                        dataReader.Close();
                        MessageBox.Show("Wrong USERID !");
                        conn.Close();
                        return;
                    }
                    MessageBox.Show("Wrong PASSWORD !");
                    conn.Close();
                    return;
                }
                else
                {
                    button2.Text = "Logout";
                    textBox2.Enabled = false;
                    textBox3.Enabled = false;
                    label21.Text = USERNAME;
                    textBox8.Text = textBox2.Text;
                    textBox7.Text = textBox3.Text;
                    label100.Text = label21.Text;
                    conn.Close();
                }
            }
            else
            {
                MessageBox.Show("Please Stop Read first!");
                return;
            }
        }
        private void button6_Click(object sender, EventArgs e)
        {
            if (lvRealList.Items.Count == 0)
            {
                MessageBox.Show("Please Read RFID First !");
                return;
            }
            if (btRealTimeInventory.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }

            if (button2.Text == "Login")
            {
                MessageBox.Show("Please Login First !");
                return;
            }

            btRealTimeInventory.Enabled = false;
            button2.Enabled = false;
            lrtxtLog.Clear();
            if (btRealTimeInventory.Text == "Start Read")
            {
                SqlConnection conn;
                string sql, sql1;
                SqlCommand cmd;
                conn = new SqlConnection(str);
                conn.Open();
                for (int i = 0; i <= lvRealList.Items.Count - 1; i++)
                {
                    conn.Close();
                    conn.Open();
                    sql = "select top 1 DEPARTMENT,IO from RFID_TRACK where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + 
                          "' order by USERDATE DESC";
                    cmd = new SqlCommand(sql, conn);
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    string DEPARTMENT = "";
                    string IO = "";
                    while ((dataReader.Read()))
                    {
                        DEPARTMENT = dataReader[0].ToString();
                        IO = dataReader[1].ToString();
                    }
                    dataReader.Close();

                    if (DEPARTMENT == "" | IO == "")
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else if (DEPARTMENT != "DC QC" && IO == "RECEIVE")
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else if (IO == "MOVE OUT")
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else
                    {
                        sql = "select TESTNO,ARTICLE from RFID_TB where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "'";
                        cmd = new SqlCommand(sql, conn);
                        SqlDataReader dataReader1 = cmd.ExecuteReader();
                        textBox1.Text = "";
                        label34.Text = "";
                        while ((dataReader1.Read()))
                        {
                            textBox1.Text = dataReader1[0].ToString();
                            label34.Text = dataReader1[1].ToString();
                        }
                        if (textBox1.Text == "")
                        {
                            lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                        }
                        else
                        {
                            dataReader1.Close();
                            conn.Close();
                            conn.Open();
                            sql = "Insert into RFID_TRACK (TESTNO,RFIDNO,USERID,USERDATE,IO,DEPARTMENT,ARTICLE,WorkID,MEMO) " +
                                  "Values('" + textBox1.Text + "', '" + lvRealList.Items[i].SubItems[2].Text + "', '" 
                                             + lvRealList.Items[i].SubItems[4].Text + "', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") 
                                             + "', 'MOVE OUT', 'DC QC', '" + label34.Text + "', '" + textBox4.Text + "', '" + richTextBox1.Text + "')";

                            sql1 = "Update RFID_TB set WHNO = null, SNO = null " +
                                   "where TESTNO = '" + textBox1.Text + "' AND RFIDNO = '" + lvRealList.Items[i].SubItems[2].Text + "'";
                            try
                            {
                                cmd = new SqlCommand(sql, conn);
                                cmd.ExecuteNonQuery();

                                cmd = new SqlCommand(sql1, conn);
                                cmd.ExecuteNonQuery();
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message);
                            }
                        }
                    }
                }
                conn.Close();
            }
            if (lrtxtLog.Text != "")
            {
                lrtxtLog.AppendText("Please Check the above RFIDNO ，cant Move Out !");
            }
            else
            {
                lrtxtLog.AppendText("Move Out Completed !");
            }
            btRealTimeInventory.Enabled = true;
            button2.Enabled = true;
        }
        private void button7_Click(object sender, EventArgs e)
        {
            if (lvRealList.Items.Count == 0)
            {
                MessageBox.Show("Please Read RFID First !");
                return;
            }
            if (btRealTimeInventory.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }

            if (button2.Text == "Login")
            {
                MessageBox.Show("Please Login First !");
                return;
            }

            btRealTimeInventory.Enabled = false;
            button2.Enabled = false;
            lrtxtLog.Clear();
            if (btRealTimeInventory.Text == "Start Read")
            {
                SqlConnection conn;
                string sql, sql1;
                SqlCommand cmd;
                conn = new SqlConnection(str);
                conn.Open();
                for (int i = 0; i <= lvRealList.Items.Count - 1; i++)
                {
                    conn.Close();
                    conn.Open();
                    sql = "select top 1 DEPARTMENT,IO,MEMO from RFID_TRACK where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + 
                          "' order by USERDATE DESC";
                    cmd = new SqlCommand(sql, conn);
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    string DEPARTMENT = "";
                    string IO = "";
                    string MEMO = "";
                    while ((dataReader.Read()))
                    {
                        DEPARTMENT = dataReader[0].ToString();
                        IO = dataReader[1].ToString();
                        MEMO = dataReader[2].ToString();
                    }
                    dataReader.Close();
                    /*
                                        if (DEPARTMENT == "DC QC" && IO == "RECEIVE")
                                        {
                                            lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                                        }
                                        else if (DEPARTMENT == "" | IO == "")
                    */
                    if (DEPARTMENT == "" | IO == "" | MEMO == "KEEP" | DEPARTMENT == "DC_REF")
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else if (IO == "RECEIVE")
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else
                    {
                        sql = "select TESTNO,ARTICLE from RFID_TB where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "'";
                        cmd = new SqlCommand(sql, conn);
                        SqlDataReader dataReader1 = cmd.ExecuteReader();
                        textBox1.Text = "";
                        label34.Text = "";
                        while ((dataReader1.Read()))
                        {
                            textBox1.Text = dataReader1[0].ToString();
                            label34.Text = dataReader1[1].ToString();
                        }
                        if (textBox1.Text == "")
                        {
                            lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                        }
                        else
                        {
                            dataReader1.Close();
                            conn.Close();
                            conn.Open();
                            sql = "Insert into RFID_TRACK (TESTNO,RFIDNO,USERID,USERDATE,IO,DEPARTMENT,ARTICLE) " +
                                  "Values ('" + textBox1.Text + "', '" + lvRealList.Items[i].SubItems[2].Text + "', '" 
                                              + lvRealList.Items[i].SubItems[4].Text +"', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                                              + "', 'RECEIVE', 'DC QC', '" + label34.Text + "')";

                            sql1 = "Update RFID_TB set WHNO = 'QC_TEST', SNO = 'QC_TEST' " +
                                   "where TESTNO = '" + textBox1.Text + "' AND RFIDNO = '" + lvRealList.Items[i].SubItems[2].Text + "'";
                            try
                            {
                                cmd = new SqlCommand(sql, conn);
                                cmd.ExecuteNonQuery();

                                cmd = new SqlCommand(sql1, conn);
                                cmd.ExecuteNonQuery();
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message);
                            }
                        }
                    }
                }
                conn.Close();
            }
            if (lrtxtLog.Text != "")
            {
                lrtxtLog.AppendText("Please Check the above RFIDNO ，cant Receive !");
            }
            else
            {
                lrtxtLog.AppendText("Receive Completed !");
            }
            btRealTimeInventory.Enabled = true;
            button2.Enabled = true;
        }
        private void btRealFresh_Click(object sender, EventArgs e)
        {
            lvRealList.Items.Clear();
            lvRealList.Items.Clear();
            ledReal1.Text = "0";
            lbRealTagCount.Text = "List of tags：";
        }
        private void lrtxtLog_DoubleClick(object sender, EventArgs e)
        {
            lrtxtLog.Text = "";
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
                //校验盘存是否所有天线均完成
                if (m_curInventoryBuffer.nIndexAntenna < m_curInventoryBuffer.lAntenna.Count - 1 || m_curInventoryBuffer.nCommond == 0)
                {
                    if (m_curInventoryBuffer.nCommond == 0)
                    {
                        m_curInventoryBuffer.nCommond = 1;

                        if (m_curInventoryBuffer.bLoopInventoryReal)
                        {
                            if (m_curInventoryBuffer.bLoopCustomizedSession)//自定义Session和Inventoried Flag 
                            {
                                reader.CustomizedInventory(m_curSetting.btReadId, m_curInventoryBuffer.btSession, m_curInventoryBuffer.btTarget, m_curInventoryBuffer.btRepeat);
                            }
                            else //实时盘存
                            {
                                reader.InventoryReal(m_curSetting.btReadId, m_curInventoryBuffer.btRepeat);
                            }
                        }
                        else
                        {
                            if (m_curInventoryBuffer.bLoopInventory)
                                reader.Inventory(m_curSetting.btReadId, m_curInventoryBuffer.btRepeat);
                        }
                    }
                    else
                    {
                        m_curInventoryBuffer.nCommond = 0;
                        m_curInventoryBuffer.nIndexAntenna++;

                        byte btWorkAntenna = m_curInventoryBuffer.lAntenna[m_curInventoryBuffer.nIndexAntenna];
                        reader.SetWorkAntenna(m_curSetting.btReadId, btWorkAntenna);
                        m_curSetting.btWorkAntenna = btWorkAntenna;
                    }
                }
                //校验是否循环盘存
                else if (m_curInventoryBuffer.bLoopInventory)
                {
                    m_curInventoryBuffer.nIndexAntenna = 0;
                    m_curInventoryBuffer.nCommond = 0;

                    byte btWorkAntenna = m_curInventoryBuffer.lAntenna[m_curInventoryBuffer.nIndexAntenna];
                    reader.SetWorkAntenna(m_curSetting.btReadId, btWorkAntenna);
                    m_curSetting.btWorkAntenna = btWorkAntenna;
                }
            }
        }
        private delegate void RefreshInventoryRealUnsafe(byte btCmd);
        private void RefreshInventoryReal(byte btCmd)
        {
            if (this.InvokeRequired)
            {
                RefreshInventoryRealUnsafe InvokeRefresh = new RefreshInventoryRealUnsafe(RefreshInventoryReal);
                this.Invoke(InvokeRefresh, new object[] { btCmd });
            }
            else
            {
                switch (btCmd)
                {
                    case 0x89:
                    case 0x8B:
                        {
                            int nTagCount = m_curInventoryBuffer.dtTagTable.Rows.Count;
                            int nTotalRead = m_nTotal;
                            TimeSpan ts = m_curInventoryBuffer.dtEndInventory - m_curInventoryBuffer.dtStartInventory;
                            int nTotalTime = ts.Minutes * 60 * 1000 + ts.Seconds * 1000 + ts.Milliseconds;
                            int nCaculatedReadRate = 0;
                            int nCommandDuation = 0;

                            if (m_curInventoryBuffer.nReadRate == 0) //读写器没有返回速度前软件测速度
                            {
                                if (nTotalTime > 0)
                                {
                                    nCaculatedReadRate = (nTotalRead * 1000 / nTotalTime);
                                }
                            }
                            else
                            {
                                nCommandDuation = m_curInventoryBuffer.nDataCount * 1000 / m_curInventoryBuffer.nReadRate;
                                nCaculatedReadRate = m_curInventoryBuffer.nReadRate;
                            }
                            //列表用变量
                            int nEpcCount = 0;
                            int nEpcLength = m_curInventoryBuffer.dtTagTable.Rows.Count;

                            ledReal1.Text = nTagCount.ToString();
                            lbRealTagCount.Text = "List of label EPC numbers (not repeated)： " + nTagCount.ToString() + "个";

                            nEpcCount = lvRealList.Items.Count;

                            if (nEpcCount < nEpcLength)
                            {
                                DataRow row = m_curInventoryBuffer.dtTagTable.Rows[nEpcLength - 1];

                                SqlConnection conn;
                                String r1 = "";
                                conn = new SqlConnection(str);
                                conn.Open();
                                string sql = "select Testno from RFID_TB where RFIDNO='" + row[2].ToString() + "'";
                                SqlCommand cmd = new SqlCommand(sql, conn);
                                r1 = Convert.ToString(cmd.ExecuteScalar());

                                ListViewItem item = new ListViewItem();
                                item.Text = (nEpcCount + 1).ToString();
                                if (r1 == "")
                                {
                                    item.SubItems.Add(textBox1.Text);
                                }
                                else
                                {
                                    item.SubItems.Add(r1);
                                    textBox1.Text = r1;
                                }
                                conn.Close();
                                item.SubItems.Add(row[2].ToString());
                                item.SubItems.Add(row[0].ToString());
                                item.SubItems.Add(textBox2.Text);
                                item.SubItems.Add(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                                lvRealList.Items.Add(item);
                                lvRealList.Items[nEpcCount].EnsureVisible();
                            }
                            //更新列表中读取的次数
                            if (m_nTotal % m_nRealRate == 1)
                            {
                                int nIndex = 0;
                                foreach (DataRow row in m_curInventoryBuffer.dtTagTable.Rows)
                                {
                                    ListViewItem item;
                                    item = lvRealList.Items[nIndex];
                                    item.SubItems[3].Text = row[5].ToString();
                                    item.SubItems[4].Text = textBox2.Text;
                                    item.SubItems[5].Text = DateTime.Now.ToShortDateString();
                                    nIndex++;
                                }
                            }
                        }
                        break;
                    case 0x00:
                    case 0x01:
                        {
                            m_bLockTab = false;
                        }
                        break;
                    default:
                        break;
                }
            }
        }
        private void ProcessInventoryReal(Reader.MessageTran msgTran)
        {
            string strCmd = "";
            if (msgTran.Cmd == 0x89)
            {
                strCmd = "Real-time inventory";
            }
            if (msgTran.Cmd == 0x8B)
            {
                strCmd = "Custom Session and Inventored Flag inventory";
            }
            string strErrorCode = string.Empty;

            if (msgTran.AryData.Length == 1)
            {
                strErrorCode = CCommondMethod.FormatErrorCode(msgTran.AryData[0]);
                string strLog = strCmd + "Failure, failure reason: " + strErrorCode;

                WriteLog(lrtxtLog, strLog, 1);
                RefreshInventoryReal(0x00);
                RunLoopInventroy();
            }
            else if (msgTran.AryData.Length == 7)
            {
                m_curInventoryBuffer.nReadRate = Convert.ToInt32(msgTran.AryData[1]) * 256 + Convert.ToInt32(msgTran.AryData[2]);
                m_curInventoryBuffer.nDataCount = Convert.ToInt32(msgTran.AryData[3]) * 256 * 256 * 256 + Convert.ToInt32(msgTran.AryData[4]) * 256 * 256 + Convert.ToInt32(msgTran.AryData[5]) * 256 + Convert.ToInt32(msgTran.AryData[6]);

                WriteLog(lrtxtLog, strCmd, 0);
                RefreshInventoryReal(0x01);
                RunLoopInventroy();
            }
            else
            {
                m_nTotal++;
                int nLength = msgTran.AryData.Length;
                int nEpcLength = nLength - 4;
                //增加盘存明细表
                string strEPC = CCommondMethod.ByteArrayToString(msgTran.AryData, 3, nEpcLength);
                string strPC = CCommondMethod.ByteArrayToString(msgTran.AryData, 1, 2);
                string strRSSI = msgTran.AryData[nLength - 1].ToString();
                byte btTemp = msgTran.AryData[0];
                byte btAntId = (byte)((btTemp & 0x03) + 1);
                m_curInventoryBuffer.nCurrentAnt = btAntId;
                string strAntId = btAntId.ToString();

                byte btFreq = (byte)(btTemp >> 2);
                string strFreq = GetFreqString(btFreq);
                DataRow[] drs = m_curInventoryBuffer.dtTagTable.Select(string.Format("COLEPC = '{0}'", strEPC));
                if (drs.Length == 0)
                {
                    DataRow row1 = m_curInventoryBuffer.dtTagTable.NewRow();
                    row1[0] = strPC;
                    row1[2] = strEPC;
                    row1[4] = strRSSI;
                    row1[5] = "1";
                    row1[6] = strFreq;

                    m_curInventoryBuffer.dtTagTable.Rows.Add(row1);
                    m_curInventoryBuffer.dtTagTable.AcceptChanges();
                }
                else
                {
                    foreach (DataRow dr in drs)
                    {
                        dr.BeginEdit();

                        dr[4] = strRSSI;
                        dr[5] = (Convert.ToInt32(dr[5]) + 1).ToString();
                        dr[6] = strFreq;

                        dr.EndEdit();
                    }
                    m_curInventoryBuffer.dtTagTable.AcceptChanges();
                }
                m_curInventoryBuffer.dtEndInventory = DateTime.Now;
                RefreshInventoryReal(0x89);
            }
        }
        private void ProcessInventory(Reader.MessageTran msgTran)
        {
            string strCmd = "Inventory label";
            string strErrorCode = string.Empty;

            if (msgTran.AryData.Length == 9)
            {
                m_curInventoryBuffer.nCurrentAnt = msgTran.AryData[0];
                m_curInventoryBuffer.nTagCount = Convert.ToInt32(msgTran.AryData[1]) * 256 + Convert.ToInt32(msgTran.AryData[2]);
                m_curInventoryBuffer.nReadRate = Convert.ToInt32(msgTran.AryData[3]) * 256 + Convert.ToInt32(msgTran.AryData[4]);
                int nTotalRead = Convert.ToInt32(msgTran.AryData[5]) * 256 * 256 * 256
                    + Convert.ToInt32(msgTran.AryData[6]) * 256 * 256
                    + Convert.ToInt32(msgTran.AryData[7]) * 256
                    + Convert.ToInt32(msgTran.AryData[8]);
                m_curInventoryBuffer.nDataCount = nTotalRead;
                m_curInventoryBuffer.lTotalRead.Add(nTotalRead);
                m_curInventoryBuffer.dtEndInventory = DateTime.Now;

                WriteLog(lrtxtLog, strCmd, 0);
                RunLoopInventroy();
                return;
            }
            else if (msgTran.AryData.Length == 1)
            {
                strErrorCode = CCommondMethod.FormatErrorCode(msgTran.AryData[0]);
            }
            else
            {
                strErrorCode = "Unknown mistake";
            }
            string strLog = strCmd + "Failure, failure reason: " + strErrorCode;
            WriteLog(lrtxtLog, strLog, 1);
            RunLoopInventroy();
        }
        private string GetFreqString(byte btFreq)
        {
            string strFreq = string.Empty;

            if (m_curSetting.btRegion == 4)
            {
                float nExtraFrequency = btFreq * m_curSetting.btUserDefineFrequencyInterval * 10;
                float nstartFrequency = ((float)m_curSetting.nUserDefineStartFrequency) / 1000;
                float nStart = nstartFrequency + nExtraFrequency / 1000;
                string strTemp = nStart.ToString("0.000");
                return strTemp;
            }
            else
            {
                if (btFreq < 0x07)
                {
                    float nStart = 865.00f + Convert.ToInt32(btFreq) * 0.5f;

                    string strTemp = nStart.ToString("0.00");

                    return strTemp;
                }
                else
                {
                    float nStart = 902.00f + (Convert.ToInt32(btFreq) - 7) * 0.5f;

                    string strTemp = nStart.ToString("0.00");

                    return strTemp;
                }
            }
        }
        private void ProcessSetBeeperMode(Reader.MessageTran msgTran)
        {
            string strCmd = "Set buzzer mode";
            string strErrorCode = string.Empty;

            if (msgTran.AryData.Length == 1)
            {
                if (msgTran.AryData[0] == 0x10)
                {
                    m_curSetting.btReadId = msgTran.ReadId;
                    WriteLog(lrtxtLog, strCmd, 0);
                    return;
                }
                else
                {
                    strErrorCode = CCommondMethod.FormatErrorCode(msgTran.AryData[0]);
                }
            }
            else
            {
                strErrorCode = "Unknown mistake";
            }
            string strLog = strCmd + "Failure, failure reason: " + strErrorCode;
            WriteLog(lrtxtLog, strLog, 1);
        }
        private void ProcessSetWorkAntenna(Reader.MessageTran msgTran)
        {
            int intCurrentAnt = 0;
            intCurrentAnt = m_curSetting.btWorkAntenna + 1;
            string strCmd = "Set the working antenna successfully, the current working antenna: Antenna " + intCurrentAnt.ToString();

            string strErrorCode = string.Empty;
            if (msgTran.AryData.Length == 1)
            {
                if (msgTran.AryData[0] == 0x10)
                {
                    m_curSetting.btReadId = msgTran.ReadId;
                    WriteLog(lrtxtLog, strCmd, 0);
                    //校验是否盘存操作
                    if (m_bInventory)
                    {
                        RunLoopInventroy();
                    }
                    return;
                }
                else
                {
                    strErrorCode = CCommondMethod.FormatErrorCode(msgTran.AryData[0]);
                }
            }
            else
            {
                strErrorCode = "Unknown mistake";
            }
            string strLog = strCmd + "Failure, failure reason: " + strErrorCode;
            WriteLog(lrtxtLog, strLog, 1);

            if (m_bInventory)
            {
                m_curInventoryBuffer.nCommond = 1;
                m_curInventoryBuffer.dtEndInventory = DateTime.Now;
                RunLoopInventroy();
            }
        }
        private void ProcessGetWorkAntenna(Reader.MessageTran msgTran)
        {
            string strCmd = "Get a working antenna";
            string strErrorCode = string.Empty;

            if (msgTran.AryData.Length == 1)
            {
                if (msgTran.AryData[0] == 0x00 || msgTran.AryData[0] == 0x01 || msgTran.AryData[0] == 0x02 || msgTran.AryData[0] == 0x03)
                {
                    m_curSetting.btReadId = msgTran.ReadId;
                    m_curSetting.btWorkAntenna = msgTran.AryData[0];

                    WriteLog(lrtxtLog, strCmd, 0);
                    return;
                }
                else
                {
                    strErrorCode = CCommondMethod.FormatErrorCode(msgTran.AryData[0]);
                }
            }
            else
            {
                strErrorCode = "Unknown mistake";
            }
            string strLog = strCmd + "Failure, failure reason： " + strErrorCode;
            WriteLog(lrtxtLog, strLog, 1);
        }
        private void timerInventory_Tick(object sender, EventArgs e)
        {
            m_nReceiveFlag++;
            if (m_nReceiveFlag >= 5)
            {
                RunLoopInventroy();
                m_nReceiveFlag = 0;
            }
        }
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            label34.Text = "";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();

            string sql = "select Article from LIY_ERP.dbo.ShoeTest ShoeTest where testno='" + textBox1.Text + "' ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dataReader = cmd.ExecuteReader();

            string SR = "";
            while ((dataReader.Read()))
            {
                SR = dataReader[0].ToString();
            }
            if (SR != "")
            {
                label34.Text = SR;
            }
            dataReader.Close();
            conn.Close();
        }
        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar.Equals(Char.Parse("'")))
                e.Handled = true;
        }
        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar.Equals(Char.Parse("'")))
                e.Handled = true;
        }
        private void textBox3_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Enter)
            {
                button2_Click(sender, e);
            }
            if (e.KeyChar.Equals(Char.Parse("'")))
                e.Handled = true;
        }
        string barcode;
        private void textBox4_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (barcode == "")
            {
                textBox4.Text = "";
            }
            if (e.KeyChar.Equals(Char.Parse("'")))
                e.Handled = true;
            if (!Char.IsDigit(e.KeyChar) && !Char.IsControl(e.KeyChar))
                e.Handled = true;
            barcode += e.KeyChar;              //將輸入的字元儲存至 barcode
            if (e.KeyChar == (char)Keys.Enter) //判斷是否輸入 enter
            {
                //                textBox4.Text = barcode;      //將輸入的字元 輸出
                barcode = "";                  //清空 barcode,以便下次輸入
                SqlConnection conn = new SqlConnection(str);
                conn.Open();

                string sql = "select USERNAME from LIY_ERP.dbo.BUSERS BUSERS where USERID='" + textBox4.Text + "'";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader dataReader1 = cmd.ExecuteReader();

                label71.Text = "";
                while ((dataReader1.Read()))
                {
                    label71.Text = dataReader1[0].ToString();
                }
                dataReader1.Close();
                conn.Close();
            }
        }
        private void AutoComplete(string text, System.Windows.Forms.TextBox textBox)
        {
            AutoCompleteStringCollection auto2 = new AutoCompleteStringCollection();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = str;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            string sql = "Select top 5 " + text + " from RFID_TB";
            SqlCommand com = new SqlCommand();
            com.Connection = conn;
            com.CommandText = sql;
            com.CommandType = CommandType.Text;
            conn.Open();
            SqlDataReader reader;
            reader = com.ExecuteReader();
            if (reader != null)
            {
                while (reader.Read())
                {
                    auto2.Add(reader["" + text + ""].ToString());
                }
            }
            textBox.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
            textBox.AutoCompleteSource = AutoCompleteSource.CustomSource;
            textBox.AutoCompleteCustomSource = auto2;
        }
        private void lvshoes_MouseUp(object sender, MouseEventArgs e)
        {
            ContextMenu ctx = new ContextMenu();
            System.Windows.Forms.MenuItem mItem = new System.Windows.Forms.MenuItem();
            mItem.Text = "Reload";
            mItem.Click += new EventHandler(this.menuItem1_Click);
            ctx.MenuItems.Add(mItem);
            if (e.Button == MouseButtons.Right)
            {
                System.Drawing.Point pt = new System.Drawing.Point(e.X, e.Y);
                ctx.Show(lvshoes, pt);
            }
        }
        private void menuItem1_Click(object sender, EventArgs e)
        {
            ledReal2.Text = "0";
            textBox5.Text = "";
            textBox12.Text = "";
            txtdatee.Text = "";
            txtdates.Text = "";
            checkBox1.Checked = false;
            checkBox2.Checked = false;
            checkBox3.Checked = false;
            button11.PerformClick();
        }
        private void lvshoes_ColumnClick(object sender, ColumnClickEventArgs e)
        {
            ItemComparer sorter = lvshoes.ListViewItemSorter as ItemComparer;

            if (sorter == null)
            {
                sorter = new ItemComparer(e.Column);
                sorter.Order = System.Windows.Forms.SortOrder.Ascending;
                lvshoes.ListViewItemSorter = sorter;
            }
            // if clicked column is already the column that is being sorted
            if (e.Column == sorter.Column)
            {
                // Reverse the current sort direction
                if (sorter.Order == System.Windows.Forms.SortOrder.Ascending)
                    sorter.Order = System.Windows.Forms.SortOrder.Descending;
                else
                    sorter.Order = System.Windows.Forms.SortOrder.Ascending;
            }
            else
            {
                // Set the column number that is to be sorted; default to ascending.
                sorter.Column = e.Column;
                sorter.Order = System.Windows.Forms.SortOrder.Ascending;
            }
            lvshoes.Sort();
            if (e.Column == 0)
            {
                bool value = false;
                try
                {
                    value = Convert.ToBoolean(this.lvshoes.Columns[e.Column].Tag);
                }
                catch (Exception)
                {
                }
                this.lvshoes.Columns[e.Column].Tag = !value;
                foreach (ListViewItem item in this.lvshoes.Items)
                    item.Checked = !value;

                this.lvshoes.Invalidate();
            }
        }
        private void button11_Click(object sender, EventArgs e)
        {
            try
            {
                lvshoes.Items.Clear();
                lvshoes.ListViewItemSorter = null;
                SqlConnection conn;
                conn = new SqlConnection(str);
                conn.Open();
                string sql = "select RFID_TB.TESTNO, RFID_TB.RFIDNO, YPDH, Shoetest.Article, Season, stage, FD, t1.MEMO, t1.DEPARTMENT, t1.IO, " +
                             "       convert(varchar, t1.USERDATE, 103) as date, " +
                             "       case when t1.IO='MOVE OUT' and t1.DEPARTMENT = 'QC' " +
                             "       then 'Move out for ' + t1.DEPARTMENT + ': ' + t1.WorkID + ', ' + isnull(t3.USERNAME,'') " +
                             "       when t1.IO='MOVE OUT' and t1.DEPARTMENT = 'DC QC' " +
                             "       then ': ' + isnull(t1.WorkID,'') + ', ' + isnull(t3.USERNAME,'') " +
                             "       else t1.DEPARTMENT + ': ' + t1.USERID + ', ' + isnull(t2.USERNAME,'')  end as info " +
                             " from RFID_TB " +
                             " left join LIY_ERP.dbo.ShoeTest ShoeTest on RFID_TB.TESTNO = ShoeTest.TestNo" +
                             " left join RFID_TRACK t1 on RFID_TB.TESTNO = t1.TESTNO and RFID_TB.RFIDNO = t1.RFIDNO and t1.USERDATE = " +
                             "      (select MAX(USERDATE) from RFID_TRACK t2 where t2.TESTNO = t1.TESTNO and t2.RFIDNO = t1.RFIDNO) " +
                             " left join LIY_ERP.dbo.BUSERS t3 on t3.userid=t1.workID " +
                             " left join LIY_ERP.dbo.BUSERS t2 on t2.userid=t1.USERID " +
                             " where isnull(RFID_TB.WHNO,'QC_TEST')='QC_TEST' and t1.DEPARTMENT <> '' and t1.DEPARTMENT <> 'DC_REF' " +
                             "       and isnull(t1.MEMO,'TEST')<>'KEEP' ";
                if ((checkBox1.Checked | checkBox2.Checked | checkBox3.Checked)) sql += " and ";
                if (checkBox1.Checked)
                {
                    sql += " (t1.DEPARTMENT = 'QC' and t1.IO = 'move out')";
                }
                if ((checkBox1.Checked && checkBox2.Checked) | (checkBox1.Checked && checkBox3.Checked)) sql += " or ";
                if (checkBox2.Checked)
                {
                    sql += " (t1.DEPARTMENT = 'DC QC' and t1.IO = 'receive')";
                }
                if ((checkBox2.Checked && checkBox3.Checked) | (checkBox1.Checked && checkBox2.Checked && checkBox3.Checked)) sql += " or ";
                if (checkBox3.Checked)
                {
                    sql += " (t1.DEPARTMENT = 'DC QC' and t1.IO = 'move out')";
                }
                if (!textBox12.Text.Equals(""))
                {
                    sql += " AND RFID_TB.TESTNO like '%" + textBox12.Text + "%'";
                }
                if (!textBox5.Text.Equals(""))
                {
                    sql += " AND Shoetest.Article like '%" + textBox5.Text + "%'";
                }
                if (txtdates.Text.Length == 15 && txtdatee.Text.Length == 15)
                {
                    string datestart = txtdates.Text;
                    string dateend = txtdatee.Text;
                    datestart = datestart.Replace(" ", "");
                    dateend = dateend.Replace(" ", "");
                    string[] dates = datestart.Split(new char[] { '/' });
                    DateTime dts = new DateTime(Int32.Parse(dates[2]), Int32.Parse(dates[1]), Int32.Parse(dates[0]));
                    string[] datee = dateend.Split(new char[] { '/' });
                    DateTime dte = new DateTime(Int32.Parse(datee[2]), Int32.Parse(datee[1]), Int32.Parse(datee[0]) + 1);
                    datestart = dts.ToString("yyyy/MM/dd");
                    dateend = dte.ToString("yyyy/MM/dd");
                    sql += " and t1.USERDATE BETWEEN '" + datestart + "' AND '" + dateend + "'";
                }
                sql += " order by t1.USERDATE desc";
                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataReader dataReader = cmd.ExecuteReader();
                this.lvshoes.ListViewItemSorter = null;
                var items = new List<ListViewItem>();
                while ((dataReader.Read()))
                {
                    ListViewItem item = new ListViewItem();
                    if (!dataReader["DEPARTMENT"].ToString().Equals("DC QC"))
                    {
                        item.SubItems.Add("Not yet RECEIVE");
                    }
                    else { item.SubItems.Add(dataReader["IO"].ToString()); }
                    item.SubItems.Add(dataReader["TESTNO"].ToString());
                    item.SubItems.Add(dataReader["RFIDNO"].ToString());
                    item.SubItems.Add(dataReader["YPDH"].ToString());
                    item.SubItems.Add(dataReader["Article"].ToString());
                    item.SubItems.Add(dataReader["Season"].ToString());
                    item.SubItems.Add(dataReader["stage"].ToString());
                    item.SubItems.Add(dataReader["FD"].ToString());
                    item.SubItems.Add(dataReader["date"].ToString());
                    item.SubItems.Add(dataReader["info"].ToString());
                    item.SubItems.Add(dataReader["MEMO"].ToString());
                    items.Add(item);
                }
                dataReader.Close();
                conn.Close();
                ListViewItem[] arr = items.ToArray();
                lvshoes.BeginUpdate();
                lvshoes.Items.AddRange(arr);
                lvshoes.EndUpdate();
                ledReal2.Text = lvshoes.Items.Count.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Date Start or Date End error ! "+ex.Message);
                txtdatee.Text = "";
                txtdates.Text = "";
            }
        }
        private void button12_Click(object sender, EventArgs e)
        {
            if (lvshoes.CheckedItems.Count > 0)
            {
                lvtempe.Items.Clear();
                int i = 1;
                var items = new List<ListViewItem>();
                foreach (ListViewItem lv in lvshoes.CheckedItems)
                {
                    ListViewItem item = new ListViewItem(i.ToString());
                    item.SubItems.Add(lv.SubItems[1].Text);
                    item.SubItems.Add(lv.SubItems[2].Text);
                    item.SubItems.Add(lv.SubItems[3].Text);
                    item.SubItems.Add(lv.SubItems[4].Text);
                    item.SubItems.Add(lv.SubItems[5].Text);
                    item.SubItems.Add(lv.SubItems[6].Text);
                    item.SubItems.Add(lv.SubItems[7].Text);
                    item.SubItems.Add(lv.SubItems[8].Text);
                    item.SubItems.Add(" " + lv.SubItems[9].Text);
                    item.SubItems.Add(lv.SubItems[10].Text);
                    item.SubItems.Add(lv.SubItems[11].Text);
                    item.SubItems.Add(textBox8.Text);
                    item.SubItems.Add(" " + DateTime.Now.ToString("dd/MM/yyyy"));
                    items.Add(item);
                    i++;
                }
                lrtxtLog.Clear();
                ListViewItem[] arr = items.ToArray();
                lvtempe.BeginUpdate();
                lvtempe.Items.AddRange(arr);
                lvtempe.EndUpdate();
                ExportToExcel(lvtempe);
                if (lrtxtLog.Text == "")
                {
                    lrtxtLog.AppendText("Export Excel Completed !");
                }
            }
            else
            {
                MessageBox.Show("Not checked !", "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void R2000UartDemo_SizeChanged(object sender, EventArgs e)
        {
            lvshoes.Width = R2000UartDemo.ActiveForm.Width-30;
        }
        private void lvshoes_DrawItem(object sender, DrawListViewItemEventArgs e)
        {
            e.DrawDefault = true;
        }
        private void lvshoes_DrawColumnHeader(object sender, DrawListViewColumnHeaderEventArgs e)
        {
            if (e.ColumnIndex == 0)
            {
                e.DrawBackground();
                bool value = false;
                try
                {
                    value = Convert.ToBoolean(e.Header.Tag);
                }
                catch (Exception)
                {
                }
                CheckBoxRenderer.DrawCheckBox(e.Graphics, new System.Drawing.Point(e.Bounds.Left + 4, e.Bounds.Top + 4),
                    value ? System.Windows.Forms.VisualStyles.CheckBoxState.CheckedNormal :
                    System.Windows.Forms.VisualStyles.CheckBoxState.UncheckedNormal);
            }
            else
            {
                e.DrawDefault = true;
            }
        }
        private void lvshoes_DrawSubItem(object sender, DrawListViewSubItemEventArgs e)
        {
            e.DrawDefault = true;
        }
    }
}

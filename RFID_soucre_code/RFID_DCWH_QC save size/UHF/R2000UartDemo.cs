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
        private int m_temp = 0;
        private ListView lvtempe, lvtemp, lvtempr, lvtemps;
        private string str = "server=192.168.71.7;database=LIY_TYTHAC;uid=tyxuan;pwd=jack";

        public R2000UartDemo()
        {
            InitializeComponent();
        }
        private void FrmMain_Load(object sender, EventArgs e)
        {
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
            dtpInput.Value = DateTime.Today;
            cmbComPort.SelectedIndex = 0;
            cmbBaudrate.SelectedIndex = 1;
            comboBox1.SelectedIndex = 1;
            AutoComplete("ARTICLE",textBox5);
            AutoComplete("TESTNO", textBox12);
            LoadLVWWH();
            LoadCBB();
            loadlv();
        }
        private void loadlv()
        {
            lvtempe = new ListView();
            foreach (ColumnHeader column in lvdel.Columns)
            {
                if (column.Text.Equals(""))
                {
                    lvtempe.Columns.Add("Number");
                }
                else
                {
                    if (column.Text.Equals("USERID"))
                    {
                        break;
                    }
                    if (column.Text.Equals("DateInput"))
                    {
                        lvtempe.Columns.Add("InfoUser");
                        lvtempe.Columns.Add("Date");
                    }
                    else { lvtempe.Columns.Add(column.Text); }
                }
            }
            lvtempe.Columns.Add("EXPORTUSER");
            lvtempe.Columns.Add("EXPORTDATE");
            lvtempe.Columns.Add("REMARK");
            lvtempr = new ListView();
            foreach (ColumnHeader column in lvdel.Columns)
            {
                if (column.Text.Equals(""))
                {
                    lvtempr.Columns.Add("Number");
                }
                else
                {
                    if (column.Text.Equals("USERID"))
                    {
                        break;
                    }
                    lvtempr.Columns.Add(column.Text);
                }
            }
            lvtempr.Columns.Add("DELUSER");
            lvtempr.Columns.Add("DELDATE");
            lvtemps = new ListView();
            foreach (ColumnHeader column in lvdel.Columns)
            {
                if (column.Text.Equals(""))
                {
                    lvtemps.Columns.Add("Number");
                }
                else
                {
                    if (column.Text.Equals("USERID"))
                    {
                        break;
                    }
                    lvtemps.Columns.Add(column.Text);
                }
            }
            lvtemps.Columns.Add("CUSTOMER");
            lvtemps.Columns.Add("SHIPUSER");
            lvtemps.Columns.Add("SHIPDATE");
            lvtemp = new ListView();
            foreach (ColumnHeader column in lvdel.Columns)
            {
                if (column.Text.Equals(""))
                {
                    lvtemp.Columns.Add("Number");
                }
                else
                {
                    if (column.Text.Equals("USERID"))
                    {
                        break;
                    }
                    lvtemp.Columns.Add(column.Text);
                }
            }
            lvtemp.Columns.Add("DAYMOVEOUT");
            lvtemp.Columns.Add("EXPORTUSER");
            lvtemp.Columns.Add("EXPORTDATE");
            lvtemp.Columns.Add("REMARK");
        }
        private void textbox_Keypress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar.Equals(Char.Parse("'")))
                e.Handled = true;
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
                                if (item.ForeColor == Color.Red)
                                    ws.Cells[i, k].Font.Color = System.Drawing.ColorTranslator.ToOle(System.Drawing.Color.Red);
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
        private void LoadCBB()
        {
            comboBox2.Items.Clear();
            comboBox3.Items.Clear();
            comboBox4.Items.Clear();
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            String sql = "select WHNO from RFID_WH where SNO='##'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dataReader = cmd.ExecuteReader();
            while (dataReader.Read())
            {
                comboBox2.Items.Add(dataReader["WHNO"].ToString());
                comboBox3.Items.Add(dataReader["WHNO"].ToString());
                comboBox4.Items.Add(dataReader["WHNO"].ToString());
            }
            if (comboBox4.Items.Count==0)
            {
                comboBox4.Enabled = false;
                textBox10.Enabled = false;
                button9.Enabled = false;
                comboBox2.Enabled = false;
                textBox6.Enabled = false;
                comboBox3.Enabled = false;
                textBox9.Enabled = false;
                checkBox1.Enabled = false;
            }
            else
            {
                comboBox3.Items.Add("All In Warehouse");
                comboBox3.Items.Add("All");
                comboBox2.SelectedIndex = 0;
                comboBox3.SelectedIndex = comboBox3.Items.Count - 1;
                comboBox4.SelectedIndex = 0;
                comboBox4.Enabled = true;
                textBox10.Enabled = true;
                button9.Enabled = true;
                comboBox2.Enabled = true;
                textBox6.Enabled = true;
                comboBox3.Enabled = true;
                checkBox1.Enabled = true;
                AutoCompleteSNO(comboBox3.Text, textBox9);
                AutoCompleteSNO(comboBox2.Text, textBox6);
            }
            dataReader.Close();
            conn.Close();
        }
        private void LoadLVWWH()
        {
            lvWH.Items.Clear();
            lvWH.Groups.Clear();
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            String sql1 = "select WHNO,SNO from RFID_WH where SNO = '##'";
            SqlCommand cmd1 = new SqlCommand(sql1, conn);
            SqlDataReader dataReader1 = cmd1.ExecuteReader();
            while (dataReader1.Read())
            {
                ListViewGroup group = new ListViewGroup(dataReader1["WHNO"].ToString());
                lvWH.Groups.Add(group);
            }
            dataReader1.Close();
            String sql = "select WHNO,SNO from RFID_WH t1 " +
                         " where SNO <> '##' and EXISTS (select WHNO,SNO from RFID_WH t2 where t1.WHNO=t2.WHNO and t2.SNO='##')";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dataReader = cmd.ExecuteReader();
            while (dataReader.Read())
            {
                ListViewItem item = new ListViewItem(dataReader["WHNO"].ToString());
                item.SubItems.Add(dataReader["SNO"].ToString());
                lvWH.Items.Add(item);
            }
            dataReader.Close();
            foreach (ListViewItem item in lvWH.Items)
            {
                foreach (ListViewGroup group in lvWH.Groups)
                {
                    // Compare group's header to selected subitem's text
                    if (group.Header == item.SubItems[0].Text)
                    {
                        item.Group = group;
                    }
                }
            }
            conn.Close ();
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
            if (tabCtrMain.SelectedIndex == 3 && btnConnectRs232.Enabled == true)
            {
                tabCtrMain.SelectedIndex = 0;
                MessageBox.Show("Please Connect RFID Reader First !");
                return;
            }
            if (tabCtrMain.SelectedIndex == 3 && button2.Text == "Login")
            {
                tabCtrMain.SelectedIndex = 1;
                MessageBox.Show("Please Login First !");
                return;
            }
            if (m_bLockTab)
            {
                tabCtrMain.SelectTab(1);
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
            if (btRealTimeInventory2.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read in 'RFID List Shoes' First ! !");
                return;
            }
            try
            {
                m_curInventoryBuffer.ClearInventoryPar();
                if (button2.Text == "Login")
                {
                    MessageBox.Show("Please Login First !");
                    return;
                }
               /* if (btRealTimeInventory.Text == "Start Read" && textBox1.Text != "")
                {
                    SqlConnection conn;
                    conn = new SqlConnection(str);
                    conn.Open();
                    string sql = "select COUNT(*) from LYS_ERP.dbo.shoetest where Testno='" + textBox1.Text + "'";
                    SqlCommand cmd = new SqlCommand(sql, conn);
                    int r = Convert.ToInt32(cmd.ExecuteScalar());
                    if (r == 0)
                    {
                        MessageBox.Show("TestNo is not in Data !");
                        conn.Close();
                        return;
                    }
                    conn.Close();
                }*/
                m_curInventoryBuffer.btRepeat = Convert.ToByte("1");
                m_curInventoryBuffer.bLoopCustomizedSession = false;
                m_curInventoryBuffer.lAntenna.Add(0x00);
                //默认循环发送命令
                if (m_curInventoryBuffer.bLoopInventory)
                {
                    m_temp = 0;
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
                    m_temp = 1;
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
                lvRealList.Controls.Clear();
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
        private void button1_Click(object sender, EventArgs e)
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
            if (textBox1.Text == "")
            {
                MessageBox.Show("Please Keyin Size First !");
                return;
            }
            btRealTimeInventory.Enabled = false;
            button2.Enabled = false;
            lrtxtLog.Clear();
            if (btRealTimeInventory.Text == "Start Read")
            {
                string sql;
                SqlCommand cmd;
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                int j = 0;
                for (int i = 0; i <= lvRealList.Items.Count - 1; i++)
                {
                    sql = "select COUNT(*) from RFID_Size where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "' ";
                    cmd = new SqlCommand(sql, conn);
                    int r = Convert.ToInt32(cmd.ExecuteScalar());

                    sql = "select COUNT(*) from RFID_DEL " +
                          " where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "' ";
                    cmd = new SqlCommand(sql, conn);
                    int t = Convert.ToInt32(cmd.ExecuteScalar());

                    sql = "select COUNT(*) from LYS_ERP.dbo.BDelRec " +
                          " where CLBH ='" + lvRealList.Items[i].SubItems[2].Text + 
                          "'      AND TableName='RFID_TB'";
                    cmd = new SqlCommand(sql, conn);
                    int y = Convert.ToInt32(cmd.ExecuteScalar());
                    if (r == 0 && y==0 && t==0)
                    {
                        if (lvRealList.Items[i].SubItems[2].Text.Length < 36)
                        {
                            var confirmation = MessageBox.Show(
                                "Cancel Save ? ",
                                "RFIDNO can error !!!", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question
                                );

                            if (confirmation == DialogResult.Yes | confirmation == DialogResult.Cancel)
                            {
                                lrtxtLog.AppendText("Save canceled !\n");
                                btRealTimeInventory.Enabled = true;
                                button2.Enabled = true;
                                conn.Close();
                                return;
                            }
                        }
                        sql = "Insert into RFID_Size (RFIDNO,Size,USERID,USERDATE) " +
                              "Values ('" + lvRealList.Items[i].SubItems[2].Text + "','" + textBox1.Text + "','" + textBox2.Text + "',GETDATE())";
                        try
                        {
                            cmd = new SqlCommand(sql, conn);
                            cmd.ExecuteNonQuery();
                        }
                        catch (Exception ex)
                        {
                            MessageBox.Show(ex.Message);
                        }
                    }
                    else
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                        j = j + 1;
                    }
                }
                if (j > 0)
                {
                    lrtxtLog.AppendText("Already in DATA !\n");
                }
                else
                {
                    lrtxtLog.AppendText("TESTNO : " + textBox1.Text + " Save Completed !");
                }
                conn.Close();
            }
            btRealTimeInventory.Enabled = true;
            button2.Enabled = true;
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

                string sql = "select USERNAME from LYS_ERP.dbo.busers where USERID='" + textBox2.Text + "' and PWD = '" + textBox3.Text + "'";
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
                    sql = "select USERID from LYS_ERP.dbo.busers where USERID='" + textBox2.Text + "'";
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
        private void button3_Click(object sender, EventArgs e)
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
           /* if (textBox1.Text == "")
            {
                MessageBox.Show("Please Keyin TESTNO First !");
                return;
            }*/
            btRealTimeInventory.Enabled = false;
            button2.Enabled = false;
            lrtxtLog.Clear();
            if (btRealTimeInventory.Text == "Start Read")
            {
                string sql;
                SqlCommand cmd;
                SqlConnection conn = new SqlConnection(str);
                conn.Open();
                int j = 0;
                for (int i = 0; i <= lvRealList.Items.Count - 1; i++)
                {
                   /* sql = "select COUNT(*) from RFID_size where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "'";
                    cmd = new SqlCommand(sql, conn);
                    int c = Convert.ToInt32(cmd.ExecuteScalar());
                    if (c != 0)
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else
                    {*/
                        sql = "select COUNT(*) from RFID_size " +
                              "where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "'";
                        cmd = new SqlCommand(sql, conn);
                        int r = Convert.ToInt32(cmd.ExecuteScalar());
                        if (r > 0)
                        {
                            sql = "Insert into LYS_ERP.dbo.BDelRec select 'RFID_SIZE',RFIDNO, NULL, USERID,'"+textBox2.Text+"',USERDATE from RFID_SIZE where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "'"+   
                             "DELETE FROM RFID_Size Where RFIDNO = '" + lvRealList.Items[i].SubItems[2].Text + "'";
                        try
                            {
                                cmd = new SqlCommand(sql, conn);
                                cmd.ExecuteNonQuery();
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show(ex.Message);
                            }
                        }
                        else
                        {
                            lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                            j = j + 1;
                        }
                    }
                //}
               /* if (j > 0)
                {
                    lrtxtLog.AppendText("Not in TB DATA !\n");
                }*/
                conn.Close();
            }
            if (lrtxtLog.Text != "")
            {
                lrtxtLog.AppendText("The above RFIDNO cannot be deleted ，because there have Receive or Move Out data !");
            }
            else
            {
                lrtxtLog.AppendText("TESTNO : " + textBox1.Text + " DELETE Completed !");
            }
            btRealTimeInventory.Enabled = true;
            button2.Enabled = true;
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

            if (textBox4.Text == "")
            {
                MessageBox.Show("Please Scan Barcode First !");
                return;
            }
            SqlConnection conn;
            string sql,sql1;
            SqlCommand cmd;
            conn = new SqlConnection(str);
            btRealTimeInventory.Enabled = false;
            button2.Enabled = false;
            lrtxtLog.Clear();
            if (btRealTimeInventory.Text == "Start Read")
            {
                conn.Open();
                for (int i = 0; i <= lvRealList.Items.Count - 1; i++)
                {
                    conn.Close();
                    conn.Open();
                    sql = "select top 1 DEPARTMENT,IO from RFID_TRACK where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "' order by USERDATE DESC";
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
                    if (IO == "MOVE OUT" | IO == "")
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else if (IO == "RECEIVE")
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
                            //                                if (comboBox1.Text == "")
                            //                                {
                            //                                    sql = "Insert into RFID_TRACK (TESTNO,RFIDNO,USERID,USERDATE,IO,DEPARTMENT,ARTICLE,WorkID) Values ('" + textBox1.Text + "' , '" + lvRealList.Items[i].SubItems[2].Text + "', '" + lvRealList.Items[i].SubItems[4].Text + "', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', 'MOVE OUT', 'DC WH_STAR', '" + label34.Text + "','" + textBox4.Text + "')";
                            //                                }
                            //                                else
                            //    
                            sql = "Insert into RFID_TRACK (TESTNO,RFIDNO,USERID,USERDATE,IO,DEPARTMENT,ARTICLE,WorkID,WHNO,SNO,MEMO,PROGRAM_ID) " +
                                  "Values ('" + textBox1.Text + "', '" + lvRealList.Items[i].SubItems[2].Text + "', '" 
                                              + lvRealList.Items[i].SubItems[4].Text + "', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") 
                                              + "', 'MOVE OUT', '" + comboBox1.Text + "', '" + label34.Text + "', '" + textBox4.Text + "', '" 
                                              + comboBox2.Text + "', '" + textBox6.Text + "', N'" + richTextBox2.Text + "', 'DCWH_QC')";

                            sql1 = "Update RFID_TB set WHNO = NULL, SNO = NULL, CartonNO = NULL, XH = NULL " +
                                   " where TESTNO = '" + textBox1.Text + "' AND RFIDNO = '" + lvRealList.Items[i].SubItems[2].Text + "'";
                            //                                }
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
            SqlConnection conn;
            string sql;
            SqlCommand cmd;
            conn = new SqlConnection(str);
            conn.Open();
            string sql1 = "select COUNT(*) from RFID_WH where WHNO='" + comboBox2.Text + "' and SNO='" + textBox6.Text + "'";
            cmd = new SqlCommand(sql1, conn);
            int r = Convert.ToInt32(cmd.ExecuteScalar());
            if (r == 0)
            {
                MessageBox.Show("SNO does not exist !");
                textBox6.Text = "";
                textBox4.Text = "";
                textBox1.Text = "";
                comboBox1.SelectedIndex = 0;
                if (!comboBox2.Text.Equals(""))
                {
                    comboBox2.SelectedIndex = 0;
                }
                textBox6.Focus();
                conn.Close();
                return;
            }
            conn.Close();
            btRealTimeInventory.Enabled = false;
            button2.Enabled = false;
            lrtxtLog.Clear();
            if (btRealTimeInventory.Text == "Start Read")
            {
                conn.Open();
                for (int i = 0; i <= lvRealList.Items.Count - 1; i++)
                {
                    conn.Close();
                    conn.Open();
                    sql = "select top 1 DEPARTMENT,IO,MEMO from RFID_TRACK where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "' order by USERDATE DESC";
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
                    int temp = 0;
                    if (IO == "RECEIVE")
                    {
                        sql = "select COUNT(*) from RFID_TB where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "'";
                        cmd = new SqlCommand(sql, conn);
                        int c = Convert.ToInt32(cmd.ExecuteScalar());
                        if(c > 0)
                        {
                            sql = "select COUNT(*) from RFID_TB where RFIDNO='" + lvRealList.Items[i].SubItems[2].Text + "' AND WHNO is not null AND SNO is not null";
                            cmd = new SqlCommand(sql, conn);
                            int t = Convert.ToInt32(cmd.ExecuteScalar());
                            if(t>0)
                            {
                                lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                            }
                            else
                            {
                                temp = 1;
                            }
                        }
                        else
                        {
                            lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                        }
                    }
                    if ((DEPARTMENT == "" && IO == "" && comboBox1.Text == "") | (DEPARTMENT == "QC" && IO == "MOVE OUT" && MEMO == "TEST"))
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else if(DEPARTMENT == "DC_REF" && IO == "MOVE OUT")
                    {
                        lrtxtLog.AppendText(lvRealList.Items[i].SubItems[2].Text + "\n");
                    }
                    else if (IO == "MOVE OUT" | temp==1 | (DEPARTMENT == "" && IO == "" && comboBox1.Text != ""))
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
                            if (comboBox1.Text == "")
                            {
                                lrtxtLog.AppendText("Don't receive DC WH_STAR" + "\n");
                            }
                            else
                            {
                                sql = "Insert into RFID_TRACK (TESTNO,RFIDNO,USERID,USERDATE,IO,DEPARTMENT,ARTICLE,WHNO,SNO,MEMO,PROGRAM_ID) " +
                                      "Values ('" + textBox1.Text + "', '" + lvRealList.Items[i].SubItems[2].Text + "', '" 
                                                  + lvRealList.Items[i].SubItems[4].Text + "', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") 
                                                  + "', 'RECEIVE', '" + comboBox1.Text + "', '" + label34.Text + "', '" + comboBox2.Text + "', '" 
                                                  + textBox6.Text + "', N'" + richTextBox2.Text + "', 'DCWH_QC')";

                                sql1 = "Update RFID_TB set WHNO = '" + comboBox2.Text + "', SNO = '" + textBox6.Text + 
                                       "'                , CartonNO = '" + textBox13.Text + "', XH = '" + textBox14.Text + 
                                       "' where TESTNO = '" + textBox1.Text + "' AND RFIDNO = '" + lvRealList.Items[i].SubItems[2].Text + "'";
                            }
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
            lvRealList.Controls.Clear();
            ledReal1.Text = "0";
            lbRealTagCount.Text = "List of tags：";
            textBox6.Text = "";
            textBox6.Enabled = true;
            textBox13.Text = "";
            textBox14.Text = "";
            richTextBox2.Text = "";
            textBox13.Enabled = true;
            textBox14.Enabled = true;
            comboBox2.Enabled = true;
            comboBox1.SelectedIndex = 1;
            if (!comboBox2.Text.Equals(""))
            {
                comboBox2.SelectedIndex = 0;
            }
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
                            if (m_temp == 1)
                            {
                                ledReal1.Text = nTagCount.ToString();
                                lbRealTagCount.Text = "List of label EPC numbers (not repeated)： " + nTagCount.ToString() + "个";
                                nEpcCount = lvRealList.Items.Count;
                            }
                            else if(m_temp == 2)
                            { 
                                ledReal2.Text = nTagCount.ToString();
                                nEpcCount = lvdel.Items.Count;
                            }

                            if (nEpcCount < nEpcLength)
                            {
                                DataRow row = m_curInventoryBuffer.dtTagTable.Rows[nEpcLength - 1];

                                SqlConnection conn;
                                String r1 = "";
                                conn = new SqlConnection(str);
                                conn.Open();
                                if (m_temp == 1)
                                {
                                    string sql = "select SIZE from RFID_Size where RFIDNO='" + row[2].ToString() + "'";
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
                                    string sql1= "select WHNO,SNO,CartonNO,XH from RFID_TB t1 " +
                                                 "where RFIDNO='" + row[2].ToString() + "' " +
                                                 "      and EXISTS(select WHNO,SNO from RFID_WH t2 where t1.WHNO=t2.WHNO and t2.SNO='##')";
                                    cmd = new SqlCommand(sql1, conn);
                                    SqlDataReader dataReader = cmd.ExecuteReader();
                                    string WHNO = "";
                                    string SNO = "";
                                    string Car = "";
                                    string XH = "";
                                    while ((dataReader.Read()))
                                    {
                                        WHNO = dataReader[0].ToString();
                                        SNO = dataReader[1].ToString();
                                        Car = dataReader[2].ToString();
                                        XH = dataReader[3].ToString();
                                    }
                                    if(!WHNO.Equals("") && !SNO.Equals(""))
                                    {
                                        textBox6.Text = SNO;
                                        comboBox2.SelectedItem = WHNO;
                                        textBox13.Text = Car;
                                        textBox14.Text = XH;
                                        textBox13.Enabled = false;
                                        textBox14.Enabled = false;
                                        textBox6.Enabled = false;
                                        comboBox2.Enabled = false;
                                    }
                                    else
                                    {
                                        textBox13.Enabled = true;
                                        textBox14.Enabled = true;
                                        textBox6.Enabled = true;
                                        comboBox2.Enabled = true;
                                    }
                                    conn.Close();
                                    item.SubItems.Add(row[2].ToString());
                                    item.SubItems.Add(row[0].ToString());
                                    item.SubItems.Add(textBox2.Text);
                                    item.SubItems.Add(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                                    item.SubItems.Add("");
                                    lvRealList.Items.Add(item);
                                    if (!r1.Equals(""))
                                    {
                                        System.Windows.Forms.Button btn = new System.Windows.Forms.Button();
                                        btn.Click += new EventHandler(btn_Click);
                                        btn.Text = "Search";
                                        System.Drawing.Rectangle rt = lvRealList.Items[0].SubItems[6].Bounds;
                                        btn.SetBounds(rt.X, rt.Y, rt.Width - 20, rt.Height + 5);
                                        lvRealList.Controls.Add(btn);
                                    }
                                    lvRealList.Items[nEpcCount].EnsureVisible();
                                }else if(m_temp == 2)
                                {
                                    SqlCommand cmd = new SqlCommand()
                                    {
                                        CommandText = "LoadListRFID_QC",
                                        Connection = conn,
                                        CommandType = CommandType.StoredProcedure
                                    };
                                    cmd.Parameters.Add("@TESTNO", SqlDbType.VarChar).Value = "";
                                    cmd.Parameters.Add("@RFIDNO", SqlDbType.VarChar).Value = row[2].ToString();
                                    cmd.Parameters.Add("@ARTICLE", SqlDbType.VarChar).Value = "";
                                    cmd.Parameters.Add("@Material", SqlDbType.VarChar).Value = "";
                                    cmd.Parameters.Add("@WHNO", SqlDbType.VarChar).Value = "";
                                    cmd.Parameters.Add("@SNO", SqlDbType.VarChar).Value = "";
                                    cmd.Parameters.Add("@dates", SqlDbType.VarChar).Value = "";
                                    cmd.Parameters.Add("@datee", SqlDbType.VarChar).Value = "";
                                    cmd.Parameters.Add("@month", SqlDbType.Int).Value = 0;
                                    cmd.Parameters.Add("@year", SqlDbType.Int).Value = 0;
                                    SqlDataReader dataReader = cmd.ExecuteReader();
                                    ListViewItem item = new ListViewItem();
                                    while (dataReader.Read())
                                    {
                                        item.SubItems.Add(dataReader["TESTNO"].ToString());
                                        item.SubItems.Add(dataReader["RFIDNO"].ToString());
                                        item.SubItems.Add(dataReader["YPDH"].ToString());
                                        item.SubItems.Add(dataReader["Article"].ToString());
                                        item.SubItems.Add(dataReader["Season"].ToString());
                                        item.SubItems.Add(dataReader["stage"].ToString());
                                        item.SubItems.Add(dataReader["FD"].ToString());
                                        item.SubItems.Add(dataReader["Material#"].ToString());
                                        item.SubItems.Add(dataReader["date"].ToString());
                                        item.SubItems.Add(dataReader["WHNO"].ToString());
                                        item.SubItems.Add(dataReader["SNO"].ToString());
                                        item.SubItems.Add(dataReader["Carton"].ToString());
                                        item.SubItems.Add(dataReader["info"].ToString());
                                        item.SubItems.Add(dataReader["day"].ToString());
                                        item.SubItems.Add(dataReader["memo"].ToString());
                                        if (Int32.Parse(dataReader["day"].ToString()) < -1 | Int32.Parse(dataReader["day"].ToString()) > 30)
                                        {
                                            item.ForeColor = Color.Red;
                                        }
                                        lvdel.Items.Add(item);
                                    }
                                    ledReal2.Text = lvdel.Items.Count.ToString();
                                    if (lvdel.Items.Count == 0 || row[2].ToString().Equals(""))
                                    {
                                        WriteLog(lrtxtLog, "TestNo is not in Data", 1);
                                    }
                                    dataReader.Close();
                                    conn.Close();
                                }
                            }
                            //更新列表中读取的次数
                            if (m_nTotal % m_nRealRate == 1 && m_temp==1)
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
                            //if (m_temp == 1)
                            //{
                            //    btRealTimeInventory.PerformClick();
                            //}
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
                ////增加标签表
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
        string barcode;
        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            label34.Text = "";
            //textBox15.Text = "";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();

            string sql = "select shoetest.Article,kfxxzl.ARTICLE as Material# " +
                         " from LYS_ERP.dbo.shoetest " +
                         " left join LYS_ERP.dbo.ypzl on ypzl.YPDH=ShoeTest.YPDH " +
                         " left join LYS_ERP.dbo.kfxxzl on ypzl.XieXing=kfxxzl.XieXing and ypzl.SheHao=kfxxzl.SheHao " +
                         " where testno='" + textBox1.Text + "' ";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dataReader = cmd.ExecuteReader();

            string SR = "";
            string SKU = "";
            while ((dataReader.Read()))
            {
                SR = dataReader[0].ToString();
                SKU = dataReader[1].ToString();
            }
            dataReader.Close();
            if (SR != "")
            {
                label34.Text = SR;
                //textBox15.Text = SKU;
            }
            else
            {
                sql = "select top 1 kfxxzl.DEVCODE " +
                      "from LYS_ERP.dbo.kfxxzl " +
                      "left join LYS_ERP.dbo.xxzl on xxzl.XieXing=kfxxzl.XieXing and xxzl.SheHao=kfxxzl.SheHao " +
                      "where xxzl.ARTICLE='" + textBox1.Text + "' ";
                cmd = new SqlCommand(sql, conn);
                dataReader = cmd.ExecuteReader();
                while ((dataReader.Read()))
                {
                    SR = dataReader[0].ToString();
                }
                label34.Text = SR;
                //textBox15.Text = textBox1.Text;
            }
            dataReader.Close();
            conn.Close();
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

                string sql = "select USERNAME from LYS_ERP.dbo.busers where USERID='" + textBox4.Text + "'";
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
        private void lvdel_DrawColumnHeader(object sender, DrawListViewColumnHeaderEventArgs e)
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
        private void lvdel_DrawItem(object sender, DrawListViewItemEventArgs e)
        {
            e.DrawDefault = true;
            if (e.Item.Checked)
            {
                e.Item.BackColor = Color.LightSteelBlue;
            }
            else
            {
                e.Item.BackColor = lvdel.BackColor;
            }
            e.DrawBackground();
        }
        private void lvdel_DrawSubItem(object sender, DrawListViewSubItemEventArgs e)
        {
            e.DrawDefault = true;
        }
        private void lvdel_ItemSelectionChanged(object sender, ListViewItemSelectionChangedEventArgs e)
        {
            richTextBox1.Text = e.Item.SubItems[15].Text;
        }
        private void lvdel_ColumnClick(object sender, ColumnClickEventArgs e)
        {
            ItemComparer sorter = lvdel.ListViewItemSorter as ItemComparer;

            if (sorter == null)
            {
                sorter = new ItemComparer(e.Column);
                sorter.Order = System.Windows.Forms.SortOrder.Ascending;
                lvdel.ListViewItemSorter = sorter;
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
            lvdel.Sort();
            if (e.Column == 0)
            {
                bool value = false;
                try
                {
                    value = Convert.ToBoolean(this.lvdel.Columns[e.Column].Tag);
                }
                catch (Exception)
                {
                }
                this.lvdel.Columns[e.Column].Tag = !value;
                foreach (ListViewItem item in this.lvdel.Items)
                    item.Checked = !value;

                this.lvdel.Invalidate();
            }
        }
        private void lvdel_MouseUp(object sender, MouseEventArgs e)
        {
            ContextMenu ctx = new ContextMenu();
            System.Windows.Forms.MenuItem mItem = new System.Windows.Forms.MenuItem();
            mItem.Text = "Reload";
            mItem.Click += new System.EventHandler(this.menuItem1_Click);
            ctx.MenuItems.Add(mItem);
            if (lvdel.SelectedItems.Count > 0)
            {
                System.Windows.Forms.MenuItem mItem2 = new System.Windows.Forms.MenuItem();
                mItem2.Text = "Move to another Warehouse";
                mItem2.Click += new System.EventHandler(this.menuItem22_Click);
                ctx.MenuItems.Add(mItem2);
                System.Windows.Forms.MenuItem mItem1 = new System.Windows.Forms.MenuItem();
                mItem1.Text = "Export detail";
                mItem1.Click += new System.EventHandler(this.menuItem11_Click);
                ctx.MenuItems.Add(mItem1);
            }
            if (e.Button == MouseButtons.Right)
            {
                System.Drawing.Point pt = new System.Drawing.Point(e.X, e.Y);
                ctx.Show(lvdel, pt);
            }
        }
        private void menuItem1_Click(object sender, EventArgs e)
        {
            dtpInput.Value = DateTime.Today;
            ledReal2.Text = "0";
            textBox5.Text = "";
            textBox9.Text = "";
            textBox12.Text = "";
            //textBox15.Text = "";
            txtdatee.Text = "";
            txtdates.Text = "";
            richTextBox1.Text = "";
            if (comboBox3.Items.Count==0)
            {
                checkBox1.Enabled = false;
            }
            else
            {
                comboBox3.SelectedIndex = comboBox3.Items.Count - 1;
                checkBox1.Enabled = true;
                if(checkBox1.Checked)
                checkBox1.Checked = false;
            }
            button11.PerformClick();
        }
        private void menuItem22_Click(object sender, EventArgs e)
        {
            if (comboBox4.Items.Count==0)
            {
                MessageBox.Show("WHNO does not exist !");
                return;
            }
            lrtxtLog.Clear();
            if (lvdel.SelectedItems[0].SubItems[10].Text.Equals("Not in warehouse"))
            {
                lrtxtLog.AppendText(lvdel.SelectedItems[0].SubItems[1].Text + "\n"+ lvdel.SelectedItems[0].SubItems[2].Text + "\n");
                lrtxtLog.AppendText("The shoe not in Warehouse, can't move !");
                return;
            }
            else
            {
                string a = lvdel.SelectedItems[0].SubItems[12].Text;
                a = a.Replace(" ", "");
                string[] ca = a.Split(new char[] { ':' });
                int promptValue = ShowDialog(comboBox4,lvdel.SelectedItems[0].SubItems[10].Text, lvdel.SelectedItems[0].SubItems[11].Text, ca[0], ca[1], lvdel.SelectedItems[0].SubItems[1].Text, lvdel.SelectedItems[0].SubItems[2].Text, textBox8.Text, lvdel.SelectedItems[0].SubItems[4].Text);
                if (promptValue == 1)
                {
                    lrtxtLog.AppendText("Move Completed !");
                }
            }
        }
        public static int ShowDialog(ComboBox cbt, string wh, string s, string ca, string xh, string tesno, string rfid, string id, string sr)
        {
            Form prompt = new Form();
            prompt.Width = 300;
            prompt.Height = 255;
            prompt.Text = "Move Warehouse";
            ComponentResourceManager resources = new ComponentResourceManager(typeof(R2000UartDemo));
            prompt.Icon = (System.Drawing.Icon)(resources.GetObject("$this.Icon"));
            prompt.StartPosition = FormStartPosition.CenterParent;
            prompt.MaximizeBox = false;
            prompt.MinimizeBox = false;
            prompt.FormBorderStyle = FormBorderStyle.Fixed3D;
            int temp=0;

            System.Windows.Forms.Label label13 = new System.Windows.Forms.Label();
            label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, FontStyle.Bold, GraphicsUnit.Point, ((byte)(0)));
            label13.ForeColor = SystemColors.Highlight;
            label13.SetBounds(15, 20, 127, 18);
            label13.Text = "WareHouseNO:";
            System.Windows.Forms.Label label1 = new System.Windows.Forms.Label();
            label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, FontStyle.Bold, GraphicsUnit.Point, ((byte)(0)));
            label1.ForeColor = SystemColors.Highlight;
            label1.SetBounds(15, 60, 97, 18);
            label1.Text = "StorageNO:";
            System.Windows.Forms.Label label2 = new System.Windows.Forms.Label();
            label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, FontStyle.Bold, GraphicsUnit.Point, ((byte)(0)));
            label2.ForeColor = SystemColors.Highlight;
            label2.SetBounds(15, 100, 97, 18);
            label2.Text = "CartonNO:";
            System.Windows.Forms.Label label3 = new System.Windows.Forms.Label();
            label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, FontStyle.Bold, GraphicsUnit.Point, ((byte)(0)));
            label3.ForeColor = SystemColors.Highlight;
            label3.SetBounds(15, 140, 97, 18);
            label3.Text = "XH:";

            ComboBox cb = new ComboBox();
            cb.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point, ((byte)(0)));
            cb.SetBounds(150, 20, 100, 18);
            cb.DropDownStyle = ComboBoxStyle.DropDownList;
            for (int i = 0; i < cbt.Items.Count; i++)
            {
                cb.Items.Add(cbt.Items[i]);
            }
            cb.SelectedItem = wh;

            System.Windows.Forms.TextBox tb = new System.Windows.Forms.TextBox();
            tb.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point, ((byte)(0)));
            tb.SetBounds(150, 60, 100, 18);
            tb.Text = s;

            System.Windows.Forms.TextBox tbca = new System.Windows.Forms.TextBox();
            tbca.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point, ((byte)(0)));
            tbca.SetBounds(150, 100, 100, 18);
            tbca.Text = ca;

            System.Windows.Forms.TextBox tbxh = new System.Windows.Forms.TextBox();
            tbxh.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, FontStyle.Regular, GraphicsUnit.Point, ((byte)(0)));
            tbxh.SetBounds(150, 140, 100, 18);
            tbxh.Text = xh;

            System.Windows.Forms.Button btnsave = new System.Windows.Forms.Button();
            btnsave.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, FontStyle.Bold, GraphicsUnit.Point, ((byte)(0)));
            btnsave.SetBounds(110, 170, 70, 35);
            btnsave.Text = "Save";
            btnsave.Click += (sender, e) => {
                SqlConnection conn;
                string str = "server=192.168.71.7;database=LIY_TYTHAC;uid=tyxuan;pwd=jack";
                SqlCommand cmd;
                conn = new SqlConnection(str);
                conn.Open();
                string sql = "select COUNT(*) from RFID_WH where WHNO='" + cb.Text + "' and SNO='" + tb.Text + "'";
                cmd = new SqlCommand(sql, conn);
                int r = Convert.ToInt32(cmd.ExecuteScalar());
                if (r == 0)
                {
                    MessageBox.Show("SNO does not exist !");
                }
                else
                {
                    sql = "select top 1 DEPARTMENT from RFID_TRACK where RFIDNO='" + rfid + "' and TESTNO ='" + tesno + "' order by USERDATE DESC";
                    cmd = new SqlCommand(sql, conn);
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    string DEPARTMENT = "";
                    while (dataReader.Read())
                    {
                        DEPARTMENT = dataReader[0].ToString();
                    }
                    dataReader.Close();
                    sql = "Insert into RFID_TRACK (TESTNO,RFIDNO,USERID,USERDATE,IO,DEPARTMENT,ARTICLE,WorkID,WHNO,SNO,PROGRAM_ID) " +
                          "Values ('" + tesno + "', '" + rfid + "', '" + id + "', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") 
                                      + "', 'MOVE OUT', '', '" + sr + "', '" + id + "', '" + wh+ "', '" + s+ "', 'DCWH_QC')";
                    cmd = new SqlCommand(sql, conn);
                    cmd.ExecuteNonQuery();

                    sql = "Insert into RFID_TRACK (TESTNO,RFIDNO,USERID,USERDATE,IO,DEPARTMENT,ARTICLE,WHNO,SNO,PROGRAM_ID) " +
                          "Values ('" + tesno + "', '" + rfid + "', '" + id + "', '" + DateTime.Now.AddSeconds(1).ToString("yyyy-MM-dd HH:mm:ss") 
                                      + "', 'RECEIVE', '" + DEPARTMENT + "', '" + sr + "', '" + cb.Text + "', '" + tb.Text + "', 'DCWH_QC')";
                    cmd = new SqlCommand(sql, conn);
                    cmd.ExecuteNonQuery();

                    sql = "Update RFID_TB set WHNO = '" + cb.Text + "', SNO = '" + tb.Text + "', CartonNO = '" + tbca.Text + "', XH = '" + tbxh.Text + "' " +
                          " where TESTNO = '" + tesno + "' AND RFIDNO = '" + rfid + "'";
                    cmd = new SqlCommand(sql, conn);
                    cmd.ExecuteNonQuery();
                    temp = 1;
                    conn.Close();
                    prompt.Close();
                }
                 };

            prompt.Controls.AddRange(new Control[] { label13,label1,label2,label3,cb,tb,tbca,tbxh,btnsave });
            prompt.ShowDialog();
            return (int)temp;
        }
        private void menuItem11_Click(object sender, EventArgs e)
        {
            lvtempe.Items.Clear();
            int i = 1;
            string[] dates = lvdel.SelectedItems[0].SubItems[9].Text.Split(new char[] { '/' });
            DateTime dts = new DateTime(Int32.Parse(dates[2]), Int32.Parse(dates[1]), Int32.Parse(dates[0]));
            string datestart = dts.ToString("yyyy/MM/dd");
            string dateend = DateTime.Today.AddDays(1).ToString("yyyy/MM/dd");
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            string sql = "select IO, DEPARTMENT, RFID_TRACK.USERID, convert(varchar, RFID_TRACK.USERDATE, 103) as USERDATE, WorkID," +
                         "       case when WorkID is null then t2.username else t1.username end as USERNAME, WHNO, SNO " +
                         " from RFID_TRACK " +
                         " left join LYS_ERP.dbo.busers t1 on t1.userid=RFID_TRACK.workID " +
                         " left join LYS_ERP.dbo.busers t2 on t2.userid=RFID_TRACK.USERID " +
                         " where TESTNO = '" + lvdel.SelectedItems[0].SubItems[1].Text + "' AND RFIDNO = '" + lvdel.SelectedItems[0].SubItems[2].Text + 
                         "'  and RFID_TRACK.PROGRAM_ID='DCWH_QC' and RFID_TRACK.USERDATE BETWEEN '" + datestart + "' AND '" + dateend + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader dataReader = cmd.ExecuteReader();
            while (dataReader.Read())
            {
                ListViewItem item = new ListViewItem(i.ToString());
                if (i == 1)
                {
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[1].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[2].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[3].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[4].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[5].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[6].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[7].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[8].Text);
                    item.SubItems.Add(dataReader["USERID"].ToString() + ", " + dataReader["USERNAME"].ToString() + ", Input Warehouse");
                    item.SubItems.Add("(Date Input) " + lvdel.SelectedItems[0].SubItems[9].Text);
                    item.SubItems.Add(dataReader["WHNO"].ToString());
                    item.SubItems.Add(dataReader["SNO"].ToString());
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[12].Text);
                    item.SubItems.Add(textBox8.Text);
                    item.SubItems.Add(" "+DateTime.Today.ToString("dd/MM/yyyy"));
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[15].Text);
                }
                else
                {
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[1].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[2].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[3].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[4].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[5].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[6].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[7].Text);
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[8].Text);
                    if (dataReader["IO"].ToString().Equals("RECEIVE"))
                    {
                        item.SubItems.Add(dataReader["USERID"].ToString() + ", " + dataReader["USERNAME"].ToString() + ", Receive back to the warehouse");
                        item.SubItems.Add("(Date Recceive) " + dataReader["USERDATE"].ToString());
                    }
                    else 
                    {
                        if (dataReader["DEPARTMENT"].ToString().Equals("QC"))
                        {
                            item.SubItems.Add("Move out for QC: " + dataReader["DEPARTMENT"].ToString() + ": " + dataReader["WorkID"].ToString() + ", " + dataReader["USERNAME"].ToString());
                        }
                        else
                        {
                            item.SubItems.Add("Move out: " + dataReader["WorkID"].ToString() + ", " + dataReader["USERNAME"].ToString());
                        }
                        item.SubItems.Add("(Date Move out) " + dataReader["USERDATE"].ToString()); 
                    }
                    item.SubItems.Add(dataReader["WHNO"].ToString());
                    item.SubItems.Add(dataReader["SNO"].ToString());
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[12].Text);
                    item.SubItems.Add(textBox8.Text);
                    item.SubItems.Add(" "+DateTime.Today.ToString("dd/MM/yyyy"));
                    item.SubItems.Add(lvdel.SelectedItems[0].SubItems[15].Text);
                }
                lvtempe.Items.Add(item);
                i++;
            }
            dataReader.Close();
            conn.Close();
            lrtxtLog.Clear();
            ExportToExcel(lvtempe);
            if (lrtxtLog.Text == "")
            {
                lrtxtLog.AppendText("Export Excel Completed !");
            }
        }
        private void lvWH_MouseUp(object sender, MouseEventArgs e)
        {
            ContextMenu ctx = new ContextMenu();
            System.Windows.Forms.MenuItem mItem = new System.Windows.Forms.MenuItem();
            mItem.Text = "Reload";
            mItem.Click += new System.EventHandler(this.menuItem2_Click);
            ctx.MenuItems.Add(mItem);
            if (e.Button == MouseButtons.Right)
            {
                System.Drawing.Point pt = new System.Drawing.Point(e.X, e.Y);
                ctx.Show(lvWH, pt);
            }
        }
        private void menuItem2_Click(object sender, EventArgs e)
        {
            textBox10.Text = "";
            textBox11.Text = "";
            LoadCBB();
            LoadLVWWH();
        }
        private void dtpInput_ValueChanged(object sender, EventArgs e)
        {
            if (dtpInput.Focus())
            {
                lvdel.Items.Clear();
                var items = new List<ListViewItem>();
                SqlConnection conn;
                conn = new SqlConnection(str);
                conn.Open();
                SqlCommand cmd = new SqlCommand()
                {
                    CommandText = "LoadListRFID_QC",
                    Connection = conn,
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.Add("@TESTNO", SqlDbType.VarChar).Value = textBox12.Text;
                cmd.Parameters.Add("@RFIDNO", SqlDbType.VarChar).Value = "";
                cmd.Parameters.Add("@ARTICLE", SqlDbType.VarChar).Value = textBox5.Text;
                cmd.Parameters.Add("@Material", SqlDbType.VarChar).Value = textBox16.Text;
                if (comboBox3.Enabled)
                { cmd.Parameters.Add("@WHNO", SqlDbType.VarChar).Value = comboBox3.Text; }
                else { cmd.Parameters.Add("@WHNO", SqlDbType.VarChar).Value = "Not In Warehouse"; }
                cmd.Parameters.Add("@SNO", SqlDbType.VarChar).Value = textBox9.Text;
                cmd.Parameters.Add("@dates", SqlDbType.VarChar).Value = "";
                cmd.Parameters.Add("@datee", SqlDbType.VarChar).Value = "";
                cmd.Parameters.Add("@month", SqlDbType.Int).Value = dtpInput.Value.Month;
                cmd.Parameters.Add("@year", SqlDbType.Int).Value = dtpInput.Value.Year;
                SqlDataReader dataReader = cmd.ExecuteReader();
                while ((dataReader.Read()))
                {
                    ListViewItem item = new ListViewItem();
                    item.SubItems.Add(dataReader["TESTNO"].ToString());
                    item.SubItems.Add(dataReader["RFIDNO"].ToString());
                    item.SubItems.Add(dataReader["YPDH"].ToString());
                    item.SubItems.Add(dataReader["Article"].ToString());
                    item.SubItems.Add(dataReader["Season"].ToString());
                    item.SubItems.Add(dataReader["stage"].ToString());
                    item.SubItems.Add(dataReader["FD"].ToString());
                    item.SubItems.Add(dataReader["Material#"].ToString());
                    item.SubItems.Add(dataReader["date"].ToString());
                    item.SubItems.Add(dataReader["WHNO"].ToString());
                    item.SubItems.Add(dataReader["SNO"].ToString());
                    item.SubItems.Add(dataReader["Carton"].ToString());
                    item.SubItems.Add(dataReader["info"].ToString());
                    item.SubItems.Add(dataReader["day"].ToString());
                    item.SubItems.Add(dataReader["memo"].ToString());
                    if (Int32.Parse(dataReader["day"].ToString()) < -1 | Int32.Parse(dataReader["day"].ToString()) > 30)
                    {
                        item.ForeColor = Color.Red;
                    }
                    items.Add(item);
                }
                dataReader.Close();
                conn.Close();
                ListViewItem[] arr = items.ToArray();
                lvdel.BeginUpdate();
                lvdel.Items.AddRange(arr);
                lvdel.EndUpdate();
                ledReal2.Text = lvdel.Items.Count.ToString();
            }
        }
        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
            AutoCompleteSNO(comboBox3.Text, textBox9);
            if (comboBox3.Text.Equals("All"))
            {
                textBox9.Enabled = false;
            }
            else
            {
                textBox9.Enabled = true;
            }
        }
        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
            {
                comboBox3.Enabled = false;
                textBox9.Enabled = false;
            }
            else
            {
                comboBox3.Enabled = true;
                if (comboBox3.Text.Equals("All"))
                {
                    textBox9.Enabled = false;
                }
                else
                {
                    textBox9.Enabled = true;
                }
                
            }
        }
        private void button11_Click(object sender, EventArgs e)
        {
            if (btRealTimeInventory2.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }
            if (btRealTimeInventory2.Text == "Start Read")
            {
                try 
                {
                    lvdel.Items.Clear();
                    var items = new List<ListViewItem>();
                    SqlConnection conn;
                    conn = new SqlConnection(str);
                    conn.Open();
                    string datestart = "", dateend = "";
                    if (txtdates.Text.Length == 15 && txtdatee.Text.Length == 15)
                    {
                        datestart = txtdates.Text;
                        dateend = txtdatee.Text;
                        datestart = datestart.Replace(" ", "");
                        dateend = dateend.Replace(" ", "");
                        string[] dates = datestart.Split(new char[] { '/' });
                        DateTime dts = new DateTime(Int32.Parse(dates[2]), Int32.Parse(dates[1]), Int32.Parse(dates[0]));
                        string[] datee = dateend.Split(new char[] { '/' });
                        DateTime dte = new DateTime(Int32.Parse(datee[2]), Int32.Parse(datee[1]), Int32.Parse(datee[0]) + 1);
                        datestart = dts.ToString("yyyy/MM/dd");
                        dateend = dte.ToString("yyyy/MM/dd");
                    }
                    SqlCommand cmd = new SqlCommand()
                    {
                        CommandText = "LoadListRFID_QC",
                        Connection = conn,
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add("@TESTNO", SqlDbType.VarChar).Value = textBox12.Text;
                    cmd.Parameters.Add("@RFIDNO", SqlDbType.VarChar).Value = "";
                    cmd.Parameters.Add("@ARTICLE", SqlDbType.VarChar).Value = textBox5.Text;
                    cmd.Parameters.Add("@Material", SqlDbType.VarChar).Value = textBox16.Text;
                    if (comboBox3.Enabled)
                    { cmd.Parameters.Add("@WHNO", SqlDbType.VarChar).Value = comboBox3.Text; }
                    else { cmd.Parameters.Add("@WHNO", SqlDbType.VarChar).Value = "Not In Warehouse"; }
                    cmd.Parameters.Add("@SNO", SqlDbType.VarChar).Value = textBox9.Text;
                    cmd.Parameters.Add("@dates", SqlDbType.VarChar).Value = datestart;
                    cmd.Parameters.Add("@datee", SqlDbType.VarChar).Value = dateend;
                    cmd.Parameters.Add("@month", SqlDbType.Int).Value = 0;
                    cmd.Parameters.Add("@year", SqlDbType.Int).Value = 0;
                    SqlDataReader dataReader = cmd.ExecuteReader();
                    while ((dataReader.Read()))
                    {
                        ListViewItem item = new ListViewItem();
                        item.SubItems.Add(dataReader["TESTNO"].ToString());
                        item.SubItems.Add(dataReader["RFIDNO"].ToString());
                        item.SubItems.Add(dataReader["YPDH"].ToString());
                        item.SubItems.Add(dataReader["Article"].ToString());
                        item.SubItems.Add(dataReader["Season"].ToString());
                        item.SubItems.Add(dataReader["stage"].ToString());
                        item.SubItems.Add(dataReader["FD"].ToString());
                        item.SubItems.Add(dataReader["Material#"].ToString());
                        item.SubItems.Add(dataReader["date"].ToString());
                        item.SubItems.Add(dataReader["WHNO"].ToString());
                        item.SubItems.Add(dataReader["SNO"].ToString());
                        item.SubItems.Add(dataReader["Carton"].ToString());
                        item.SubItems.Add(dataReader["info"].ToString());
                        item.SubItems.Add(dataReader["day"].ToString());
                        item.SubItems.Add(dataReader["memo"].ToString());
                        if (Int32.Parse(dataReader["day"].ToString()) < -1 | Int32.Parse(dataReader["day"].ToString()) > 30)
                        {
                            item.ForeColor = Color.Red;
                        }
                        items.Add(item);
                    }
                    dataReader.Close();
                    conn.Close();
                    ListViewItem[] arr = items.ToArray();
                    lvdel.BeginUpdate();
                    lvdel.Items.AddRange(arr);
                    lvdel.EndUpdate();
                    ledReal2.Text = lvdel.Items.Count.ToString();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Date Start or Date End error ! " + ex.Message);
                    txtdatee.Text = "";
                    txtdates.Text = "";
                }
        }
        }
        private void btRealTimeInventory2_Click(object sender, EventArgs e)
        {
            if (btRealTimeInventory.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read in '18000-6C RFID READER' First ! !");
                return;
            }
            try
            {
                m_curInventoryBuffer.ClearInventoryPar();
                m_curInventoryBuffer.btRepeat = Convert.ToByte("1");
                m_curInventoryBuffer.bLoopCustomizedSession = false;
                m_curInventoryBuffer.lAntenna.Add(0x00);
                //默认循环发送命令
                if (m_curInventoryBuffer.bLoopInventory)
                {
                    m_temp = 0;
                    m_bInventory = false;
                    m_curInventoryBuffer.bLoopInventory = false;
                    btRealTimeInventory2.BackColor = Color.WhiteSmoke;
                    btRealTimeInventory2.ForeColor = Color.DarkBlue;
                    btRealTimeInventory2.Text = "Start Read";
                    txtdates.Enabled = true;
                    txtdatee.Enabled = true;
                    textBox12.Enabled = true;
                    textBox5.Enabled = true;
                    dtpInput.Enabled = true;
                    checkBox1.Enabled = true;
                    lvdel.Enabled = true;
                    if (checkBox1.Checked)
                    {
                        comboBox3.Enabled = false;
                        textBox9.Enabled = false;
                    }
                    else
                    {
                        comboBox3.Enabled = true;
                        if (comboBox3.Text.Equals("All"))
                        {
                            textBox9.Enabled = false;
                        }
                        else
                        {
                            textBox9.Enabled = true;
                        }

                    }
                    timerInventory.Enabled = false;
                    return;
                }
                else
                {
                    m_temp = 2;
                    m_bInventory = true;
                    m_curInventoryBuffer.bLoopInventory = true;
                    btRealTimeInventory2.BackColor = Color.DarkBlue;
                    btRealTimeInventory2.ForeColor = Color.White;
                    btRealTimeInventory2.Text = "Stop Read";
                    txtdates.Enabled = false;
                    txtdatee.Enabled = false;
                    textBox12.Enabled = false;
                    textBox5.Enabled = false;
                    textBox9.Enabled = false;
                    dtpInput.Enabled = false;
                    comboBox3.Enabled = false;
                    checkBox1.Enabled = false;
                    lvdel.Enabled = false;
                }
                m_curInventoryBuffer.bLoopInventoryReal = true;

                m_curInventoryBuffer.ClearInventoryRealResult();
                lvdel.Items.Clear();
                lvdel.Items.Clear();
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
        private void btn_Click(object sender, EventArgs e)
        {
            lvdel.Items.Clear();
            SqlConnection conn;
            conn = new SqlConnection(str);
            conn.Open();
            SqlCommand cmd = new SqlCommand()
            {
                CommandText = "LoadListRFID_QC",
                Connection = conn,
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.Add("@TESTNO", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@RFIDNO", SqlDbType.VarChar).Value = lvRealList.Items[0].SubItems[2].Text;
            cmd.Parameters.Add("@ARTICLE", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@Material", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@WHNO", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@SNO", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@dates", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@datee", SqlDbType.VarChar).Value = "";
            cmd.Parameters.Add("@month", SqlDbType.Int).Value = 0;
            cmd.Parameters.Add("@year", SqlDbType.Int).Value = 0;
            SqlDataReader sqlDataReader = cmd.ExecuteReader();
            SqlDataReader dataReader = sqlDataReader;
            while ((dataReader.Read()))
            {
                ListViewItem item = new ListViewItem();
                item.SubItems.Add(dataReader["TESTNO"].ToString());
                item.SubItems.Add(dataReader["RFIDNO"].ToString());
                item.SubItems.Add(dataReader["YPDH"].ToString());
                item.SubItems.Add(dataReader["Article"].ToString());
                item.SubItems.Add(dataReader["Season"].ToString());
                item.SubItems.Add(dataReader["stage"].ToString());
                item.SubItems.Add(dataReader["FD"].ToString());
                item.SubItems.Add(dataReader["Material#"].ToString());
                item.SubItems.Add(dataReader["date"].ToString());
                item.SubItems.Add(dataReader["WHNO"].ToString());
                item.SubItems.Add(dataReader["SNO"].ToString());
                item.SubItems.Add(dataReader["Carton"].ToString());
                item.SubItems.Add(dataReader["info"].ToString());
                item.SubItems.Add(dataReader["day"].ToString());
                item.SubItems.Add(dataReader["memo"].ToString());
                textBox16.Text = dataReader["Material#"].ToString();
                textBox12.Text = dataReader["TESTNO"].ToString();
                textBox5.Text = dataReader["Article"].ToString();
                txtdates.Text = dataReader["date"].ToString();
                richTextBox1.Text = dataReader["memo"].ToString();
                if (dataReader["WHNO"].ToString().Equals("") && dataReader["SNO"].ToString().Equals(""))
                {
                    checkBox1.Checked = true;
                }
                else
                {
                    checkBox1.Checked = false;
                    comboBox3.SelectedItem = dataReader["WHNO"].ToString();
                    textBox9.Text = dataReader["SNO"].ToString();
                }
                if (Int32.Parse(dataReader["day"].ToString()) < -1 | Int32.Parse(dataReader["day"].ToString()) > 30)
                {
                    item.ForeColor = Color.Red;
                }
                lvdel.Items.Add(item);
            }
            ledReal2.Text = lvdel.Items.Count.ToString();
            dataReader.Close();
            conn.Close();
            tabCtrMain.SelectTab(2);
        }
        private void button8_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            string sql1 = "select COUNT(*) from RFID_WH where WHNO='" + textBox11.Text + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, conn);
            int r = Convert.ToInt32(cmd1.ExecuteScalar());
            if (r != 0)
            {
                MessageBox.Show("WHNO has been in Data !");
                textBox11.Text = "";
                conn.Close();
                return;
            }
            if (!textBox11.Text.Equals("") && !textBox11.Text.Equals("##"))
            {
                string sql = "Insert into RFID_WH (WHNO,SNO) Values('" + textBox11.Text + "', '##')";
                SqlCommand cmd = new SqlCommand(sql, conn);
                try
                {
                    cmd = new SqlCommand(sql, conn);
                    cmd.ExecuteNonQuery();
                    lrtxtLog.Clear();
                    lrtxtLog.AppendText("Input WareHouseNO Completed !");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            LoadCBB();
            conn.Close();
        }
        private void button9_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            string sql1 = "select COUNT(*) from RFID_WH where WHNO='" + comboBox4.Text + "' and SNO='"+ textBox10.Text + "'";
            SqlCommand cmd1 = new SqlCommand(sql1, conn);
            int r = Convert.ToInt32(cmd1.ExecuteScalar());
            if (r != 0)
            {
                MessageBox.Show("WHNO,SNO has been in Data !");
                textBox10.Text = "";
                if (!comboBox4.Text.Equals(""))
                {
                    comboBox4.SelectedIndex = 0;
                }
                conn.Close();
                return;
            }
            if (!textBox10.Text.Equals("") && !comboBox4.Text.Equals(""))
            {
                string sql = "Insert into RFID_WH (WHNO,SNO) Values('" + comboBox4.Text + "', '"+ textBox10.Text + "')";
                SqlCommand cmd = new SqlCommand(sql, conn);
                try
                {
                    cmd = new SqlCommand(sql, conn);
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
            LoadLVWWH();
            conn.Close();
        }
        private void button4_Click(object sender, EventArgs e)
        {
            if (btRealTimeInventory2.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }
            if (btRealTimeInventory2.Text == "Start Read")
            {
                if (lvdel.CheckedItems.Count > 0)
                {
                    var confirmation = MessageBox.Show(
                        "Confirm report ? ",
                        "Note", MessageBoxButtons.YesNo, MessageBoxIcon.Question
                    );

                    if (confirmation == DialogResult.Yes)
                    {
                        lvtempr.Items.Clear();
                        lrtxtLog.Clear();
                        SqlConnection conn;
                        string sql;
                        SqlCommand cmd;
                        conn = new SqlConnection(str);
                        conn.Open();
                        int j = 0;
                        int i = 1;
                        foreach (ListViewItem lv in lvdel.CheckedItems)
                        {
                            sql = "select COUNT(*) from RFID_TB where RFIDNO='" + lv.SubItems[2].Text + "'";
                            cmd = new SqlCommand(sql, conn);
                            int c = Convert.ToInt32(cmd.ExecuteScalar());
                            if (c > 0)
                            {
                                sql = "select COUNT(*) from RFID_TB " +
                                      "where RFIDNO='" + lv.SubItems[2].Text + "' AND WHNO is not null AND SNO is not null " +
                                      "      AND EXISTS(select WHNO,SNO from RFID_WH where RFID_TB.WHNO=RFID_WH.WHNO and SNO='##')";
                                cmd = new SqlCommand(sql, conn);
                                int r = Convert.ToInt32(cmd.ExecuteScalar());
                                if (r == 0)
                                {
                                    lrtxtLog.AppendText(lv.SubItems[2].Text + "\n");
                                }
                            }
                            else
                            {
                                lrtxtLog.AppendText(lv.SubItems[2].Text + "\n");
                                j = j + 1;
                            }
                        }
                        if (j > 0)
                        {
                            lrtxtLog.AppendText("Not in TB DATA !\n");
                        }
                        if (lrtxtLog.Text != "")
                        {
                            lrtxtLog.AppendText("The above RFIDNO cannot be report, because there are have not in Warehouse !");
                        }
                        else
                        {
                            foreach (ListViewItem lv in lvdel.CheckedItems)
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
                                item.SubItems.Add(lv.SubItems[12].Text);
                                item.SubItems.Add(textBox8.Text);
                                item.SubItems.Add(DateTime.Now.ToString("dd/MM/yyyy"));
                                lvtempr.Items.Add(item);
                                i++;
                            }
                            ExportToExcel(lvtempr);
                            if (lrtxtLog.Text == "")
                            {
                                foreach (ListViewItem lv in lvdel.CheckedItems)
                                {
                                    sql = "Insert into RFID_DEL (TESTNO,RFIDNO,DELUSER,DELDATE,PROGRAM_ID,MEMO) " +
                                          "Values ('" + lv.SubItems[1].Text + "', '" + lv.SubItems[2].Text + "', '" + textBox8.Text + "', '" 
                                                      + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', 'DCWH_QC', 'Waste report')";
                                    try
                                    {
                                        cmd = new SqlCommand(sql, conn);
                                        cmd.ExecuteNonQuery();
                                    }
                                    catch (Exception ex)
                                    {
                                        MessageBox.Show(ex.Message);
                                    }

                                    sql = "DELETE FROM RFID_TB Where RFIDNO = '" + lv.SubItems[2].Text + "'";
                                    try
                                    {
                                        cmd = new SqlCommand(sql, conn);
                                        cmd.ExecuteNonQuery();
                                    }
                                    catch (Exception ex)
                                    {
                                        MessageBox.Show(ex.Message);
                                    }
                                }
                                lrtxtLog.AppendText("REPORT Completed !" + "\n");
                                menuItem1_Click(sender, e);
                            }
                        }
                        conn.Close();
                    }
                }
                else
                {
                    MessageBox.Show("Not checked !", "Error",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void button5_Click(object sender, EventArgs e)
        {
            if (btRealTimeInventory2.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }
            if (btRealTimeInventory2.Text == "Start Read")
            {
                if (lvdel.CheckedItems.Count > 0)
                {
                    var confirmation = MessageBox.Show(
                        "Confirm Ship for customers ? ",
                        "Note", MessageBoxButtons.YesNo, MessageBoxIcon.Question
                    );

                    if (confirmation == DialogResult.Yes)
                    {
                        lvtemps.Items.Clear();
                        lrtxtLog.Clear();
                        SqlConnection conn;
                        string sql;
                        SqlCommand cmd;
                        conn = new SqlConnection(str);
                        conn.Open();
                        int j = 0;
                        int i = 1;
                        foreach (ListViewItem lv in lvdel.CheckedItems)
                        {
                            sql = "select COUNT(*) from RFID_TB where RFIDNO='" + lv.SubItems[2].Text + "'";
                            cmd = new SqlCommand(sql, conn);
                            int c = Convert.ToInt32(cmd.ExecuteScalar());
                            if (c > 0)
                            {
                                sql = "select COUNT(*) from RFID_TB " +
                                      "where RFIDNO='" + lv.SubItems[2].Text + "' AND WHNO is not null AND SNO is not null " +
                                      "      AND EXISTS (select WHNO,SNO from RFID_WH where RFID_TB.WHNO=RFID_WH.WHNO and SNO='##')";
                                cmd = new SqlCommand(sql, conn);
                                int r = Convert.ToInt32(cmd.ExecuteScalar());
                                if (r == 0)
                                {
                                    lrtxtLog.AppendText(lv.SubItems[2].Text + "\n");
                                }
                            }
                            else
                            {
                                lrtxtLog.AppendText(lv.SubItems[2].Text + "\n");
                                j = j + 1;
                            }
                        }
                        if (j > 0)
                        {
                            lrtxtLog.AppendText("Not in TB DATA !\n");
                        }
                        if (lrtxtLog.Text != "")
                        {
                            lrtxtLog.AppendText("The above RFIDNO cannot be Ship for customers ，because there are have not in Warehouse !");
                        }
                        else
                        {
                            foreach (ListViewItem lv in lvdel.CheckedItems)
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
                                item.SubItems.Add(lv.SubItems[12].Text);
                                item.SubItems.Add("CUSTOMER");
                                item.SubItems.Add(textBox8.Text);
                                item.SubItems.Add(DateTime.Now.ToString("dd/MM/yyyy"));
                                lvtemps.Items.Add(item);
                                i++;
                            }
                            ExportToExcel(lvtemps);
                            if (lrtxtLog.Text == "")
                            {
                                foreach (ListViewItem lv in lvdel.CheckedItems)
                                {
                                    sql = "Insert into RFID_DEL (TESTNO,RFIDNO,DELUSER,DELDATE,PROGRAM_ID,MEMO) " +
                                          "Values ('" + lv.SubItems[1].Text + "', '" + lv.SubItems[2].Text + "', '" + textBox8.Text + "', '" 
                                                      + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', 'DCWH_QC', 'Ship for customers')";
                                    try
                                    {
                                        cmd = new SqlCommand(sql, conn);
                                        cmd.ExecuteNonQuery();
                                    }
                                    catch (Exception ex)
                                    {
                                        MessageBox.Show(ex.Message);
                                    }

                                    sql = "DELETE FROM RFID_TB Where RFIDNO = '" + lv.SubItems[2].Text + "'";
                                    try
                                    {
                                        cmd = new SqlCommand(sql, conn);
                                        cmd.ExecuteNonQuery();
                                    }
                                    catch (Exception ex)
                                    {
                                        MessageBox.Show(ex.Message);
                                    }
                                }
                                lrtxtLog.AppendText("Ship for customers Completed !" + "\n");
                                menuItem1_Click(sender, e);
                            }
                        }
                        conn.Close();
                    }
                }
                else
                {
                    MessageBox.Show("Not checked !", "Error",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void button12_Click(object sender, EventArgs e)
        {
            if (btRealTimeInventory2.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }
            if (btRealTimeInventory2.Text == "Start Read")
            {
                if (lvdel.CheckedItems.Count > 0)
                {
                    lvtemp.Items.Clear();
                    int i = 1;
                    foreach (ListViewItem lv in lvdel.CheckedItems)
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
                        if (!lv.SubItems[10].Text.Equals("Not in warehouse"))
                        {
                            item.SubItems.Add(lv.SubItems[10].Text);
                        }
                        else
                        {
                            if (lv.SubItems[13].Text.Equals(""))
                            {
                                item.SubItems.Add("Shoes not received to the warehouse");
                            }
                            else
                            {
                                SqlConnection conn;
                                conn = new SqlConnection(str);
                                conn.Open();
                                string a = lv.SubItems[13].Text;
                                a = a.Replace(":", ",");
                                a = a.Replace(" ", "");
                                string[] userid = a.Split(new char[] { ',' });
                                string sql;
                                sql = "select USERNAME from LYS_ERP.dbo.busers where USERID='" + userid[1] + "'";
                                SqlCommand cmd = new SqlCommand(sql, conn);
                                String r1 = Convert.ToString(cmd.ExecuteScalar());
                                if (userid[0].Equals("QC"))
                                {
                                    item.SubItems.Add("Move out for QC: " + userid[1] + ", " + r1);
                                }
                                else
                                {
                                    item.SubItems.Add("Move out: " + userid[1] + ", " + r1);
                                }
                                conn.Close();
                            }
                        }
                        item.SubItems.Add(lv.SubItems[11].Text);
                        item.SubItems.Add(lv.SubItems[12].Text);
                        item.SubItems.Add(lv.SubItems[14].Text);
                        item.SubItems.Add(textBox8.Text);
                        item.SubItems.Add(" "+DateTime.Now.ToString("dd/MM/yyyy"));
                        item.SubItems.Add(lv.SubItems[15].Text);
                        item.ForeColor = lv.ForeColor;
                        lvtemp.Items.Add(item);
                        i++;
                    }
                    lrtxtLog.Clear();
                    ExportToExcel(lvtemp);
                    if(lrtxtLog.Text == "")
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
        }
        private void button13_Click(object sender, EventArgs e)
        {
            if (btRealTimeInventory2.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }
            if (btRealTimeInventory2.Text == "Start Read")
            {
                if (lvdel.CheckedItems.Count > 0)
                {
                    var confirmation = MessageBox.Show(
                        "Confirm delete ? ",
                        "Note", MessageBoxButtons.YesNo, MessageBoxIcon.Question
                    );

                    if (confirmation == DialogResult.Yes)
                    {
                        lrtxtLog.Clear();
                        SqlConnection conn;
                        string sql;
                        SqlCommand cmd;
                        conn = new SqlConnection(str);
                        conn.Open();
                        int j = 0;
                        foreach (ListViewItem lv in lvdel.CheckedItems)
                        {
                            sql = "select COUNT(*) from RFID_TB where RFIDNO='" + lv.SubItems[2].Text + "'";
                            cmd = new SqlCommand(sql, conn);
                            int c = Convert.ToInt32(cmd.ExecuteScalar());
                            if (c > 0)
                            {
                                sql = "select COUNT(*) from RFID_TB " +
                                      "where RFIDNO='" + lv.SubItems[2].Text + "' AND WHNO is not null AND SNO is not null " +
                                      "  and RFID_TB.PROGRAM_ID='DCWH_QC' " +
                                      "  AND EXISTS (select WHNO,SNO from RFID_WH where RFID_TB.WHNO=RFID_WH.WHNO and SNO='##')";
                                cmd = new SqlCommand(sql, conn);
                                int r = Convert.ToInt32(cmd.ExecuteScalar());
                                if (r == 0)
                                {
                                    lrtxtLog.AppendText(lv.SubItems[2].Text + "\n");
                                }
                            }
                            else
                            {
                                lrtxtLog.AppendText(lv.SubItems[2].Text + "\n");
                                j = j + 1;
                            }
                        }
                        if (j > 0)
                        {
                            lrtxtLog.AppendText("Not in TB DATA !\n");
                        }
                        if (lrtxtLog.Text != "")
                        {
                            lrtxtLog.AppendText("The above RFIDNO cannot be deleted ，because there are have not in Warehouse !");
                        }
                        else
                        {
                            foreach (ListViewItem lv in lvdel.CheckedItems)
                            {
                                sql = "Insert into RFID_DEL (TESTNO,RFIDNO,DELUSER,DELDATE,PROGRAM_ID,MEMO) " +
                                      "Values ('" + lv.SubItems[1].Text + "', '" + lv.SubItems[2].Text + "', '" + textBox8.Text + "', '"
                                                  + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', 'DCWH_QC', 'Wrong')";
                                try
                                {
                                    cmd = new SqlCommand(sql, conn);
                                    cmd.ExecuteNonQuery();
                                }
                                catch (Exception ex)
                                {
                                    MessageBox.Show(ex.Message);
                                }

                                sql = "DELETE FROM RFID_TB Where RFIDNO = '" + lv.SubItems[2].Text + "'";
                                try
                                {
                                    cmd = new SqlCommand(sql, conn);
                                    cmd.ExecuteNonQuery();
                                }
                                catch (Exception ex)
                                {
                                    MessageBox.Show(ex.Message);
                                }
                            }
                            lrtxtLog.AppendText("DELETE Completed !" + "\n");
                            menuItem1_Click(sender, e);
                        }
                        conn.Close();
                    }
                }
                else
                {
                    MessageBox.Show("Not checked !", "Error",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void button10_Click(object sender, EventArgs e)
        {
            if (btRealTimeInventory2.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read First !");
                return;
            }
            if (btRealTimeInventory2.Text == "Start Read")
            {
                if (lvdel.CheckedItems.Count > 0 && !richTextBox1.Text.Equals(""))
                {
                    lrtxtLog.Clear();
                    SqlConnection conn;
                    string sql, sql1;
                    SqlCommand cmd;
                    conn = new SqlConnection(str);
                    conn.Open();
                    foreach (ListViewItem lv in lvdel.CheckedItems)
                    {
                        sql = "select top 1 DEPARTMENT,IO,WorkID,WHNO,SNO from RFID_TRACK where RFIDNO='" + lv.SubItems[2].Text + "' order by USERDATE DESC";
                        cmd = new SqlCommand(sql, conn);
                        SqlDataReader dataReader = cmd.ExecuteReader();
                        string DEPARTMENT = "";
                        string IO = "";
                        string WorkID = "";
                        string WHNO = "";
                        string SNO = "";
                        while ((dataReader.Read()))
                        {
                            DEPARTMENT = dataReader[0].ToString();
                            IO = dataReader[1].ToString();
                            WorkID = dataReader[2].ToString();
                            WHNO= dataReader[3].ToString();
                            SNO= dataReader[4].ToString();
                        }
                        dataReader.Close();
                        if (IO == "RECEIVE" && (DEPARTMENT == "DC QC" | DEPARTMENT == ""))
                        {
                            lrtxtLog.AppendText(lv.SubItems[2].Text + "is QC or CDC received!" + "\n");
                        }
                        else
                        {
                            sql = "Insert into RFID_DEL (TESTNO,RFIDNO,DELUSER,DELDATE,PROGRAM_ID,MEMO) " +
                                          "Values ('" + lv.SubItems[1].Text + "', '" + lv.SubItems[2].Text + "', '" + textBox8.Text + "', '"
                                                      + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "', 'DCWH_QC', '" + richTextBox1.Text + "')";

                            sql1 = "Insert into RFID_TRACK (TESTNO,RFIDNO,USERID,USERDATE,IO,DEPARTMENT,ARTICLE,WorkID,WHNO,SNO,MEMO,PROGRAM_ID) " +
                                   "Values ('" + lv.SubItems[1].Text + "', '" + lv.SubItems[2].Text + "', '"
                                              + textBox8.Text + "', '" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
                                              + "', 'MOVE OUT', '" + DEPARTMENT + "', '" + lv.SubItems[4].Text + "', '" + WorkID + "', '"
                                              + WHNO + "', '" + SNO + "', N'" + richTextBox1.Text + "', 'DCWH_QC')";
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
                            lrtxtLog.AppendText(lv.SubItems[2].Text+" Remark Completed !" + "\n");
                        }
                    }
                    conn.Close();
                }
                else
                {
                    MessageBox.Show("Not checked !", "Error",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void lvRealList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void AutoComplete(string text, System.Windows.Forms.TextBox textBox)
        {
            AutoCompleteStringCollection auto2 = new AutoCompleteStringCollection();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = str;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            string sql = "Select top 5 "+text+" from RFID_TB";
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
                    auto2.Add(reader[""+text+""].ToString());
                }
            }
            textBox.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
            textBox.AutoCompleteSource = AutoCompleteSource.CustomSource;
            textBox.AutoCompleteCustomSource = auto2;
        }
        private void AutoCompleteSNO(string combobox, System.Windows.Forms.TextBox textBox)
        {
            AutoCompleteStringCollection auto2 = new AutoCompleteStringCollection();
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = str;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            string sql = "Select top 5 SNO " +
                          "from RFID_WH t1 " +
                          "where WHNO = '" + combobox + "' " +
                          "and Sno not like '##' and EXISTS (select WHNO,SNO from RFID_WH t2 where t1.WHNO=t2.WHNO and t2.SNO='##')";
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
                    auto2.Add(reader["SNO"].ToString());
                }
            }
            textBox.AutoCompleteMode = AutoCompleteMode.SuggestAppend;
            textBox.AutoCompleteSource = AutoCompleteSource.CustomSource;
            textBox.AutoCompleteCustomSource = auto2;
        }
        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            AutoCompleteSNO(comboBox2.Text, textBox6);
        }
    }
}
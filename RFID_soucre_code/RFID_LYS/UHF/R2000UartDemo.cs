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
using System.Reflection.Emit;
using System.Text.RegularExpressions;
using System.Timers;

namespace UHF
{
    public partial class R2000UartDemo : Form
    {
        private Reader.ReaderMethod reader;
        private ReaderSetting m_curSetting = new ReaderSetting();
        private InventoryBuffer m_curInventoryBuffer = new InventoryBuffer();
        private System.Timers.Timer _timer, _timer1;

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
        private string _token;
        private DateTime _tokenExpiresAt;
        private ListView lvtempe;
        private List<string> rfidList;
        private string connectionString = "server=192.168.71.7;database=LIY_TYTHAC;uid=tyxuan;pwd=jack";

        public R2000UartDemo()
        {
            InitializeComponent();
        }
        private void SetupTimer()
        {
            // Thiết lập timer với khoảng thời gian 1 phút (60000ms)
            _timer = new System.Timers.Timer(60000);
            _timer.Elapsed += TimerElapsed; // Gắn sự kiện khi timer chạy
            _timer.AutoReset = true; // Timer sẽ tự động chạy lại sau mỗi chu kỳ
            _timer.Enabled = true; // Bật timer
            // Thiết lập timer với khoảng thời gian 1 phút (60000ms)
            _timer1 = new System.Timers.Timer(1000);
            _timer1.Elapsed += TimerElapsed1; // Gắn sự kiện khi timer chạy
            _timer1.AutoReset = true; // Timer sẽ tự động chạy lại sau mỗi chu kỳ
            _timer1.Enabled = true; // Bật timer
        }
        private T GetControlValue<T>(Func<T> action)
        {
            if (this.InvokeRequired)
            {
                return (T)this.Invoke(action);
            }
            return action();
        }
        private void TimerElapsed(object sender, ElapsedEventArgs e)
        {
            string id1 = string.Empty;

            // Lấy giá trị từ UI controls trên UI thread
            this.Invoke((MethodInvoker)delegate
            {
                id1 = GetControlValue(() => cbDep.SelectedValue?.ToString() ?? string.Empty);
            });

            string query = @"
                        SELECT COUNT(qty) Total1
                             FROM RFID_TempStitching 
                             WHERE CONVERT(VARCHAR, Userdate, 111) = CONVERT(VARCHAR, GETDATE(), 111) 
                             AND ID = @ID1";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ID1", id1);

                        // Thực hiện truy vấn
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Cập nhật giao diện (UI thread)
                                this.Invoke((MethodInvoker)delegate
                                {
                                    ledTotal1.Text = reader["Total1"].ToString();
                                });
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                this.Invoke((MethodInvoker)delegate
                {
                    lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message + Environment.NewLine);
                });
            }
        }
        private void TimerElapsed1(object sender, ElapsedEventArgs e)
        {
            string id2 = string.Empty;

            // Lấy giá trị từ UI controls trên UI thread
            this.Invoke((MethodInvoker)delegate
            {
                id2 = GetControlValue(() => cbDep2.SelectedValue?.ToString() ?? string.Empty);
            });

            string query = @"
                        SELECT COUNT(qty) Total2
                             FROM RFID_TempAssembly 
                             WHERE CONVERT(VARCHAR, Userdate, 111) = CONVERT(VARCHAR, GETDATE(), 111) 
                             AND ID = @ID2";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@ID2", id2);

                        // Thực hiện truy vấn
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Cập nhật giao diện (UI thread)
                                this.Invoke((MethodInvoker)delegate
                                {
                                    ledTotal2.Text = reader["Total2"].ToString();
                                });
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                this.Invoke((MethodInvoker)delegate
                {
                    lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message + Environment.NewLine);
                });
            }
        }
        private async Task<string> FetchEpcData(string epc)
        {
            try
            {
                await RefreshTokenIfNeeded();
                // Gọi hàm GetData từ DeckersFetchService
                var sizeNumber = await DeckersFetchService.GetDataSize(epc, _token).ConfigureAwait(false);

                // Trả về kết quả
                return sizeNumber;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                return (null); // Trả về giá trị null nếu lỗi
            }
        }
        private async Task RefreshTokenIfNeeded()
        {
            try
            {
                if (string.IsNullOrEmpty(_token) || DateTime.UtcNow >= _tokenExpiresAt)
                {
                    var tokenData = await DeckersFetchService.GetOAuthToken("D").ConfigureAwait(false);

                    if (!string.IsNullOrEmpty(tokenData.Token))
                    {
                        _token = tokenData.Token;
                        _tokenExpiresAt = DateTime.UtcNow.AddSeconds(tokenData.ExpiresIn - 60);
                    }
                    else
                    {
                        MessageBox.Show("Không thể lấy token!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lỗi khi lấy token: {ex.Message}", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private async void FrmMain_Load(object sender, EventArgs e)
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
            cmbComPort.SelectedIndex = 0;
            cmbBaudrate.SelectedIndex = 1;
            rfidList = new List<string>();
            LoadDep();
            SetupTimer();
            await RefreshTokenIfNeeded();
        }
        private void LoadDep()
        {
            string queryS = @"select * from [LYS_ERP].[dbo].[BDepartment] BDepartment
                             where ID in ('VDH0591','VDH0588','VDH0582','VDH0593','VDH0587','VDH0583','VDH0584','VDH0592','VDH0589','VDH0590','VDH0586','VDH0585')";

            string queryA = @"select * from [LYS_ERP].[dbo].[BDepartment] BDepartment
                             where ID in ('VDH0551','VDH0523','VDH0529','VDH0527','VDH0524','VDH0548','VDH0526','VDH0550','VDH0525','VDH0581','VDH0549','VDH0528')";

            try
            {
                // Kết nối đến cơ sở dữ liệu
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    // Tạo đối tượng SqlCommand
                    using (SqlCommand command = new SqlCommand(queryS, connection))
                    {
                        // Tạo SqlDataAdapter để lấy dữ liệu
                        SqlDataAdapter adapter = new SqlDataAdapter(command);

                        // Lưu dữ liệu vào DataTable
                        System.Data.DataTable db = new System.Data.DataTable();
                        adapter.Fill(db);

                        // Gán dữ liệu vào ComboBox
                        cbDep.DataSource = db;
                        cbDep.DisplayMember = "DEPNAME"; // Hiển thị tên
                        cbDep.ValueMember = "ID";       // Giá trị ẩn là ID
                    }
                    // Tạo đối tượng SqlCommand
                    using (SqlCommand command = new SqlCommand(queryA, connection))
                    {
                        // Tạo SqlDataAdapter để lấy dữ liệu
                        SqlDataAdapter adapter = new SqlDataAdapter(command);

                        // Lưu dữ liệu vào DataTable
                        System.Data.DataTable db = new System.Data.DataTable();
                        adapter.Fill(db);

                        // Gán dữ liệu vào ComboBox
                        cbDep2.DataSource = db;
                        cbDep2.DisplayMember = "DEPNAME"; // Hiển thị tên
                        cbDep2.ValueMember = "ID";       // Giá trị ẩn là ID
                    }
                }
            }
            catch (Exception ex)
            {
                lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message);
            }
        }

        private void cbDep_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Kiểm tra nếu có giá trị được chọn trong comboBox1
            if (cbDep.SelectedValue != null)
            {
                DataRowView selectedRow = cbDep.SelectedItem as DataRowView;
                string selectedID = "";
                if (selectedRow != null)
                {
                    selectedID = selectedRow["ID"].ToString();
                }

                string query = @"
                                SELECT DISTINCT DDBH
                                FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                                LEFT JOIN [LYS_ERP].[dbo].[SMZL] SMZL ON SMDDSS.CODEBAR = SMZL.CODEBAR
                                WHERE --SMDDSS.USERDATE >= '2024-12-10'
                                CONVERT(VARCHAR, SMDDSS.ScanSDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)
                                AND SMZL.DepNO = @ID";
                string queryT = @"
                                select count(qty) total from RFID_TempStitching where CONVERT(VARCHAR, Userdate, 111) = CONVERT(VARCHAR, GETDATE(), 111) and ID=@ID";
                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Thêm tham số @DepNO
                            command.Parameters.AddWithValue("@ID", selectedID);

                            // Tạo SqlDataAdapter để lấy dữ liệu
                            SqlDataAdapter adapter = new SqlDataAdapter(command);

                            // Tạo DataTable để lưu dữ liệu
                            System.Data.DataTable dataTable = new System.Data.DataTable();
                            adapter.Fill(dataTable);

                            // Gán dữ liệu vào comboBox2
                            cbDDBH.DataSource = dataTable;
                            cbDDBH.DisplayMember = "DDBH"; // Hiển thị DDBH
                            cbDDBH.ValueMember = "DDBH";  // Giá trị ẩn cũng là DDBH
                        }
                        using (SqlCommand command = new SqlCommand(queryT, connection))
                        {
                            // Thêm tham số @DepNO
                            command.Parameters.AddWithValue("@ID", selectedID);

                            // Tạo SqlDataAdapter để lấy dữ liệu
                            SqlDataAdapter adapter = new SqlDataAdapter(command);

                            // Tạo DataTable để lưu dữ liệu
                            System.Data.DataTable dataTable = new System.Data.DataTable();
                            adapter.Fill(dataTable);

                            ledTotal1.Text = dataTable.Rows[0][0].ToString();
                        }
                        connection.Close();
                    }
                }
                catch (Exception ex)
                {
                    lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message);
                }
            }
        }
        private void cbDep2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Kiểm tra nếu có giá trị được chọn trong comboBox1
            if (cbDep2.SelectedValue != null)
            {
                DataRowView selectedRow = cbDep2.SelectedItem as DataRowView;
                string selectedID = "";
                if (selectedRow != null)
                {
                    selectedID = selectedRow["ID"].ToString();
                }

                string query = @"
                                SELECT DISTINCT smdd.YSBH as DDBH
                                FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                                LEFT JOIN [LYS_ERP].[dbo].[SMZL] SMZL ON SMDDSS.CODEBAR = SMZL.CODEBAR
								left join [LYS_ERP].[dbo].[SMDD] SMDD on smddss.DDBH=smdd.DDBH
                                WHERE CONVERT(VARCHAR, SMDDSS.ScanSDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)
                                AND SMZL.DepNO = @ID";         
                /*string query = @"
                                SELECT DISTINCT DDBH
                                FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                                LEFT JOIN [LYS_ERP].[dbo].[SMZL] SMZL ON SMDDSS.CODEBAR = SMZL.CODEBAR
                                WHERE --SMDDSS.USERDATE >= '2024-12-10'
                                CONVERT(VARCHAR, SMDDSS.ScanSDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)
                                AND SMZL.DepNO = @ID";*/
                string queryT = @"
                                select count(qty) total from RFID_TempAssembly where CONVERT(VARCHAR, Userdate, 111) = CONVERT(VARCHAR, GETDATE(), 111) and ID=@ID";
                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Thêm tham số @DepNO
                            command.Parameters.AddWithValue("@ID", selectedID);

                            // Tạo SqlDataAdapter để lấy dữ liệu
                            SqlDataAdapter adapter = new SqlDataAdapter(command);

                            // Tạo DataTable để lưu dữ liệu
                            System.Data.DataTable dataTable = new System.Data.DataTable();
                            adapter.Fill(dataTable);

                            // Gán dữ liệu vào comboBox2
                            cbDDBH2.DataSource = dataTable;
                            cbDDBH2.DisplayMember = "DDBH"; // Hiển thị DDBH
                            cbDDBH2.ValueMember = "DDBH";  // Giá trị ẩn cũng là DDBH
                        }
                        using (SqlCommand command = new SqlCommand(queryT, connection))
                        {
                            // Thêm tham số @DepNO
                            command.Parameters.AddWithValue("@ID", selectedID);

                            // Tạo SqlDataAdapter để lấy dữ liệu
                            SqlDataAdapter adapter = new SqlDataAdapter(command);

                            // Tạo DataTable để lưu dữ liệu
                            System.Data.DataTable dataTable = new System.Data.DataTable();
                            adapter.Fill(dataTable);

                            ledTotal2.Text = dataTable.Rows[0][0].ToString();
                        }
                        connection.Close();
                    }
                }
                catch (Exception ex)
                {
                    lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message);
                }
            }
        }
        private void cbDDBH_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Kiểm tra nếu có giá trị được chọn trong ComboBox
            if (cbDDBH.SelectedValue != null)
            {
                DataRowView selectedRow = cbDDBH.SelectedItem as DataRowView;
                string selectedID = "";

                // Lấy giá trị DDBH từ DataRowView
                if (selectedRow != null)
                {
                    selectedID = selectedRow["DDBH"].ToString();
                }

                string query = @"
                        SELECT 
                            SMDDSS.DDBH,
                            SMDDSS.SIZE,
                            SMDDSS.Order_Quantity,
                            ISNULL(COUNT(rt.SIZE), 0) AS OK_Quantity
                        FROM 
                        (
                            SELECT DDBH, XXCC AS SIZE, CTS AS Order_Quantity 
                            FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                            WHERE DDBH = @DDBH and GXLB='S'
                        ) SMDDSS
                        LEFT JOIN RFID_TempStitching rt 
                            ON rt.DDBH = SMDDSS.DDBH AND rt.SIZE = SMDDSS.SIZE
                        GROUP BY SMDDSS.DDBH, SMDDSS.SIZE, SMDDSS.Order_Quantity
                        ORDER BY SIZE";

                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Thêm tham số @DDBH
                            command.Parameters.AddWithValue("@DDBH", selectedID);

                            // Tạo SqlDataAdapter để lấy dữ liệu
                            SqlDataAdapter adapter = new SqlDataAdapter(command);

                            // Tạo DataTable để lưu dữ liệu
                            System.Data.DataTable dataTable = new System.Data.DataTable();
                            adapter.Fill(dataTable);

                            // Xóa dữ liệu cũ trong ListView trước khi load dữ liệu mới
                            lvOrder.Items.Clear();

                            // Tạm thời ngừng cập nhật giao diện ListView
                            lvOrder.BeginUpdate();

                            try
                            {
                                // Tạo một danh sách ListViewItem để lưu tạm
                                List<ListViewItem> items = new List<ListViewItem>();

                                foreach (DataRow row in dataTable.Rows)
                                {
                                    // Tạo ListViewItem cho từng dòng dữ liệu
                                    ListViewItem item = new ListViewItem(row["DDBH"].ToString());
                                    item.SubItems.Add(row["SIZE"].ToString());
                                    item.SubItems.Add(row["Order_Quantity"].ToString());
                                    item.SubItems.Add(row["OK_Quantity"].ToString());

                                    // Thêm vào danh sách tạm
                                    items.Add(item);
                                }

                                // Thêm toàn bộ danh sách vào ListView chỉ một lần
                                lvOrder.Items.AddRange(items.ToArray());
                            }
                            finally
                            {
                                // Tiếp tục cập nhật giao diện ListView
                                lvOrder.EndUpdate();
                            }
                        }
                        connection.Close();
                    }
                }
                catch (Exception ex)
                {
                    lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message + Environment.NewLine);
                }
            }
        }
        private void cbDDBH2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Kiểm tra nếu có giá trị được chọn trong ComboBox
            if (cbDDBH2.SelectedValue != null)
            {
                DataRowView selectedRow = cbDDBH2.SelectedItem as DataRowView;
                string selectedID = "";

                // Lấy giá trị DDBH từ DataRowView
                if (selectedRow != null)
                {
                    selectedID = selectedRow["DDBH"].ToString();
                }

                string query = @"SELECT distinct smddss.DDBH, smddss.XXCC AS SIZE, smddss.CTS AS Order_Quantity, smddss.OKCTS AS OK_Quantity 
                            FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
							left join [LYS_ERP].[dbo].[SMDD] smdd on smdd.DDBH=smddss.DDBH and smdd.GXLB=smddss.GXLB 
                            WHERE smdd.YSBH = @DDBH and smddss.GXLB='A' order by smddss.ddbh, smddss.xxcc";
                        /*SELECT 
                            SMDDSS.DDBH,
                            SMDDSS.SIZE,
                            SMDDSS.Order_Quantity,
                            ISNULL(COUNT(rt.SIZE), 0) AS OK_Quantity
                        FROM 
                        (
                            SELECT DDBH, XXCC AS SIZE, CTS AS Order_Quantity 
                            FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                            WHERE DDBH = @DDBH and GXLB='A'
                        ) SMDDSS
                        LEFT JOIN RFID_TempAssembly rt 
                            ON rt.DDBH = SMDDSS.DDBH AND rt.SIZE = SMDDSS.SIZE
                        GROUP BY SMDDSS.DDBH, SMDDSS.SIZE, SMDDSS.Order_Quantity
                        ORDER BY SIZE";*/

                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Thêm tham số @DDBH
                            command.Parameters.AddWithValue("@DDBH", selectedID);

                            // Tạo SqlDataAdapter để lấy dữ liệu
                            SqlDataAdapter adapter = new SqlDataAdapter(command);

                            // Tạo DataTable để lưu dữ liệu
                            System.Data.DataTable dataTable = new System.Data.DataTable();
                            adapter.Fill(dataTable);

                            // Xóa dữ liệu cũ trong ListView trước khi load dữ liệu mới
                            lvOrder2.Items.Clear();

                            // Tạm thời ngừng cập nhật giao diện ListView
                            lvOrder2.BeginUpdate();

                            try
                            {
                                // Tạo một danh sách ListViewItem để lưu tạm
                                List<ListViewItem> items = new List<ListViewItem>();

                                foreach (DataRow row in dataTable.Rows)
                                {
                                    // Tạo ListViewItem cho từng dòng dữ liệu
                                    ListViewItem item = new ListViewItem(row["DDBH"].ToString());
                                    item.SubItems.Add(row["SIZE"].ToString());
                                    item.SubItems.Add(row["Order_Quantity"].ToString());
                                    item.SubItems.Add(row["OK_Quantity"].ToString());

                                    // Thêm vào danh sách tạm
                                    items.Add(item);
                                }

                                // Thêm toàn bộ danh sách vào ListView chỉ một lần
                                lvOrder2.Items.AddRange(items.ToArray());
                            }
                            finally
                            {
                                // Tiếp tục cập nhật giao diện ListView
                                lvOrder2.EndUpdate();
                            }
                        }
                        connection.Close();
                    }
                }
                catch (Exception ex)
                {
                    lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message + Environment.NewLine);
                }
            }
        }
        private void cbDDBH_TextChanged(object sender, EventArgs e)
        {
            // Kiểm tra nếu có giá trị được chọn trong ComboBox
            if (!string.IsNullOrEmpty(cbDDBH.Text))
            {
                string selectedID = cbDDBH.Text;

                string query = @"
                        SELECT 
                            SMDDSS.DDBH,
                            SMDDSS.SIZE,
                            SMDDSS.Order_Quantity,
                            ISNULL(COUNT(rt.SIZE), 0) AS OK_Quantity
                        FROM 
                        (
                            SELECT DDBH, XXCC AS SIZE, CTS AS Order_Quantity 
                            FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                            WHERE DDBH = @DDBH and GXLB='S'
                        ) SMDDSS
                        LEFT JOIN RFID_TempStitching rt 
                            ON rt.DDBH = SMDDSS.DDBH AND rt.SIZE = SMDDSS.SIZE
                        GROUP BY SMDDSS.DDBH, SMDDSS.SIZE, SMDDSS.Order_Quantity
                        ORDER BY SIZE";

                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Thêm tham số @DDBH
                            command.Parameters.AddWithValue("@DDBH", selectedID);

                            // Tạo SqlDataAdapter để lấy dữ liệu
                            SqlDataAdapter adapter = new SqlDataAdapter(command);

                            // Tạo DataTable để lưu dữ liệu
                            System.Data.DataTable dataTable = new System.Data.DataTable();
                            adapter.Fill(dataTable);

                            // Xóa dữ liệu cũ trong ListView trước khi load dữ liệu mới
                            lvOrder.Items.Clear();

                            // Tạm thời ngừng cập nhật giao diện ListView
                            lvOrder.BeginUpdate();

                            try
                            {
                                // Tạo một danh sách ListViewItem để lưu tạm
                                List<ListViewItem> items = new List<ListViewItem>();

                                foreach (DataRow row in dataTable.Rows)
                                {
                                    // Tạo ListViewItem cho từng dòng dữ liệu
                                    ListViewItem item = new ListViewItem(row["DDBH"].ToString());
                                    item.SubItems.Add(row["SIZE"].ToString());
                                    item.SubItems.Add(row["Order_Quantity"].ToString());
                                    item.SubItems.Add(row["OK_Quantity"].ToString());

                                    // Thêm vào danh sách tạm
                                    items.Add(item);
                                }

                                // Thêm toàn bộ danh sách vào ListView chỉ một lần
                                lvOrder.Items.AddRange(items.ToArray());
                            }
                            finally
                            {
                                // Tiếp tục cập nhật giao diện ListView
                                lvOrder.EndUpdate();
                            }
                        }
                        connection.Close();
                    }
                }
                catch (Exception ex)
                {
                    lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message + Environment.NewLine);
                }
            }
        }
        private void cbDDBH2_TextChanged(object sender, EventArgs e)
        {
            // Kiểm tra nếu có giá trị được chọn trong ComboBox
            if (!string.IsNullOrEmpty(cbDDBH2.Text))
            {
                string selectedID = cbDDBH2.Text;
                string query = @"SELECT distinct smddss.DDBH, smddss.XXCC AS SIZE, smddss.CTS AS Order_Quantity, smddss.OKCTS AS OK_Quantity 
            FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
						left join [LYS_ERP].[dbo].[SMDD] smdd on smdd.DDBH=smddss.DDBH and smdd.GXLB=smddss.GXLB 
            WHERE smdd.YSBH = @DDBH and smddss.GXLB='A'order by smddss.ddbh, smddss.xxcc";
                /* string query = @"
                         SELECT 
                             SMDDSS.DDBH,
                             SMDDSS.SIZE,
                             SMDDSS.Order_Quantity,
                             ISNULL(COUNT(rt.SIZE), 0) AS OK_Quantity
                         FROM 
                         (
                             SELECT DDBH, XXCC AS SIZE, CTS AS Order_Quantity 
                             FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                             WHERE DDBH = @DDBH and GXLB='A'
                         ) SMDDSS
                         LEFT JOIN RFID_TempAssembly rt 
                             ON rt.DDBH = SMDDSS.DDBH AND rt.SIZE = SMDDSS.SIZE
                         GROUP BY SMDDSS.DDBH, SMDDSS.SIZE, SMDDSS.Order_Quantity
                         ORDER BY SIZE";*/

                try
                {
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Thêm tham số @DDBH
                            command.Parameters.AddWithValue("@DDBH", selectedID);

                            // Tạo SqlDataAdapter để lấy dữ liệu
                            SqlDataAdapter adapter = new SqlDataAdapter(command);

                            // Tạo DataTable để lưu dữ liệu
                            System.Data.DataTable dataTable = new System.Data.DataTable();
                            adapter.Fill(dataTable);

                            // Xóa dữ liệu cũ trong ListView trước khi load dữ liệu mới
                            lvOrder2.Items.Clear();

                            // Tạm thời ngừng cập nhật giao diện ListView
                            lvOrder2.BeginUpdate();

                            try
                            {
                                // Tạo một danh sách ListViewItem để lưu tạm
                                List<ListViewItem> items = new List<ListViewItem>();

                                foreach (DataRow row in dataTable.Rows)
                                {
                                    // Tạo ListViewItem cho từng dòng dữ liệu
                                    ListViewItem item = new ListViewItem(row["DDBH"].ToString());
                                    item.SubItems.Add(row["SIZE"].ToString());
                                    item.SubItems.Add(row["Order_Quantity"].ToString());
                                    item.SubItems.Add(row["OK_Quantity"].ToString());

                                    // Thêm vào danh sách tạm
                                    items.Add(item);
                                }

                                // Thêm toàn bộ danh sách vào ListView chỉ một lần
                                lvOrder2.Items.AddRange(items.ToArray());
                            }
                            finally
                            {
                                // Tiếp tục cập nhật giao diện ListView
                                lvOrder2.EndUpdate();
                            }
                        }
                        connection.Close();
                    }
                }
                catch (Exception ex)
                {
                    lrtxtLog.AppendText("Lỗi khi tải dữ liệu: " + ex.Message + Environment.NewLine);
                }
            }
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
            if ((tabCtrMain.SelectedIndex == 1 || tabCtrMain.SelectedIndex == 2) && btnConnectRs232.Enabled == true)
            {
                tabCtrMain.SelectedIndex = 0;
                MessageBox.Show("Please Connect RFID Reader First !");
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
            if (btRealTimeInventory2.Text == "Stop Read")
            {
                MessageBox.Show("Please Stop Read in 'RFID List Shoes' First ! !");
                return;
            }
            try
            {
                m_curInventoryBuffer.ClearInventoryPar();
                if (lvOrder.Items.Count == 0)
                {
                    MessageBox.Show("Please choose Order first !");
                    return;
                }
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
                    cbDep.Enabled = true;
                    cbDDBH.Enabled = true;
                    btRealFresh.Enabled = true;
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
                    cbDep.Enabled = false;
                    cbDDBH.Enabled = false;
                    btRealFresh.Enabled = false;
                }

                m_curInventoryBuffer.bLoopInventoryReal = true;

                m_curInventoryBuffer.ClearInventoryRealResult();
                /*lvRealList.Items.Clear();
                lvRealList.Items.Clear();*/
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
                    cbDep2.Enabled = true;
                    cbDDBH2.Enabled = true;
                    btRealFresh2.Enabled = true;
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
                    cbDep2.Enabled = false;
                    cbDDBH2.Enabled = false;
                    btRealFresh2.Enabled = false;
                }

                m_curInventoryBuffer.bLoopInventoryReal = true;

                m_curInventoryBuffer.ClearInventoryRealResult();
                /*lvRealList2.Items.Clear();
                lvRealList2.Items.Clear();*/
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
        private void btRealFresh_Click(object sender, EventArgs e)
        {
            lvRealList.Items.Clear();
            lvRealList.Items.Clear();
            ledReal1.Text = "0";
        }
        private void btRealFresh2_Click(object sender, EventArgs e)
        {
            lvRealList2.Items.Clear();
            lvRealList2.Items.Clear();
            rfidList.Clear();
            ledReal2.Text = "0";
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
                                nEpcCount = lvRealList.Items.Count;
                            }
                            else if (m_temp == 2)
                            {
                                ledReal2.Text = nTagCount.ToString();
                                nEpcCount = lvRealList2.Items.Count;
                            }

                            if ((nEpcCount < nEpcLength) || (m_nTotal % m_nRealRate == 1))
                            {
                                DataRow row = m_curInventoryBuffer.dtTagTable.Rows[nEpcLength - 1];

                                ListViewItem item = new ListViewItem(row[2].ToString());
                                item.SubItems.Add(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                                if (m_temp == 1)
                                {
                                    if (m_nTotal % m_nRealRate != 1)
                                    {
                                        lvRealList.Items.Add(item);
                                        lvRealList.Items[nEpcCount].EnsureVisible();
                                    }
                                    using (SqlConnection connection = new SqlConnection(connectionString))
                                    {
                                        connection.Open();

                                        // Truy vấn để kiểm tra OK_Quantity < Order_Quantity
                                        string checkQuery = @"
                                                            SELECT 
                                                                CASE 
                                                                    WHEN COUNT(*) = 0 THEN -1 -- Không có dữ liệu
                                                                    WHEN SUM(CASE WHEN OK_Quantity < Quantity THEN 1 ELSE 0 END) > 0 THEN 1 -- OK_Quantity < Order_Quantity
                                                                    ELSE 0 -- OK_Quantity >= Order_Quantity
                                                                END AS CheckResult
                                                            FROM (
                                                                SELECT 
                                                                    s.SIZE,
                                                                    SMDDSS.CTS Quantity,
                                                                    (SELECT COUNT(*) 
                                                                     FROM RFID_TempStitching 
                                                                     WHERE DDBH = SMDDSS.DDBH AND SIZE = s.SIZE) AS OK_Quantity
                                                                FROM RFID_Size s
                                                                INNER JOIN [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                                                                    ON s.SIZE = SMDDSS.XXCC AND SMDDSS.DDBH = @DDBH and GXLB='S'
                                                                WHERE s.RFIDNO = @RFIDNO
                                                            ) SubQuery;";

                                        using (SqlCommand checkCmd = new SqlCommand(checkQuery, connection))
                                        {
                                            // Thêm tham số cho truy vấn
                                            checkCmd.Parameters.AddWithValue("@RFIDNO", row[2]?.ToString());
                                            checkCmd.Parameters.AddWithValue("@DDBH", cbDDBH.Text == null ? "" : cbDDBH.Text.ToString());

                                            // Thực thi truy vấn
                                            int checkResult = (int)checkCmd.ExecuteScalar();

                                            if (checkResult == 1)
                                            {
                                                lvOrder.Items.Clear();
                                                lvOrder.BeginUpdate();

                                                try
                                                {
                                                    using (SqlCommand cmd = new SqlCommand("ScanStitchingRFID", connection))
                                                    {
                                                        cmd.CommandType = CommandType.StoredProcedure;

                                                        // Thêm tham số cho stored procedure
                                                        cmd.Parameters.Add("@RFIDNO", SqlDbType.VarChar).Value = row[2].ToString();
                                                        cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = cbDep.SelectedValue.ToString();
                                                        cmd.Parameters.Add("@DepName", SqlDbType.VarChar).Value = cbDep.Text;
                                                        cmd.Parameters.Add("@DDBH", SqlDbType.VarChar).Value = cbDDBH.Text == null ? "" : cbDDBH.Text.ToString();

                                                        // Đọc dữ liệu
                                                        using (SqlDataReader dataReader = cmd.ExecuteReader())
                                                        {
                                                            List<ListViewItem> items = new List<ListViewItem>();

                                                            while (dataReader.Read())
                                                            {
                                                                // Tạo ListViewItem cho mỗi dòng dữ liệu
                                                                ListViewItem item1 = new ListViewItem(dataReader["DDBH"].ToString());
                                                                item1.SubItems.Add(dataReader["SIZE"].ToString());
                                                                item1.SubItems.Add(dataReader["Order_Quantity"].ToString());
                                                                item1.SubItems.Add(dataReader["OK_Quantity"].ToString());

                                                                items.Add(item1);
                                                            }

                                                            // Thêm toàn bộ item vào ListView
                                                            lvOrder.Items.AddRange(items.ToArray());
                                                        }
                                                    }
                                                }
                                                catch (Exception ex)
                                                {
                                                    lrtxtLog.AppendText("Lỗi: " + ex.Message);
                                                }
                                                finally
                                                {
                                                    // Cập nhật lại giao diện ListView
                                                    lvOrder.EndUpdate();
                                                }
                                            }
                                            else if (checkResult == 0)
                                            {
                                                btRealTimeInventory.PerformClick();
                                                // Hiển thị thông báo nếu không thỏa điều kiện
                                                MessageBox.Show("The quantity for this size in this order is already full.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                            }
                                        }
                                    }
                                }
                                else if (m_temp == 2)
                                {
                                    if (m_nTotal % m_nRealRate != 1)
                                    {
                                        lvRealList2.Items.Add(item);
                                        lvRealList2.Items[nEpcCount].EnsureVisible();
                                    }
                                    string Size = null;

                                    string epc = row[2].ToString().Replace(" ", "");
                                    var result = Task.Run(() => FetchEpcData(epc)).Result;

                                    // Kiểm tra và xử lý giá trị
                                    if (!string.IsNullOrEmpty(result))
                                    {
                                        if (Regex.IsMatch(result, @"^\d+\.?\d*/\d+\.?\d*$")) // Trường hợp "06.5/07.5"
                                        {
                                            // Lấy số trước dấu "/"
                                            Size = result.Split('/')[0];
                                        }
                                        else
                                        {
                                            // Nếu không khớp điều kiện trên, lấy giá trị số (loại bỏ ký tự không phải số)
                                            Size = Regex.Replace(result, @"[^\d.]", "");
                                        }
                                    }
                                    else
                                    {
                                        Size = ""; // Gán giá trị mặc định nếu `result` rỗng hoặc null
                                    }

                                    /*string Size = null;

                                    string epc = row[2].ToString().Replace(" ", "");
                                    var result = Task.Run(() => FetchEpcData(epc)).Result;

                                    // Gán giá trị
                                    Size = Regex.Replace(result == null ? "" : result, @"[^\d.]", "");*/
                                    //MessageBox.Show(""+ Size);

                                    using (SqlConnection connection = new SqlConnection(connectionString))
                                    {
                                        connection.Open();

                                        // Truy vấn để kiểm tra OK_Quantity < Order_Quantity
                                        /*string checkQuery = @"
                                                            SELECT 
                                                                CASE 
                                                                    WHEN COUNT(*) = 0 THEN -1 -- Không có dữ liệu
                                                                    WHEN SUM(CASE 
                                                                                WHEN OK_Quantity < Order_Quantity THEN 1 
                                                                                ELSE 0 
                                                                            END) > 0 THEN 1 -- OK_Quantity < Order_Quantity
                                                                    ELSE 0 -- OK_Quantity >= Order_Quantity
                                                                END AS CheckResult
                                                            FROM (
                                                                SELECT 
                                                                    SMDDSS.DDBH,
                                                                    SMDDSS.XXCC AS SIZE,
                                                                    ISNULL(
                                                                        (SELECT COUNT(*) 
                                                                         FROM RFID_TempAssembly 
                                                                         WHERE RFIDNO = @RFIDNO AND DDBH = SMDDSS.DDBH AND SIZE = SMDDSS.XXCC), 
                                                                        0
                                                                    ) AS OK_Quantity,
                                                                    ISNULL(
                                                                        (SELECT SMDDSS.Quantity 
                                                                         FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS 
                                                                         WHERE SMDDSS.DDBH = SMDDSS.DDBH 
                                                                           AND LTRIM(RTRIM(SMDDSS.CC)) = LTRIM(RTRIM(SMDDSS.XXCC))), 
                                                                        0
                                                                    ) AS Order_Quantity
                                                                FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS
                                                                LEFT JOIN [LYS_ERP].[dbo].[SMZL] SMZL 
                                                                    ON SMDDSS.CODEBAR = SMZL.CODEBAR
                                                                WHERE CONVERT(VARCHAR, SMDDSS.USERDATE, 111) = CONVERT(VARCHAR, GETDATE(), 111)
                                                                  AND SMZL.DepNO = @ID 
                                                                  AND SMDDSS.DDBH = @DDBH 
                                                                  AND SMDDSS.XXCC = @SIZE
                                                            ) SubQuery;";*/
                                        string checkQuery = @"SELECT 
                                                                CASE 
                                                                    WHEN COUNT(*) = 0 THEN -1 -- Không có dữ liệu
                                                                    WHEN SUM(CASE 
                                                                                WHEN OK_Quantity < Order_Quantity THEN 1 
                                                                                ELSE 0 
                                                                            END) > 0 THEN 1 -- OK_Quantity < Order_Quantity
                                                                    ELSE 0 -- OK_Quantity >= Order_Quantity
                                                                END AS CheckResult
                                                            FROM (
                                                                SELECT 
                                                                    SMDDSS.DDBH,
                                                                    SMDDSS.XXCC AS SIZE,
                                                                    ISNULL(
                                                                        (SELECT COUNT(*) 
                                                                         FROM RFID_TempAssembly 
                                                                         WHERE DDBH = SMDDSS.DDBH 
                                                                           AND SIZE = SMDDSS.XXCC), 
                                                                        0
                                                                    ) AS OK_Quantity,
                                                                    SMDDSS.CTS AS Order_Quantity
                                                                FROM [LYS_ERP].[dbo].[SMDDSS] SMDDSS
                                                                LEFT JOIN [LYS_ERP].[dbo].[SMDD] smdd 
                                                                    ON smdd.DDBH = SMDDSS.DDBH 
                                                                    AND smdd.GXLB = SMDDSS.GXLB
                                                                WHERE smdd.YSBH = @DDBH
                                                                  AND LTRIM(RTRIM(SMDDSS.XXCC)) = LTRIM(RTRIM(@SIZE)) and smddss.GXLB='A'
                                                            ) SubQuery;";

                                        using (SqlCommand checkCmd = new SqlCommand(checkQuery, connection))
                                        {
                                            // Thêm tham số cho truy vấn
                                            //checkCmd.Parameters.AddWithValue("@RFIDNO", row[2]?.ToString());
                                            checkCmd.Parameters.AddWithValue("@ID", cbDep2.SelectedValue.ToString());
                                            checkCmd.Parameters.AddWithValue("@DDBH", cbDDBH2.Text == null ? "" : cbDDBH2.Text.ToString());
                                            checkCmd.Parameters.AddWithValue("@SIZE", Size);

                                            // Thực thi truy vấn
                                            int checkResult = (int)checkCmd.ExecuteScalar();

                                            if (checkResult == 1)
                                            {
                                                lvOrder2.Items.Clear();
                                                lvOrder2.BeginUpdate();

                                                try
                                                {
                                                    string actualDDBH = "";

                                                    // Bước 1: Lấy DDBH từ query
                                                    using (SqlCommand selectCmd = new SqlCommand(@"
                                                        SELECT DISTINCT TOP 1  smddss.DDBH 
                                                        FROM [LYS_ERP].[dbo].[SMDDSS] smddss 
                                                        LEFT JOIN [LYS_ERP].[dbo].[SMDD] smdd ON smddss.ddbh = smdd.DDBH 
                                                        WHERE smdd.YSBH = @YSBH 
                                                            AND okCTS < CTS 
                                                            AND smddss.GXLB = 'A' 
                                                            AND smddss.xxcc = @Size
                                                        ORDER BY smddss.DDBH", connection))
                                                    {
                                                        selectCmd.Parameters.Add("@YSBH", SqlDbType.VarChar).Value = cbDDBH2.Text == null ? "" : cbDDBH2.Text.ToString();
                                                        selectCmd.Parameters.Add("@Size", SqlDbType.VarChar).Value = Size;

                                                        object queryResult = selectCmd.ExecuteScalar();
                                                        if (queryResult != null)
                                                        {
                                                            actualDDBH = queryResult.ToString();
                                                        }
                                                    }

                                                    using (SqlCommand cmd = new SqlCommand("ScanAssemblyRFID", connection))
                                                    {
                                                        cmd.CommandType = CommandType.StoredProcedure;

                                                        cmd.Parameters.Add("@RFIDNO", SqlDbType.VarChar).Value = row[2].ToString();
                                                        cmd.Parameters.Add("@ID", SqlDbType.VarChar).Value = cbDep2.SelectedValue.ToString();
                                                        cmd.Parameters.Add("@DepName", SqlDbType.VarChar).Value = cbDep2.Text;
                                                        //cmd.Parameters.Add("@DDBH", SqlDbType.VarChar).Value = cbDDBH2.Text == null ? "" : cbDDBH2.Text.ToString();
                                                        cmd.Parameters.Add("@DDBH", SqlDbType.VarChar).Value = actualDDBH;
                                                        cmd.Parameters.Add("@SIZE", SqlDbType.VarChar).Value = Size;

                                                        // Đọc dữ liệu
                                                        using (SqlDataReader dataReader = cmd.ExecuteReader())
                                                        {
                                                            List<ListViewItem> items = new List<ListViewItem>();

                                                            while (dataReader.Read())
                                                            {
                                                                // Tạo ListViewItem cho mỗi dòng dữ liệu
                                                                ListViewItem item1 = new ListViewItem(dataReader["DDBH"].ToString());
                                                                item1.SubItems.Add(dataReader["SIZE"].ToString());
                                                                item1.SubItems.Add(dataReader["Order_Quantity"].ToString());
                                                                item1.SubItems.Add(dataReader["OK_Quantity"].ToString());

                                                                items.Add(item1);
                                                            }

                                                            // Thêm toàn bộ item vào ListView
                                                            lvOrder2.Items.AddRange(items.ToArray());
                                                        }
                                                    }
                                                }
                                                catch (Exception ex)
                                                {
                                                    lrtxtLog.AppendText("Lỗi: " + ex.Message);
                                                }
                                                finally
                                                {
                                                    // Cập nhật lại giao diện ListView
                                                    lvOrder2.EndUpdate();
                                                }
                                            }
                                            else if (checkResult == 0)
                                            {
                                                btRealTimeInventory2.PerformClick();
                                                // Hiển thị thông báo nếu không thỏa điều kiện
                                                MessageBox.Show("The quantity for this size in this order is already full.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                                            }
                                        }
                                    }
                                }
                            }
                            //更新列表中读取的次数
                            /*if (m_nTotal % m_nRealRate == 1)
                            {
                                int nIndex = 0;
                                foreach (DataRow row in m_curInventoryBuffer.dtTagTable.Rows)
                                {
                                    ListViewItem item;
                                    item = lvRealList.Items[nIndex];
                                    item.SubItems[1].Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                                    nIndex++;
                                }
                            }*/
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

        private void lvOrder2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void R2000UartDemo_SizeChanged(object sender, EventArgs e)
        {
            //lvshoes.Width = R2000UartDemo.ActiveForm.Width-30;
        }

    }
}

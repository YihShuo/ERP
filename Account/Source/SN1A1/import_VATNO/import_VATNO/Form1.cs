using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;
using Excel = Microsoft.Office.Interop.Excel;

namespace import_VATNO
{
    public partial class mainImport : Form
    {
        private int temp=0;
        SqlConnection con;
        private string iconn;
        private string iUSERID;
        private string ThoiGianImport = "";
        private ListView lvtemp;
        Excel.Application excelApp = new Excel.Application();
        public mainImport()
        {
            InitializeComponent();
        }
        public mainImport(string[] args)
        {
            InitializeComponent();
            if(args.Length>0)
            this.temp = Convert.ToInt32(args[0]);
        }
        private void mainImport_Load(object sender, EventArgs e)
        {
            if (temp == 1)
            {
                this.Text = "Import Declaration Total";
            }else if(temp == 2)
            {
                this.Text = "Import Declaration Detail";
            }else if (temp == 3)
            {
                this.Text = "Import GP Cost";
            }

            string ip="", name="", user="", pass="";

            IniFile ini = new IniFile(Application.StartupPath.Substring(0,3)+"ERP\\ComName.ini");

            ip = ini.IniReadValue("ERPServer", "IP");
            name = ini.IniReadValue("ERPServer", "Database");
            user = ini.IniReadValue("ERPServer", "User");
            pass = ini.IniReadValue("ERPServer", "Pass");

            try
            {
                using (StreamReader sReader = new StreamReader(Application.StartupPath.Substring(0, 3) + "ERP\\user.txt", Encoding.UTF8))
                {
                    string usertxt = sReader.ReadLine();
                    iUSERID = usertxt.Substring(0, usertxt.IndexOf("="));
                }

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
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error!!! " + ex.Message);
            }
            
            iconn = "Data Source="+ip+";Initial Catalog="+name+";User ID="+user+";Password="+pass+";Connection Timeout=190";
        }
        private void button3_Click(object sender, EventArgs e)
        {
            ThoiGianImport = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            string FileExcelop = "";
            OpenFileDialog of = new OpenFileDialog();
            of.Filter = "Excel Files|*.xls;*.xlsx";
            if (of.ShowDialog() == DialogResult.OK)
            {
                FileExcelop = of.FileName;
                if (temp == 0)
                {
                    LoadDataGridView0(FileExcelop);
                    Save0(lvtemp);
                }else if(temp == 1)
                {
                    LoadDataGridView1(FileExcelop);
                    Save1(lvtemp);
                }else if (temp == 2)
                {
                    LoadDataGridView2(FileExcelop);
                    Save2(lvtemp);
                }else if (temp == 3)
                {
                    LoadDataGridView3(FileExcelop);
                    Save3(lvtemp);// CHI PHI
                }
            }
        }
        private string money(string a)
        {
            if (a.Equals(""))
            {
                return "";
            }
            if (a.LastIndexOf(".") > a.LastIndexOf(","))
            {
                if (a.IndexOf(".") != a.LastIndexOf("."))
                {
                    return a.Replace(".", "").Replace(",", ".");
                }
                if(a.LastIndexOf(",")>0)
                {
                    return a.Replace(",", "");
                }    
                return a;
            }
            return a.Replace(".", "").Replace(",", ".");
        }
        public void LoadDataGridView0(string parentPath)
        {
            progressBar1.Minimum = 0; //Đặt giá trị nhỏ nhất cho ProgressBar
            progressBar1.Maximum = 200; //Đặt giá trị lớn nhất cho ProgressBar

            if (excelApp != null)
            {
                Excel.Workbook excelWorkbook = excelApp.Workbooks.Open(parentPath, 0, true, 5, "", "", true, Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
                Excel.Worksheet excelWorksheet = (Excel.Worksheet)excelWorkbook.Sheets[1];

                Excel.Range excelRange = excelWorksheet.UsedRange;
                int rowCount = excelRange.Rows.Count;
                int colCount = excelRange.Columns.Count;
                progressBar1.Minimum = 0; //Đặt giá trị nhỏ nhất cho ProgressBar
                progressBar1.Maximum = rowCount; //Đặt giá trị lớn nhất cho ProgressBar
                lvtemp = new ListView();
                for (int j = 1; j <= colCount; j++)
                {
                    string value = Convert.ToString(excelRange.Cells[4, j].value);
                    lvtemp.Columns.Add(value);
                }
                var items = new List<ListViewItem>();
                for (int i = 5; i <= rowCount; i++)
                {
                    if (!String.IsNullOrEmpty(Convert.ToString(excelRange.Cells[i, 4].value)) && !String.IsNullOrEmpty(Convert.ToString(excelRange.Cells[i, 6].value)))
                    {
                        progressBar1.Value = i; //Gán giá trị cho ProgressBar
                        ListViewItem item = new ListViewItem(""+Convert.ToString(excelRange.Cells[i, 1].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 2].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 3].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 4].value));
                        item.SubItems.Add("" + String.Format("{0:dd/MM/yyyy}", Convert.ToString(excelRange.Cells[i, 5].value)));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 6].value));
                        string tennguoiban = Convert.ToString(excelRange.Cells[i, 7].value);
                        tennguoiban = tennguoiban.Replace("'", "''");
                        item.SubItems.Add(tennguoiban);
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 8].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 9].value));
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 10].value))); //money
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 11].value))); //money
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 12].value))); //money
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 13].value))); //money
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 14].value))); //money
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 15].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 16].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 17].value));
                        items.Add(item);
                    } 
                }
                ListViewItem[] arr = items.ToArray();
                lvtemp.BeginUpdate();
                lvtemp.Items.AddRange(arr);
                lvtemp.EndUpdate();
                excelWorkbook.Close();
                excelApp.Quit();
            }
        }
        public void Save0(ListView lv)
        {
            con = new SqlConnection(iconn);
            con.Open();
            string SQL_S, SQL_I = "", SQL_U = "", VATNO = "", ZSBH_MST = "", KYHIEU_HOADON = "";
            int dem = 0;
            foreach (ListViewItem item in lv.Items)
            {
                VATNO="'" + item.SubItems[3].Text + "'";
                ZSBH_MST= "'" + item.SubItems[5].Text + "'";
                KYHIEU_HOADON = "'" + item.SubItems[2].Text + "'";

                SQL_S = "SELECT COUNT(*) FROM CGZL_VATNO WHERE VATNO = " + VATNO + " and ZSBH_MST =" + ZSBH_MST + " and KYHIEU_HOADON =" + KYHIEU_HOADON;
                SqlCommand cmd = new SqlCommand(SQL_S, con);
                int r = Convert.ToInt32(cmd.ExecuteScalar());

                if (r == 0)
                {
                    SQL_I = "INSERT INTO CGZL_VATNO (KYHIEU_MAUSO, KYHIEU_HOADON, VATNO, VATDATE, ZSBH_MST, TEN_NGUOIBAN, MST_TOCHUCGIAIPHAP," +
                        "MST_TOCHUCTRUYENNHAN, TONGTIEN_CHUATHUE, TONGTIEN_THUE, TONGTIEN_CHIETKHAU, TONGTIEN_PHI, TONGTIEN_THANHTOAN," +
                        "DONVI_TIENTE, TRANGTHAI_HD, KETQUA_KIEMTRA, USERID, USERDATE, YN) VALUES (";
                    for (int k = 1; k <= item.SubItems.Count - 1; k++)
                    {
                        string data = item.SubItems[k].Text;
                        if ((k == 15) || (k == 16) || (k == 6))
                        {
                            SQL_I += "N";
                        }
                        if (!data.Equals(""))
                        {
                            if (k == 4)
                                data = data.Substring(3, 2) + "/" + data.Substring(0, 2) + "/" + data.Substring(data.Length - 4, 4);
                            SQL_I += "'" + data.Trim() + "', ";
                        }
                        else
                        {
                            SQL_I += "null, ";
                        }
                    }
                    SQL_I = SQL_I + "'" + iUSERID + "' ";
                    SQL_I = SQL_I + ",'" + ThoiGianImport + "' ";
                    SQL_I = SQL_I + ",1)";
                    if (VATNO != "''")
                    {
                        SqlCommand cmd1 = new SqlCommand(SQL_I, con);
                        cmd1.ExecuteNonQuery();
                        dem++;
                    }
                }else
                {
                    SQL_U = "UPDATE CGZL_VATNO SET ";
                    if (!item.SubItems[1].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    KYHIEU_MAUSO='" + item.SubItems[1].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    KYHIEU_MAUSO=null, "; }
                    if (!item.SubItems[2].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    KYHIEU_HOADON='" + item.SubItems[2].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    KYHIEU_HOADON=null, "; }
                    if (!item.SubItems[4].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    VATDATE='" + item.SubItems[4].Text.Substring(3, 2) +
                                    "/" + item.SubItems[4].Text.Substring(0, 2) +
                                    "/" + item.SubItems[4].Text.Substring(item.SubItems[4].Text.Length - 4, 4) + "', ";
                    }
                    else { SQL_U = SQL_U + "    VATDATE=null, "; }
                    if (!item.SubItems[6].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TEN_NGUOIBAN=N'" + item.SubItems[6].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TEN_NGUOIBAN=null, "; }
                    if (!item.SubItems[7].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    MST_TOCHUCGIAIPHAP='" + item.SubItems[7].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    MST_TOCHUCGIAIPHAP=null, "; }
                    if (!item.SubItems[8].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    MST_TOCHUCTRUYENNHAN='" + item.SubItems[8].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    MST_TOCHUCTRUYENNHAN=null, "; }
                    if (!item.SubItems[9].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TONGTIEN_CHUATHUE='" + item.SubItems[9].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TONGTIEN_CHUATHUE=null, "; }
                    if (!item.SubItems[10].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TONGTIEN_THUE='" + item.SubItems[10].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TONGTIEN_THUE=null, "; }
                    if (!item.SubItems[11].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TONGTIEN_CHIETKHAU='" + item.SubItems[11].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TONGTIEN_CHIETKHAU=null, "; }
                    if (!item.SubItems[12].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TONGTIEN_PHI='" + item.SubItems[12].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TONGTIEN_PHI=null, "; }
                    if (!item.SubItems[13].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TONGTIEN_THANHTOAN='" + item.SubItems[13].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TONGTIEN_THANHTOAN=null, "; }
                    if (!item.SubItems[14].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    DONVI_TIENTE='" + item.SubItems[14].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    DONVI_TIENTE=null, "; }
                    if (!item.SubItems[15].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TRANGTHAI_HD=N'" + item.SubItems[15].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TRANGTHAI_HD=null, "; }
                    if (!item.SubItems[16].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    KETQUA_KIEMTRA=N'" + item.SubItems[16].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    KETQUA_KIEMTRA=null, "; }
                    SQL_U = SQL_U + "    USERID=N'" + iUSERID + "', " +
                                    "    USERDATE=N'" + ThoiGianImport + "' " +
                                    " WHERE VATNO = " + VATNO + " and ZSBH_MST =" + ZSBH_MST + " and KYHIEU_HOADON =" + KYHIEU_HOADON;

                    SqlCommand cm2 = new SqlCommand(SQL_U, con);
                    cm2.ExecuteNonQuery();
                    dem++;
                }  
            }
            con.Close();
            DialogResult dialog = MessageBox.Show(dem + " items completed.", "Import finished", MessageBoxButtons.OK);
            if (dialog == DialogResult.OK)
            {
                Application.Exit();
            }
        }
        public void LoadDataGridView1(string parentPath)
        {
            progressBar1.Minimum = 0; //Đặt giá trị nhỏ nhất cho ProgressBar
            progressBar1.Maximum = 200; //Đặt giá trị lớn nhất cho ProgressBar

            if (excelApp != null)
            {
                Excel.Workbook excelWorkbook = excelApp.Workbooks.Open(parentPath, 0, true, 5, "", "", true, Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
                Excel.Worksheet excelWorksheet = (Excel.Worksheet)excelWorkbook.Sheets[1];

                Excel.Range excelRange = excelWorksheet.UsedRange;
                int rowCount = excelRange.Rows.Count;
                int colCount = excelRange.Columns.Count;
                progressBar1.Minimum = 0; //Đặt giá trị nhỏ nhất cho ProgressBar
                progressBar1.Maximum = rowCount; //Đặt giá trị lớn nhất cho ProgressBar
                lvtemp = new ListView();
                for (int j = 1; j <= colCount; j++)
                {
                    string value = Convert.ToString(excelRange.Cells[1, j].value);
                    lvtemp.Columns.Add(value);
                }
                var items = new List<ListViewItem>();
                for (int i = 2; i <= rowCount; i++)
                {
                    if (!String.IsNullOrEmpty(Convert.ToString(excelRange.Cells[i, 1].value)))
                    {
                        progressBar1.Value = i; //Gán giá trị cho ProgressBar
                        ListViewItem item = new ListViewItem("" + Convert.ToString(excelRange.Cells[i, 1].value));
                        item.SubItems.Add("" + String.Format("{0:dd/MM/yyyy}", excelRange.Cells[i, 2].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 3].value));
                        string tendoitac = Convert.ToString(excelRange.Cells[i, 4].value);
                        tendoitac = tendoitac.Replace("'", "''");
                        item.SubItems.Add(tendoitac);
                        item.SubItems.Add("" + String.Format("{0:dd/MM/yyyy}", excelRange.Cells[i, 5].value));
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 6].value))); //money
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 7].value));
                        if (Convert.ToString(excelRange.Cells[i, 8].value) != "")
                            item.SubItems.Add("" + String.Format("{0:dd/MM/yyyy}", excelRange.Cells[i, 8].value));
                        else
                            item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 8].value));
                        items.Add(item);
                    }
                }
                ListViewItem[] arr = items.ToArray();
                lvtemp.BeginUpdate();
                lvtemp.Items.AddRange(arr);
                lvtemp.EndUpdate();
                excelWorkbook.Close();
                excelApp.Quit();
            }
        }
        public void Save1(ListView lv)
        {
            con = new SqlConnection(iconn);
            con.Open();
            string SQL_S, SQL_I = "", SQL_U = "", DECLARATION = "";
            int dem = 0;
            foreach (ListViewItem item in lv.Items)
            {
                DECLARATION = "'" + item.SubItems[0].Text + "'";

                SQL_S = "SELECT COUNT(*) FROM CGZL_Declaration WHERE DECLARATION = " + DECLARATION;
                SqlCommand cmd = new SqlCommand(SQL_S, con);
                int r = Convert.ToInt32(cmd.ExecuteScalar());

                if (r == 0)
                {
                    SQL_I = "INSERT INTO CGZL_Declaration (DECLARATION,NgayDangKy,MaLoaiHinh,TenDoiTac,NgayDen,TongTriGia_HoaDon,DOCNO,NGAYTHONGQUAN," +
                        "USERID,USERDATE,YN) VALUES (";
                    for (int k = 0; k <= item.SubItems.Count - 1; k++)
                    {
                        string data = item.SubItems[k].Text;
                        if (k == 3)
                        {
                            SQL_I += "N";
                        }
                        if (!data.Equals(""))
                        {
                            if (k == 1 || k == 4)
                                data = data.Substring(3, 2) + "/" + data.Substring(0, 2) + "/" + data.Substring(data.Length - 4, 4);
                            SQL_I += "'" + data.Trim() + "', ";
                        }
                        else
                        {
                            SQL_I += "null, ";
                        }
                    }
                    SQL_I = SQL_I + "'" + iUSERID + "' ";
                    SQL_I = SQL_I + ",'" + ThoiGianImport + "' ";
                    SQL_I = SQL_I + ",1)";

                    if (DECLARATION != "''")
                    {
                        SqlCommand cmd1 = new SqlCommand(SQL_I, con);
                        cmd1.ExecuteNonQuery();
                        dem++;
                    }
                }
                else
                {
                    SQL_U = "UPDATE CGZL_Declaration SET ";
                    if (!item.SubItems[1].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    NgayDangKy='" + item.SubItems[1].Text.Substring(3, 2) +
                                    "/" + item.SubItems[1].Text.Substring(0, 2) +
                                    "/" + item.SubItems[1].Text.Substring(item.SubItems[1].Text.Length - 4, 4) + "', ";
                    }
                    else { SQL_U = SQL_U + "    NgayDangKy=null, "; }
                    if (!item.SubItems[2].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    MaLoaiHinh='" + item.SubItems[2].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    MaLoaiHinh=null, "; }
                    if (!item.SubItems[3].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TenDoiTac=N'" + item.SubItems[3].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TenDoiTac=null, "; }
                    if (!item.SubItems[4].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    NgayDen='" + item.SubItems[4].Text.Substring(3, 2) +
                                    "/" + item.SubItems[4].Text.Substring(0, 2) +
                                    "/" + item.SubItems[4].Text.Substring(item.SubItems[4].Text.Length - 4, 4) + "', ";
                    }
                    else { SQL_U = SQL_U + "    NgayDen=null, "; }
                    if (!item.SubItems[5].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TongTriGia_HoaDon='" + item.SubItems[5].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TongTriGia_HoaDon=null, "; }
                    if (!item.SubItems[6].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    DOCNO='" + item.SubItems[6].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    DOCNO=null, "; }
                    if (!item.SubItems[7].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    NGAYTHONGQUAN='" + item.SubItems[7].Text.Substring(3, 2) +
                                    "/" + item.SubItems[7].Text.Substring(0, 2) +
                                    "/" + item.SubItems[7].Text.Substring(item.SubItems[7].Text.Length - 4, 4) + "', ";
                    }
                    else { SQL_U = SQL_U + "    NGAYTHONGQUAN=null, "; }
                    SQL_U = SQL_U + "    USERID=N'" + iUSERID + "', " +
                                    "    USERDATE=N'" + ThoiGianImport + "' " +
                                    " WHERE DECLARATION = " + DECLARATION;

                    SqlCommand cm2 = new SqlCommand(SQL_U, con);
                    cm2.ExecuteNonQuery();
                    dem++;
                }             
            }
            con.Close();
            DialogResult dialog = MessageBox.Show(dem + " items completed.", "Import finished", MessageBoxButtons.OK);
            if (dialog == DialogResult.OK)
            {
                Application.Exit();
            }
        }
        public void LoadDataGridView2(string parentPath)
        {
            progressBar1.Minimum = 0; //Đặt giá trị nhỏ nhất cho ProgressBar
            progressBar1.Maximum = 200; //Đặt giá trị lớn nhất cho ProgressBar

            if (excelApp != null)
            {
                Excel.Workbook excelWorkbook = excelApp.Workbooks.Open(parentPath, 0, true, 5, "", "", true, Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
                Excel.Worksheet excelWorksheet = (Excel.Worksheet)excelWorkbook.Sheets[1];

                Excel.Range excelRange = excelWorksheet.UsedRange;
                int rowCount = excelRange.Rows.Count;
                int colCount = excelRange.Columns.Count;
                progressBar1.Minimum = 0; //Đặt giá trị nhỏ nhất cho ProgressBar
                progressBar1.Maximum = rowCount; //Đặt giá trị lớn nhất cho ProgressBar
                lvtemp = new ListView();
                for (int j = 1; j <= colCount; j++)
                {
                    string value = Convert.ToString(excelRange.Cells[1, j].value);
                    lvtemp.Columns.Add(value);
                }
                var items = new List<ListViewItem>();
                for (int i = 2; i <= rowCount; i++)
                {
                    if (!String.IsNullOrEmpty(Convert.ToString(excelRange.Cells[i, 3].value)) && !String.IsNullOrEmpty(Convert.ToString(excelRange.Cells[i, 2].value)))
                    {
                        progressBar1.Value = i; //Gán giá trị cho ProgressBar
                        ListViewItem item = new ListViewItem(""+ Convert.ToString(excelRange.Cells[i, 1].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 2].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 3].value));
                        item.SubItems.Add("" + String.Format("{0:dd/MM/yyyy}", excelRange.Cells[i, 4].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 5].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 6].value));
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 7].value))); //money
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 8].value));
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 9].value))); //money
                        string tendoitac = Convert.ToString(excelRange.Cells[i, 10].value);
                        tendoitac = tendoitac.Replace("'", "''");
                        item.SubItems.Add(tendoitac);
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 11].value));
                        items.Add(item);
                    }
                }
                ListViewItem[] arr = items.ToArray();
                lvtemp.BeginUpdate();
                lvtemp.Items.AddRange(arr);
                lvtemp.EndUpdate();
                excelWorkbook.Close();
                excelApp.Quit();
            }
        }
        public void Save2(ListView lv)
        {
            con = new SqlConnection(iconn);
            con.Open();
            string SQL_S, SQL_I = "", SQL_U = "", DECLARATION = "", SoTT = "";
            int dem = 0;
            foreach (ListViewItem item in lv.Items)
            {
                SoTT = "'" + item.SubItems[2].Text + "'";
                DECLARATION = "'" + item.SubItems[1].Text + "'";

                SQL_S = "SELECT COUNT(*) FROM CGZL_DeclarationS WHERE DECLARATION = " + DECLARATION + " and SoTT =" + SoTT;
                SqlCommand cmd = new SqlCommand(SQL_S, con);
                int r = Convert.ToInt32(cmd.ExecuteScalar());

                if (r == 0)
                {
                    SQL_I = "INSERT INTO CGZL_DeclarationS (DECLARATION,SoTT,NgayDangKy,MaLoaiHinh,MaNPL_SP,TongSoLuong," +
                        "DonViTinh,TriGiaNT,TenDoiTac,DOCNO,USERID,USERDATE,YN) VALUES (";
                    for (int k = 1; k <= item.SubItems.Count - 1; k++)
                    {
                        string data = item.SubItems[k].Text;
                        if ((k == 7) || (k == 9))
                        {
                            SQL_I += "N";
                        }
                        if (!data.Equals(""))
                        {
                            if (k == 3)
                                data = data.Substring(3, 2) + "/" + data.Substring(0, 2) + "/" + data.Substring(data.Length - 4, 4);
                            SQL_I += "'" + data.Trim() + "', ";
                        }
                        else
                        {
                            SQL_I += "null, ";
                        }
                    }
                    SQL_I = SQL_I + "'" + iUSERID + "' ";
                    SQL_I = SQL_I + ",'" + ThoiGianImport + "' ";
                    SQL_I = SQL_I + ",1)";

                    if (DECLARATION != "''")
                    {
                        SqlCommand cmd1 = new SqlCommand(SQL_I, con);
                        cmd1.ExecuteNonQuery();
                        dem++;
                    }
                }
                else
                {
                    SQL_U = "UPDATE CGZL_DeclarationS SET ";
                    if (!item.SubItems[3].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    NgayDangKy='" + item.SubItems[3].Text.Substring(3, 2) +
                                    "/" + item.SubItems[3].Text.Substring(0, 2) +
                                    "/" + item.SubItems[3].Text.Substring(item.SubItems[3].Text.Length - 4, 4) + "', ";
                    }
                    else { SQL_U = SQL_U + "    NgayDangKy=null, "; }
                    if (!item.SubItems[4].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    MaLoaiHinh='" + item.SubItems[4].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    MaLoaiHinh=null, "; }
                    if (!item.SubItems[5].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    MaNPL_SP='" + item.SubItems[5].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    MaNPL_SP=null, "; }
                    if (!item.SubItems[6].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TongSoLuong='" + item.SubItems[6].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TongSoLuong=null, "; }
                    if (!item.SubItems[7].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    DonViTinh=N'" + item.SubItems[7].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    DonViTinh=null, "; }
                    if (!item.SubItems[8].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TriGiaNT='" + item.SubItems[8].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TriGiaNT=null, "; }
                    if (!item.SubItems[9].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    TenDoiTac=N'" + item.SubItems[9].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    TenDoiTac=null, "; }
                    if (!item.SubItems[10].Text.Equals(""))
                    {
                        SQL_U = SQL_U + "    DOCNO='" + item.SubItems[10].Text + "', ";
                    }
                    else { SQL_U = SQL_U + "    DOCNO=null, "; }
                    SQL_U = SQL_U + "    USERID=N'" + iUSERID + "', " +
                                    "    USERDATE=N'" + ThoiGianImport + "' " +
                                    " WHERE DECLARATION = " + DECLARATION + " and SoTT =" + SoTT;

                    SqlCommand cm2 = new SqlCommand(SQL_U, con);
                    cm2.ExecuteNonQuery();
                    dem++;
                }
            }
            con.Close();
            DialogResult dialog = MessageBox.Show(dem + " items completed.", "Import finished", MessageBoxButtons.OK);
            if (dialog == DialogResult.OK)
            {
                Application.Exit();
            }
        }
        public void LoadDataGridView3(string parentPath)
        {
            progressBar1.Minimum = 0; //Đặt giá trị nhỏ nhất cho ProgressBar
            progressBar1.Maximum = 200; //Đặt giá trị lớn nhất cho ProgressBar

            if (excelApp != null)
            {
                Excel.Workbook excelWorkbook = excelApp.Workbooks.Open(parentPath, 0, true, 5, "", "", true, Excel.XlPlatform.xlWindows, "\t", false, false, 0, true, 1, 0);
                Excel.Worksheet excelWorksheet = (Excel.Worksheet)excelWorkbook.Sheets[1];

                Excel.Range excelRange = excelWorksheet.UsedRange;
                int rowCount = excelRange.Rows.Count;
                int colCount = excelRange.Columns.Count;
                progressBar1.Minimum = 0; //Đặt giá trị nhỏ nhất cho ProgressBar
                progressBar1.Maximum = rowCount; //Đặt giá trị lớn nhất cho ProgressBar
                lvtemp = new ListView();
                for (int j = 1; j <= colCount; j++)
                {
                    string value = Convert.ToString(excelRange.Cells[1, j].value);
                    lvtemp.Columns.Add(value);
                }
                var items = new List<ListViewItem>();
                for (int i = 2; i <= rowCount; i++)
                {
                    if (!String.IsNullOrEmpty(Convert.ToString(excelRange.Cells[i, 1].value)))
                    {
                        progressBar1.Value = i; //Gán giá trị cho ProgressBar
                        ListViewItem item = new ListViewItem("" + Convert.ToString(excelRange.Cells[i, 1].value));//
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 2].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 3].value));
                        item.SubItems.Add("" + String.Format("{0:yyyy/MM/dd}", excelRange.Cells[i, 4].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 5].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 6].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 7].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 8].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 9].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 10].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 11].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 12].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 13].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 14].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 15].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 16].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 17].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 18].value));
                        string diengiai = Convert.ToString(excelRange.Cells[i, 19].value);
                        diengiai = diengiai.Replace("'", "''");
                        item.SubItems.Add(diengiai);
                        //item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 19].value));
                        string diengiaiTKdoiung = Convert.ToString(excelRange.Cells[i, 20].value);
                        diengiaiTKdoiung = diengiaiTKdoiung.Replace("'", "''");
                        item.SubItems.Add(diengiaiTKdoiung);
                        //item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 20].value));
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 21].value));
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 22].value))); //money
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 23].value))); //money
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 24].value))); //money
                        item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 25].value));
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 26].value))); //money
                        item.SubItems.Add("" + money("" + Convert.ToString(excelRange.Cells[i, 27].value))); //money                                            

                        //if (Convert.ToString(excelRange.Cells[i, 8].value) != "")
                        //item.SubItems.Add("" + String.Format("{0:dd/MM/yyyy}", excelRange.Cells[i, 8].value));
                        //else
                        //item.SubItems.Add("" + Convert.ToString(excelRange.Cells[i, 8].value));
                        items.Add(item);
                    }
                }
                ListViewItem[] arr = items.ToArray();
                lvtemp.BeginUpdate();
                lvtemp.Items.AddRange(arr);
                lvtemp.EndUpdate();
                excelWorkbook.Close();
                excelApp.Quit();
            }
        }
        public void Save3(ListView lv)
        {
            con = new SqlConnection(iconn);
            con.Open();
            string SQL_I = "", SQL_D = "", DECLARATION = "", SQL_DLog = "", NGAY_CT = "", THANG_CT = "", NAM_CT = "";
            int dem = 0;


            foreach (ListViewItem item in lv.Items)
            {

                SQL_I = "INSERT INTO GP_Import_Cost(TK_Ketoan,Ten_TK,Ten_tat_TK,Ngay_CT,Ma_CT,Maso_TK_doi_ung,Ten_TK_doi_ung,Tenkhac_TK_doi_ung,Ma_bo_phan," +
                        "Ten_bo_phan,Ma_theo_doi_no1,Ten_theo_doi_no1,Ma_theo_doi_no2,Ten_theo_doi_no2,MS_TK_theo_doi_no1,Ten_TK_theo_doi_no1," +
                        "MS_TK_theo_doi_no2,Ten_TK_theo_doi_no2,Dien_giai,Dien_giai_TK_doi_ung,Ghi_chu,Sotien_ben_no_Noi_te,Sotien_ben_co_Noi_te,Sodu_Noi_te," +
                        "Sodu_no_OR_co,Sodu_Noi_te_No,Sodu_Noi_te_Co,ImportUser,ImportDate,YN)  VALUES(";
                for (int k = 0; k <= item.SubItems.Count - 1; k++)
                {
                    string data = item.SubItems[k].Text;

                    if (k == 1 || k == 6 || k == 11 || k == 13 || k == 15 || k == 17 || k == 18 || k == 19 || k == 20 || k == 24)
                    {
                        if (!data.Equals(""))
                        {
                            SQL_I += "N";
                        }
                    }
                    if (!data.Equals(""))
                    {
                        if (k == 3)
                        {
                            if (data != "N")
                            {
                                //MessageBox.Show("-" + data);
                                THANG_CT = data.Substring(5, 2);
                                NAM_CT = data.Substring(0, 4);
                                //data = data.Substring(5, 2) + "/" + data.Substring(8, 2) + "/" + data.Substring(0, 4);
                                //NGAY_CT = data.Substring(5, 2) + "/" + data.Substring(8, 2) + "/" + data.Substring(0, 4);                                
                                //MessageBox.Show("-" + data+ "-"+ THANG_CT + "-"+ NAM_CT);
                            }
                            else
                                data = "null";
                        }

                        if (data == "null")
                            SQL_I += data.Trim() + ", ";
                        else
                            SQL_I += "'" + data.Trim() + "', ";

                    }
                    else
                    {
                        SQL_I += "null, ";
                    }
                    if (k == 4)
                    {
                        DECLARATION = "'" + data.Trim() + "'";
                    }
                }
                SQL_I = SQL_I + "'" + iUSERID + "' ";
                SQL_I = SQL_I + ",'" + ThoiGianImport + "' ";
                SQL_I = SQL_I + ",1)";

                // if (!File.Exists(Path.Combine(@"C:\ERP\LogABC123.txt")))
                //{                    
                //File.WriteAllText(Path.Combine(@"C:\ERP\LogABC123.txt"), SQL_I + "\n");
                //}
                //else File.AppendAllText(Path.Combine(@"C:\ERP\LogABC123.txt"), SQL_I + "\n");
                // MessageBox.Show(SQL_I);
                //WriteTxt(SQL_I + "");

                //SQL_DLog = "insert into _764920(CLBH,LB) values(  '" + DECLARATION+"','"+ dem + "')";
                //SqlCommand cm_log = new SqlCommand(SQL_DLog, con);
                //cm_log.ExecuteNonQuery();
                // MessageBox.Show("" + DECLARATION);

                SQL_D = "delete from GP_Import_Cost WHERE YEAR(Ngay_CT )='" + NAM_CT + "' AND MONTH (Ngay_CT )='" + THANG_CT + "' AND ImportDate<'" + ThoiGianImport + "' ";
                SqlCommand cmd_D = new SqlCommand(SQL_D, con);
                cmd_D.ExecuteNonQuery();

                if (DECLARATION != "''")
                {
                    SqlCommand cmd = new SqlCommand(SQL_I, con);
                    cmd.ExecuteNonQuery();
                    dem++;
                }
            }
            con.Close();
            DialogResult dialog = MessageBox.Show(dem + " items completed.", "Import finished", MessageBoxButtons.OK);
            if (dialog == DialogResult.OK)
            {
                Application.Exit();
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.IO;
using System.Threading;


namespace ScanQR
{
    public partial class Form1 : Form
    {
        public static string usernv = "";
        SqlConnection connect = ClassKetnoi.connect;
        public Form1()
        {   
            InitializeComponent();
           // txtuser.SelectionStart = 0;
        }

        private void lbexit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void lbmini_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void btnlogin_Click(object sender, EventArgs e)
        {
            usernv = txtuser.Text;
            string querynv = "Select * From Busers where USERID ='" + txtuser.Text + "' and PWD='" + txtpass.Text + "' ";
            SqlDataAdapter sqldata = new SqlDataAdapter(querynv, connect);
            DataTable datatb1 = new DataTable();
            sqldata.Fill(datatb1);
            if(datatb1.Rows.Count==1)
            {
                MainControl mainmenu = new MainControl();
                this.Hide();
                mainmenu.Show();
            }
            else
            {
                MessageBox.Show("Sai tài khoản hoặc mật khẩu!");
            }
        }

        private void txtuser_Click(object sender, EventArgs e)
        {
            txtuser.Clear();
        }

        private void txtpass_Click(object sender, EventArgs e)
        {
            txtpass.Clear();
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            pictureBox2.Visible = false;
        }

        private void Form1_Activated(object sender, EventArgs e)
        {
            System.Windows.Forms.Timer timer = new System.Windows.Forms.Timer();
            timer.Interval = 6500;
            timer.Tick += (source, c) => { pictureBox2.Visible = false; timer.Stop(); };
            timer.Start();
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using FontAwesome.Sharp;
using System.Runtime.InteropServices;
using ScanQR.MenuTab;
using System.Data.SqlClient;
using System.IO;

namespace ScanQR
{
    public partial class MainControl : Form
    {
        SqlConnection connect = ClassKetnoi.connect;
        SqlCommand cmd = new SqlCommand();
        SqlDataReader rdr;
        private Form currentchildform;

        public static string tennv = "";
        public static Size size;

        public MainControl()
        {
            InitializeComponent();
            timer1.Start();//dong ho
        }
        private void motrangcon(Form trangcon)
        {
            if (currentchildform != null)
            {
                currentchildform.Close();

            }
            currentchildform = trangcon;
            trangcon.TopLevel = false;
            trangcon.FormBorderStyle = FormBorderStyle.None;
            trangcon.Dock = DockStyle.Fill;
            trangcon.ClientSize = paneltrangcon.ClientSize;
            paneltrangcon.Controls.Add(trangcon);
            paneltrangcon.Tag = trangcon;
            trangcon.BringToFront();
            trangcon.Show();
        }

        private void btnlogout_Click(object sender, EventArgs e)
        {
            //activebtn(sender, RGBColors.color7);
            //Application.Restart();
            Close();
        }

        private void MainControl_Load(object sender, EventArgs e)
        {
            /*try
            {
                connect.Open();
                cmd.CommandText = "select USERID,USERNAME from Busers where USERID='" + Form1.usernv + "'";
                //cmd.CommandText = "select USERID,USERNAME from Busers where USERID='105540'";
                cmd.Connection = connect;
                rdr = cmd.ExecuteReader();
                bool temp = false;
                while (rdr.Read())
                {
                    LabelUser.Text = rdr.GetString(1);
                    tennv = rdr.GetString(1);
                    temp = true;
                }
                if (temp == false)
                   // MessageBox.Show("not found");
                connect.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }*/
            LabelUser.Text = "";
            PanelMenu.Width=this.ClientSize.Width/10;

            panel1.Height=this.ClientSize.Height/10;

            PanelLogo.Height=this.ClientSize.Height/10;

            picLogo.Width= PanelLogo.Width*2/3;
            picLogo.Height = PanelLogo.Height;
            picLogo.Left = PanelLogo.Width / 6;
            picLogo.Top = 2;

            labelGioBig.Height = (panel1.Height) * 2 / 7;
            labelGioBig.Left = (panel1.Width) / 2+ labelGioBig.Height;
            labelGioBig.Top = (panel1.Height - labelGioBig.Height) / 2;

            lbNgayThangBig.Height = (panel1.Height) *2/ 7;
            lbNgayThangBig.Left = (panel1.Width ) / 2 - lbNgayThangBig.Width;
            lbNgayThangBig.Top = (panel1.Height - lbNgayThangBig.Height) / 2;


            LabelUser.Height = (panel1.Height) * 2 / 7;
            LabelUser.Left = (panel1.Width - LabelUser.Width) / 2;
            LabelUser.Top = (panel1.Height - LabelUser.Height) / 2+ LabelUser.Height;

            btnScanIn.Width= (PanelMenu.Width) / 2;
            btnScanIn.Height = (PanelMenu.Width) / 2;
            btnScanIn.Top = PanelLogo.Height + (btnScanIn.Height / 2);
            btnScanIn.Left = (PanelMenu.Width - btnScanIn.Width) / 2;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            DateTime datetime = DateTime.Now;
            this.labelGioBig.Text = datetime.ToString("HH:mm:ss");
            this.lbNgayThangBig.Text = datetime.ToString("dd/MM/yyyy");
        }

        private void btnScanIn_Click(object sender, EventArgs e)
        {
            size = paneltrangcon.ClientSize;
            motrangcon(new ScanInFo());
        }

    }
}

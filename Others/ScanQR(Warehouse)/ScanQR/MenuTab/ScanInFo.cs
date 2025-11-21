using AForge.Video;
using AForge.Video.DirectShow;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Media;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using ZXing;
using ZXing.QrCode;

namespace ScanQR.MenuTab
{
    public partial class ScanInFo : Form
    {
        SqlConnection conn = ClassKetnoi.connect;
        SqlCommand cmd = new SqlCommand();
        FilterInfoCollection filterInfoCollection;
        VideoCaptureDevice videoCaptureDevice;
        QrCodeEncodingOptions options;
        BarcodeWriter qr;
        string QC, RSL;
        PictureBox pictureBox1, pictureBox2, pictureBox3;
        Label qrcode, CLBH, YWPM, ZSYWJC, CGNO, Memo_RY, Memo_Article, DWBH, PACK1, Memo, o1, q1, r1, RSLLabel, QCLabel;
        Panel panel2;
        Custom.VBButton vbButton1, vbButton2;
        Custom.CustomTextBox customTextBox1;
        Custom.LabelSize ArticleLabel, web, Order;
        public ScanInFo()
        {
            InitializeComponent();
            this.ClientSize = MainControl.size;

            pictureBox1 = new PictureBox();
            pictureBox1.Image = global::ScanQR.Properties.Resources.scan;
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.Width = this.ClientSize.Width / 6;
            pictureBox1.Height = this.ClientSize.Height * 2 / 9;
            pictureBox1.Left = this.ClientSize.Width / 2 + (pictureBox1.Width / 2);
            pictureBox1.Top = this.ClientSize.Height - (pictureBox1.Height * 3 / 2);
            this.Controls.Add(pictureBox1);

            vbButton1=new Custom.VBButton();
            vbButton1.BackColor = Color.Transparent;
            vbButton1.BackgroundImage = global::ScanQR.Properties.Resources.start;
            vbButton1.BackgroundImageLayout = ImageLayout.Stretch;
            vbButton1.Width = pictureBox1.Height * 2 / 5;
            vbButton1.Height = pictureBox1.Height * 2 / 5;
            vbButton1.Left = pictureBox1.Left + pictureBox1.Width + (vbButton1.Height / 3);
            vbButton1.Top = (pictureBox1.Top + vbButton1.Height);
            vbButton1.Click += new EventHandler(this.vbButton1_Click);
            this.Controls.Add(vbButton1);

            vbButton2 = new Custom.VBButton();
            vbButton2.BackgroundImage = global::ScanQR.Properties.Resources.scanjpg;
            vbButton2.BackgroundImageLayout = ImageLayout.Stretch;
            vbButton2.Width = vbButton1.Width;
            vbButton2.Height = vbButton1.Height;
            vbButton2.Left = vbButton1.Left + vbButton1.Width + (vbButton1.Height / 3);
            vbButton2.Top = vbButton1.Top;
            vbButton2.Click += new EventHandler(this.vbButton2_Click);
            this.Controls.Add(vbButton2);

            customTextBox1= new Custom.CustomTextBox();
            customTextBox1.Width = vbButton1.Width * 2 + (vbButton1.Height / 4);
            customTextBox1.Left = vbButton1.Left;
            customTextBox1.Top = this.ClientSize.Height;
            customTextBox1.KeyPress+= new KeyPressEventHandler(this.customTextBox1_KeyPress);
            this.Controls.Add(customTextBox1);

            pictureBox2=new PictureBox();
            pictureBox2.BackColor = Color.Transparent;
            pictureBox2.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox2.Width = (this.ClientSize.Height * 3 / 22);
            pictureBox2.Height = pictureBox2.Width;
            pictureBox2.Left = this.ClientSize.Width / 10;
            pictureBox2.Top = (this.ClientSize.Height - (pictureBox2.Height * 2 + (pictureBox2.Height / 5))) / 6;
            pictureBox2.MouseDown += new MouseEventHandler(this.pictureBox2_MouseDown);
            pictureBox2.MouseUp += new MouseEventHandler(this.pictureBox2_MouseUp);
            this.Controls.Add(pictureBox2);

            qrcode=new Label();
            qrcode.BackColor = Color.Transparent;
            qrcode.ForeColor =SystemColors.MenuHighlight;
            qrcode.Width = pictureBox2.Width;
            qrcode.Height = (pictureBox2.Height * 2 / 5);
            qrcode.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 10, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            qrcode.Top = pictureBox2.Top + pictureBox2.Height;
            qrcode.Left = pictureBox2.Left;
            this.Controls.Add(qrcode);

            pictureBox3 = new PictureBox();
            pictureBox3.BackColor = Color.Transparent;
            pictureBox3.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox3.Width = pictureBox2.Width;
            pictureBox3.Height = pictureBox2.Height;
            pictureBox3.Left = pictureBox2.Left;
            pictureBox3.Top = qrcode.Top + qrcode.Height;
            pictureBox3.MouseDown += new MouseEventHandler(this.pictureBox3_MouseDown);
            pictureBox3.MouseUp += new MouseEventHandler(this.pictureBox3_MouseUp);
            this.Controls.Add(pictureBox3);

            ArticleLabel = new Custom.LabelSize();
            ArticleLabel.BackColor = Color.Transparent;
            ArticleLabel.ForeColor = SystemColors.MenuHighlight;
            ArticleLabel.Font = new Font("Times New Roman", 9F, ((FontStyle)(FontStyle.Bold)));
            ArticleLabel.Width = pictureBox3.Width;
            ArticleLabel.Height = (pictureBox3.Height / 5);
            ArticleLabel.Top = pictureBox3.Top + pictureBox3.Height;
            ArticleLabel.Left = pictureBox3.Left;
            this.Controls.Add(ArticleLabel);

            panel2 = new Panel();
            panel2.BackColor = Color.Transparent;
            panel2.Width = this.ClientSize.Width * 7 / 10;
            panel2.Height = (this.ClientSize.Height * 3 / 22) * 2 + ((this.ClientSize.Height * 3 / 22) * 3 / 5);
            panel2.Left = (this.ClientSize.Width / 10) + (this.ClientSize.Height * 3 / 22) + 5;
            panel2.Top = (this.ClientSize.Height - ((this.ClientSize.Height * 3 / 22) * 2 + ((this.ClientSize.Height * 3 / 22) / 5))) / 6;

            Memo=new Label();
            Memo.Dock = DockStyle.Top;
            Memo.ForeColor = SystemColors.Window;
            Memo.Height = panel2.Height / 15;
            Memo.Width = panel2.Width;
            Memo.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.Memo);

            PACK1 = new Label();
            PACK1.Dock = DockStyle.Top;
            PACK1.ForeColor = SystemColors.Window;
            PACK1.Height = panel2.Height / 15;
            PACK1.Width = panel2.Width;
            PACK1.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.PACK1);

            DWBH = new Label();
            DWBH.Dock = DockStyle.Top;
            DWBH.ForeColor = SystemColors.Window;
            DWBH.Height = panel2.Height / 15;
            DWBH.Width = panel2.Width;
            DWBH.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.DWBH);

            Memo_Article = new Label();
            Memo_Article.Dock = DockStyle.Top;
            Memo_Article.ForeColor = SystemColors.Window;
            Memo_Article.Height = panel2.Height * 3 / 15;
            Memo_Article.Width = panel2.Width;
            Memo_Article.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.Memo_Article);

            Memo_RY = new Label();
            Memo_RY.Dock = DockStyle.Top;
            Memo_RY.ForeColor = SystemColors.Window;
            Memo_RY.Height = panel2.Height * 3 / 15;
            Memo_RY.Width = panel2.Width;
            Memo_RY.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.Memo_RY);

            CGNO = new Label();
            CGNO.Dock = DockStyle.Top;
            CGNO.ForeColor = SystemColors.Window;
            CGNO.Height = panel2.Height / 15;
            CGNO.Width = panel2.Width;
            CGNO.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.CGNO);

            ZSYWJC = new Label();
            ZSYWJC.Dock = DockStyle.Top;
            ZSYWJC.ForeColor = SystemColors.Window;
            ZSYWJC.Height = panel2.Height / 15;
            ZSYWJC.Width = panel2.Width;
            ZSYWJC.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.ZSYWJC);

            YWPM = new Label();
            YWPM.Dock = DockStyle.Top;
            YWPM.ForeColor = SystemColors.Window;
            YWPM.Height = panel2.Height * 3 / 15;
            YWPM.Width = panel2.Width;
            YWPM.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.YWPM);

            CLBH = new Label();
            CLBH.Dock = DockStyle.Top;
            CLBH.ForeColor = SystemColors.Window;
            CLBH.Height = panel2.Height / 15;
            CLBH.Width = panel2.Width;
            CLBH.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            panel2.Controls.Add(this.CLBH);
            this.Controls.Add(panel2);

            web =new Custom.LabelSize();
            web.BackColor = Color.Transparent;
            web.ForeColor = SystemColors.Highlight;
            web.Font = new Font("Times New Roman", 9F, ((FontStyle)((FontStyle.Bold | FontStyle.Underline))));
            web.Text = "tyxuan.com.vn/QR/";
            web.Height = panel2.Height / 10;
            web.Width = panel2.Width / 5;
            web.Left = (this.ClientSize.Width - web.Width) / 2;
            web.Top = (this.ClientSize.Height - (web.Height * 2 / 3)) * 4 / 7;
            web.Click += new EventHandler(this.web_Click);
            this.Controls.Add(web);

            Order =new Custom.LabelSize();
            Order.BackColor = Color.Transparent;
            Order.ForeColor = Color.Lime;
            Order.Font = new Font("Times New Roman", 13F, ((FontStyle)(FontStyle.Bold)));
            Order.Text = "Order";
            Order.Height = panel2.Height / 13;
            Order.Width = panel2.Width / 5;
            Order.Left = panel2.Left - 5;
            Order.Top = (this.ClientSize.Height + (Order.Height / 3)) * 2 / 3;
            Order.Click += new EventHandler(this.Order_Click);
            this.Controls.Add(Order);

            o1=new Label();
            o1.BackColor = Color.Transparent;
            o1.Width = Order.Width;
            o1.Height = Order.Width;
            o1.Left = Order.Left - o1.Width - Order.Height;
            o1.Top = Order.Top - Order.Height;
            o1.Click += new EventHandler(this.o1_Click);
            this.Controls.Add(o1);

            RSLLabel=new Label();
            RSLLabel.BackColor = Color.Transparent;
            RSLLabel.ForeColor = SystemColors.Window;
            RSLLabel.Height = panel2.Height / 7;
            RSLLabel.Width = panel2.Width / 3;
            RSLLabel.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 12, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            RSLLabel.Left = Order.Left;
            RSLLabel.Top = Order.Top + this.ClientSize.Height / 9;
            RSLLabel.Click += new EventHandler(this.RSLLabel_Click);
            this.Controls.Add(RSLLabel);

            r1 = new Label();
            r1.BackColor = Color.Transparent;
            r1.Width = Order.Width;
            r1.Height = Order.Width;
            r1.Left = RSLLabel.Left - r1.Width - Order.Height;
            r1.Top = RSLLabel.Top - Order.Height;
            r1.Click += new EventHandler(this.r1_Click);
            this.Controls.Add(r1);

            QCLabel = new Label();
            QCLabel.BackColor = Color.Transparent;
            QCLabel.ForeColor = SystemColors.Window;
            QCLabel.Height = panel2.Height / 7;
            QCLabel.Width = panel2.Width / 3;
            QCLabel.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 12, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            QCLabel.Left = Order.Left;
            QCLabel.Top = RSLLabel.Top + this.ClientSize.Height / 9;
            QCLabel.Click += new EventHandler(this.QCLabel_Click);
            this.Controls.Add(QCLabel);

            q1 = new Label();
            q1.BackColor = Color.Transparent;
            q1.Width = Order.Width;
            q1.Height = Order.Width;
            q1.Left = QCLabel.Left - q1.Width - Order.Height;
            q1.Top = QCLabel.Top - Order.Height;
            q1.Click += new EventHandler(this.q1_Click);
            this.Controls.Add(q1);
        }

        private void ScanIn_Load(object sender, EventArgs e)
        {
            //timer1.Start();
            conn.Open();
            conn.Close();
            options = new QrCodeEncodingOptions();
            qr = new ZXing.BarcodeWriter();
            qr.Options = options;
            qr.Format = ZXing.BarcodeFormat.QR_CODE;
            QC = "";
            RSL = "";
            customTextBox1.Focus();

            lvRealList.Width = this.ClientSize.Width / 2;
            lvRealList.Font = new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 14, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0)));
            lvRealList.Columns[0].Width = lvRealList.Width / 20 * 4;
            lvRealList.Columns[1].Width = lvRealList.Width / 20 * 4;
            lvRealList.Columns[2].Width = lvRealList.Width / 20 * 3;
            lvRealList.Columns[3].Width = lvRealList.Width / 20 * 2;
            lvRealList.Columns[4].Width = lvRealList.Width / 20 * 4;
            lvRealList.Columns[5].Width = lvRealList.Width / 20 * 4;
            lvRealList.Columns[6].Width = lvRealList.Width / 20 * 5;
            lvRealList.Columns[7].Width = lvRealList.Width / 20 * 3;
            lvRealList.Columns[8].Width = lvRealList.Width / 20 * 2;

            filterInfoCollection = new FilterInfoCollection(FilterCategory.VideoInputDevice);
            foreach (FilterInfo Device in filterInfoCollection)
                cboCamera.Items.Add(Device.Name);
            if (cboCamera.Items.Count == 1)
            {
                cboCamera.SelectedIndex = 0;
            } else if (cboCamera.Items.Count > 1)
            {
                cboCamera.SelectedIndex = 1;
            }
        }

        private void reset()
        {
            pictureBox2.Image = null;
            pictureBox3.Image = null;
            customTextBox1.Text = "";
            qrcode.Text = "";
            ArticleLabel.Text = "";
            RSLLabel.Text = "";
            QCLabel.Text = "";
            CLBH.Text = "";
            YWPM.Text = "";
            ZSYWJC.Text = "";
            CGNO.Text = "";
            Memo_RY.Text = "";
            Memo_Article.Text = "";
            DWBH.Text = "";
            PACK1.Text = "";
            Memo.Text = "";
            lvRealList.Visible = false;
        }

        private void ShowInformation(string barcode)
        {
            string CLBH1 = "";
            lvRealList.Items.Clear();
            if (barcode != "")
            {
                var result = new Bitmap(qr.Write(barcode.Trim()));
                pictureBox2.Image = result;
                qrcode.Text = barcode;
                conn.Open();
                string sql = "select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,CLZL.YWPM,ZSZL.ZSYWJC,KCRKScan_RFSS.Memo_RY,KCRKScan_RFSS.Memo_Article " +
                             ",KCRKScan_RFSS.Qty,CONVERT(varchar, KCRKScan_RFSS.Pack,101)+' of ' +CONVERT(varchar,TotalPack,101) as PACK1,KCRKScan_RFSS.Pack " +
                             ",KCRKScan_RF.Memo+' - '+KCRKScan_RF.DOCNO as Memo,CONVERT(varchar,isnull(KCRKScan_RFSS.RemQty,KCRKScan_RFSS.Qty),101)+' '+CLZL.DWBH DWBH " +
                             ",KCRKScan_RFS.CGNO, KCRKScan_RFSS.barcode as QRCode, CONVERT(varchar,month(getdate())) as FIFO, KCRKScan_RFSS.LotNO " +
                             "from KCRKScan_RFSS " +
                             "left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO " +
                             "left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH " +
                             "left join (select SCNO,CLBH,count (Pack) as TotalPack " +
                             "           from KCRKScan_RFSS " +
                             "           group by SCNO,CLBH) KCRKScan  on KCRKScan.SCNO = KCRKScan_RFS.SCNO and KCRKScan.CLBH = KCRKScan_RFS.CLBH " +
                             "left join CGZL on KCRKScan_RFS.CGNO = CGZL.CGNO " +
                             "left join ZSZL on CGZL.ZSBH = ZSZL.ZSDH " +
                             "left join CLZL on KCRKScan_RFSS.CLBH = CLZL.CLDH " +
                             "Where KCRKScan_RFSS.barcode= '" + barcode + "' ";
                cmd = new SqlCommand(sql, conn);
                SqlDataReader dataReader = cmd.ExecuteReader();
                if (dataReader.Read())
                {
                    CLBH1 = dataReader["CLBH"].ToString();
                    CLBH.Text = "Mat. Code:    " + dataReader["CLBH"].ToString();
                    YWPM.Text = "Mat. Name:   " + dataReader["YWPM"].ToString();
                    ZSYWJC.Text = "Supp. Name: " + dataReader["ZSYWJC"].ToString();
                    CGNO.Text = "Po # No:        " + dataReader["CGNO"].ToString();
                    Memo_RY.Text = "OrderNo.:     " + dataReader["Memo_RY"].ToString();
                    Memo_Article.Text = "SKU#/BUY:  " + dataReader["Memo_Article"].ToString();
                    DWBH.Text = "Quantity:      " + dataReader["DWBH"].ToString();
                    PACK1.Text = "Roll No:        " + dataReader["PACK1"].ToString();
                    Memo.Text = "Memo:       " + dataReader["Memo"].ToString();
                }
                dataReader.Close();
                string sql1 = "select distinct XXZL.ARTICLE,XXZL.IMGName " +
                              "from KCRKScan_RFSS " +
                              "left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH " +
                              "left join CGZLSS on CGZLSS.CGNO=KCRKScan_RFS.CGNO and CGZLSS.CLBH=KCRKScan_RFS.CLBH " +
                              "left join DDZL  on DDZL.DDBH=CGZLSS.ZLBH " +
                              "left join XXZL on XXZL.XieXIng=DDZL.XieXIng and XXZL.SheHao=DDZL.SheHao " +
                              "Where KCRKScan_RFSS.barcode= '" + barcode + "' ";
                cmd = new SqlCommand(sql1, conn);
                dataReader = cmd.ExecuteReader();
                string shoePic = "";
                if ((dataReader.Read()))
                {
                    ArticleLabel.Text = dataReader[0].ToString();
                    if (dataReader[1].ToString() != "")
                    {
                        shoePic = dataReader[1].ToString().Replace("H:", "\\\\192.168.123.111\\BOM");
                        Image i = Image.FromFile(shoePic);
                        pictureBox3.Image = i;
                    }
                }
                dataReader.Close();
                string sql2 = "Select top 1 PDFilePage,PDDate " +
                              "from RSTList " +
                              "where CLDH= '" + CLBH1 + "' and GSBH='VA12' order by PDDate desc ";
                cmd = new SqlCommand(sql2, conn);
                dataReader = cmd.ExecuteReader();
                if ((dataReader.Read()))
                {
                    RSLLabel.Text = "RSL:  " + dataReader[0].ToString();
                    RSL = dataReader[0].ToString();
                }
                dataReader.Close();
                string sql3 = "Select top 1 File_Name_Lab " +
                              "from MaterialQCcheck " +
                              "where CLBH= '" + CLBH1 + "' and GSBH='VA12' order by Lab_finishDate desc ";
                cmd = new SqlCommand(sql3, conn);
                dataReader = cmd.ExecuteReader();
                if ((dataReader.Read()))
                {
                    QCLabel.Text = "QC:  " + dataReader[0].ToString();
                    QC = dataReader[0].ToString();
                }
                dataReader.Close();
                conn.Close();
            }
        }
        private void vbButton1_Click(object sender, EventArgs e)
        {
            try
            {
                if (vbButton1.Text == "")
                {
                    videoCaptureDevice = new VideoCaptureDevice(filterInfoCollection[cboCamera.SelectedIndex].MonikerString);
                    videoCaptureDevice.NewFrame += FinalFrame_NewFrame;
                    videoCaptureDevice.Start();
                    reset();
                    vbButton1.Text = ".";
                    vbButton1.BackgroundImage = global::ScanQR.Properties.Resources.stop;
                    timer1.Interval = 100;
                    timer1.Start();
                }
                else
                {
                    vbButton1.Text = "";
                    vbButton1.BackgroundImage = global::ScanQR.Properties.Resources.start;
                    if (videoCaptureDevice != null)
                        if (videoCaptureDevice.IsRunning)
                            videoCaptureDevice.Stop();
                    timer1.Stop();
                }
            }catch (Exception ex) { MessageBox.Show("Error camera!!!"); }
        }
        private void FinalFrame_NewFrame(object sender, NewFrameEventArgs eventArgs)
        {
            pictureBox1.Image = (Bitmap)eventArgs.Frame.Clone();
        }

        private void ScanIn_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (videoCaptureDevice != null)
                if (videoCaptureDevice.IsRunning == true)
                    videoCaptureDevice.Stop();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                BarcodeReader Reader = new BarcodeReader();
                Result result = Reader.Decode((Bitmap)pictureBox1.Image);
                if (result != null)
                {
                    ShowInformation(result.ToString().Trim());
                    //Thread.Sleep(20);
                    //SystemSounds.Beep.Play();
                }
            }
        }

        private void Order_Click(object sender, EventArgs e)
        {
            if (qrcode.Text != "")
            {
                lvRealList.Items.Clear();
                conn.Open();
                string sql4 = "select B.SCNO,B.CGNO,DDZL.KHPO,B.ZLBH,B.Qty,DDZL.ARTICLE,DDZL.Pairs,DDZL.ShipDate,SCZLDate.Assemble,SCZLDate.ADate,BDepartment.DepName,BDepartment.DepMemo,BDepartment.Xuong " +
                          "from KCRKScan_RFSS A " +
                          "left join KCRKScan_RFSSS B on A.SCNO=B.SCNO and A.CLBH=B.CLBH and A.Pack=B.Pack " +
                          "left join DDZL on DDZL.DDBH=B.ZLBH " +
                          "left join XXZL on XXZL.XieXIng=DDZL.XieXIng and XXZL.SheHao=DDZL.SheHao " +
                          "left join SCZLDate on SCZLDate.ZLBH=DDZL.DDBH " +
                          "Left join BDepartment on BDepartment.ID=SCZLDate.Assemble " +
                          "Where A.barcode= '" + qrcode.Text + "' ";
                cmd = new SqlCommand(sql4, conn);
                SqlDataReader dataReader4 = cmd.ExecuteReader();
                var items = new List<ListViewItem>();
                while (dataReader4.Read())
                {
                    ListViewItem item = new ListViewItem(dataReader4["KHPO"].ToString());
                    item.SubItems.Add(dataReader4["ZLBH"].ToString());
                    item.SubItems.Add(dataReader4["ARTICLE"].ToString());
                    item.SubItems.Add(dataReader4["Pairs"].ToString());
                    item.SubItems.Add(dataReader4["ShipDate"].ToString());
                    item.SubItems.Add(dataReader4["ADate"].ToString());
                    item.SubItems.Add(dataReader4["DepName"].ToString());
                    item.SubItems.Add(dataReader4["Xuong"].ToString());
                    item.SubItems.Add(dataReader4["Qty"].ToString());
                    items.Add(item);
                }
                dataReader4.Close();
                conn.Close();
                ListViewItem[] arr = items.ToArray();
                lvRealList.BeginUpdate();
                lvRealList.Items.AddRange(arr);
                lvRealList.EndUpdate();
            }
            if (lvRealList.Visible == false)
            {
                lvRealList.Visible = true;
            }
            else lvRealList.Visible = false;
        }

        private void vbButton2_Click(object sender, EventArgs e)
        {
            customTextBox1.Focus();
            reset();
        }

        private void customTextBox1_KeyPress(object sender, KeyPressEventArgs e)
        {            //將輸入的字元儲存至 barcode
            if (e.KeyChar == (char)Keys.Enter) //判斷是否輸入 enter
            {
                ShowInformation(customTextBox1.Text);
                customTextBox1.Text = "";
            }
        }

        private void lvRealList_DrawColumnHeader(object sender, DrawListViewColumnHeaderEventArgs e)
        {
            e.Graphics.DrawImage(global::ScanQR.Properties.Resources.header, e.Bounds);

            // Draw text in a different font
            TextRenderer.DrawText(e.Graphics,
                e.Header.Text,
                new Font("Times New Roman", (this.ClientSize.Width / this.ClientSize.Height) * 15, ((FontStyle)(FontStyle.Bold)), GraphicsUnit.Point, ((byte)(0))),
            e.Bounds,
                Color.Blue);
        }
        private void lvRealList_DrawItem(object sender, DrawListViewItemEventArgs e)
        {
            e.DrawDefault = true;
        }

        private void QCLabel_Click(object sender, EventArgs e)
        {
            if(QC!="")
                System.Diagnostics.Process.Start("\\\\192.168.23.9\\Lab\\"+QC);
        }

        private void web_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Process.Start("http://www.tyxuan.com.vn/qr/");
        }

        private void o1_Click(object sender, EventArgs e)
        {
            Order_Click(sender,e);
        }

        private void r1_Click(object sender, EventArgs e)
        {
            RSLLabel_Click(sender, e);
        }

        private void q1_Click(object sender, EventArgs e)
        {
            QCLabel_Click(sender, e);
        }

        private void pictureBox2_MouseDown(object sender, MouseEventArgs e)
        {
            pictureBox2.Width = (this.ClientSize.Height * 8/ 22);
            pictureBox2.Height = pictureBox2.Width;
        }

        private void pictureBox2_MouseUp(object sender, MouseEventArgs e)
        {
            pictureBox2.Width = (this.ClientSize.Height * 3 / 22);
            pictureBox2.Height = pictureBox2.Width;
        }

        private void pictureBox3_MouseDown(object sender, MouseEventArgs e)
        {
            pictureBox3.Width = (this.ClientSize.Height * 8 / 22);
            pictureBox3.Height = pictureBox3.Width;
        }

        private void pictureBox3_MouseUp(object sender, MouseEventArgs e)
        {
            pictureBox3.Width = (this.ClientSize.Height * 3 / 22);
            pictureBox3.Height = pictureBox3.Width;
        }

        private void RSLLabel_Click(object sender, EventArgs e)
        {
            if (RSL != "")
                System.Diagnostics.Process.Start("\\\\192.168.23.9\\rsl\\" + RSL);
        }

        
    }
}

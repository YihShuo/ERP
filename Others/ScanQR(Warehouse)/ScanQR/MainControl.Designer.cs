namespace ScanQR
{
    partial class MainControl
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainControl));
            this.PanelMenu = new System.Windows.Forms.Panel();
            this.btnScanIn = new ScanQR.Custom.VBButton();
            this.btnlogout = new FontAwesome.Sharp.IconButton();
            this.PanelLogo = new System.Windows.Forms.Panel();
            this.picLogo = new System.Windows.Forms.PictureBox();
            this.pictureBox3 = new System.Windows.Forms.PictureBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.paneltrangcon = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.LabelUser = new ScanQR.Custom.LabelSize();
            this.lbNgayThangBig = new ScanQR.Custom.LabelSize();
            this.labelGioBig = new ScanQR.Custom.LabelSize();
            this.PanelMenu.SuspendLayout();
            this.PanelLogo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // PanelMenu
            // 
            this.PanelMenu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(34)))), ((int)(((byte)(36)))), ((int)(((byte)(49)))));
            this.PanelMenu.Controls.Add(this.btnScanIn);
            this.PanelMenu.Controls.Add(this.btnlogout);
            this.PanelMenu.Controls.Add(this.PanelLogo);
            this.PanelMenu.Controls.Add(this.pictureBox3);
            this.PanelMenu.Dock = System.Windows.Forms.DockStyle.Left;
            this.PanelMenu.Location = new System.Drawing.Point(0, 0);
            this.PanelMenu.Name = "PanelMenu";
            this.PanelMenu.Size = new System.Drawing.Size(180, 600);
            this.PanelMenu.TabIndex = 0;
            // 
            // btnScanIn
            // 
            this.btnScanIn.AutoSize = true;
            this.btnScanIn.BackColor = System.Drawing.Color.MediumSlateBlue;
            this.btnScanIn.BackgroundColor = System.Drawing.Color.MediumSlateBlue;
            this.btnScanIn.BackgroundImage = global::ScanQR.Properties.Resources._4;
            this.btnScanIn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnScanIn.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.btnScanIn.BorderRadius = 20;
            this.btnScanIn.BorderSize = 0;
            this.btnScanIn.FlatAppearance.BorderSize = 0;
            this.btnScanIn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnScanIn.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnScanIn.ForeColor = System.Drawing.Color.MediumSpringGreen;
            this.btnScanIn.Location = new System.Drawing.Point(30, 126);
            this.btnScanIn.Name = "btnScanIn";
            this.btnScanIn.Size = new System.Drawing.Size(126, 90);
            this.btnScanIn.TabIndex = 16;
            this.btnScanIn.Text = "Scan INFO";
            this.btnScanIn.TextColor = System.Drawing.Color.MediumSpringGreen;
            this.btnScanIn.UseVisualStyleBackColor = false;
            this.btnScanIn.Click += new System.EventHandler(this.btnScanIn_Click);
            // 
            // btnlogout
            // 
            this.btnlogout.BackgroundImage = global::ScanQR.Properties.Resources._51;
            this.btnlogout.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnlogout.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btnlogout.FlatAppearance.BorderSize = 0;
            this.btnlogout.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnlogout.Flip = FontAwesome.Sharp.FlipOrientation.Normal;
            this.btnlogout.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnlogout.ForeColor = System.Drawing.Color.Gainsboro;
            this.btnlogout.IconChar = FontAwesome.Sharp.IconChar.SignOutAlt;
            this.btnlogout.IconColor = System.Drawing.Color.OrangeRed;
            this.btnlogout.IconSize = 35;
            this.btnlogout.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnlogout.Location = new System.Drawing.Point(0, 550);
            this.btnlogout.Name = "btnlogout";
            this.btnlogout.Padding = new System.Windows.Forms.Padding(10, 0, 20, 0);
            this.btnlogout.Rotation = 0D;
            this.btnlogout.Size = new System.Drawing.Size(180, 50);
            this.btnlogout.TabIndex = 15;
            this.btnlogout.Text = "Logout";
            this.btnlogout.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnlogout.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnlogout.UseVisualStyleBackColor = true;
            this.btnlogout.Click += new System.EventHandler(this.btnlogout_Click);
            // 
            // PanelLogo
            // 
            this.PanelLogo.BackColor = System.Drawing.Color.Transparent;
            this.PanelLogo.BackgroundImage = global::ScanQR.Properties.Resources.logoback;
            this.PanelLogo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.PanelLogo.Controls.Add(this.picLogo);
            this.PanelLogo.Dock = System.Windows.Forms.DockStyle.Top;
            this.PanelLogo.Location = new System.Drawing.Point(0, 0);
            this.PanelLogo.Name = "PanelLogo";
            this.PanelLogo.Size = new System.Drawing.Size(180, 100);
            this.PanelLogo.TabIndex = 8;
            // 
            // picLogo
            // 
            this.picLogo.Image = global::ScanQR.Properties.Resources.logolyn1;
            this.picLogo.Location = new System.Drawing.Point(30, 6);
            this.picLogo.Name = "picLogo";
            this.picLogo.Size = new System.Drawing.Size(115, 94);
            this.picLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picLogo.TabIndex = 0;
            this.picLogo.TabStop = false;
            // 
            // pictureBox3
            // 
            this.pictureBox3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureBox3.Image = global::ScanQR.Properties.Resources._31;
            this.pictureBox3.Location = new System.Drawing.Point(0, 0);
            this.pictureBox3.Name = "pictureBox3";
            this.pictureBox3.Size = new System.Drawing.Size(180, 600);
            this.pictureBox3.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox3.TabIndex = 0;
            this.pictureBox3.TabStop = false;
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // paneltrangcon
            // 
            this.paneltrangcon.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(34)))), ((int)(((byte)(36)))), ((int)(((byte)(49)))));
            this.paneltrangcon.BackgroundImage = global::ScanQR.Properties.Resources.form2;
            this.paneltrangcon.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.paneltrangcon.Dock = System.Windows.Forms.DockStyle.Fill;
            this.paneltrangcon.Location = new System.Drawing.Point(180, 100);
            this.paneltrangcon.Name = "paneltrangcon";
            this.paneltrangcon.Size = new System.Drawing.Size(920, 500);
            this.paneltrangcon.TabIndex = 8;
            // 
            // panel1
            // 
            this.panel1.BackgroundImage = global::ScanQR.Properties.Resources.tollbar;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.panel1.Controls.Add(this.LabelUser);
            this.panel1.Controls.Add(this.lbNgayThangBig);
            this.panel1.Controls.Add(this.labelGioBig);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(180, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(920, 100);
            this.panel1.TabIndex = 7;
            // 
            // LabelUser
            // 
            this.LabelUser.AutoSize = true;
            this.LabelUser.BackColor = System.Drawing.Color.Transparent;
            this.LabelUser.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.LabelUser.Font = new System.Drawing.Font("Microsoft Sans Serif", 49151F);
            this.LabelUser.ForeColor = System.Drawing.Color.DarkTurquoise;
            this.LabelUser.Location = new System.Drawing.Point(419, 64);
            this.LabelUser.Name = "LabelUser";
            this.LabelUser.Size = new System.Drawing.Size(0, 65535);
            this.LabelUser.TabIndex = 25;
            this.LabelUser.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lbNgayThangBig
            // 
            this.lbNgayThangBig.BackColor = System.Drawing.Color.Transparent;
            this.lbNgayThangBig.Font = new System.Drawing.Font("Microsoft Sans Serif", 21F);
            this.lbNgayThangBig.ForeColor = System.Drawing.SystemColors.HighlightText;
            this.lbNgayThangBig.Location = new System.Drawing.Point(337, 32);
            this.lbNgayThangBig.Name = "lbNgayThangBig";
            this.lbNgayThangBig.Size = new System.Drawing.Size(141, 29);
            this.lbNgayThangBig.TabIndex = 24;
            this.lbNgayThangBig.Text = "04/07/2020";
            // 
            // labelGioBig
            // 
            this.labelGioBig.BackColor = System.Drawing.Color.Transparent;
            this.labelGioBig.Font = new System.Drawing.Font("Microsoft Sans Serif", 21F);
            this.labelGioBig.ForeColor = System.Drawing.SystemColors.HighlightText;
            this.labelGioBig.Location = new System.Drawing.Point(484, 32);
            this.labelGioBig.Name = "labelGioBig";
            this.labelGioBig.Size = new System.Drawing.Size(111, 29);
            this.labelGioBig.TabIndex = 23;
            this.labelGioBig.Text = "12:30:33";
            // 
            // MainControl
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1100, 600);
            this.Controls.Add(this.paneltrangcon);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.PanelMenu);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainControl";
            this.Text = "MainControl";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.MainControl_Load);
            this.PanelMenu.ResumeLayout(false);
            this.PanelMenu.PerformLayout();
            this.PanelLogo.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox3)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel PanelMenu;
        private System.Windows.Forms.Timer timer1;
        private FontAwesome.Sharp.IconButton btnlogout;
        private System.Windows.Forms.Panel PanelLogo;
        private System.Windows.Forms.PictureBox picLogo;
        private System.Windows.Forms.PictureBox pictureBox3;
        private Custom.VBButton btnScanIn;
        private System.Windows.Forms.Panel paneltrangcon;
        private System.Windows.Forms.Panel panel1;
        private Custom.LabelSize LabelUser;
        private Custom.LabelSize lbNgayThangBig;
        private Custom.LabelSize labelGioBig;
    }
}
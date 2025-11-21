namespace ScanQR.MenuTab
{
    partial class ScanInFo
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
            this.cboCamera = new System.Windows.Forms.ComboBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.lvRealList = new System.Windows.Forms.ListView();
            this.PO = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.ORDERNO = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Article = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Pairs = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.GAC = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.PlanDate = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Lean = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Factory = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Usage = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SuspendLayout();
            // 
            // cboCamera
            // 
            this.cboCamera.FormattingEnabled = true;
            this.cboCamera.Location = new System.Drawing.Point(0, 0);
            this.cboCamera.Name = "cboCamera";
            this.cboCamera.Size = new System.Drawing.Size(44, 21);
            this.cboCamera.TabIndex = 8;
            this.cboCamera.Visible = false;
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // lvRealList
            // 
            this.lvRealList.AccessibleRole = System.Windows.Forms.AccessibleRole.Grip;
            this.lvRealList.BackColor = System.Drawing.SystemColors.WindowText;
            this.lvRealList.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.lvRealList.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.PO,
            this.ORDERNO,
            this.Article,
            this.Pairs,
            this.GAC,
            this.PlanDate,
            this.Lean,
            this.Factory,
            this.Usage});
            this.lvRealList.Dock = System.Windows.Forms.DockStyle.Right;
            this.lvRealList.Font = new System.Drawing.Font("Times New Roman", 21.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lvRealList.ForeColor = System.Drawing.Color.GreenYellow;
            this.lvRealList.HideSelection = false;
            this.lvRealList.Location = new System.Drawing.Point(553, 0);
            this.lvRealList.Name = "lvRealList";
            this.lvRealList.OwnerDraw = true;
            this.lvRealList.Size = new System.Drawing.Size(500, 570);
            this.lvRealList.TabIndex = 54;
            this.lvRealList.UseCompatibleStateImageBehavior = false;
            this.lvRealList.View = System.Windows.Forms.View.Details;
            this.lvRealList.Visible = false;
            this.lvRealList.DrawColumnHeader += new System.Windows.Forms.DrawListViewColumnHeaderEventHandler(this.lvRealList_DrawColumnHeader);
            this.lvRealList.DrawItem += new System.Windows.Forms.DrawListViewItemEventHandler(this.lvRealList_DrawItem);
            // 
            // PO
            // 
            this.PO.Text = "PO";
            // 
            // ORDERNO
            // 
            this.ORDERNO.Text = "ORDERNO";
            // 
            // Article
            // 
            this.Article.Text = "Article";
            // 
            // Pairs
            // 
            this.Pairs.Text = "Pairs";
            this.Pairs.Width = 40;
            // 
            // GAC
            // 
            this.GAC.Text = "GAC";
            // 
            // PlanDate
            // 
            this.PlanDate.Text = "PlanDate";
            // 
            // Lean
            // 
            this.Lean.Text = "Lean";
            this.Lean.Width = 70;
            // 
            // Factory
            // 
            this.Factory.Text = "Factory";
            this.Factory.Width = 50;
            // 
            // Usage
            // 
            this.Usage.Text = "Usage";
            this.Usage.Width = 50;
            // 
            // ScanInFo
            // 
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.None;
            this.BackgroundImage = global::ScanQR.Properties.Resources.form2;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1053, 570);
            this.Controls.Add(this.lvRealList);
            this.Controls.Add(this.cboCamera);
            this.ForeColor = System.Drawing.SystemColors.Window;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ScanInFo";
            this.Text = "ScanIn";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.ScanIn_FormClosing);
            this.Load += new System.EventHandler(this.ScanIn_Load);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.ComboBox cboCamera;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.ListView lvRealList;
        private System.Windows.Forms.ColumnHeader PO;
        private System.Windows.Forms.ColumnHeader ORDERNO;
        private System.Windows.Forms.ColumnHeader Article;
        private System.Windows.Forms.ColumnHeader Pairs;
        private System.Windows.Forms.ColumnHeader GAC;
        private System.Windows.Forms.ColumnHeader PlanDate;
        private System.Windows.Forms.ColumnHeader Lean;
        private System.Windows.Forms.ColumnHeader Factory;
        private System.Windows.Forms.ColumnHeader Usage;
    }
}
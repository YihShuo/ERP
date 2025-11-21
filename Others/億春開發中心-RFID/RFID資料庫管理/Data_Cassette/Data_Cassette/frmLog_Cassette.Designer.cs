namespace Data_Cassette
{
    partial class frmLog_Cassette
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
            this.panel2 = new System.Windows.Forms.Panel();
            this.dgvData_Cassette = new System.Windows.Forms.DataGridView();
            this.STT = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.RFID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.INFO = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.USERID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.USERDate = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Check = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.panel1 = new System.Windows.Forms.Panel();
            this.gbxInformation = new System.Windows.Forms.GroupBox();
            this.lblRFID = new System.Windows.Forms.Label();
            this.lblCassette_RFID = new System.Windows.Forms.Label();
            this.btnClean = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnSearch = new System.Windows.Forms.Button();
            this.lblCassette_RFID_S = new System.Windows.Forms.Label();
            this.timInventory = new System.Windows.Forms.Timer(this.components);
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvData_Cassette)).BeginInit();
            this.panel1.SuspendLayout();
            this.gbxInformation.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.dgvData_Cassette);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 60);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(913, 298);
            this.panel2.TabIndex = 5;
            // 
            // dgvData_Cassette
            // 
            this.dgvData_Cassette.AllowUserToAddRows = false;
            this.dgvData_Cassette.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvData_Cassette.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.STT,
            this.RFID,
            this.INFO,
            this.USERID,
            this.USERDate,
            this.Check});
            this.dgvData_Cassette.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvData_Cassette.Location = new System.Drawing.Point(0, 0);
            this.dgvData_Cassette.Name = "dgvData_Cassette";
            this.dgvData_Cassette.RowHeadersVisible = false;
            this.dgvData_Cassette.Size = new System.Drawing.Size(913, 298);
            this.dgvData_Cassette.TabIndex = 0;
            this.dgvData_Cassette.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvData_Cassette_CellClick);
            this.dgvData_Cassette.CellValueChanged += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvData_Cassette_CellValueChanged);
            // 
            // STT
            // 
            this.STT.HeaderText = "No.";
            this.STT.Name = "STT";
            this.STT.ReadOnly = true;
            // 
            // RFID
            // 
            this.RFID.HeaderText = "RFID Card";
            this.RFID.Name = "RFID";
            this.RFID.ReadOnly = true;
            // 
            // INFO
            // 
            this.INFO.HeaderText = "INFO";
            this.INFO.MaxInputLength = 20;
            this.INFO.Name = "INFO";
            // 
            // USERID
            // 
            this.USERID.HeaderText = "USERID";
            this.USERID.Name = "USERID";
            this.USERID.ReadOnly = true;
            // 
            // USERDate
            // 
            this.USERDate.HeaderText = "USERDate";
            this.USERDate.Name = "USERDate";
            this.USERDate.ReadOnly = true;
            // 
            // Check
            // 
            this.Check.HeaderText = "Check";
            this.Check.Name = "Check";
            this.Check.ReadOnly = true;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.gbxInformation);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(913, 60);
            this.panel1.TabIndex = 4;
            // 
            // gbxInformation
            // 
            this.gbxInformation.Controls.Add(this.lblRFID);
            this.gbxInformation.Controls.Add(this.lblCassette_RFID);
            this.gbxInformation.Controls.Add(this.btnClean);
            this.gbxInformation.Controls.Add(this.btnSave);
            this.gbxInformation.Controls.Add(this.btnSearch);
            this.gbxInformation.Controls.Add(this.lblCassette_RFID_S);
            this.gbxInformation.Dock = System.Windows.Forms.DockStyle.Top;
            this.gbxInformation.Location = new System.Drawing.Point(0, 0);
            this.gbxInformation.Name = "gbxInformation";
            this.gbxInformation.Size = new System.Drawing.Size(913, 69);
            this.gbxInformation.TabIndex = 0;
            this.gbxInformation.TabStop = false;
            this.gbxInformation.Text = "Information";
            // 
            // lblRFID
            // 
            this.lblRFID.AutoSize = true;
            this.lblRFID.Location = new System.Drawing.Point(735, 29);
            this.lblRFID.Name = "lblRFID";
            this.lblRFID.Size = new System.Drawing.Size(89, 12);
            this.lblRFID.TabIndex = 87;
            this.lblRFID.Text = "RFID information";
            // 
            // lblCassette_RFID
            // 
            this.lblCassette_RFID.AutoSize = true;
            this.lblCassette_RFID.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCassette_RFID.ForeColor = System.Drawing.Color.Black;
            this.lblCassette_RFID.Location = new System.Drawing.Point(114, 29);
            this.lblCassette_RFID.Name = "lblCassette_RFID";
            this.lblCassette_RFID.Size = new System.Drawing.Size(94, 15);
            this.lblCassette_RFID.TabIndex = 86;
            this.lblCassette_RFID.Text = "*Cassette_RFID";
            // 
            // btnClean
            // 
            this.btnClean.FlatAppearance.BorderSize = 0;
            this.btnClean.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.btnClean.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.btnClean.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClean.Font = new System.Drawing.Font("微軟正黑體", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.btnClean.Image = global::Data_Cassette.Properties.Resources.Clean_L;
            this.btnClean.Location = new System.Drawing.Point(484, 17);
            this.btnClean.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnClean.Name = "btnClean";
            this.btnClean.Size = new System.Drawing.Size(80, 40);
            this.btnClean.TabIndex = 84;
            this.btnClean.Text = "Delete";
            this.btnClean.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnClean.UseVisualStyleBackColor = true;
            this.btnClean.Click += new System.EventHandler(this.btnClean_Click);
            this.btnClean.MouseDown += new System.Windows.Forms.MouseEventHandler(this.frmMouseDown);
            this.btnClean.MouseLeave += new System.EventHandler(this.frmMouseLeave);
            this.btnClean.MouseMove += new System.Windows.Forms.MouseEventHandler(this.frmMouseMove);
            // 
            // btnSave
            // 
            this.btnSave.FlatAppearance.BorderSize = 0;
            this.btnSave.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.btnSave.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSave.Font = new System.Drawing.Font("微軟正黑體", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.btnSave.Image = global::Data_Cassette.Properties.Resources.Save_L;
            this.btnSave.Location = new System.Drawing.Point(369, 17);
            this.btnSave.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(80, 40);
            this.btnSave.TabIndex = 83;
            this.btnSave.Text = "Save";
            this.btnSave.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSave.UseVisualStyleBackColor = true;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            this.btnSave.MouseDown += new System.Windows.Forms.MouseEventHandler(this.frmMouseDown);
            this.btnSave.MouseLeave += new System.EventHandler(this.frmMouseLeave);
            this.btnSave.MouseMove += new System.Windows.Forms.MouseEventHandler(this.frmMouseMove);
            // 
            // btnSearch
            // 
            this.btnSearch.FlatAppearance.BorderSize = 0;
            this.btnSearch.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.btnSearch.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.btnSearch.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSearch.Font = new System.Drawing.Font("微軟正黑體", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.btnSearch.Image = global::Data_Cassette.Properties.Resources.Search_L;
            this.btnSearch.Location = new System.Drawing.Point(260, 16);
            this.btnSearch.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(80, 40);
            this.btnSearch.TabIndex = 82;
            this.btnSearch.Text = "Search";
            this.btnSearch.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            this.btnSearch.MouseDown += new System.Windows.Forms.MouseEventHandler(this.frmMouseDown);
            this.btnSearch.MouseLeave += new System.EventHandler(this.frmMouseLeave);
            this.btnSearch.MouseMove += new System.Windows.Forms.MouseEventHandler(this.frmMouseMove);
            // 
            // lblCassette_RFID_S
            // 
            this.lblCassette_RFID_S.AutoSize = true;
            this.lblCassette_RFID_S.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCassette_RFID_S.ForeColor = System.Drawing.Color.Black;
            this.lblCassette_RFID_S.Location = new System.Drawing.Point(3, 29);
            this.lblCassette_RFID_S.Name = "lblCassette_RFID_S";
            this.lblCassette_RFID_S.Size = new System.Drawing.Size(94, 15);
            this.lblCassette_RFID_S.TabIndex = 73;
            this.lblCassette_RFID_S.Text = "*Cassette_RFID";
            // 
            // timInventory
            // 
            this.timInventory.Tick += new System.EventHandler(this.timInventory_Tick);
            // 
            // frmLog_Cassette
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(913, 358);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "frmLog_Cassette";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Cassette";
            this.Load += new System.EventHandler(this.frmLog_Cassette_Load);
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvData_Cassette)).EndInit();
            this.panel1.ResumeLayout(false);
            this.gbxInformation.ResumeLayout(false);
            this.gbxInformation.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.DataGridView dgvData_Cassette;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.GroupBox gbxInformation;
        private System.Windows.Forms.Label lblCassette_RFID_S;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnClean;
        private System.Windows.Forms.Timer timInventory;
        private System.Windows.Forms.Label lblCassette_RFID;
        private System.Windows.Forms.Label lblRFID;
        private System.Windows.Forms.DataGridViewTextBoxColumn STT;
        private System.Windows.Forms.DataGridViewTextBoxColumn RFID;
        private System.Windows.Forms.DataGridViewTextBoxColumn INFO;
        private System.Windows.Forms.DataGridViewTextBoxColumn USERID;
        private System.Windows.Forms.DataGridViewTextBoxColumn USERDate;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Check;
    }
}


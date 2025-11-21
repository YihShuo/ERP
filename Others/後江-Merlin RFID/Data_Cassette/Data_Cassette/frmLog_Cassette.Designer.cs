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
            this.Cassette_Serial = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Cassette_ID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Cassette_RFID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Status_Serial = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Status_Name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Max_Qty = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Start_Date = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NoUse_Date = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Modify_Date = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.USERID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Check = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.panel1 = new System.Windows.Forms.Panel();
            this.gbxInformation = new System.Windows.Forms.GroupBox();
            this.lblRFID = new System.Windows.Forms.Label();
            this.btnClean = new System.Windows.Forms.Button();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnSearch = new System.Windows.Forms.Button();
            this.cbxStatus_Name = new System.Windows.Forms.ComboBox();
            this.txtMax_Qty = new System.Windows.Forms.TextBox();
            this.lblMax_Qty = new System.Windows.Forms.Label();
            this.txtCassette_ID = new System.Windows.Forms.TextBox();
            this.dtpNoUse_Date = new System.Windows.Forms.DateTimePicker();
            this.dtpStart_Date = new System.Windows.Forms.DateTimePicker();
            this.lblNoUse_Date = new System.Windows.Forms.Label();
            this.lblStatus_Name = new System.Windows.Forms.Label();
            this.lblStart_Date = new System.Windows.Forms.Label();
            this.lblCassette_RFID_S = new System.Windows.Forms.Label();
            this.lblCassette_ID = new System.Windows.Forms.Label();
            this.timInventory = new System.Windows.Forms.Timer(this.components);
            this.lblCassette_RFID = new System.Windows.Forms.Label();
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
            this.panel2.Location = new System.Drawing.Point(0, 129);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(913, 229);
            this.panel2.TabIndex = 5;
            // 
            // dgvData_Cassette
            // 
            this.dgvData_Cassette.AllowUserToAddRows = false;
            this.dgvData_Cassette.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvData_Cassette.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.STT,
            this.Cassette_Serial,
            this.Cassette_ID,
            this.Cassette_RFID,
            this.Status_Serial,
            this.Status_Name,
            this.Max_Qty,
            this.Start_Date,
            this.NoUse_Date,
            this.Modify_Date,
            this.USERID,
            this.Check});
            this.dgvData_Cassette.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvData_Cassette.Location = new System.Drawing.Point(0, 0);
            this.dgvData_Cassette.Name = "dgvData_Cassette";
            this.dgvData_Cassette.RowHeadersVisible = false;
            this.dgvData_Cassette.Size = new System.Drawing.Size(913, 229);
            this.dgvData_Cassette.TabIndex = 0;
            this.dgvData_Cassette.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvData_Cassette_CellContentClick);
            // 
            // STT
            // 
            this.STT.HeaderText = "Num";
            this.STT.Name = "STT";
            // 
            // Cassette_Serial
            // 
            this.Cassette_Serial.HeaderText = "Cassette_Serial";
            this.Cassette_Serial.Name = "Cassette_Serial";
            this.Cassette_Serial.Visible = false;
            // 
            // Cassette_ID
            // 
            this.Cassette_ID.HeaderText = "Cassette_ID";
            this.Cassette_ID.Name = "Cassette_ID";
            // 
            // Cassette_RFID
            // 
            this.Cassette_RFID.HeaderText = "Cassette_RFID";
            this.Cassette_RFID.Name = "Cassette_RFID";
            // 
            // Status_Serial
            // 
            this.Status_Serial.HeaderText = "Status_Serial";
            this.Status_Serial.Name = "Status_Serial";
            this.Status_Serial.Visible = false;
            // 
            // Status_Name
            // 
            this.Status_Name.HeaderText = "Status";
            this.Status_Name.Name = "Status_Name";
            this.Status_Name.Width = 30;
            // 
            // Max_Qty
            // 
            this.Max_Qty.HeaderText = "Max_Qty";
            this.Max_Qty.Name = "Max_Qty";
            // 
            // Start_Date
            // 
            this.Start_Date.HeaderText = "Start_Date";
            this.Start_Date.Name = "Start_Date";
            // 
            // NoUse_Date
            // 
            this.NoUse_Date.HeaderText = "NoUse_Date";
            this.NoUse_Date.Name = "NoUse_Date";
            // 
            // Modify_Date
            // 
            this.Modify_Date.HeaderText = "Modify_Date";
            this.Modify_Date.Name = "Modify_Date";
            this.Modify_Date.Visible = false;
            // 
            // USERID
            // 
            this.USERID.HeaderText = "USERID";
            this.USERID.Name = "USERID";
            // 
            // Check
            // 
            this.Check.HeaderText = "Check";
            this.Check.Name = "Check";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.gbxInformation);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(913, 129);
            this.panel1.TabIndex = 4;
            // 
            // gbxInformation
            // 
            this.gbxInformation.Controls.Add(this.lblCassette_RFID);
            this.gbxInformation.Controls.Add(this.lblRFID);
            this.gbxInformation.Controls.Add(this.btnClean);
            this.gbxInformation.Controls.Add(this.btnSave);
            this.gbxInformation.Controls.Add(this.btnSearch);
            this.gbxInformation.Controls.Add(this.cbxStatus_Name);
            this.gbxInformation.Controls.Add(this.txtMax_Qty);
            this.gbxInformation.Controls.Add(this.lblMax_Qty);
            this.gbxInformation.Controls.Add(this.txtCassette_ID);
            this.gbxInformation.Controls.Add(this.dtpNoUse_Date);
            this.gbxInformation.Controls.Add(this.dtpStart_Date);
            this.gbxInformation.Controls.Add(this.lblNoUse_Date);
            this.gbxInformation.Controls.Add(this.lblStatus_Name);
            this.gbxInformation.Controls.Add(this.lblStart_Date);
            this.gbxInformation.Controls.Add(this.lblCassette_RFID_S);
            this.gbxInformation.Controls.Add(this.lblCassette_ID);
            this.gbxInformation.Dock = System.Windows.Forms.DockStyle.Top;
            this.gbxInformation.Location = new System.Drawing.Point(0, 0);
            this.gbxInformation.Name = "gbxInformation";
            this.gbxInformation.Size = new System.Drawing.Size(913, 122);
            this.gbxInformation.TabIndex = 0;
            this.gbxInformation.TabStop = false;
            this.gbxInformation.Text = "Information";
            // 
            // lblRFID
            // 
            this.lblRFID.AutoSize = true;
            this.lblRFID.Location = new System.Drawing.Point(558, 18);
            this.lblRFID.Name = "lblRFID";
            this.lblRFID.Size = new System.Drawing.Size(89, 12);
            this.lblRFID.TabIndex = 85;
            this.lblRFID.Text = "RFID information";
            // 
            // btnClean
            // 
            this.btnClean.FlatAppearance.BorderSize = 0;
            this.btnClean.FlatAppearance.MouseDownBackColor = System.Drawing.Color.Transparent;
            this.btnClean.FlatAppearance.MouseOverBackColor = System.Drawing.Color.Transparent;
            this.btnClean.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClean.Font = new System.Drawing.Font("Microsoft JhengHei", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.btnClean.Image = global::Data_Cassette.Properties.Resources.Clean_L;
            this.btnClean.Location = new System.Drawing.Point(784, 46);
            this.btnClean.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnClean.Name = "btnClean";
            this.btnClean.Size = new System.Drawing.Size(80, 40);
            this.btnClean.TabIndex = 84;
            this.btnClean.Text = "Clean";
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
            this.btnSave.Font = new System.Drawing.Font("Microsoft JhengHei", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.btnSave.Image = global::Data_Cassette.Properties.Resources.Save_L;
            this.btnSave.Location = new System.Drawing.Point(669, 46);
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
            this.btnSearch.Font = new System.Drawing.Font("Microsoft JhengHei", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(136)));
            this.btnSearch.Image = global::Data_Cassette.Properties.Resources.Search_L;
            this.btnSearch.Location = new System.Drawing.Point(560, 45);
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
            // cbxStatus_Name
            // 
            this.cbxStatus_Name.FormattingEnabled = true;
            this.cbxStatus_Name.Location = new System.Drawing.Point(124, 79);
            this.cbxStatus_Name.Margin = new System.Windows.Forms.Padding(2);
            this.cbxStatus_Name.Name = "cbxStatus_Name";
            this.cbxStatus_Name.Size = new System.Drawing.Size(133, 20);
            this.cbxStatus_Name.TabIndex = 81;
            this.cbxStatus_Name.KeyDown += new System.Windows.Forms.KeyEventHandler(this.cbxStatus_Serial_KeyDown);
            // 
            // txtMax_Qty
            // 
            this.txtMax_Qty.Location = new System.Drawing.Point(393, 82);
            this.txtMax_Qty.Name = "txtMax_Qty";
            this.txtMax_Qty.Size = new System.Drawing.Size(133, 22);
            this.txtMax_Qty.TabIndex = 79;
            this.txtMax_Qty.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtMax_Qty_KeyDown);
            // 
            // lblMax_Qty
            // 
            this.lblMax_Qty.AutoSize = true;
            this.lblMax_Qty.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMax_Qty.ForeColor = System.Drawing.Color.Black;
            this.lblMax_Qty.Location = new System.Drawing.Point(297, 82);
            this.lblMax_Qty.Name = "lblMax_Qty";
            this.lblMax_Qty.Size = new System.Drawing.Size(60, 15);
            this.lblMax_Qty.TabIndex = 80;
            this.lblMax_Qty.Text = "*Max_Qty";
            // 
            // txtCassette_ID
            // 
            this.txtCassette_ID.Location = new System.Drawing.Point(124, 29);
            this.txtCassette_ID.Name = "txtCassette_ID";
            this.txtCassette_ID.Size = new System.Drawing.Size(133, 22);
            this.txtCassette_ID.TabIndex = 0;
            this.txtCassette_ID.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtCassette_ID_KeyDown);
            // 
            // dtpNoUse_Date
            // 
            this.dtpNoUse_Date.CustomFormat = "dd/MM/yyyy";
            this.dtpNoUse_Date.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpNoUse_Date.Location = new System.Drawing.Point(393, 54);
            this.dtpNoUse_Date.Name = "dtpNoUse_Date";
            this.dtpNoUse_Date.Size = new System.Drawing.Size(136, 22);
            this.dtpNoUse_Date.TabIndex = 3;
            this.dtpNoUse_Date.Value = new System.DateTime(2099, 12, 31, 0, 0, 0, 0);
            this.dtpNoUse_Date.KeyDown += new System.Windows.Forms.KeyEventHandler(this.dtpNoUse_Date_KeyDown);
            // 
            // dtpStart_Date
            // 
            this.dtpStart_Date.CustomFormat = "dd/MM/yyyy";
            this.dtpStart_Date.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpStart_Date.Location = new System.Drawing.Point(393, 25);
            this.dtpStart_Date.Name = "dtpStart_Date";
            this.dtpStart_Date.Size = new System.Drawing.Size(136, 22);
            this.dtpStart_Date.TabIndex = 2;
            this.dtpStart_Date.KeyDown += new System.Windows.Forms.KeyEventHandler(this.dtpStart_Date_KeyDown);
            // 
            // lblNoUse_Date
            // 
            this.lblNoUse_Date.AutoSize = true;
            this.lblNoUse_Date.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNoUse_Date.ForeColor = System.Drawing.Color.Black;
            this.lblNoUse_Date.Location = new System.Drawing.Point(297, 57);
            this.lblNoUse_Date.Name = "lblNoUse_Date";
            this.lblNoUse_Date.Size = new System.Drawing.Size(78, 15);
            this.lblNoUse_Date.TabIndex = 71;
            this.lblNoUse_Date.Text = "NoUse_Date";
            // 
            // lblStatus_Name
            // 
            this.lblStatus_Name.AutoSize = true;
            this.lblStatus_Name.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblStatus_Name.ForeColor = System.Drawing.Color.Black;
            this.lblStatus_Name.Location = new System.Drawing.Point(12, 79);
            this.lblStatus_Name.Name = "lblStatus_Name";
            this.lblStatus_Name.Size = new System.Drawing.Size(46, 15);
            this.lblStatus_Name.TabIndex = 73;
            this.lblStatus_Name.Text = "*Status";
            // 
            // lblStart_Date
            // 
            this.lblStart_Date.AutoSize = true;
            this.lblStart_Date.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblStart_Date.ForeColor = System.Drawing.Color.Black;
            this.lblStart_Date.Location = new System.Drawing.Point(297, 29);
            this.lblStart_Date.Name = "lblStart_Date";
            this.lblStart_Date.Size = new System.Drawing.Size(65, 15);
            this.lblStart_Date.TabIndex = 72;
            this.lblStart_Date.Text = "Start_Date";
            // 
            // lblCassette_RFID_S
            // 
            this.lblCassette_RFID_S.AutoSize = true;
            this.lblCassette_RFID_S.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCassette_RFID_S.ForeColor = System.Drawing.Color.Black;
            this.lblCassette_RFID_S.Location = new System.Drawing.Point(12, 55);
            this.lblCassette_RFID_S.Name = "lblCassette_RFID_S";
            this.lblCassette_RFID_S.Size = new System.Drawing.Size(94, 15);
            this.lblCassette_RFID_S.TabIndex = 73;
            this.lblCassette_RFID_S.Text = "*Cassette_RFID";
            // 
            // lblCassette_ID
            // 
            this.lblCassette_ID.AutoSize = true;
            this.lblCassette_ID.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCassette_ID.ForeColor = System.Drawing.Color.Black;
            this.lblCassette_ID.Location = new System.Drawing.Point(12, 31);
            this.lblCassette_ID.Name = "lblCassette_ID";
            this.lblCassette_ID.Size = new System.Drawing.Size(78, 15);
            this.lblCassette_ID.TabIndex = 70;
            this.lblCassette_ID.Text = "*Cassette_ID";
            // 
            // timInventory
            // 
            this.timInventory.Tick += new System.EventHandler(this.timInventory_Tick);
            // 
            // lblCassette_RFID
            // 
            this.lblCassette_RFID.AutoSize = true;
            this.lblCassette_RFID.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCassette_RFID.ForeColor = System.Drawing.Color.Black;
            this.lblCassette_RFID.Location = new System.Drawing.Point(112, 58);
            this.lblCassette_RFID.Name = "lblCassette_RFID";
            this.lblCassette_RFID.Size = new System.Drawing.Size(94, 15);
            this.lblCassette_RFID.TabIndex = 86;
            this.lblCassette_RFID.Text = "*Cassette_RFID";
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
        private System.Windows.Forms.TextBox txtCassette_ID;
        private System.Windows.Forms.DateTimePicker dtpNoUse_Date;
        private System.Windows.Forms.DateTimePicker dtpStart_Date;
        private System.Windows.Forms.Label lblNoUse_Date;
        private System.Windows.Forms.Label lblStatus_Name;
        private System.Windows.Forms.Label lblStart_Date;
        private System.Windows.Forms.Label lblCassette_RFID_S;
        private System.Windows.Forms.Label lblCassette_ID;
        private System.Windows.Forms.TextBox txtMax_Qty;
        private System.Windows.Forms.Label lblMax_Qty;
        private System.Windows.Forms.ComboBox cbxStatus_Name;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnClean;
        private System.Windows.Forms.DataGridViewTextBoxColumn STT;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cassette_Serial;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cassette_ID;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cassette_RFID;
        private System.Windows.Forms.DataGridViewTextBoxColumn Status_Serial;
        private System.Windows.Forms.DataGridViewTextBoxColumn Status_Name;
        private System.Windows.Forms.DataGridViewTextBoxColumn Max_Qty;
        private System.Windows.Forms.DataGridViewTextBoxColumn Start_Date;
        private System.Windows.Forms.DataGridViewTextBoxColumn NoUse_Date;
        private System.Windows.Forms.DataGridViewTextBoxColumn Modify_Date;
        private System.Windows.Forms.DataGridViewTextBoxColumn USERID;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Check;
        private System.Windows.Forms.Timer timInventory;
        private System.Windows.Forms.Label lblRFID;
        private System.Windows.Forms.Label lblCassette_RFID;
    }
}


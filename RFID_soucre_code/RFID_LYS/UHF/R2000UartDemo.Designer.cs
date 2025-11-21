namespace UHF
{
    partial class R2000UartDemo
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(R2000UartDemo));
            this.tabCtrMain = new System.Windows.Forms.TabControl();
            this.PagReaderSetting = new System.Windows.Forms.TabPage();
            this.label8 = new System.Windows.Forms.Label();
            this.gbCmdBeeper = new System.Windows.Forms.GroupBox();
            this.btnSetBeeperMode = new System.Windows.Forms.Button();
            this.rdbBeeperModeInventory = new System.Windows.Forms.RadioButton();
            this.rdbBeeperModeSlient = new System.Windows.Forms.RadioButton();
            this.btnResetReader = new System.Windows.Forms.Button();
            this.gbRS232 = new System.Windows.Forms.GroupBox();
            this.btnDisconnectRs232 = new System.Windows.Forms.Button();
            this.btnConnectRs232 = new System.Windows.Forms.Button();
            this.cmbBaudrate = new System.Windows.Forms.ComboBox();
            this.cmbComPort = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.pageEpcTest = new System.Windows.Forms.TabPage();
            this.panel3 = new System.Windows.Forms.Panel();
            this.lvOrder = new System.Windows.Forms.ListView();
            this.DDBH = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.SIZE = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Order_Quantity = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.OK_Quantity = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.ledTotal1 = new CustomControl.LxLedControl();
            this.label11 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cbDep = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.cbDDBH = new System.Windows.Forms.ComboBox();
            this.btRealFresh = new System.Windows.Forms.Button();
            this.ledReal1 = new CustomControl.LxLedControl();
            this.btRealTimeInventory = new System.Windows.Forms.Button();
            this.lvRealList = new System.Windows.Forms.ListView();
            this.RFIDNO = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.Date = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.panel2 = new System.Windows.Forms.Panel();
            this.pageEpcTest2 = new System.Windows.Forms.TabPage();
            this.lvOrder2 = new System.Windows.Forms.ListView();
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader5 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader6 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.ledTotal2 = new CustomControl.LxLedControl();
            this.label12 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.cbDDBH2 = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cbDep2 = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.btRealFresh2 = new System.Windows.Forms.Button();
            this.ledReal2 = new CustomControl.LxLedControl();
            this.btRealTimeInventory2 = new System.Windows.Forms.Button();
            this.lvRealList2 = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.panel5 = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.ckClearOperationRec = new System.Windows.Forms.CheckBox();
            this.lrtxtLog = new System.Windows.Forms.RichTextBox();
            this.timerInventory = new System.Windows.Forms.Timer(this.components);
            this.panel1 = new System.Windows.Forms.Panel();
            this.tabCtrMain.SuspendLayout();
            this.PagReaderSetting.SuspendLayout();
            this.gbCmdBeeper.SuspendLayout();
            this.gbRS232.SuspendLayout();
            this.pageEpcTest.SuspendLayout();
            this.panel3.SuspendLayout();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ledTotal1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ledReal1)).BeginInit();
            this.pageEpcTest2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ledTotal2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ledReal2)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabCtrMain
            // 
            this.tabCtrMain.Controls.Add(this.PagReaderSetting);
            this.tabCtrMain.Controls.Add(this.pageEpcTest);
            this.tabCtrMain.Controls.Add(this.pageEpcTest2);
            this.tabCtrMain.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabCtrMain.ItemSize = new System.Drawing.Size(118, 18);
            this.tabCtrMain.Location = new System.Drawing.Point(0, 0);
            this.tabCtrMain.Name = "tabCtrMain";
            this.tabCtrMain.SelectedIndex = 0;
            this.tabCtrMain.Size = new System.Drawing.Size(1022, 745);
            this.tabCtrMain.TabIndex = 0;
            this.tabCtrMain.SelectedIndexChanged += new System.EventHandler(this.tabCtrMain_SelectedIndexChanged);
            this.tabCtrMain.Click += new System.EventHandler(this.tabCtrMain_Click);
            // 
            // PagReaderSetting
            // 
            this.PagReaderSetting.Controls.Add(this.label8);
            this.PagReaderSetting.Controls.Add(this.gbCmdBeeper);
            this.PagReaderSetting.Controls.Add(this.btnResetReader);
            this.PagReaderSetting.Controls.Add(this.gbRS232);
            this.PagReaderSetting.Location = new System.Drawing.Point(4, 22);
            this.PagReaderSetting.Name = "PagReaderSetting";
            this.PagReaderSetting.Padding = new System.Windows.Forms.Padding(3);
            this.PagReaderSetting.Size = new System.Drawing.Size(1014, 719);
            this.PagReaderSetting.TabIndex = 0;
            this.PagReaderSetting.Text = "RFID Reader Setting";
            this.PagReaderSetting.UseVisualStyleBackColor = true;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label8.Location = new System.Drawing.Point(418, 15);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(177, 20);
            this.label8.TabIndex = 13;
            this.label8.Text = "Basic parameter setting";
            // 
            // gbCmdBeeper
            // 
            this.gbCmdBeeper.Controls.Add(this.btnSetBeeperMode);
            this.gbCmdBeeper.Controls.Add(this.rdbBeeperModeInventory);
            this.gbCmdBeeper.Controls.Add(this.rdbBeeperModeSlient);
            this.gbCmdBeeper.ForeColor = System.Drawing.Color.Black;
            this.gbCmdBeeper.Location = new System.Drawing.Point(550, 55);
            this.gbCmdBeeper.Name = "gbCmdBeeper";
            this.gbCmdBeeper.Size = new System.Drawing.Size(456, 95);
            this.gbCmdBeeper.TabIndex = 12;
            this.gbCmdBeeper.TabStop = false;
            this.gbCmdBeeper.Text = "Buzzer Status";
            // 
            // btnSetBeeperMode
            // 
            this.btnSetBeeperMode.Location = new System.Drawing.Point(320, 40);
            this.btnSetBeeperMode.Name = "btnSetBeeperMode";
            this.btnSetBeeperMode.Size = new System.Drawing.Size(90, 25);
            this.btnSetBeeperMode.TabIndex = 3;
            this.btnSetBeeperMode.Text = "Setting";
            this.btnSetBeeperMode.UseVisualStyleBackColor = true;
            this.btnSetBeeperMode.Click += new System.EventHandler(this.btnSetBeeperMode_Click);
            // 
            // rdbBeeperModeInventory
            // 
            this.rdbBeeperModeInventory.AutoSize = true;
            this.rdbBeeperModeInventory.Location = new System.Drawing.Point(71, 48);
            this.rdbBeeperModeInventory.Name = "rdbBeeperModeInventory";
            this.rdbBeeperModeInventory.Size = new System.Drawing.Size(118, 17);
            this.rdbBeeperModeInventory.TabIndex = 1;
            this.rdbBeeperModeInventory.TabStop = true;
            this.rdbBeeperModeInventory.Text = "Beep After Reading";
            this.rdbBeeperModeInventory.UseVisualStyleBackColor = true;
            // 
            // rdbBeeperModeSlient
            // 
            this.rdbBeeperModeSlient.AutoSize = true;
            this.rdbBeeperModeSlient.Location = new System.Drawing.Point(71, 22);
            this.rdbBeeperModeSlient.Name = "rdbBeeperModeSlient";
            this.rdbBeeperModeSlient.Size = new System.Drawing.Size(49, 17);
            this.rdbBeeperModeSlient.TabIndex = 0;
            this.rdbBeeperModeSlient.TabStop = true;
            this.rdbBeeperModeSlient.Text = "Mute";
            this.rdbBeeperModeSlient.UseVisualStyleBackColor = true;
            // 
            // btnResetReader
            // 
            this.btnResetReader.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnResetReader.Location = new System.Drawing.Point(8, 166);
            this.btnResetReader.Name = "btnResetReader";
            this.btnResetReader.Size = new System.Drawing.Size(434, 44);
            this.btnResetReader.TabIndex = 9;
            this.btnResetReader.Text = "Reconnect RFID Reader";
            this.btnResetReader.UseVisualStyleBackColor = true;
            this.btnResetReader.Click += new System.EventHandler(this.btnResetReader_Click);
            // 
            // gbRS232
            // 
            this.gbRS232.Controls.Add(this.btnDisconnectRs232);
            this.gbRS232.Controls.Add(this.btnConnectRs232);
            this.gbRS232.Controls.Add(this.cmbBaudrate);
            this.gbRS232.Controls.Add(this.cmbComPort);
            this.gbRS232.Controls.Add(this.label2);
            this.gbRS232.Controls.Add(this.label1);
            this.gbRS232.Location = new System.Drawing.Point(8, 55);
            this.gbRS232.Name = "gbRS232";
            this.gbRS232.Size = new System.Drawing.Size(463, 95);
            this.gbRS232.TabIndex = 3;
            this.gbRS232.TabStop = false;
            this.gbRS232.Text = "RS-232";
            // 
            // btnDisconnectRs232
            // 
            this.btnDisconnectRs232.Font = new System.Drawing.Font("SimSun", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnDisconnectRs232.Location = new System.Drawing.Point(264, 53);
            this.btnDisconnectRs232.Name = "btnDisconnectRs232";
            this.btnDisconnectRs232.Size = new System.Drawing.Size(146, 25);
            this.btnDisconnectRs232.TabIndex = 3;
            this.btnDisconnectRs232.Text = "Disconnect RFID Reader";
            this.btnDisconnectRs232.UseVisualStyleBackColor = true;
            this.btnDisconnectRs232.Click += new System.EventHandler(this.btnDisconnectRs232_Click);
            // 
            // btnConnectRs232
            // 
            this.btnConnectRs232.Font = new System.Drawing.Font("SimSun", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btnConnectRs232.Location = new System.Drawing.Point(264, 16);
            this.btnConnectRs232.Name = "btnConnectRs232";
            this.btnConnectRs232.Size = new System.Drawing.Size(146, 25);
            this.btnConnectRs232.TabIndex = 2;
            this.btnConnectRs232.Text = "Connect RFID Reader";
            this.btnConnectRs232.UseVisualStyleBackColor = true;
            this.btnConnectRs232.Click += new System.EventHandler(this.btnConnectRs232_Click);
            // 
            // cmbBaudrate
            // 
            this.cmbBaudrate.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbBaudrate.FormattingEnabled = true;
            this.cmbBaudrate.Items.AddRange(new object[] {
            "38400",
            "115200"});
            this.cmbBaudrate.Location = new System.Drawing.Point(113, 54);
            this.cmbBaudrate.Name = "cmbBaudrate";
            this.cmbBaudrate.Size = new System.Drawing.Size(121, 21);
            this.cmbBaudrate.TabIndex = 1;
            // 
            // cmbComPort
            // 
            this.cmbComPort.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbComPort.FormattingEnabled = true;
            this.cmbComPort.Items.AddRange(new object[] {
            "COM1",
            "COM2",
            "COM3",
            "COM4",
            "COM5",
            "COM6",
            "COM7",
            "COM8",
            "COM9",
            "COM10",
            "COM11",
            "COM12",
            "COM13",
            "COM14",
            "COM15",
            "COM16"});
            this.cmbComPort.Location = new System.Drawing.Point(113, 17);
            this.cmbComPort.Name = "cmbComPort";
            this.cmbComPort.Size = new System.Drawing.Size(121, 21);
            this.cmbComPort.TabIndex = 0;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(39, 57);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(58, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "BaudRate:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(44, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(53, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Com Port:";
            // 
            // pageEpcTest
            // 
            this.pageEpcTest.Controls.Add(this.panel3);
            this.pageEpcTest.Location = new System.Drawing.Point(4, 22);
            this.pageEpcTest.Name = "pageEpcTest";
            this.pageEpcTest.Padding = new System.Windows.Forms.Padding(3);
            this.pageEpcTest.Size = new System.Drawing.Size(1014, 719);
            this.pageEpcTest.TabIndex = 1;
            this.pageEpcTest.Text = "Stitching Rfid Scan";
            this.pageEpcTest.UseVisualStyleBackColor = true;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.lvOrder);
            this.panel3.Controls.Add(this.groupBox3);
            this.panel3.Controls.Add(this.lvRealList);
            this.panel3.Controls.Add(this.panel2);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel3.Location = new System.Drawing.Point(3, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(1008, 713);
            this.panel3.TabIndex = 85;
            // 
            // lvOrder
            // 
            this.lvOrder.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.DDBH,
            this.SIZE,
            this.Order_Quantity,
            this.OK_Quantity});
            this.lvOrder.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lvOrder.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lvOrder.FullRowSelect = true;
            this.lvOrder.GridLines = true;
            this.lvOrder.HideSelection = false;
            this.lvOrder.Location = new System.Drawing.Point(417, 0);
            this.lvOrder.Name = "lvOrder";
            this.lvOrder.Size = new System.Drawing.Size(591, 352);
            this.lvOrder.TabIndex = 88;
            this.lvOrder.UseCompatibleStateImageBehavior = false;
            this.lvOrder.View = System.Windows.Forms.View.Details;
            // 
            // DDBH
            // 
            this.DDBH.Text = "DDBH";
            this.DDBH.Width = 235;
            // 
            // SIZE
            // 
            this.SIZE.Text = "SIZE";
            this.SIZE.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // Order_Quantity
            // 
            this.Order_Quantity.Text = "Order_Quantity";
            this.Order_Quantity.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.Order_Quantity.Width = 145;
            // 
            // OK_Quantity
            // 
            this.OK_Quantity.Text = "OK_Quantity";
            this.OK_Quantity.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.OK_Quantity.Width = 145;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.ledTotal1);
            this.groupBox3.Controls.Add(this.label11);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Controls.Add(this.cbDep);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Controls.Add(this.cbDDBH);
            this.groupBox3.Controls.Add(this.btRealFresh);
            this.groupBox3.Controls.Add(this.ledReal1);
            this.groupBox3.Controls.Add(this.btRealTimeInventory);
            this.groupBox3.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBox3.Location = new System.Drawing.Point(0, 0);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(417, 352);
            this.groupBox3.TabIndex = 87;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "RFID SCAN";
            // 
            // ledTotal1
            // 
            this.ledTotal1.BackColor = System.Drawing.Color.Transparent;
            this.ledTotal1.BackColor_1 = System.Drawing.Color.Black;
            this.ledTotal1.BackColor_2 = System.Drawing.Color.DimGray;
            this.ledTotal1.BevelRate = 0.5F;
            this.ledTotal1.FadedColor = System.Drawing.Color.DimGray;
            this.ledTotal1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.ledTotal1.HighlightOpaque = ((byte)(50));
            this.ledTotal1.Location = new System.Drawing.Point(112, 265);
            this.ledTotal1.Name = "ledTotal1";
            this.ledTotal1.Size = new System.Drawing.Size(190, 44);
            this.ledTotal1.TabIndex = 89;
            this.ledTotal1.Text = "0";
            this.ledTotal1.TextAlignment = CustomControl.LxLedControl.Alignment.Right;
            this.ledTotal1.TotalCharCount = 8;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.label11.Location = new System.Drawing.Point(6, 275);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(76, 20);
            this.label11.TabIndex = 88;
            this.label11.Text = "Total Qty:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.label3.Location = new System.Drawing.Point(6, 183);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(81, 20);
            this.label3.TabIndex = 87;
            this.label3.Text = "DepName";
            // 
            // cbDep
            // 
            this.cbDep.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.cbDep.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbDep.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbDep.FormattingEnabled = true;
            this.cbDep.Location = new System.Drawing.Point(112, 181);
            this.cbDep.Name = "cbDep";
            this.cbDep.Size = new System.Drawing.Size(190, 27);
            this.cbDep.TabIndex = 86;
            this.cbDep.SelectedIndexChanged += new System.EventHandler(this.cbDep_SelectedIndexChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.label4.Location = new System.Drawing.Point(6, 225);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(100, 20);
            this.label4.TabIndex = 84;
            this.label4.Text = "ORDER_NO";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label7.Location = new System.Drawing.Point(78, 16);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(224, 20);
            this.label7.TabIndex = 79;
            this.label7.Text = "RFID Reader(Any Time Mode)";
            // 
            // cbDDBH
            // 
            this.cbDDBH.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.cbDDBH.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbDDBH.FormattingEnabled = true;
            this.cbDDBH.Location = new System.Drawing.Point(112, 223);
            this.cbDDBH.Name = "cbDDBH";
            this.cbDDBH.Size = new System.Drawing.Size(190, 27);
            this.cbDDBH.TabIndex = 82;
            this.cbDDBH.SelectedIndexChanged += new System.EventHandler(this.cbDDBH_SelectedIndexChanged);
            this.cbDDBH.TextChanged += new System.EventHandler(this.cbDDBH_TextChanged);
            // 
            // btRealFresh
            // 
            this.btRealFresh.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btRealFresh.FlatAppearance.BorderColor = System.Drawing.Color.Blue;
            this.btRealFresh.FlatAppearance.BorderSize = 2;
            this.btRealFresh.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btRealFresh.Font = new System.Drawing.Font("SimSun", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btRealFresh.ForeColor = System.Drawing.SystemColors.Desktop;
            this.btRealFresh.Location = new System.Drawing.Point(3, 324);
            this.btRealFresh.Name = "btRealFresh";
            this.btRealFresh.Size = new System.Drawing.Size(411, 25);
            this.btRealFresh.TabIndex = 46;
            this.btRealFresh.TabStop = false;
            this.btRealFresh.Text = "Refresh RFID List";
            this.btRealFresh.UseVisualStyleBackColor = true;
            this.btRealFresh.Click += new System.EventHandler(this.btRealFresh_Click);
            // 
            // ledReal1
            // 
            this.ledReal1.BackColor = System.Drawing.Color.Transparent;
            this.ledReal1.BackColor_1 = System.Drawing.Color.Black;
            this.ledReal1.BackColor_2 = System.Drawing.Color.DimGray;
            this.ledReal1.BevelRate = 0.5F;
            this.ledReal1.FadedColor = System.Drawing.Color.DimGray;
            this.ledReal1.ForeColor = System.Drawing.Color.LimeGreen;
            this.ledReal1.HighlightOpaque = ((byte)(50));
            this.ledReal1.Location = new System.Drawing.Point(82, 86);
            this.ledReal1.Name = "ledReal1";
            this.ledReal1.Size = new System.Drawing.Size(249, 80);
            this.ledReal1.TabIndex = 77;
            this.ledReal1.Text = "0";
            this.ledReal1.TextAlignment = CustomControl.LxLedControl.Alignment.Right;
            this.ledReal1.TotalCharCount = 6;
            // 
            // btRealTimeInventory
            // 
            this.btRealTimeInventory.BackColor = System.Drawing.Color.LightCyan;
            this.btRealTimeInventory.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btRealTimeInventory.FlatAppearance.BorderColor = System.Drawing.Color.DarkCyan;
            this.btRealTimeInventory.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btRealTimeInventory.Font = new System.Drawing.Font("SimSun", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btRealTimeInventory.ForeColor = System.Drawing.Color.DarkBlue;
            this.btRealTimeInventory.Location = new System.Drawing.Point(124, 39);
            this.btRealTimeInventory.Name = "btRealTimeInventory";
            this.btRealTimeInventory.Size = new System.Drawing.Size(144, 41);
            this.btRealTimeInventory.TabIndex = 76;
            this.btRealTimeInventory.TabStop = false;
            this.btRealTimeInventory.Text = "Start Read";
            this.btRealTimeInventory.UseVisualStyleBackColor = false;
            this.btRealTimeInventory.Click += new System.EventHandler(this.btRealTimeInventory_Click);
            // 
            // lvRealList
            // 
            this.lvRealList.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.RFIDNO,
            this.Date});
            this.lvRealList.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.lvRealList.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lvRealList.FullRowSelect = true;
            this.lvRealList.GridLines = true;
            this.lvRealList.HideSelection = false;
            this.lvRealList.Location = new System.Drawing.Point(0, 352);
            this.lvRealList.Name = "lvRealList";
            this.lvRealList.Size = new System.Drawing.Size(1008, 225);
            this.lvRealList.TabIndex = 86;
            this.lvRealList.UseCompatibleStateImageBehavior = false;
            this.lvRealList.View = System.Windows.Forms.View.Details;
            // 
            // RFIDNO
            // 
            this.RFIDNO.Text = "RFIDNO";
            this.RFIDNO.Width = 300;
            // 
            // Date
            // 
            this.Date.Text = "Date";
            this.Date.Width = 200;
            // 
            // panel2
            // 
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 577);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1008, 136);
            this.panel2.TabIndex = 83;
            // 
            // pageEpcTest2
            // 
            this.pageEpcTest2.Controls.Add(this.lvOrder2);
            this.pageEpcTest2.Controls.Add(this.groupBox1);
            this.pageEpcTest2.Controls.Add(this.lvRealList2);
            this.pageEpcTest2.Controls.Add(this.panel5);
            this.pageEpcTest2.Location = new System.Drawing.Point(4, 22);
            this.pageEpcTest2.Name = "pageEpcTest2";
            this.pageEpcTest2.Padding = new System.Windows.Forms.Padding(3);
            this.pageEpcTest2.Size = new System.Drawing.Size(1014, 719);
            this.pageEpcTest2.TabIndex = 2;
            this.pageEpcTest2.Text = "Assembly Rfid Scan";
            this.pageEpcTest2.UseVisualStyleBackColor = true;
            // 
            // lvOrder2
            // 
            this.lvOrder2.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader3,
            this.columnHeader4,
            this.columnHeader5,
            this.columnHeader6});
            this.lvOrder2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.lvOrder2.Font = new System.Drawing.Font("Times New Roman", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lvOrder2.FullRowSelect = true;
            this.lvOrder2.GridLines = true;
            this.lvOrder2.HideSelection = false;
            this.lvOrder2.Location = new System.Drawing.Point(420, 3);
            this.lvOrder2.Name = "lvOrder2";
            this.lvOrder2.Size = new System.Drawing.Size(591, 352);
            this.lvOrder2.TabIndex = 84;
            this.lvOrder2.UseCompatibleStateImageBehavior = false;
            this.lvOrder2.View = System.Windows.Forms.View.Details;
            this.lvOrder2.SelectedIndexChanged += new System.EventHandler(this.lvOrder2_SelectedIndexChanged);
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "DDBH";
            this.columnHeader3.Width = 220;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "SIZE";
            this.columnHeader4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // columnHeader5
            // 
            this.columnHeader5.Text = "Order_Quantity";
            this.columnHeader5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.columnHeader5.Width = 145;
            // 
            // columnHeader6
            // 
            this.columnHeader6.Text = "OK_Quantity";
            this.columnHeader6.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.columnHeader6.Width = 145;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.ledTotal2);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.cbDDBH2);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.cbDep2);
            this.groupBox1.Controls.Add(this.label10);
            this.groupBox1.Controls.Add(this.btRealFresh2);
            this.groupBox1.Controls.Add(this.ledReal2);
            this.groupBox1.Controls.Add(this.btRealTimeInventory2);
            this.groupBox1.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(417, 352);
            this.groupBox1.TabIndex = 81;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "RFID SCAN";
            // 
            // ledTotal2
            // 
            this.ledTotal2.BackColor = System.Drawing.Color.Transparent;
            this.ledTotal2.BackColor_1 = System.Drawing.Color.Black;
            this.ledTotal2.BackColor_2 = System.Drawing.Color.DimGray;
            this.ledTotal2.BevelRate = 0.5F;
            this.ledTotal2.FadedColor = System.Drawing.Color.DimGray;
            this.ledTotal2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.ledTotal2.HighlightOpaque = ((byte)(50));
            this.ledTotal2.Location = new System.Drawing.Point(83, 86);
            this.ledTotal2.Name = "ledTotal2";
            this.ledTotal2.Size = new System.Drawing.Size(248, 80);
            this.ledTotal2.TabIndex = 93;
            this.ledTotal2.Text = "0";
            this.ledTotal2.TextAlignment = CustomControl.LxLedControl.Alignment.Right;
            this.ledTotal2.TotalCharCount = 6;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(0)))));
            this.label12.Location = new System.Drawing.Point(1, 111);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(76, 20);
            this.label12.TabIndex = 92;
            this.label12.Text = "Total Qty:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.label9.Location = new System.Drawing.Point(6, 225);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(100, 20);
            this.label9.TabIndex = 91;
            this.label9.Text = "ORDER_NO";
            // 
            // cbDDBH2
            // 
            this.cbDDBH2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.cbDDBH2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbDDBH2.FormattingEnabled = true;
            this.cbDDBH2.Location = new System.Drawing.Point(112, 223);
            this.cbDDBH2.Name = "cbDDBH2";
            this.cbDDBH2.Size = new System.Drawing.Size(190, 27);
            this.cbDDBH2.TabIndex = 90;
            this.cbDDBH2.SelectedIndexChanged += new System.EventHandler(this.cbDDBH2_SelectedIndexChanged);
            this.cbDDBH2.TextChanged += new System.EventHandler(this.cbDDBH2_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(64)))), ((int)(((byte)(0)))));
            this.label5.Location = new System.Drawing.Point(6, 183);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(81, 20);
            this.label5.TabIndex = 89;
            this.label5.Text = "DepName";
            // 
            // cbDep2
            // 
            this.cbDep2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.cbDep2.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbDep2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbDep2.FormattingEnabled = true;
            this.cbDep2.Location = new System.Drawing.Point(112, 181);
            this.cbDep2.Name = "cbDep2";
            this.cbDep2.Size = new System.Drawing.Size(190, 27);
            this.cbDep2.TabIndex = 88;
            this.cbDep2.SelectedIndexChanged += new System.EventHandler(this.cbDep2_SelectedIndexChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label10.Location = new System.Drawing.Point(78, 16);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(224, 20);
            this.label10.TabIndex = 79;
            this.label10.Text = "RFID Reader(Any Time Mode)";
            // 
            // btRealFresh2
            // 
            this.btRealFresh2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.btRealFresh2.FlatAppearance.BorderColor = System.Drawing.Color.Blue;
            this.btRealFresh2.FlatAppearance.BorderSize = 2;
            this.btRealFresh2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btRealFresh2.Font = new System.Drawing.Font("SimSun", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btRealFresh2.ForeColor = System.Drawing.SystemColors.Desktop;
            this.btRealFresh2.Location = new System.Drawing.Point(3, 324);
            this.btRealFresh2.Name = "btRealFresh2";
            this.btRealFresh2.Size = new System.Drawing.Size(411, 25);
            this.btRealFresh2.TabIndex = 46;
            this.btRealFresh2.TabStop = false;
            this.btRealFresh2.Text = "Refresh RFID List";
            this.btRealFresh2.UseVisualStyleBackColor = true;
            this.btRealFresh2.Click += new System.EventHandler(this.btRealFresh2_Click);
            // 
            // ledReal2
            // 
            this.ledReal2.BackColor = System.Drawing.Color.Transparent;
            this.ledReal2.BackColor_1 = System.Drawing.Color.Black;
            this.ledReal2.BackColor_2 = System.Drawing.Color.DimGray;
            this.ledReal2.BevelRate = 0.5F;
            this.ledReal2.FadedColor = System.Drawing.Color.DimGray;
            this.ledReal2.ForeColor = System.Drawing.Color.LimeGreen;
            this.ledReal2.HighlightOpaque = ((byte)(50));
            this.ledReal2.Location = new System.Drawing.Point(82, 86);
            this.ledReal2.Name = "ledReal2";
            this.ledReal2.Size = new System.Drawing.Size(249, 80);
            this.ledReal2.TabIndex = 77;
            this.ledReal2.Text = "0";
            this.ledReal2.TextAlignment = CustomControl.LxLedControl.Alignment.Right;
            this.ledReal2.TotalCharCount = 6;
            // 
            // btRealTimeInventory2
            // 
            this.btRealTimeInventory2.BackColor = System.Drawing.Color.LightCyan;
            this.btRealTimeInventory2.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btRealTimeInventory2.FlatAppearance.BorderColor = System.Drawing.Color.DarkCyan;
            this.btRealTimeInventory2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btRealTimeInventory2.Font = new System.Drawing.Font("SimSun", 15F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.btRealTimeInventory2.ForeColor = System.Drawing.Color.DarkBlue;
            this.btRealTimeInventory2.Location = new System.Drawing.Point(124, 39);
            this.btRealTimeInventory2.Name = "btRealTimeInventory2";
            this.btRealTimeInventory2.Size = new System.Drawing.Size(144, 41);
            this.btRealTimeInventory2.TabIndex = 76;
            this.btRealTimeInventory2.TabStop = false;
            this.btRealTimeInventory2.Text = "Start Read";
            this.btRealTimeInventory2.UseVisualStyleBackColor = false;
            this.btRealTimeInventory2.Click += new System.EventHandler(this.btRealTimeInventory2_Click);
            // 
            // lvRealList2
            // 
            this.lvRealList2.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2});
            this.lvRealList2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.lvRealList2.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lvRealList2.FullRowSelect = true;
            this.lvRealList2.GridLines = true;
            this.lvRealList2.HideSelection = false;
            this.lvRealList2.Location = new System.Drawing.Point(3, 355);
            this.lvRealList2.Name = "lvRealList2";
            this.lvRealList2.Size = new System.Drawing.Size(1008, 225);
            this.lvRealList2.TabIndex = 79;
            this.lvRealList2.UseCompatibleStateImageBehavior = false;
            this.lvRealList2.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "RFIDNO";
            this.columnHeader1.Width = 300;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Date";
            this.columnHeader2.Width = 200;
            // 
            // panel5
            // 
            this.panel5.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel5.Location = new System.Drawing.Point(3, 580);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(1008, 136);
            this.panel5.TabIndex = 0;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(5, 9);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(128, 16);
            this.label6.TabIndex = 2;
            this.label6.Text = "Operation record:";
            // 
            // ckClearOperationRec
            // 
            this.ckClearOperationRec.AutoSize = true;
            this.ckClearOperationRec.Checked = true;
            this.ckClearOperationRec.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ckClearOperationRec.Location = new System.Drawing.Point(139, 8);
            this.ckClearOperationRec.Name = "ckClearOperationRec";
            this.ckClearOperationRec.Size = new System.Drawing.Size(119, 17);
            this.ckClearOperationRec.TabIndex = 18;
            this.ckClearOperationRec.Text = "Automatically empty";
            this.ckClearOperationRec.UseVisualStyleBackColor = true;
            // 
            // lrtxtLog
            // 
            this.lrtxtLog.AccessibleRole = System.Windows.Forms.AccessibleRole.ScrollBar;
            this.lrtxtLog.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.lrtxtLog.Location = new System.Drawing.Point(0, 634);
            this.lrtxtLog.Name = "lrtxtLog";
            this.lrtxtLog.ReadOnly = true;
            this.lrtxtLog.Size = new System.Drawing.Size(1022, 111);
            this.lrtxtLog.TabIndex = 1;
            this.lrtxtLog.Text = "";
            this.lrtxtLog.DoubleClick += new System.EventHandler(this.lrtxtLog_DoubleClick);
            // 
            // timerInventory
            // 
            this.timerInventory.Interval = 500;
            this.timerInventory.Tick += new System.EventHandler(this.timerInventory_Tick);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.Window;
            this.panel1.Controls.Add(this.label6);
            this.panel1.Controls.Add(this.ckClearOperationRec);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 602);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1022, 32);
            this.panel1.TabIndex = 14;
            // 
            // R2000UartDemo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.ClientSize = new System.Drawing.Size(1022, 745);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.lrtxtLog);
            this.Controls.Add(this.tabCtrMain);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "R2000UartDemo";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "RFID Scan Stitching";
            this.Load += new System.EventHandler(this.FrmMain_Load);
            this.SizeChanged += new System.EventHandler(this.R2000UartDemo_SizeChanged);
            this.tabCtrMain.ResumeLayout(false);
            this.PagReaderSetting.ResumeLayout(false);
            this.PagReaderSetting.PerformLayout();
            this.gbCmdBeeper.ResumeLayout(false);
            this.gbCmdBeeper.PerformLayout();
            this.gbRS232.ResumeLayout(false);
            this.gbRS232.PerformLayout();
            this.pageEpcTest.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ledTotal1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ledReal1)).EndInit();
            this.pageEpcTest2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ledTotal2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ledReal2)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.TabControl tabCtrMain;
        private System.Windows.Forms.TabPage PagReaderSetting;
        private System.Windows.Forms.TabPage pageEpcTest;
        private System.Windows.Forms.GroupBox gbCmdBeeper;
        private System.Windows.Forms.Button btnSetBeeperMode;
        private System.Windows.Forms.RadioButton rdbBeeperModeInventory;
        private System.Windows.Forms.RadioButton rdbBeeperModeSlient;
        private System.Windows.Forms.Button btnResetReader;
        private System.Windows.Forms.GroupBox gbRS232;
        private System.Windows.Forms.Button btnDisconnectRs232;
        private System.Windows.Forms.Button btnConnectRs232;
        private System.Windows.Forms.ComboBox cmbBaudrate;
        private System.Windows.Forms.ComboBox cmbComPort;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RichTextBox lrtxtLog;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.CheckBox ckClearOperationRec;
        private System.Windows.Forms.Timer timerInventory;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.ListView lvOrder2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
        private System.Windows.Forms.ColumnHeader columnHeader5;
        private System.Windows.Forms.ColumnHeader columnHeader6;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btRealFresh2;
        private CustomControl.LxLedControl ledReal2;
        private System.Windows.Forms.Button btRealTimeInventory2;
        private System.Windows.Forms.ListView lvRealList2;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ListView lvOrder;
        private System.Windows.Forms.ColumnHeader DDBH;
        private System.Windows.Forms.ColumnHeader SIZE;
        private System.Windows.Forms.ColumnHeader Order_Quantity;
        private System.Windows.Forms.ColumnHeader OK_Quantity;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cbDDBH;
        private System.Windows.Forms.Button btRealFresh;
        private CustomControl.LxLedControl ledReal1;
        private System.Windows.Forms.Button btRealTimeInventory;
        private System.Windows.Forms.ListView lvRealList;
        private System.Windows.Forms.ColumnHeader RFIDNO;
        private System.Windows.Forms.ColumnHeader Date;
        private System.Windows.Forms.TabPage pageEpcTest2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cbDep;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cbDep2;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.ComboBox cbDDBH2;
        private System.Windows.Forms.Label label11;
        private CustomControl.LxLedControl ledTotal1;
        private System.Windows.Forms.Label label12;
        private CustomControl.LxLedControl ledTotal2;
    }
}


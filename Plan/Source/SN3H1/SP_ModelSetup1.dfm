object SP_ModelSetup: TSP_ModelSetup
  Left = 318
  Top = 258
  Width = 1505
  Height = 675
  Caption = 'Model Setup'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 330
    Top = 130
    Height = 506
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1489
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label5: TLabel
      Left = 15
      Top = 24
      Width = 35
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Month'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 228
      Top = 11
      Width = 54
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Building'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 413
      Top = 11
      Width = 30
      Height = 16
      Alignment = taRightJustify
      Caption = 'Lean'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 130
      Top = 28
      Width = 9
      Height = 16
      Alignment = taRightJustify
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 572
      Top = 11
      Width = 64
      Height = 16
      Alignment = taRightJustify
      Caption = 'Cutting Die'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 782
      Top = 11
      Width = 27
      Height = 16
      Alignment = taRightJustify
      Caption = 'SKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 232
      Top = 39
      Width = 50
      Height = 16
      Alignment = taRightJustify
      Caption = 'Process'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 481
      Top = 39
      Width = 50
      Height = 16
      Alignment = taRightJustify
      Caption = 'Supplier'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTP_PL1: TDateTimePicker
      Left = 55
      Top = 20
      Width = 74
      Height = 24
      Date = 44896.000000000000000000
      Format = 'yyyy/MM'
      Time = 44896.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = DTP_PL1Change
    end
    object CB_Building_PL: TComboBox
      Left = 287
      Top = 7
      Width = 105
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnChange = CB_Building_PLChange
    end
    object CB_Lean_PL: TComboBox
      Left = 448
      Top = 7
      Width = 105
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
    end
    object Button2: TButton
      Left = 960
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object DTP_PL2: TDateTimePicker
      Left = 141
      Top = 20
      Width = 74
      Height = 24
      Date = 44896.000000000000000000
      Format = 'yyyy/MM'
      Time = 44896.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = DTP_PL2Change
    end
    object ED_CD_PL: TEdit
      Left = 641
      Top = 7
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object ED_SKU_PL: TEdit
      Left = 814
      Top = 7
      Width = 121
      Height = 24
      TabOrder = 6
    end
    object CB_Process_PL: TComboBox
      Left = 287
      Top = 35
      Width = 158
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 7
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'IN'
        'EP'
        'THEU'
        'CHUYEN IN')
    end
    object Button9: TButton
      Left = 444
      Top = 35
      Width = 22
      Height = 22
      Caption = 'VN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button9Click
    end
    object CB_Supplier_PL: TComboBox
      Left = 536
      Top = 35
      Width = 117
      Height = 24
      Style = csDropDownList
      DropDownCount = 10
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 9
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'TY XUAN'
        'TIEN HUNG'
        'BAO HE'
        'HAI AN'
        'O2 PARTNER LLC'
        'LI MAO'
        'CHEN TAI'
        'WEI SHENG'
        'COLORTECH'
        'JIA HUA')
    end
    object Button10: TButton
      Left = 1035
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button10Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 1489
    Height = 65
    Align = alTop
    TabOrder = 1
    object BPL1: TBitBtn
      Left = 346
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BPL1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BPL2: TBitBtn
      Left = 394
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BPL2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BPL3: TBitBtn
      Left = 442
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BPL3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BPL4: TBitBtn
      Left = 490
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BPL4Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BPL5: TBitBtn
      Left = 538
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BPL5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object CB_PL1: TCheckBox
      Left = 16
      Top = 40
      Width = 169
      Height = 17
      Caption = 'Show Only Unset Models'
      TabOrder = 5
      OnClick = CB_PL1Click
    end
    object CB_PL2: TCheckBox
      Left = 16
      Top = 20
      Width = 225
      Height = 17
      Caption = 'Show Only No Lead Time Process'
      TabOrder = 6
      OnClick = CB_PL2Click
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 130
    Width = 330
    Height = 506
    Align = alLeft
    DataSource = DS_PLM
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    HorzScrollBar.Tracking = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnGetCellParams = DBGridEh2GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Month'
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = 'Cutting Die'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'SKU'
        Width = 100
      end>
  end
  object DBGridEh3: TDBGridEh
    Left = 333
    Top = 130
    Width = 1156
    Height = 506
    Align = alClient
    DataSource = DS_PLD
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    HorzScrollBar.Tracking = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnGetCellParams = DBGridEh3GetCellParams
    Columns = <
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Part'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        KeyList.Strings = (
          'NO PROCESSING'
          'UPPER'
          'UPPER LOGO'
          'TONGUE'
          'TONGUE LOGO'
          'TONGUE LINING'
          'TONGUE LINING LOGO'
          'EYESTAY LOGO'
          'COLLAR LOGO'
          'BACKSTAY LOGO'
          'HEEL LOGO'
          'BACK TAB LOGO'
          'STAR/CHEVRN LOGO'
          'TOE CAP'
          'OUTSOLE'
          'FOXING'
          'BB FOXING'
          'INSOLE'
          'BACKSTAY'
          'STRAP'
          'WEBBING'
          'QUARTER OVERLAY BAR')
        PickList.Strings = (
          'KHONG CAN GIA CONG'
          'THAN'
          'LOGO THAN'
          'LUOI GA'
          'LOGO LUOI GA'
          'LOT LUOI GA'
          'LOGO LOT LUOI GA'
          'LOGO DEM'
          'LOGO VONG CO'
          'LOGO DAY GOT'
          'NHAN GOT'
          'LOGO HAU'
          'TRANG/SAO'
          'BAO MUI'
          'DE LON'
          'DAY CCS'
          'TALON THAN'
          'DE TRUNG'
          'DAY GOT'
          'DAY QUAI'
          'DAY DET'
          'TRANG TRI THAN')
        Width = 200
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Process'
        Footers = <>
        KeyList.Strings = (
          'PRINTING'
          'HEAT PRESSING'
          'EMBROIDERY'
          'TRANSFER PRINTING')
        PickList.Strings = (
          'IN'
          'EP'
          'THEU'
          'CHUYEN IN')
        Width = 150
      end
      item
        ButtonStyle = cbsNone
        EditButtons = <>
        FieldName = 'Supplier'
        Footers = <>
        KeyList.Strings = (
          'JNG'
          'P154'
          'V066'
          'P213'
          'A159'
          'V133'
          'V034'
          'V194'
          'K110'
          'P186')
        PickList.Strings = (
          'TY XUAN'
          'TIEN HUNG'
          'BAO HE'
          'HAI AN'
          'O2 PARTNER LLC'
          'LI MAO'
          'CHEN TAI'
          'WEI SHENG'
          'COLORTECH'
          'JIA HUA')
        Width = 150
      end
      item
        DisplayFormat = '###,###,##0 Days'
        EditButtons = <>
        FieldName = 'LeadTime'
        Footers = <>
        Title.Caption = 'Lead Time'
        Width = 80
      end
      item
        Color = cl3DLight
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User ID'
        Width = 60
      end
      item
        Color = cl3DLight
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'User Date'
        Width = 80
      end>
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 184
  end
  object Q_PLM: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 216
    object Q_PLMXieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object Q_PLMSheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object Q_PLMMonth: TStringField
      FieldName = 'Month'
      Size = 10
    end
    object Q_PLMDAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Q_PLMARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Q_PLMSPQty: TIntegerField
      FieldName = 'SPQty'
    end
    object Q_PLMLT: TIntegerField
      FieldName = 'LT'
    end
    object Q_PLMNPQty: TIntegerField
      FieldName = 'NPQty'
    end
  end
  object DS_PLM: TDataSource
    DataSet = Q_PLM
    Left = 16
    Top = 184
  end
  object DS_PLD: TDataSource
    DataSet = Q_PLD
    Left = 16
    Top = 248
  end
  object U_PLD: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE ModelSecondProcess'
      'SET'
      '  Part = :Part,'
      '  Process = :Process,'
      '  Supplier = :Supplier,'
      '  LeadTime = :LeadTime,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  SheHao = :OLD_SheHao AND'
      '  Part = :OLD_Part AND'
      '  Process = :OLD_Process')
    InsertSQL.Strings = (
      
        'INSERT INTO ModelSecondProcess (XieXing, SheHao, Part, Process, ' +
        'Supplier, LeadTime, UserID, UserDate, YN)'
      
        'VALUES (:XieXing, :SheHao, :Part, :Process, :Supplier, :LeadTime' +
        ', :UserID, GetDate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM ModelSecondProcess'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  SheHao = :OLD_SheHao AND'
      '  Part = :OLD_Part AND'
      '  Process = :OLD_Process')
    Left = 16
    Top = 312
  end
  object Q_PLD: TQuery
    AfterOpen = Q_PLDAfterOpen
    AfterScroll = Q_PLDAfterScroll
    OnNewRecord = Q_PLDNewRecord
    DatabaseName = 'DB'
    DataSource = DS_PLM
    SQL.Strings = (
      
        'SELECT MSP.XieXing, MSP.SheHao, MSP.Part, MSP.Process, MSP.Suppl' +
        'ier, ZSZL.ZSYWJC, MSP.LeadTime, MSP.UserID, MSP.UserDate, MSP.YN' +
        ' FROM ModelSecondProcess AS MSP'
      'LEFT JOIN ZSZL ON ZSZL.ZSDH = MSP.Supplier'
      'WHERE XieXing = :XieXing AND SheHao = :SheHao'
      'ORDER BY MSP.Part, MSP.LeadTime DESC')
    UpdateObject = U_PLD
    Left = 16
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object Q_PLDXieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object Q_PLDSheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object Q_PLDPart: TStringField
      FieldName = 'Part'
      Size = 30
    end
    object Q_PLDProcess: TStringField
      FieldName = 'Process'
      Size = 30
    end
    object Q_PLDSupplier: TStringField
      FieldName = 'Supplier'
      Size = 6
    end
    object Q_PLDZSYWJC: TStringField
      FieldName = 'ZSYWJC'
    end
    object Q_PLDLeadTime: TIntegerField
      FieldName = 'LeadTime'
    end
    object Q_PLDUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object Q_PLDUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Q_PLDYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
end

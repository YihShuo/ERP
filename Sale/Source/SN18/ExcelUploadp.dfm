object ExcelUpload: TExcelUpload
  Left = 399
  Top = 179
  Width = 1142
  Height = 587
  Caption = 'ExcelUpload'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 65
    Align = alTop
    TabOrder = 0
    object ProcessLB: TLabel
      Left = 168
      Top = 32
      Width = 89
      Height = 20
      Caption = 'Process Info'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 168
      Top = 8
      Width = 32
      Height = 13
      AutoSize = False
      Caption = '         '
      OnClick = Label1Click
    end
    object Label3: TLabel
      Left = 352
      Top = 35
      Width = 45
      Height = 16
      Caption = 'Factory'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bbt2: TBitBtn
      Left = 64
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Upload'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bbt2Click
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
    object bb1: TBitBtn
      Left = 16
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bb1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333FF3FF3333333333CC30003333333333773777333333333C33
        3000333FF33337F33777339933333C3333333377F33337F3333F339933333C33
        33003377333337F33377333333333C333300333F333337F33377339333333C33
        3333337FF3333733333F33993333C33333003377FF33733333773339933C3333
        330033377FF73F33337733339933C33333333FF377F373F3333F993399333C33
        330077F377F337F33377993399333C33330077FF773337F33377399993333C33
        33333777733337F333FF333333333C33300033333333373FF7773333333333CC
        3000333333333377377733333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt3: TBitBtn
      Left = 112
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'restore'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bbt3Click
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
    object GroupBox1: TGroupBox
      Left = 264
      Top = 4
      Width = 81
      Height = 57
      Caption = 'GSDH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object RB1: TRadioButton
        Left = 8
        Top = 16
        Width = 49
        Height = 17
        Caption = 'LAI'
        TabOrder = 0
      end
      object RB2: TRadioButton
        Left = 8
        Top = 35
        Width = 49
        Height = 17
        Caption = 'FTD'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
    end
    object KFCQCombo: TComboBox
      Left = 403
      Top = 33
      Width = 73
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'JNG'
      Items.Strings = (
        'JNG'
        'BAO'
        'YQA')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1126
    Height = 56
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 85
      Height = 20
      Caption = 'ImportDate:'
    end
    object Label2: TLabel
      Left = 216
      Top = 16
      Width = 51
      Height = 20
      Caption = 'DDBH:'
    end
    object Button1: TButton
      Left = 515
      Top = 12
      Width = 78
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object NotYetUploadCK: TCheckBox
      Left = 395
      Top = 20
      Width = 129
      Height = 17
      Caption = 'DDRQ is null'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object ImportDateCombo: TComboBox
      Left = 96
      Top = 14
      Width = 105
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 272
      Top = 14
      Width = 113
      Height = 28
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 121
    Width = 1126
    Height = 427
    Align = alClient
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 729
      Top = 1
      Width = 8
      Height = 425
    end
    object DDZL_ODGrid: TDBGridEh
      Left = 1
      Top = 1
      Width = 728
      Height = 425
      Align = alLeft
      DataSource = DDZLDS
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      ReadOnly = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DDZL_ODGridDrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'DDBH'
          Footers = <
            item
              DisplayFormat = 'Total=0'
              FieldName = 'DDBH'
              ValueType = fvtCount
            end>
          Width = 76
        end
        item
          EditButtons = <>
          FieldName = 'DDLB'
          Footers = <>
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'XieXing'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'SheHao'
          Footers = <>
          Width = 59
        end
        item
          EditButtons = <>
          FieldName = 'CCGB'
          Footers = <>
          Width = 43
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'KHBH'
          Footers = <>
          Width = 45
        end
        item
          EditButtons = <>
          FieldName = 'KHPO'
          Footers = <>
          Width = 66
        end
        item
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'CPLB'
          Footers = <>
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'DDRQ'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'Dest'
          Footers = <>
          Width = 37
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footers = <>
          Width = 39
        end
        item
          EditButtons = <>
          FieldName = 'DDGB'
          Footers = <>
          Width = 47
        end
        item
          EditButtons = <>
          FieldName = 'BUYNO'
          Footers = <>
        end
        item
          EditButtons = <>
          FieldName = 'Version'
          Footers = <>
          Width = 49
        end
        item
          EditButtons = <>
          FieldName = 'DDZT'
          Footers = <>
          Width = 40
        end>
    end
    object DDZL_ODsGrid: TDBGridEh
      Left = 737
      Top = 1
      Width = 388
      Height = 425
      Align = alClient
      DataSource = XXCCDS
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -16
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'LineNum'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'CC'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 37
        end
        item
          EditButtons = <>
          FieldName = 'Quantity'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 52
        end>
    end
  end
  object UPDDZL_OD: TUpdateSQL
    ModifySQL.Strings = (
      'Update DDZL_OD'
      'Set DDRQ=:DDRQ where DDBH=:OLD_DDBH')
    InsertSQL.Strings = (
      'Insert into DDZL_OD'
      
        '(DDBH, DDLB, XieXing, SheHao, CCGB, Article, KHBH, KHPO, ShipDat' +
        'e, CPLB,'
      
        ' Pairs, DDGB, BUYNO, Version, DDZT, UserID, UserDATE, ImportDATE' +
        ', YN)'
      'Values'
      
        '(:DDBH, :DDLB, :XieXing, :SheHao, :CCGB, :Article, :KHBH, :KHPO,' +
        ' :ShipDate, :CPLB,'
      
        ' :Pairs, :DDGB, :BUYNO, :Version, :DDZT,  :UserID, :UserDATE, :I' +
        'mportDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from DDZL_OD where DDBH=:OLD_DDBH')
    Left = 504
    Top = 185
  end
  object DDZL_OD: TQuery
    AfterOpen = DDZL_ODAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from DDZL_OD')
    UpdateObject = UPDDZL_OD
    Left = 536
    Top = 185
    object DDZL_ODDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.DDZL_OD.DDBH'
      FixedChar = True
      Size = 15
    end
    object DDZL_ODDDLB: TStringField
      FieldName = 'DDLB'
      Origin = 'DB.DDZL_OD.DDLB'
      FixedChar = True
      Size = 1
    end
    object DDZL_ODXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.DDZL_OD.XieXing'
      FixedChar = True
      Size = 15
    end
    object DDZL_ODSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.DDZL_OD.SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZL_ODCCGB: TStringField
      FieldName = 'CCGB'
      Origin = 'DB.DDZL_OD.CCGB'
      FixedChar = True
      Size = 1
    end
    object DDZL_ODArticle: TStringField
      FieldName = 'Article'
      Origin = 'DB.DDZL_OD.Article'
      FixedChar = True
    end
    object DDZL_ODKHBH: TStringField
      FieldName = 'KHBH'
      Origin = 'DB.DDZL_OD.KHBH'
      FixedChar = True
      Size = 4
    end
    object DDZL_ODBB: TStringField
      FieldName = 'BB'
      Origin = 'DB.DDZL_OD.BB'
      FixedChar = True
      Size = 3
    end
    object DDZL_ODKHPO: TStringField
      FieldName = 'KHPO'
      Origin = 'DB.DDZL_OD.KHPO'
      FixedChar = True
      Size = 25
    end
    object DDZL_ODShipDate: TStringField
      FieldName = 'ShipDate'
      Origin = 'DB.DDZL_OD.ShipDate'
      FixedChar = True
      Size = 8
    end
    object DDZL_ODCPLB: TStringField
      FieldName = 'CPLB'
      Origin = 'DB.DDZL_OD.CPLB'
      FixedChar = True
      Size = 1
    end
    object DDZL_ODLABELCHARGE: TFloatField
      FieldName = 'LABELCHARGE'
      Origin = 'DB.DDZL_OD.LABELCHARGE'
    end
    object DDZL_ODDDRQ: TStringField
      FieldName = 'DDRQ'
      Origin = 'DB.DDZL_OD.DDRQ'
      FixedChar = True
      Size = 8
    end
    object DDZL_ODPairs: TIntegerField
      FieldName = 'Pairs'
      Origin = 'DB.DDZL_OD.Pairs'
    end
    object DDZL_ODDest: TStringField
      FieldName = 'Dest'
      Origin = 'DB.DDZL_OD.Dest'
      FixedChar = True
      Size = 4
    end
    object DDZL_ODDDGB: TStringField
      FieldName = 'DDGB'
      Origin = 'DB.DDZL_OD.DDGB'
      FixedChar = True
      Size = 4
    end
    object DDZL_ODBUYNO: TStringField
      FieldName = 'BUYNO'
      Origin = 'DB.DDZL_OD.BUYNO'
      FixedChar = True
      Size = 10
    end
    object DDZL_ODVersion: TSmallintField
      FieldName = 'Version'
      Origin = 'DB.DDZL_OD.Version'
    end
    object DDZL_ODDDZT: TStringField
      FieldName = 'DDZT'
      Origin = 'DB.DDZL_OD.DDZT'
      FixedChar = True
      Size = 1
    end
    object DDZL_ODUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.DDZL_OD.UserID'
      FixedChar = True
    end
    object DDZL_ODUserDATE: TDateTimeField
      FieldName = 'UserDATE'
      Origin = 'DB.DDZL_OD.UserDATE'
    end
    object DDZL_ODImportDATE: TDateTimeField
      FieldName = 'ImportDATE'
      Origin = 'DB.DDZL_OD.ImportDATE'
    end
    object DDZL_ODYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.DDZL_OD.YN'
      FixedChar = True
      Size = 1
    end
    object DDZL_ODOGAC: TDateTimeField
      FieldName = 'OGAC'
      Origin = 'DB.DDZL_OD.OGAC'
    end
    object DDZL_ODKGAC: TDateTimeField
      FieldName = 'KGAC'
      Origin = 'DB.DDZL_OD.KGAC'
    end
  end
  object DDZLDS: TDataSource
    DataSet = DDZL_OD
    Left = 568
    Top = 184
  end
  object DDZL_ODs: TQuery
    DatabaseName = 'DB'
    DataSource = DDZLDS
    SQL.Strings = (
      'select * from DDZL_ODs where DDBH=:DDBH')
    Left = 648
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
  end
  object XXCCDS: TDataSource
    DataSet = DDZL_ODs
    Left = 680
    Top = 184
  end
  object ImportDateQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CONVERT(varchar(10), ImportDate, 111) as ImportDate from ' +
        'DDZL_OD group by ImportDate order by  ImportDate desc')
    Left = 440
    Top = 82
  end
  object TW_ERP: TDatabase
    AliasName = 'LY_SHOE'
    DatabaseName = 'TWDB'
    Params.Strings = (
      'USER NAME=sa'
      '')
    SessionName = 'Default'
    OnLogin = TW_ERPLogin
    Left = 504
    Top = 232
  end
  object TW_DDZL: TQuery
    DatabaseName = 'TWDB'
    Left = 536
    Top = 233
  end
  object TW_DDZLs: TQuery
    DatabaseName = 'TWDB'
    Left = 568
    Top = 233
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'DDBH'
    Filter = 'DDBH|*.DDBH'
    Left = 440
    Top = 112
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    Left = 600
    Top = 185
  end
end

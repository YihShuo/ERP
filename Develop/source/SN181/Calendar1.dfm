object Calendar: TCalendar
  Left = 324
  Top = 118
  Width = 1047
  Height = 651
  Caption = 'Calendar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1031
    Height = 82
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 328
      Top = 20
      Width = 49
      Height = 20
      Caption = 'YEAR:'
    end
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
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
    object BB2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
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
    object BB3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BB3Click
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
    object BB4: TBitBtn
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
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
    object BB5: TBitBtn
      Left = 200
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BB5Click
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
    object BB6: TBitBtn
      Left = 248
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object Button1: TButton
      Left = 551
      Top = 16
      Width = 81
      Height = 33
      Caption = 'Search'
      TabOrder = 9
      OnClick = Button1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 9
      Top = 56
      Width = 288
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 10
    end
    object bbt5: TBitBtn
      Left = 647
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 703
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = bbt6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
        07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
        0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object edt1: TEdit
      Left = 384
      Top = 16
      Width = 121
      Height = 28
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 82
    Width = 1031
    Height = 530
    Align = alClient
    DataSource = DataSource1
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
    FrozenCols = 3
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Year'
        Footers = <>
        ReadOnly = True
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = 'MONTH'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'ProductionTiming'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Production Timing'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'CS1_ETA'
        Footers = <>
        Title.Caption = 'CS1|ETA Date'
        Title.Color = clSkyBlue
        Width = 79
      end
      item
        EditButtons = <>
        FieldName = 'CS1_Fit'
        Footers = <>
        Title.Caption = 'CS1|Passing Fit-Test'
        Title.Color = clSkyBlue
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'CS1_Wear'
        Footers = <>
        Title.Caption = 'CS1|Passing Wear-Test'
        Title.Color = clSkyBlue
        Width = 123
      end
      item
        EditButtons = <>
        FieldName = 'CS2_Conduct'
        Footers = <>
        Title.Caption = 'CS2|Conduct'
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'CS2_Fit'
        Footers = <>
        Title.Caption = 'CS2|Passing Fit'
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'CWA90'
        Footers = <>
        Title.Caption = '90 Days Sign-Off Track|CWA'
        Title.Color = clYellow
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'MCSETD90'
        Footers = <>
        Title.Caption = '90 Days Sign-Off Track|MCS ETD'
        Title.Color = clYellow
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'MSCSigned90'
        Footers = <>
        Title.Caption = '90 Days Sign-Off Track|MSC Signed'
        Title.Color = clYellow
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'CWA75'
        Footers = <>
        Title.Caption = '75 Days Sign-Off Track|CWA'
        Title.Color = clActiveCaption
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'MCSETD75'
        Footers = <>
        Title.Caption = '75 Days Sign-Off Track|MCS ETD'
        Title.Color = clActiveCaption
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'MSCSigned75'
        Footers = <>
        Title.Caption = '75 Days Sign-Off Track|MSC Signed'
        Title.Color = clActiveCaption
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clSilver
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'CWA60'
        Footers = <>
        Title.Caption = '60 Days Sign-Off Track|CWA'
        Title.Color = clMoneyGreen
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'MCSETD60'
        Footers = <>
        Title.Caption = '60 Days Sign-Off Track|MCS ETD'
        Title.Color = clMoneyGreen
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'MSCSigned60'
        Footers = <>
        Title.Caption = '60 Days Sign-Off Track|MSC Signed'
        Title.Color = clMoneyGreen
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'OrderPlace90'
        Footers = <>
        Title.Caption = 'First Production Order|90 LeadTime'
        Title.Color = clSkyBlue
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'OrderPlace75'
        Footers = <>
        Title.Caption = 'First Production Order|75 LeadTime'
        Title.Color = clSkyBlue
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'OrderPlace60'
        Footers = <>
        Title.Caption = 'First Production Order|60 LeadTime'
        Title.Color = clSkyBlue
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'TrialProduction'
        Footers = <>
        Title.Caption = 'CS3|TrialProduction'
        Title.Color = clSkyBlue
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ProductionStart'
        Footers = <>
        Title.Caption = 'Production Start'
        Title.Color = clSkyBlue
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'CreateUser'
        Footers = <>
        ReadOnly = True
        Visible = False
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'CreateDate'
        Footers = <>
        ReadOnly = True
        Visible = False
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'YN'
        Footers = <>
        Visible = False
        Width = 31
      end
      item
        EditButtons = <>
        FieldName = 'Dropped'
        Footers = <>
        Width = 69
      end>
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from COMCALENDAR where 1=2')
    UpdateObject = UpSQL1
    Left = 496
    Top = 224
    object strngfldQuery1Year: TStringField
      FieldName = 'Year'
      Origin = 'DB.COMCALENDAR.Year'
      FixedChar = True
      Size = 8
    end
    object strngfldQuery1ProductionTiming: TStringField
      FieldName = 'ProductionTiming'
      Origin = 'DB.COMCALENDAR.ProductionTiming'
      FixedChar = True
      Size = 10
    end
    object dtmfldQuery1MCSETD90: TDateTimeField
      FieldName = 'MCSETD90'
      Origin = 'DB.COMCALENDAR.MCSETD90'
    end
    object dtmfldQuery1MSCSigned90: TDateTimeField
      FieldName = 'MSCSigned90'
      Origin = 'DB.COMCALENDAR.MSCSigned90'
    end
    object dtmfldQuery1MCSETD60: TDateTimeField
      FieldName = 'MCSETD60'
      Origin = 'DB.COMCALENDAR.MCSETD60'
    end
    object dtmfldQuery1MSCSigned60: TDateTimeField
      FieldName = 'MSCSigned60'
      Origin = 'DB.COMCALENDAR.MSCSigned60'
    end
    object dtmfldQuery1OrderPlace90: TDateTimeField
      FieldName = 'OrderPlace90'
      Origin = 'DB.COMCALENDAR.OrderPlace90'
    end
    object dtmfldQuery1OrderPlace60: TDateTimeField
      FieldName = 'OrderPlace60'
      Origin = 'DB.COMCALENDAR.OrderPlace60'
    end
    object dtmfldQuery1TrialProduction: TDateTimeField
      FieldName = 'TrialProduction'
      Origin = 'DB.COMCALENDAR.TrialProduction'
    end
    object dtmfldQuery1ProductionStart: TDateTimeField
      FieldName = 'ProductionStart'
      Origin = 'DB.COMCALENDAR.ProductionStart'
    end
    object strngfldQuery1CreateUser: TStringField
      FieldName = 'CreateUser'
      Origin = 'DB.COMCALENDAR.CreateUser'
      FixedChar = True
    end
    object dtmfldQuery1CreateDate: TDateTimeField
      FieldName = 'CreateDate'
      Origin = 'DB.COMCALENDAR.CreateDate'
    end
    object Query1Dropped: TBooleanField
      FieldName = 'Dropped'
      Origin = 'DB.COMCALENDAR.Dropped'
    end
    object strngfldQuery1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.COMCALENDAR.USERID'
      FixedChar = True
    end
    object dtmfldQuery1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.COMCALENDAR.USERDATE'
    end
    object strngfldQuery1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.COMCALENDAR.YN'
      FixedChar = True
      Size = 1
    end
    object Query1Ver: TStringField
      FieldName = 'Ver'
      Origin = 'DB.COMCALENDAR.Ver'
      FixedChar = True
      Size = 1
    end
    object dtmfldQuery1CWA90: TDateTimeField
      FieldName = 'CWA90'
      Origin = 'DB.COMCALENDAR.CWA90'
    end
    object dtmfldQuery1CWA60: TDateTimeField
      FieldName = 'CWA60'
      Origin = 'DB.COMCALENDAR.CWA60'
    end
    object Query1CWA75: TDateTimeField
      FieldName = 'CWA75'
      Origin = 'DB.COMCALENDAR.CWA75'
    end
    object Query1MCSETD75: TDateTimeField
      FieldName = 'MCSETD75'
      Origin = 'DB.COMCALENDAR.MCSETD75'
    end
    object Query1MSCSigned75: TDateTimeField
      FieldName = 'MSCSigned75'
      Origin = 'DB.COMCALENDAR.MSCSigned75'
    end
    object Query1MONTH: TStringField
      DisplayLabel = 'Month'
      FieldName = 'MONTH'
      Origin = 'DB.COMCALENDAR.MONTH'
      FixedChar = True
      Size = 2
    end
    object Query1OrderPlace75: TDateTimeField
      FieldName = 'OrderPlace75'
      Origin = 'DB.COMCALENDAR.OrderPlace75'
    end
    object Query1CS1_ETA: TDateTimeField
      FieldName = 'CS1_ETA'
      Origin = 'DB.COMCALENDAR.CS1_ETA'
    end
    object Query1CS1_Fit: TDateTimeField
      FieldName = 'CS1_Fit'
      Origin = 'DB.COMCALENDAR.CS1_Fit'
    end
    object Query1CS1_Wear: TDateTimeField
      FieldName = 'CS1_Wear'
      Origin = 'DB.COMCALENDAR.CS1_Wear'
    end
    object Query1CS2_Fit: TDateTimeField
      FieldName = 'CS2_Fit'
      Origin = 'DB.COMCALENDAR.CS2_Fit'
    end
    object Query1CS2_Conduct: TDateTimeField
      FieldName = 'CS2_Conduct'
      Origin = 'DB.COMCALENDAR.CS2_Conduct'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 528
    Top = 224
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update COMCALENDAR'
      'set'
      '  CWA90 = :CWA90,'
      '  CWA75 = :CWA75,'
      '  CWA60 = :CWA60,'
      '  CS1_ETA = :CS1_ETA,'
      '  CS1_Fit =:CS1_Fit,'
      '  CS1_Wear =:CS1_Wear,'
      '  CS2_conduct=:CS2_Conduct,'
      '  CS2_Fit =:CS2_Fit ,'
      '  MCSETD90 = :MCSETD90,'
      '  MSCSigned90 = :MSCSigned90,'
      '  MCSETD75 = :MCSETD75,'
      '  MSCSigned75 = :MSCSigned75,'
      '  MCSETD60 = :MCSETD60,'
      '  MSCSigned60 = :MSCSigned60,'
      '  OrderPlace90 = :OrderPlace90,'
      '  OrderPlace75 = :OrderPlace75,'
      '  OrderPlace60 = :OrderPlace60,'
      '  TrialProduction = :TrialProduction,'
      '  ProductionStart = :ProductionStart,'
      '  MONTH = :MONTH,'
      '  Dropped = :Dropped,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  Year = :OLD_Year and'
      '  ProductionTiming = :OLD_ProductionTiming and'
      '  ver = :OLD_ver')
    InsertSQL.Strings = (
      'insert into COMCALENDAR'
      
        '  (CWA90,CWA60,MCSETD90, MSCSigned90, MCSETD60, MSCSigned60, Ord' +
        'erPlace90, '
      'OrderPlace60, '
      
        '   TrialProduction, ProductionStart, Dropped, USERID, USERDATE, ' +
        'YN)'
      'values'
      
        '  (:CWA90, :CWA60, :MCSETD90, :MSCSigned90, :MCSETD60, :MSCSigne' +
        'd60, :OrderPlace90, '
      ':OrderPlace60, '
      
        '   :TrialProduction, :ProductionStart, :Dropped, :USERID, :USERD' +
        'ATE, :YN)')
    DeleteSQL.Strings = (
      'delete from COMCALENDAR'
      'where'
      '  Year = :OLD_Year and'
      '  ProductionTiming = :OLD_ProductionTiming')
    Left = 560
    Top = 224
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 592
    Top = 224
  end
end

object DevQuoatTW: TDevQuoatTW
  Left = 228
  Top = 235
  Width = 1334
  Height = 857
  Caption = 'DevQuoatTW'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1326
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object BB2: TBitBtn
      Left = 57
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
    object BB3: TBitBtn
      Left = 106
      Top = 8
      Width = 48
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    object BB4: TBitBtn
      Left = 154
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
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
    object BB5: TBitBtn
      Left = 203
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BB5Click
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
    object BB6: TBitBtn
      Left = 252
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = BB6Click
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
    object BB7: TBitBtn
      Left = 301
      Top = 8
      Width = 50
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BB7Click
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
    object BB1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
    object bbt6: TBitBtn
      Left = 370
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 1326
    Height = 65
    Align = alTop
    TabOrder = 1
    object Label13: TLabel
      Left = 186
      Top = 10
      Width = 90
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Eng Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 185
      Top = 41
      Width = 92
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Chn Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = -1
      Top = 10
      Width = 77
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = -1
      Top = 40
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Costing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object MatNMEEdit: TEdit
      Left = 278
      Top = 6
      Width = 237
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object MatNMCEdit: TEdit
      Left = 279
      Top = 37
      Width = 237
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button3: TButton
      Left = 648
      Top = 27
      Width = 81
      Height = 34
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
    end
    object CLBHEdit: TEdit
      Left = 79
      Top = 6
      Width = 109
      Height = 28
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CB2: TComboBox
      Left = 80
      Top = 37
      Width = 105
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 4
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'Not Price'
        'Have Price')
    end
    object CheckBox2: TCheckBox
      Left = 584
      Top = 40
      Width = 50
      Height = 17
      Caption = 'VN'
      Color = 10395294
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object CheckBox1: TCheckBox
      Left = 526
      Top = 40
      Width = 48
      Height = 17
      Caption = 'TW'
      Checked = True
      Color = 10395294
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      State = cbChecked
      TabOrder = 6
    end
    object MineCK: TCheckBox
      Left = 736
      Top = 39
      Width = 49
      Height = 17
      Caption = 'Mine'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 130
    Width = 1326
    Height = 696
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009#20013#25991#21517#31281'|Material'
        Width = 266
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #21934#20301'|Unit'
        Width = 51
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009#32232#34399'|Material'
        Width = 82
      end
      item
        Color = clAqua
        EditButtons = <>
        FieldName = 'samplePrice'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #25104#26412#21934#20729'|USD'
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #25505#21312'|CQDH'
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #26448#26009#33521#25991#21517#31281'|Material'
        Width = 364
      end
      item
        EditButtons = <>
        FieldName = 'ZSDH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'BOM'#24288#21830'|ZSDH'
      end
      item
        EditButtons = <>
        FieldName = 'ZSJC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = 'BOM'#24288#21830'|ZSJC'
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #20351#29992#32773'|USERID'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.Caption = #26085#26399'|USERDATE'
        Width = 78
      end>
  end
  object CLZLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CLZL.CLDH as CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.CQDH,CLZL.DWBH' +
        ',MaterialCBD.samplePrice,MaterialCBD.Season,MaterialCBD.GSBH,Mat' +
        'erialCBD.USERID,MaterialCBD.USERDATE,MaterialCBD.YN ,CLZL.ZSDH a' +
        's ZSBH,ZSZL.ZSJC'
      'from CLZL'
      'Left Join MaterialCBD ON MaterialCBD.CLBH=CLZL.CLDH  '
      
        'Left Join MaterialCBDFilter on MaterialCBDFilter.CLBH=CLZL.CLDH ' +
        'and MaterialCBDFilter.GSBH='#39'VA12'#39'  '
      'Left join ZSZL on CLZL.ZSDH=ZSZL.ZSDH'
      'where CLZL.CLDH like '#39'C%'#39' '
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.ZWPM like '#39'%%'#39
      'and (MaterialCBD.SamplePrice is not null) '
      'and CLZL.CQDH<>'#39'VN'#39' '
      'order by CLZL.CLDH')
    UpdateObject = UpCLZL
    Left = 332
    Top = 216
    object CLZLQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object CLZLQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CLZLQryZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object CLZLQryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object CLZLQryDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CLZLQrysamplePrice: TFloatField
      FieldName = 'samplePrice'
    end
    object CLZLQryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object CLZLQryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object CLZLQryZSJC: TStringField
      FieldName = 'ZSJC'
      FixedChar = True
    end
    object CLZLQryZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object CLZLQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object CLZLQryGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object CLZLQrySeason: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 10
    end
  end
  object UpCLZL: TUpdateSQL
    ModifySQL.Strings = (
      'update MaterialCBD'
      'set'
      '  SamplePrice =:SamplePrice,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  CLBH =:OLD_CLBH'
      '')
    InsertSQL.Strings = (
      'insert into MaterialCBD'
      
        '  (CLBH, GSBH , ZSBH, Season, SamplePrice , USERID, USERDATE, YN' +
        ')'
      'values'
      
        '  (:CLBH, :GSBH , :ZSBH, :Season, :SamplePrice , :USERID, :USERD' +
        'ATE, :YN)')
    DeleteSQL.Strings = (
      'Delete from  MaterialCBDFilter'
      'where'
      '  GSBH = OLD_GSBH'
      '  and CLBH= OLD_CLBH')
    Left = 332
    Top = 284
  end
  object DS1: TDataSource
    DataSet = CLZLQry
    Left = 332
    Top = 248
  end
end

object ExcelImport: TExcelImport
  Left = 404
  Top = 299
  Width = 1125
  Height = 583
  Caption = 'ExcelImport'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1109
    Height = 65
    Align = alTop
    TabOrder = 0
    object ProcessLB: TLabel
      Left = 568
      Top = 40
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
    object bbt1: TBitBtn
      Left = 8
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'XLS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bbt1Click
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
    object bbt4: TBitBtn
      Left = 160
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bbt4Click
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
    object bbt2: TBitBtn
      Left = 56
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Convert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bbt2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333397333
        33333333337373333333333333C943333333333333737F333333333333C94733
        333333333737F733333333333CC944333333333337F7F7F3333333333CC94473
        3333333373F7F37333333333CCC94443333333337F37F37F33333333CCC94447
        333333373F37F3373333333CCCC9444433333337F337F337F333333CCCC94444
        73333373F337F333733333CCCCC944444333337F337773337F3333CCCCC94444
        4733373F7737377337333CCCCC393444443337F73FF733F737F33CCC33393374
        44737773F33733337773CCC33339333344437333333733333F73C33333393333
        3743333333333333333333333337333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 224
      Top = 0
      Width = 273
      Height = 62
      Caption = 'Error Color Info'
      TabOrder = 3
      object Label6: TLabel
        Left = 152
        Top = 16
        Width = 76
        Height = 13
        Caption = 'KHPO is repeat!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 40
        Width = 132
        Height = 13
        Caption = 'Gender Size can not match!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 152
        Top = 40
        Width = 109
        Height = 13
        Caption = 'KHPO is already in DB!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ExcelShowErr: TCheckBox
        Left = 8
        Top = 16
        Width = 137
        Height = 17
        Caption = 'Sort color  list on top'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = ExcelShowErrClick
      end
    end
    object bbt3: TBitBtn
      Left = 104
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Clear'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    object bbt5: TBitBtn
      Left = 504
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = bbt5Click
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
  object Panel2: TPanel
    Left = 0
    Top = 353
    Width = 1109
    Height = 95
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 224
      Top = 56
      Width = 48
      Height = 16
      Caption = 'XieXing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 400
      Top = 56
      Width = 63
      Height = 20
      Caption = 'SheHao:'
    end
    object Label4: TLabel
      Left = 544
      Top = 56
      Width = 46
      Height = 20
      Caption = 'SKU#:'
    end
    object Label3: TLabel
      Left = 42
      Top = 56
      Width = 51
      Height = 20
      Caption = 'DDBH:'
    end
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 85
      Height = 20
      Caption = 'ImportDate:'
    end
    object XieXingEdit: TEdit
      Left = 280
      Top = 52
      Width = 97
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object SheHaoEdit: TEdit
      Left = 472
      Top = 52
      Width = 65
      Height = 28
      TabOrder = 1
    end
    object ArticleEdit: TEdit
      Left = 600
      Top = 52
      Width = 113
      Height = 28
      TabOrder = 2
    end
    object DDBHEdit: TEdit
      Left = 104
      Top = 52
      Width = 105
      Height = 28
      TabOrder = 3
    end
    object Button1: TButton
      Left = 725
      Top = 49
      Width = 78
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object ImportDateCombo: TComboBox
      Left = 104
      Top = 16
      Width = 105
      Height = 28
      Style = csDropDownList
      ItemHeight = 20
      TabOrder = 5
    end
  end
  object ExcelDBGridEh: TDBGridEh
    Left = 0
    Top = 65
    Width = 1109
    Height = 208
    Align = alTop
    DataSource = ExcelDS
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
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = ExcelDBGridEhDrawColumnCell
  end
  object DDZL_ODGrid: TDBGridEh
    Left = 0
    Top = 448
    Width = 1109
    Height = 96
    Align = alClient
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
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DDZL_ODGridDblClick
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
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'DDLB'
        Footers = <>
        Width = 43
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
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'CCGB'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 109
      end
      item
        EditButtons = <>
        FieldName = 'KHBH'
        Footers = <>
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Width = 69
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
        Width = 41
      end
      item
        EditButtons = <>
        FieldName = 'DDRQ'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'DDGB'
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'Dest'
        Footers = <>
        Title.Caption = 'DEST'
        Width = 44
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
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'DDZT'
        Footers = <>
        Width = 43
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 273
    Width = 1109
    Height = 80
    Align = alTop
    TabOrder = 4
    object Label11: TLabel
      Left = 79
      Top = 45
      Width = 36
      Height = 20
      Caption = 'RY#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 60
      Top = 21
      Width = 57
      Height = 20
      Caption = 'Factory:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bb0: TBitBtn
      Left = 4
      Top = 22
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Import'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bb0Click
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
      Left = 208
      Top = 22
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
    object bb2: TBitBtn
      Left = 256
      Top = 22
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
      TabOrder = 2
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
    object bb3: TBitBtn
      Left = 304
      Top = 22
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
      OnClick = bb3Click
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
    object bb4: TBitBtn
      Left = 399
      Top = 22
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
      TabOrder = 4
      OnClick = bb4Click
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
    object bb5: TBitBtn
      Left = 447
      Top = 22
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
      TabOrder = 5
      OnClick = bb5Click
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
    object bb6: TBitBtn
      Left = 495
      Top = 22
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
      TabOrder = 6
      OnClick = bb6Click
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
    object bb7: TBitBtn
      Left = 560
      Top = 22
      Width = 49
      Height = 49
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = bb7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF3333333333333744333333333333F773333333333337
        44473333333333F777F3333333333744444333333333F7733733333333374444
        4433333333F77333733333333744444447333333F7733337F333333744444444
        433333F77333333733333744444444443333377FFFFFFF7FFFFF999999999999
        9999733777777777777333CCCCCCCCCC33333773FF333373F3333333CCCCCCCC
        C333333773FF3337F333333333CCCCCCC33333333773FF373F3333333333CCCC
        CC333333333773FF73F33333333333CCCCC3333333333773F7F3333333333333
        CCC333333333333777FF33333333333333CC3333333333333773}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bb8: TBitBtn
      Left = 608
      Top = 22
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = bb8Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333FF3333333333333003333333333333F77F33333333333009033
        333333333F7737F333333333009990333333333F773337FFFFFF330099999000
        00003F773333377777770099999999999990773FF33333FFFFF7330099999000
        000033773FF33777777733330099903333333333773FF7F33333333333009033
        33333333337737F3333333333333003333333333333377333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bb9: TBitBtn
      Left = 656
      Top = 22
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = bb9Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bb10: TBitBtn
      Left = 704
      Top = 22
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = bb10Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FF3333333333333447333333333333377FFF33333333333744473333333
        333337773FF3333333333444447333333333373F773FF3333333334444447333
        33333373F3773FF3333333744444447333333337F333773FF333333444444444
        733333373F3333773FF333334444444444733FFF7FFFFFFF77FF999999999999
        999977777777777733773333CCCCCCCCCC3333337333333F7733333CCCCCCCCC
        33333337F3333F773333333CCCCCCC3333333337333F7733333333CCCCCC3333
        333333733F77333333333CCCCC333333333337FF7733333333333CCC33333333
        33333777333333333333CC333333333333337733333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object GroupBox2: TGroupBox
      Left = 808
      Top = -2
      Width = 241
      Height = 81
      Caption = 'Error Color Info'
      TabOrder = 11
      object Label10: TLabel
        Left = 8
        Top = 29
        Width = 228
        Height = 13
        Caption = 'LineNum match null, Size Run  is not  complete !'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 9
        Top = 44
        Width = 170
        Height = 13
        Caption = 'BOM Section range is not complete!'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 9
        Top = 61
        Width = 138
        Height = 13
        Caption = 'Total Pairs <> Total Size Run'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DDZL_ODShowErr: TCheckBox
        Left = 8
        Top = 13
        Width = 137
        Height = 17
        Caption = 'Sort color list on top'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = DDZL_ODShowErrClick
      end
    end
    object bbt6: TBitBtn
      Left = 752
      Top = 22
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
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
    object RYEdit: TEdit
      Left = 124
      Top = 44
      Width = 69
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      Text = 'Y'
    end
    object bbDelAll: TBitBtn
      Left = 352
      Top = 22
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Del-All'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = bbDelAllClick
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
    object KFCQCombo: TComboBox
      Left = 123
      Top = 17
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
      TabOrder = 15
      Text = 'JNG'
      OnChange = KFCQComboChange
      Items.Strings = (
        'JNG'
        'BAO'
        'YQA')
    end
  end
  object ExcelDS: TDataSource
    Left = 240
    Top = 81
  end
  object UPDDZL_OD: TUpdateSQL
    ModifySQL.Strings = (
      'Update DDZL_OD'
      
        'Set DDLB=:DDLB, XieXing=:XieXing, SheHao=:SheHao, CCGB=:CCGB,Art' +
        'icle=:Article,'
      
        '    KHBH=:KHBH, KHPO=:KHPO ,ShipDate=:ShipDate, CPLB=:CPLB, Pair' +
        's=:Pairs,'
      
        '    DDGB=:DDGB, DEST=:DEST, BUYNO=:BUYNO, Version=:Version, DDZT' +
        '=:DDZT, UserDate=:UserDate,'
      '    UserID=:UserID where DDBH=:OLD_DDBH')
    InsertSQL.Strings = (
      'Insert into DDZL_OD'
      
        '(DDBH, DDLB, XieXing, SheHao, CCGB, Article, KHBH, KHPO, ShipDat' +
        'e, CPLB,'
      
        ' Pairs, DDGB, Dest, BUYNO, Version, DDZT, UserID, UserDATE, Impo' +
        'rtDATE, YN)'
      'Values'
      
        '(:DDBH, :DDLB, :XieXing, :SheHao, :CCGB, :Article, :KHBH, :KHPO,' +
        ' :ShipDate, :CPLB,'
      
        ' :Pairs, :DDGB, :Dest, :BUYNO, :Version, :DDZT,  :UserID, :UserD' +
        'ATE, :ImportDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from DDZL_OD where DDBH=:OLD_DDBH')
    Left = 568
    Top = 193
  end
  object DDZL_OD: TQuery
    AfterOpen = DDZL_ODAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from DDZL_OD '
      'where  ImportDate='#39'2013/12/03'#39
      ' and DDBH like '#39'%'#39
      ' and XieXing like '#39'%'#39
      ' and SheHao like '#39'%'#39
      ' and Article like '#39'%'#39
      ' order by '
      ' DDBH')
    UpdateObject = UPDDZL_OD
    Left = 600
    Top = 193
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
    Left = 632
    Top = 192
  end
  object OpenDialog: TOpenDialog
    Filter = 'EXCEL|*.xls'
    Left = 208
    Top = 80
  end
  object tmpQuery: TQuery
    DatabaseName = 'DB'
    Left = 664
    Top = 193
  end
  object TDataSource
    DataSet = tmpQuery
    Left = 720
    Top = 192
  end
  object SubQuery: TQuery
    DatabaseName = 'DB'
    Left = 696
    Top = 193
  end
  object ImportDateQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CONVERT(varchar(10), ImportDate, 111) as ImportDate from ' +
        'DDZL_OD group by ImportDate order by  ImportDate desc')
    Left = 216
    Top = 354
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 272
    Top = 80
  end
end

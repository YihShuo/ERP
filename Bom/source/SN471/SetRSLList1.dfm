object SetRSLList: TSetRSLList
  Left = 189
  Top = 139
  Width = 1518
  Height = 847
  Caption = 'SetRSLList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
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
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1500
    Height = 80
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 69
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      Left = 130
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
      Left = 190
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      Left = 250
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Left = 310
      Top = 10
      Width = 61
      Height = 60
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
      Left = 371
      Top = 10
      Width = 61
      Height = 60
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
    object BBT1: TBitBtn
      Left = 453
      Top = 10
      Width = 60
      Height = 60
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
    object BBT2: TBitBtn
      Left = 514
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
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
    object BBT3: TBitBtn
      Left = 574
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
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
    object BBT4: TBitBtn
      Left = 635
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
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
    object bbt5: TBitBtn
      Left = 719
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
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
      Left = 780
      Top = 10
      Width = 60
      Height = 60
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
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
  object Panel2: TPanel
    Left = 0
    Top = 80
    Width = 1500
    Height = 137
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object clbh: TLabel
      Left = 0
      Top = 12
      Width = 81
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 232
      Top = 52
      Width = 81
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 0
      Top = 53
      Width = 77
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Contury:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 232
      Top = 14
      Width = 81
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'OrderNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 95
      Width = 77
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 232
      Top = 95
      Width = 81
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 496
      Top = 94
      Width = 108
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNM:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SBtn1: TSpeedButton
      Left = 202
      Top = 49
      Width = 28
      Height = 27
      Caption = '...'
      OnClick = SBtn1Click
    end
    object SBtn2: TSpeedButton
      Left = 450
      Top = 49
      Width = 29
      Height = 27
      Caption = '...'
      OnClick = SBtn2Click
    end
    object Label19: TLabel
      Left = 526
      Top = 14
      Width = 88
      Height = 20
      Caption = 'ShipingDate'
    end
    object Label18: TLabel
      Left = 692
      Top = 14
      Width = 4
      Height = 20
      Caption = '/'
    end
    object Label7: TLabel
      Left = 858
      Top = 52
      Width = 58
      Height = 20
      Caption = '5 % Mat'
    end
    object MonthLabel: TLabel
      Left = 1084
      Top = 49
      Width = 84
      Height = 20
      Caption = 'Valid Month'
    end
    object SBtn3: TSpeedButton
      Left = 434
      Top = 90
      Width = 55
      Height = 27
      Caption = 'like'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SBtn3Click
    end
    object Label9: TLabel
      Left = 756
      Top = 16
      Width = 9
      Height = 20
      Caption = '~'
    end
    object Label10: TLabel
      Left = 839
      Top = 14
      Width = 4
      Height = 20
      Caption = '/'
    end
    object Label11: TLabel
      Left = 906
      Top = 12
      Width = 87
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Gender:'
    end
    object BuyNoEdit: TEdit
      Left = 90
      Top = 10
      Width = 141
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 1022
      Top = 86
      Width = 99
      Height = 37
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object SupEdit: TEdit
      Left = 313
      Top = 48
      Width = 135
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DDGBEdit: TEdit
      Left = 90
      Top = 49
      Width = 107
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object RYEdit: TEdit
      Left = 313
      Top = 11
      Width = 166
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 495
      Top = 42
      Width = 326
      Height = 37
      TabOrder = 5
      object CK2: TCheckBox
        Left = 108
        Top = 11
        Width = 110
        Height = 21
        Caption = 'RSL Expire'
        Checked = True
        Color = clAqua
        ParentColor = False
        State = cbChecked
        TabOrder = 0
      end
      object CK1: TCheckBox
        Left = 10
        Top = 11
        Width = 80
        Height = 21
        Caption = 'RSL OK'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        OnClick = CK1Click
      end
      object CK3: TCheckBox
        Left = 226
        Top = 11
        Width = 90
        Height = 21
        Caption = 'No RSL'
        Checked = True
        Color = clRed
        ParentColor = False
        State = cbChecked
        TabOrder = 2
      end
    end
    object SKUEdit: TEdit
      Left = 91
      Top = 91
      Width = 142
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object MatNoEdit: TEdit
      Left = 313
      Top = 90
      Width = 120
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object MatNMEdit: TEdit
      Left = 608
      Top = 90
      Width = 198
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object CB4: TCheckBox
      Left = 927
      Top = 52
      Width = 99
      Height = 21
      Caption = 'ViewRSL'
      TabOrder = 9
    end
    object CBX1: TComboBox
      Left = 622
      Top = 10
      Width = 67
      Height = 28
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 10
      Text = '0000'
      Items.Strings = (
        '0000'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX2: TComboBox
      Left = 702
      Top = 10
      Width = 50
      Height = 28
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 11
      Text = '00'
      Items.Strings = (
        '00'
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object MatNMEdit1: TEdit
      Left = 812
      Top = 90
      Width = 198
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object CB5: TCheckBox
      Left = 834
      Top = 52
      Width = 25
      Height = 21
      Checked = True
      Color = clBtnFace
      ParentColor = False
      State = cbChecked
      TabOrder = 13
      OnClick = CK1Click
    end
    object CBX3: TComboBox
      Left = 769
      Top = 10
      Width = 68
      Height = 28
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 14
      Text = '0000'
      Items.Strings = (
        '0000'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX4: TComboBox
      Left = 849
      Top = 10
      Width = 51
      Height = 28
      ItemHeight = 20
      ItemIndex = 0
      TabOrder = 15
      Text = '00'
      Items.Strings = (
        '00'
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object CheckBox1: TCheckBox
      Left = 505
      Top = 14
      Width = 21
      Height = 20
      Caption = 'CheckBox1'
      TabOrder = 16
    end
    object GenderCombo: TComboBox
      Left = 996
      Top = 10
      Width = 102
      Height = 28
      ItemHeight = 20
      TabOrder = 17
      Items.Strings = (
        'KID')
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 217
    Width = 1500
    Height = 583
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TS3: TTabSheet
      Caption = 'MatList'
      ImageIndex = 2
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1492
        Height = 548
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -17
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        PopupMenu = Pop1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -17
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnCellClick = DBGrid1CellClick
        OnEditButtonClick = DBGrid1EditButtonClick
        OnGetCellParams = DBGrid1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <
              item
                FieldName = 'CLBH'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.Caption = #26448#26009#26009#34399'|MatNo'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #33521#25991#21517#31281'|MatEM'
            Width = 342
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #20013#25991#21517#31281'|MatCN'
            Width = 255
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301'|Unit'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #25505#21312'|Loc'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'ZSDH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #24288#21830'ID|SupID'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'zsywjc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #24288#21830'|Supplier'
            Width = 134
          end
          item
            Color = 12582911
            EditButtons = <>
            FieldName = 'PDDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'RSL'#36215#22987#26085'|RSL Start DT'
            Width = 104
          end
          item
            Color = 12582911
            EditButtons = <>
            FieldName = 'PDFilePage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RSL'#27284#26696'|RSL TP1'
            Width = 118
          end
          item
            Color = 12713968
            EditButtons = <>
            FieldName = 'PDFilePageT2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'RSL'#27284#26696'|RSL TP2'
            Width = 113
          end
          item
            Color = 12582911
            EditButtons = <>
            FieldName = 'Memo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            PickList.Strings = (
              'Not Top 5%')
            Title.Caption = #20633#35387'|Memo'
            Width = 99
          end
          item
            Color = 12582911
            EditButtons = <>
            FieldName = 'Gender'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            PickList.Strings = (
              'KIDS')
            Title.Caption = #20633#35387'|GenderMemo'
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #29992#37327'|CLSL'
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'KFGender'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = #38795#27454'|Gender'
            Width = 54
          end>
      end
    end
  end
  object MonthEdit: TEdit
    Left = 1038
    Top = 129
    Width = 35
    Height = 24
    TabOrder = 3
    Text = '12'
  end
  object RSLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select RSLMat.*,CLZL.clbm from ('
      
        'select ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,Sum(ZLZLS2.CLSL' +
        ') as CLSL,CLZL.CQDH,Max(zszl.ZSDH) as ZSDH,Max(zszl.zsywjc) as z' +
        'sywjc,RSLList.PDDate,RSLList.PDFilePage,RSLList.ID, '
      
        'Case when  left(convert(varchar, DateAdd(Month,13,RSLList.PDDate' +
        '),112), 6) <= left(convert(varchar, getdate(),112), 6) or RSLLis' +
        't.PDDate is null then '#39'Y'#39' else '#39'N'#39' end as IsExpire,RSLList.Memo,' +
        'RSLList.Gender,RSLList.PDFilePageT2,Max(case when substring(KFXX' +
        'ZL.Gender,1,3)='#39'KID'#39' then '#39'KIDS'#39' else null end) as KFGender '
      'from ZLZLS2 with (nolock)  '
      
        'inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH and DDZL' +
        '.GSBH='#39'VA12'#39'  '
      'left join CLZL  with (nolock) on CLZL.CLDH=ZLZLS2.CLBH '
      'left join SCZL on SCZL.ZLBH=ZLZLS2.ZLBH'
      
        'left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zsz' +
        'l.zsdh '
      
        'left join XXZL  with (nolock) on XXZl.XieXing=DDZL.XieXing and X' +
        'XZL.SheHao=DDZL.SheHao'
      
        'left join KFXXZL on XXZl.XieXing=KFXXZL.XieXing and XXZL.SheHao=' +
        'KFXXZL.SheHao'
      
        'left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing a' +
        'nd XXBWFL.BWBH=ZLZLS2.BWBH '
      'left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH  '
      
        'left join (select ID,GSBH,CLDH,PDDate,PDYN,PDFilePage,Memo,Gende' +
        'r,PDFilePageT2 '
      'from ('
      
        'select ID,GSBH,CLZL_LS.JHDH,IsNull(CLZL_LS.JHDH,RSTList.CLDH) as' +
        ' CLDH,PDDate,PDYN,PDFilePage,Memo,Gender,PDFilePageT2,ROW_NUMBER' +
        '() over (PARTITION BY IsNull(CLZL_LS.JHDH,RSTList.CLDH) ORDER BY' +
        ' PDDate DESC)as  rn '
      'from RSTList '
      
        'left join CLZL_LS on CLZL_LS.CLDH=RSTList.CLDH  and IsNull(CLZL_' +
        'LS.JHDH,'#39#39')<>'#39#39' '
      
        'where RSTList.PDYN='#39'Y'#39' and RSTList.PDDate is not null  ) A where' +
        ' A.rn=1) RSLList on  RSLList.CLDH=ZLZLS2.CLBH'
      
        'left join LBZLS on LBZLS.LB='#39'06'#39'  and LBZLS.LBDH>'#39'A'#39' and LBZLS.L' +
        'BDH=DDZL.DDGB '
      'where 1=1 '
      'and ZLZLS2.CLBH in (  '
      #39'A080000052'#39','
      #39'A130000522'#39','
      #39'A590000801'#39','
      #39'A440000022'#39','
      #39'A180000289'#39','
      #39'A520000355'#39','
      #39'A020003726'#39','
      #39'A530000020'#39','
      #39'A110004991'#39','
      #39'A130000078'#39','
      #39'A030000332'#39','
      #39'A520000279'#39','
      #39'A590001738'#39','
      #39'A130000657'#39','
      #39'A240000107'#39','
      #39'A110007291'#39','
      #39'A010006240'#39','
      #39'A580002384'#39','
      #39'A020000278'#39','
      #39'A130000558'#39','
      #39'A390000784'#39','
      #39'A520000227'#39','
      #39'A110004249'#39','
      #39'A110004226'#39','
      #39'A110007461'#39','
      #39'A110005690'#39','
      #39'A310000085'#39','
      #39'A580002422'#39')'
      '       and ((ZLZLS2.CLBH like '#39'A%'#39'))'
      '       and DDZL.BUYNO like '#39'201801%'#39' '
      '       and ZLZLS2.ZMLB='#39'N'#39' '
      '       and ZLZLS2.CLSL<>0 '
      
        ' and ( (RSLList.PDFilePage is null) or  (left(convert(varchar, D' +
        'ateAdd(Month,13,RSLList.PDDate),112), 6) <= left(convert(varchar' +
        ', getdate(),112), 6)) ) '
      
        '       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=' +
        'ZLZLS2.CLBH )'
      '       and (XXBWFLS.DFL<>'#39'G'#39' or XXBWFLS.DFL is null)'
      '       and SCZL.SCBH is not null'
      
        'Group by ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,RSL' +
        'List.PDDate,RSLList.PDFilePage,RSLList.ID,RSLList.Memo,RSLList.G' +
        'ender,RSLList.PDFilePageT2   ) RSLMat'
      'left join CLZL on CLZL.CLDH=RSLMat.CLBH '
      
        'Order by RSLMat.ZSDH,SubString(RSLMat.CLBH,1,1),SubString(CLZL.c' +
        'lbm,13,4),SubString(CLZL.clbm,1,4)')
    UpdateObject = UpdateSQL1
    Left = 300
    Top = 248
    object RSLQryCLBH: TStringField
      DisplayWidth = 12
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object RSLQryYWPM: TStringField
      DisplayWidth = 39
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object RSLQryZWPM: TStringField
      DisplayWidth = 29
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object RSLQryDWBH: TStringField
      DisplayWidth = 4
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object RSLQryCQDH: TStringField
      DisplayWidth = 4
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object RSLQryZSDH: TStringField
      DisplayWidth = 6
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object RSLQryzsywjc: TStringField
      DisplayWidth = 20
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object RSLQryPDDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PDDate'
    end
    object RSLQryPDFilePage: TStringField
      DisplayWidth = 150
      FieldName = 'PDFilePage'
      FixedChar = True
      Size = 150
    end
    object RSLQryIsExpire: TStringField
      FieldName = 'IsExpire'
      FixedChar = True
      Size = 1
    end
    object RSLQryID: TFloatField
      FieldName = 'ID'
    end
    object RSLQryCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object RSLQryMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
    end
    object RSLQryGender: TStringField
      DisplayWidth = 50
      FieldName = 'Gender'
      FixedChar = True
      Size = 50
    end
    object RSLQryPDFilePageT2: TStringField
      FieldName = 'PDFilePageT2'
      FixedChar = True
      Size = 150
    end
    object RSLQryKFGender: TStringField
      FieldName = 'KFGender'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = RSLQry
    Left = 300
    Top = 216
  end
  object UpdateSQL1: TUpdateSQL
    Left = 300
    Top = 281
  end
  object OpenDialog1: TOpenDialog
    Left = 264
    Top = 248
  end
  object ExeQry: TQuery
    DatabaseName = 'DB'
    Left = 337
    Top = 249
  end
  object Pop1: TPopupMenu
    Left = 300
    Top = 312
    object mnu1: TMenuItem
      Caption = 'Cap Nhat RSL'
      Enabled = False
      OnClick = mnu1Click
    end
    object mnu2: TMenuItem
      Caption = 'Xoa Bao cao RSL'
      Enabled = False
      OnClick = mnu2Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnu5: TMenuItem
      Caption = 'Cap Nhat RSL KIDS'
      Enabled = False
      OnClick = mnu5Click
    end
    object mnu6: TMenuItem
      Caption = 'Xoa Bao cao RSL KIDS'
      Enabled = False
      OnClick = mnu6Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnu3: TMenuItem
      Caption = 'Cap Nhat RSL Memo Not Top 5%'
      Enabled = False
      OnClick = mnu3Click
    end
    object mnu4: TMenuItem
      Caption = 'Cap Nhat Gender  Memo KIDS'
      Enabled = False
      OnClick = mnu4Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 371
    Top = 250
  end
end

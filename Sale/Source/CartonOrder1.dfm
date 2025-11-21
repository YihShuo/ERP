object CartonOrder: TCartonOrder
  Left = 295
  Top = 208
  Width = 1008
  Height = 525
  Caption = 'CartonOrder'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 992
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 56
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
      Left = 104
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
      Left = 152
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
      Left = 200
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
      Left = 248
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
      Left = 296
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
      Font.Height = -13
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
    object BBT1: TBitBtn
      Left = 368
      Top = 8
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
      Left = 416
      Top = 8
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
      Left = 464
      Top = 8
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
      Left = 512
      Top = 8
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
      Left = 584
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
      TabOrder = 11
      OnClick = bbt5Click
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
      Left = 632
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
    object bnHelp: TBitBtn
      Left = 704
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Help'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = bnHelpClick
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BitBtn1: TBitBtn
      Left = 752
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'CAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = BitBtn1Click
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 65
    Width = 992
    Height = 72
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 184
      Top = 20
      Width = 40
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 800
      Top = 21
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CUFT:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 328
      Top = 19
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'X/F Date:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 493
      Top = 19
      Width = 17
      Height = 16
      AutoSize = False
      Caption = 'To'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 29
      Top = 47
      Width = 48
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Country:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 181
      Top = 47
      Width = 44
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 333
      Top = 47
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'XieMing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 79
      Top = 16
      Width = 89
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
    object Edit2: TEdit
      Left = 226
      Top = 16
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 717
      Top = 12
      Width = 86
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 863
      Top = 18
      Width = 65
      Height = 24
      Color = clInactiveBorder
      ReadOnly = True
      TabOrder = 3
    end
    object CB1: TCheckBox
      Left = 615
      Top = 16
      Width = 82
      Height = 17
      Caption = 'All'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object DTP1: TDateTimePicker
      Left = 387
      Top = 16
      Width = 97
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 5
    end
    object DTP2: TDateTimePicker
      Left = 511
      Top = 16
      Width = 97
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 6
    end
    object edCountry: TEdit
      Left = 79
      Top = 43
      Width = 89
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
    object Edit4: TEdit
      Left = 226
      Top = 43
      Width = 89
      Height = 24
      TabOrder = 8
    end
    object CB2: TCheckBox
      Left = 615
      Top = 32
      Width = 82
      Height = 17
      Caption = 'No ok'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 9
    end
    object CB3: TCheckBox
      Left = 615
      Top = 48
      Width = 98
      Height = 17
      Caption = 'EmptyBox'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Edit5: TEdit
      Left = 387
      Top = 42
      Width = 221
      Height = 24
      TabOrder = 11
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 137
    Width = 313
    Height = 349
    Align = alLeft
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16765650
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    PopupMenu = PopupMenu2
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnGetCellParams = DBGridEh1GetCellParams
    OnMouseDown = DBGridEh1MouseDown
    OnMouseUp = DBGridEh1MouseUp
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 146
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 48
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Width = 122
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = 'X/F'
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'BZDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CGDate'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'MarkDate'
        Footers = <>
      end>
  end
  object PageControl1: TPageControl
    Left = 313
    Top = 137
    Width = 679
    Height = 349
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Carton'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 671
        Height = 318
        Align = alClient
        TabOrder = 0
        object Panel3: TPanel
          Left = 1
          Top = 49
          Width = 4
          Height = 268
          Align = alLeft
          TabOrder = 0
        end
        object Panel4: TPanel
          Left = 1
          Top = 1
          Width = 669
          Height = 48
          Align = alTop
          TabOrder = 1
          object Label5: TLabel
            Left = 187
            Top = 13
            Width = 57
            Height = 16
            Caption = 'SuppLier:'
          end
          object Label6: TLabel
            Left = 15
            Top = 13
            Width = 41
            Height = 16
            Caption = 'CGBH:'
          end
          object DBEdit2: TDBEdit
            Left = 246
            Top = 8
            Width = 117
            Height = 24
            DataField = 'ZSYWJC'
            DataSource = DS3
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit1: TDBEdit
            Left = 60
            Top = 8
            Width = 117
            Height = 24
            DataField = 'CGNO'
            DataSource = DS3
            ReadOnly = True
            TabOrder = 0
          end
          object BT1: TBitBtn
            Left = 362
            Top = 8
            Width = 17
            Height = 25
            Caption = '...'
            TabOrder = 1
            Visible = False
            OnClick = BT1Click
          end
          object bnBelow: TButton
            Left = 391
            Top = 5
            Width = 81
            Height = 33
            Caption = 'Same Below'
            TabOrder = 3
            WordWrap = True
            OnClick = bnBelowClick
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 5
          Top = 49
          Width = 665
          Height = 268
          Align = alClient
          DataSource = DS2
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = 16764622
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 4
          ParentFont = False
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          OnEditButtonClick = DBGridEh2EditButtonClick
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'InnerBox'
      ImageIndex = 2
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 671
        Height = 48
        Align = alTop
        TabOrder = 0
        object BC4: TBitBtn
          Left = 8
          Top = -1
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
          TabOrder = 0
          OnClick = BC4Click
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
        object BC5: TBitBtn
          Left = 56
          Top = -1
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
          OnClick = BC5Click
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
        object BC6: TBitBtn
          Left = 104
          Top = -1
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
          TabOrder = 2
          OnClick = BC6Click
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
        object BC7: TBitBtn
          Left = 168
          Top = -1
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Box'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BC7Click
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
        object chkSize: TCheckBox
          Left = 229
          Top = 17
          Width = 92
          Height = 17
          Caption = 'Check Size'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
      end
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 48
        Width = 671
        Height = 270
        Align = alClient
        DataSource = DS5
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16764622
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEditButtonClick = DBGridEh3EditButtonClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
            ReadOnly = True
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'DDCC'
            Footers = <>
            ReadOnly = True
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            ReadOnly = True
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
            ReadOnly = True
            Width = 33
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'InBoxCode'
            Footers = <>
            Width = 115
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Width = 312
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Vach ngan'
      ImageIndex = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 671
        Height = 48
        Align = alTop
        TabOrder = 0
        object InfoBox: TLabel
          Left = 163
          Top = 16
          Width = 333
          Height = 16
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object BD4: TBitBtn
          Left = 8
          Top = -1
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
          TabOrder = 0
          OnClick = BD4Click
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
        object BD5: TBitBtn
          Left = 56
          Top = -1
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
          OnClick = BD5Click
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
        object BD6: TBitBtn
          Left = 104
          Top = -1
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
          TabOrder = 2
          OnClick = BD6Click
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
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 48
        Width = 671
        Height = 270
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = 16764622
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEditButtonClick = DBGridEh3EditButtonClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'MCLBH'
            Footers = <>
            ReadOnly = True
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'MYWPM'
            Footers = <>
            ReadOnly = True
            Width = 224
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footers = <>
            ReadOnly = True
            Width = 32
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Width = 200
          end>
      end
    end
  end
  object YWDD: TQuery
    AfterScroll = YWDDAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select YWDD.YSBH as DDBH, XXZL.XieMing,DDZL.Pairs as Qty,XXZL.Xi' +
        'eXing,xxzl.shehao,DDZL.KHBH,DDZL.ShipDate,Max(YWDD.BZDate) as BZ' +
        'Date, Max(CGZL.CGDate) as CGDate,Max(CGZL.CGNO) as CGNO,  '
      
        '       DDZL.KHPO,LBZLS.YWSM as Country,DDZL.YN,XXZL.Article, YWD' +
        'D.GSBH,max(YWDDMT.USERDATE) as MarkDate '
      '       ,carton.nocarton,carton.modified '
      'from YWDD'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      'left join ZLZL  on ZLZL.DDBH=DDZL.DDBH'
      'left join CGZL  on CGZL.CGNO=YWDD.CGNO'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'left join YWDDMT on YWDD.DDBH=YWDDMT.DDBH'
      'left join ('
      
        'select YWBZPOS.DDBH,count(case when YWBZPO.CLBH is null then 1 e' +
        'nd) as nocarton'
      
        ',count(case when YWBZPO.USERDATE < YWBZPOS.USERDATE then 1 end) ' +
        'as modified'
      'from YWBZPOS'
      
        'left join YWBZPO on YWBZPO.DDBH = YWBZPOS.DDBH and YWBZPO.XH = Y' +
        'WBZPOS.XH'
      'left join YWDD on YWDD.DDBH = YWBZPOS.DDBH'
      'left join DDZL on YWDD.YSBH=DDZl.DDBH '
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      
        'where convert(smalldatetime,convert(varchar,YWDD.ETD,111)) betwe' +
        'en '
      '      '#39'2019/08/06'#39'and '#39'2019/09/05'#39
      '      and YWDD.YSBH like '#39'Y1810-1002%'#39
      '      and YWDD.GSBH='#39'VA12'#39
      'group by YWBZPOS.DDBH'
      ') carton on carton.DDBH = YWDD.YSBH'
      
        'where convert(smalldatetime,convert(varchar,YWDD.ETD,111)) betwe' +
        'en '
      '      '#39'2019/08/06'#39'and '#39'2019/09/05'#39
      '      and DDZL.DDBH like '#39'Y1810-1002%'#39
      '      and YWDD.GSBH='#39'VA12'#39
      
        '      and exists(select DDBH from YWBZPOS where YWBZPOS.DDBH=YWD' +
        'D.DDBH)'
      
        '       and exists(select DDBH from YWDDMT where YWDDMT.DDBH=YWDD' +
        '.DDBH)'
      
        'and not exists (select DDBH from YWBZPO where YWBZPO.DDBH=YWDD.D' +
        'DBH)'
      
        'group by YWDD.YSBH, XXZL.XieMing,DDZL.Pairs,XXZL.XieXing,xxzl.sh' +
        'ehao,DDZL.KHBH,DDZL.ShipDate, '
      
        '     DDZL.KHPO,LBZLS.YWSM,DDZL.YN,XXZL.Article, YWDD.GSBH,carton' +
        '.nocarton,carton.modified '
      'order by YWDD.DDBH')
    Left = 57
    Top = 177
    object YWDDDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWDDXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YWDDXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object YWDDshehao: TStringField
      FieldName = 'shehao'
      FixedChar = True
      Size = 5
    end
    object YWDDKHBH: TStringField
      FieldName = 'KHBH'
      FixedChar = True
      Size = 4
    end
    object YWDDKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 25
    end
    object YWDDCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 50
    end
    object YWDDQty: TIntegerField
      FieldName = 'Qty'
    end
    object YWDDYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YWDDArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object YWDDGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object YWDDShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object YWDDBZDate: TDateTimeField
      FieldName = 'BZDate'
    end
    object YWDDCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object YWDDMarkDate: TDateTimeField
      FieldName = 'MarkDate'
    end
    object YWDDnocarton: TIntegerField
      FieldName = 'nocarton'
    end
    object YWDDmodified: TIntegerField
      FieldName = 'modified'
    end
    object YWDDCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
  end
  object YWBZPO: TQuery
    AfterOpen = YWBZPOAfterOpen
    OnNewRecord = YWBZPONewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      'select POS.DDBH,POS.XH,POS.CTS'
      ',max(case when POS.DDCC='#39'02'#39
      ' then POS.Qty end ) as '#39'02'#39
      ',max(case when POS.DDCC='#39'03'#39
      ' then POS.Qty end ) as '#39'03'#39
      ',max(case when POS.DDCC='#39'04'#39
      ' then POS.Qty end ) as '#39'04'#39
      ',max(case when POS.DDCC='#39'05'#39
      ' then POS.Qty end ) as '#39'05'#39
      ',max(case when POS.DDCC='#39'05.5'#39
      ' then POS.Qty end ) as '#39'05.5'#39
      
        ',YWBZPO.CLBH,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.NW,YWBZPO.GW,YWBZ' +
        'PO.CTQ,YWBZPO.CTZ,YWBZPO.CBM'
      'from (select DDBH,null as XH,DDCC,Qty,null as CTS '
      '      from YWDDS where YWDDS.DDBH='#39'LT0809017'#39
      '                       and Qty<>0'
      '      union    '
      '      select DDBH,XH,DDCC,Qty,CTS '
      '      from YWBZPOS where YWBZPOS.DDBH='#39'LT0809017'#39
      ' ) POS   '
      'left join YWBZPO on YWBZPO.DDBH=POS.DDBH and YWBZPO.XH=POS.XH '
      
        'group by  POS.DDBH,POS.XH,POS.CTS,YWBZPO.CTQ,YWBZPO.CTZ,YWBZPO.N' +
        'W,'
      'YWBZPO.GW,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.CBM,YWBZPO.CLBH ')
    UpdateObject = UpdateSQL1
    Left = 345
    Top = 225
  end
  object DS1: TDataSource
    DataSet = YWDD
    Left = 97
    Top = 177
  end
  object DS2: TDataSource
    DataSet = YWBZPO
    Left = 425
    Top = 225
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 345
    Top = 341
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update YWBZPO'
      'set'
      '  DDBH = :DDBH,'
      '  XH = :XH,'
      '  CLBH = :CLBH,'
      '  CTQ = :CTQ,'
      '  CTZ = :CTZ,'
      '  CTS = :CTS,'
      '  NW = :NW,'
      '  GW = :GW,'
      '  L = :L,'
      '  W = :W,'
      '  H = :H,'
      '  CBM = :CBM,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH')
    InsertSQL.Strings = (
      'insert into YWBZPO'
      
        '  (DDBH, XH, CLBH, CTQ, CTZ, CTS, NW, GW, L, W, H, CBM, USERDATE' +
        ', '
      'USERID, '
      '   YN)'
      'values'
      
        '  (:DDBH, :XH, :CLBH, :CTQ, :CTZ, :CTS, :NW, :GW, :L, :W, :H, :C' +
        'BM, :USERDATE, '
      '   :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from YWBZPO'
      'where'
      '  DDBH = :OLD_DDBH')
    Left = 385
    Top = 225
  end
  object PopupMenu1: TPopupMenu
    Left = 465
    Top = 225
    object N1: TMenuItem
      Caption = 'Calculate'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Print1: TMenuItem
      Caption = 'Packing Print '
      OnClick = Print1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 16
    Top = 176
    object CheckNWGW1: TMenuItem
      Caption = 'Check NW&GW'
      OnClick = CheckNWGW1Click
    end
    object PrintMemo1: TMenuItem
      Caption = 'Carton Memo'
      OnClick = PrintMemo1Click
    end
  end
  object CGZL: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      'select CGZL.*,ZSZL.ZSYWJC,ZSZL.DH,ZSZL.CZ'
      'from CGZL'
      'left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH'
      'where CGZL.CGNO=:CGNO')
    UpdateObject = UpCGZL
    Left = 345
    Top = 265
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
  end
  object DS3: TDataSource
    DataSet = CGZL
    Left = 425
    Top = 265
  end
  object UpCGZL: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZL'
      'set'
      '  CGNO = :CGNO,'
      '  GSBH = :GSBH,'
      '  ZSBH = :ZSBH,'
      '  CGDate = :CGDate,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  CGLX = :CGLX,'
      '  YN = :YN'
      'where'
      '  CGNO = :OLD_CGNO')
    InsertSQL.Strings = (
      'insert into CGZL'
      '  (CGNO, GSBH, ZSBH, CGDate, USERDate, USERID, CGLX, YN)'
      'values'
      '  (:CGNO, :GSBH, :ZSBH, :CGDate, :USERDate, :USERID, :CGLX, :YN)')
    DeleteSQL.Strings = (
      'delete from CGZL'
      'where'
      '  CGNO = :OLD_CGNO')
    Left = 385
    Top = 265
  end
  object YWDDTP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from YWDDTP'
      'where DDBH=:DDBH'
      '         and MT='#39'C'#39
      'order by XH')
    Left = 345
    Top = 303
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
  end
  object YWBZPOTemp: TQuery
    DatabaseName = 'DB'
    Left = 386
    Top = 340
  end
  object YWBZPOE: TQuery
    AfterOpen = YWBZPOEAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select YWBZPO.*,YWBZPOE.CLBH,YWBZPOE.USERID,YWBZPOE.USERDATE,YWB' +
        'ZPOE.YN,C1.ywpm as MYWPM,C2.ywpm as YWPM from ('
      '   select YWDD.YSBH as DDBH,CLBH as MCLBH,SUM(CTS) as CTS '
      '   from YWBZPO '
      '   left join YWDD on YWDD.DDBH=YWBZPO.DDBH'
      '   where YWDD.YSBH=:DDBH'
      '   Group by YWDD.YSBH ,CLBH'
      '  ) YWBZPO'
      
        ' left join YWBZPOE on YWBZPOE.DDBH=YWBZPO.DDBH and YWBZPOE.MCLBH' +
        '=YWBZPO.MCLBH'
      ' Left join CLZL C1 on C1.cldh=YWBZPO.MCLBH'
      ' Left join CLZL C2 on C2.cldh=YWBZPOE.CLBH')
    UpdateObject = UpYWBZPOE
    Left = 569
    Top = 225
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object YWBZPOEDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWBZPOEMCLBH: TStringField
      FieldName = 'MCLBH'
      FixedChar = True
      Size = 15
    end
    object YWBZPOECLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object YWBZPOECTS: TIntegerField
      FieldName = 'CTS'
    end
    object YWBZPOEUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object YWBZPOEMYWPM: TStringField
      FieldName = 'MYWPM'
      FixedChar = True
      Size = 200
    end
    object YWBZPOEYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object YWBZPOEYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YWBZPOEUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
  end
  object DS4: TDataSource
    DataSet = YWBZPOE
    Left = 601
    Top = 225
  end
  object UpYWBZPOE: TUpdateSQL
    ModifySQL.Strings = (
      'update YWBZPOE'
      'set'
      '  CLBH = :CLBH,'
      '  CTS = :CTS,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  MCLBH = :OLD_MCLBH')
    InsertSQL.Strings = (
      'insert into YWBZPOE'
      '  (DDBH, MCLBH, CLBH, CTS, USERDate, USERID, YN)'
      'values'
      '  (:DDBH, :MCLBH, :CLBH, :CTS, :USERDate, :USERID, :YN)')
    DeleteSQL.Strings = (
      'Delete From YWBZPOE'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  MCLBH = :OLD_MCLBH')
    Left = 633
    Top = 226
  end
  object YWBZPOS: TQuery
    AfterOpen = YWBZPOSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select YWBZPOS.*,CLZL.YWPM from YWBZPOS'
      'left join YWDD on YWDD.DDBH=YWBZPOS.DDBH'
      'left join DDZL on DDZL.DDBH=YWDD.YSBH'
      
        'left join XXZLS on XXZLS.XieXing = DDZL.XieXing and xxzls.SheHao' +
        ' = DDZL.SheHao and XXZLS.CLBH like '#39'H14%'#39
      'and YWBZPOS.DDCC between XXZLS.CCQQ and XXZLS.CCQZ'
      'left join CLZl on XXZLS.CLBH=CLZL.CLDH'
      
        'where YWBZPOS.DDBH in (select DDBH from YWDD where YSBH=:DDBH) a' +
        'nd XXZLS.CLBH in (select CLBH from ZLZLS2 where ZLBH=:DDBH and C' +
        'LBH like '#39'H14%'#39')'
      '')
    UpdateObject = UpYWBZPOS
    Left = 569
    Top = 257
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
    object YWBZPOSDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object YWBZPOSXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object YWBZPOSDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 6
    end
    object YWBZPOSQty: TIntegerField
      FieldName = 'Qty'
    end
    object YWBZPOSCTS: TIntegerField
      FieldName = 'CTS'
    end
    object YWBZPOSMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
    end
    object YWBZPOSCTQ: TIntegerField
      FieldName = 'CTQ'
    end
    object YWBZPOSCTZ: TIntegerField
      FieldName = 'CTZ'
    end
    object YWBZPOSInBoxCode: TStringField
      FieldName = 'InBoxCode'
      FixedChar = True
      Size = 30
    end
    object YWBZPOSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object YWBZPOSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object YWBZPOSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YWBZPOSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
  end
  object DS5: TDataSource
    DataSet = YWBZPOS
    Left = 601
    Top = 257
  end
  object UpYWBZPOS: TUpdateSQL
    ModifySQL.Strings = (
      'update YWBZPOS'
      'set'
      '  InBoxCode = :InBoxCode'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  XH = :OLD_XH and'
      '  DDCC =:OLD_DDCC')
    InsertSQL.Strings = (
      '')
    Left = 633
    Top = 258
  end
end

object DevelopQuotation: TDevelopQuotation
  Left = 94
  Top = 136
  Width = 1173
  Height = 598
  Caption = 'DevelopQuotation'
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
    Width = 1157
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
      Left = 104
      Top = 8
      Width = 49
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
      Left = 152
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
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
      Left = 200
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
      Left = 296
      Top = 8
      Width = 49
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
      OnClick = BB1Click
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
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
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
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
      Font.Height = -15
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
    object bbt7: TBitBtn
      Left = 712
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
      TabOrder = 13
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
  object mainPC: TPageControl
    Left = 0
    Top = 65
    Width = 1157
    Height = 495
    ActivePage = TabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet2: TTabSheet
      Caption = 'Material'
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1149
        Height = 65
        Align = alTop
        TabOrder = 0
        object Label13: TLabel
          Left = 345
          Top = 9
          Width = 67
          Height = 16
          Caption = 'Eng Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 342
          Top = 39
          Width = 66
          Height = 16
          Caption = 'Chn Name:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 185
          Top = 36
          Width = 40
          Height = 16
          Caption = 'Status:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 667
          Top = 7
          Width = 40
          Height = 16
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 2
          Top = 37
          Width = 53
          Height = 16
          Caption = 'Supplier:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 7
          Top = 9
          Width = 29
          Height = 16
          Caption = 'SR#:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 662
          Top = 40
          Width = 43
          Height = 16
          Caption = 'MatNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 237
          Top = 7
          Width = 37
          Height = 16
          Caption = 'BuNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Edit9: TEdit
          Left = 412
          Top = 4
          Width = 237
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
        object Edit12: TEdit
          Left = 413
          Top = 36
          Width = 237
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Button3: TButton
          Left = 834
          Top = 28
          Width = 81
          Height = 33
          Caption = 'QUERY'
          TabOrder = 2
          OnClick = Button3Click
        end
        object CB2: TComboBox
          Left = 230
          Top = 32
          Width = 97
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 3
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'Not Price'
            'Have Price')
        end
        object XieXingEdit: TEdit
          Left = 707
          Top = 3
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object Edit16: TEdit
          Left = 58
          Top = 33
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object SREdit: TEdit
          Left = 39
          Top = 4
          Width = 194
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object Edit8: TEdit
          Left = 709
          Top = 36
          Width = 109
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
        object Edit10: TEdit
          Left = 276
          Top = 5
          Width = 53
          Height = 24
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object NormalCB2: TCheckBox
          Left = 834
          Top = 5
          Width = 81
          Height = 17
          Caption = 'Normal'
          Checked = True
          State = cbChecked
          TabOrder = 9
        end
      end
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 65
        Width = 1149
        Height = 395
        Align = alClient
        DataSource = DS3
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
        FooterRowCount = 1
        ParentFont = False
        PopupMenu = Popup2
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24288#21830#21517#31281'|Supplier'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#33521#25991#21517#31281'|Material'
            Width = 391
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301'|Unit'
            Width = 51
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'SamplePrice'
            Footers = <>
            Title.Caption = #21934#20729'|USD'
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#32232#34399'|Material'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#20013#25991#21517#31281'|Material'
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'ZSDH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24288#21830#32232#34399'|Supplier'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'userID'
            Footers = <>
            Title.Caption = 'ID#|USERID'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'userdate'
            Footers = <>
            Title.Caption = #20462#25913#26085#26399'|USERDATE'
            Width = 81
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Article'
      object PC1: TPageControl
        Left = 0
        Top = 0
        Width = 1149
        Height = 460
        ActivePage = TS1
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = PC1Change
        object TS1: TTabSheet
          Caption = 'Master'
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 1141
            Height = 73
            Align = alTop
            TabOrder = 0
            object Label1: TLabel
              Left = 26
              Top = 13
              Width = 37
              Height = 16
              Caption = 'ArtNo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 190
              Top = 13
              Width = 35
              Height = 16
              Caption = 'Color:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label3: TLabel
              Left = 5
              Top = 41
              Width = 60
              Height = 16
              Caption = 'Customer:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 378
              Top = 44
              Width = 56
              Height = 16
              Caption = 'ArtName:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 325
              Top = 10
              Width = 40
              Height = 16
              Caption = 'Article:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 525
              Top = 7
              Width = 50
              Height = 16
              Caption = 'Season:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label19: TLabel
              Left = 898
              Top = 4
              Width = 401
              Height = 20
              AutoSize = False
              Caption = #26597#35426#32080#26524#32005#33394':'#20195#34920#22577#20729#36996#27794#20570#23436
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label20: TLabel
              Left = 900
              Top = 23
              Width = 160
              Height = 20
              AutoSize = False
              Caption = #26597#35426#26781#20214#40643#33394':'#33267#23569#22635#23531#19968#27171
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label21: TLabel
              Left = 172
              Top = 44
              Width = 53
              Height = 16
              Caption = 'DAOMH:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 656
              Top = 10
              Width = 44
              Height = 16
              Caption = 'BuyNo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit1: TEdit
              Left = 71
              Top = 9
              Width = 89
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
            object Edit2: TEdit
              Left = 231
              Top = 9
              Width = 57
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
            object Edit4: TEdit
              Left = 71
              Top = 40
              Width = 89
              Height = 24
              CharCase = ecUpperCase
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Text = 'CONVERSE'
            end
            object Edit3: TEdit
              Left = 369
              Top = 7
              Width = 134
              Height = 24
              CharCase = ecUpperCase
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object Edit5: TEdit
              Left = 439
              Top = 38
              Width = 195
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
            object Button1: TButton
              Left = 813
              Top = 6
              Width = 74
              Height = 33
              Caption = 'QUERY'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = Button1Click
            end
            object SeasonEdit: TEdit
              Left = 578
              Top = 5
              Width = 57
              Height = 24
              CharCase = ecUpperCase
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object Edit6: TEdit
              Left = 230
              Top = 41
              Width = 130
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object BuyNoEdit: TEdit
              Left = 703
              Top = 8
              Width = 89
              Height = 24
              Color = clYellow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
          end
          object DBGrid1: TDBGridEh
            Left = 0
            Top = 73
            Width = 1141
            Height = 359
            Align = alClient
            DataSource = DS1
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
            FooterRowCount = 1
            ParentFont = False
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            OnDblClick = DBGrid1DblClick
            OnGetCellParams = DBGrid1GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'XieXing'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <
                  item
                    FieldName = 'XieXing'
                    ValueType = fvtCount
                  end>
                Title.Caption = #38795#22411'|ArtNo'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 94
              end
              item
                EditButtons = <>
                FieldName = 'SheHao'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = #33394#34399'|Color'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 40
              end
              item
                EditButtons = <>
                FieldName = 'Article'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = 'SKU#|Article'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 73
              end
              item
                EditButtons = <>
                FieldName = 'XieMing'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = #38795#21517'|ArtName'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 180
              end
              item
                EditButtons = <>
                FieldName = 'YSSM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = #38991#33394'|Color Name'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 180
              end
              item
                Alignment = taCenter
                EditButtons = <>
                FieldName = 'BZCC'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                Footers = <>
                Title.Caption = #27161#28310#23610#23544'|StandardSize'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -15
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = []
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'KFJC'
                Footers = <>
                Title.Caption = #23458#25142'|Customer'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'JiJie'
                Footers = <>
                Title.Caption = '|'#23395#31680'|Season'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'DAOMH'
                Footers = <>
                Title.Caption = #26028#20992'|DAOMH'
                Width = 119
              end
              item
                EditButtons = <>
                FieldName = 'DEVCODE'
                Footers = <>
                Title.Caption = 'SR#|DEVCODE'
              end>
          end
        end
        object TS2: TTabSheet
          Caption = 'Detail'
          ImageIndex = 1
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 1141
            Height = 57
            Align = alTop
            TabOrder = 0
            object DBText1: TDBText
              Left = 48
              Top = 4
              Width = 52
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'XieXing'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DBText2: TDBText
              Left = 230
              Top = 4
              Width = 52
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'SheHao'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DBText3: TDBText
              Left = 366
              Top = 4
              Width = 52
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'ARTICLE'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object DBText4: TDBText
              Left = 520
              Top = 4
              Width = 52
              Height = 16
              AutoSize = True
              Color = clBtnFace
              DataField = 'XieMing'
              DataSource = DS1
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object Label6: TLabel
              Left = 8
              Top = 4
              Width = 37
              Height = 16
              Caption = 'ArtNo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 190
              Top = 4
              Width = 35
              Height = 16
              Caption = 'Color:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 318
              Top = 4
              Width = 40
              Height = 16
              Caption = 'Article:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 462
              Top = 4
              Width = 56
              Height = 16
              Caption = 'ArtName:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label10: TLabel
              Left = 7
              Top = 29
              Width = 43
              Height = 16
              Caption = 'MatNo:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 185
              Top = 28
              Width = 40
              Height = 16
              Caption = 'Status:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Edit7: TEdit
              Left = 52
              Top = 26
              Width = 100
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
            object CB1: TComboBox
              Left = 229
              Top = 25
              Width = 81
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 16
              ParentFont = False
              TabOrder = 1
              Text = 'ALL'
              Items.Strings = (
                'ALL'
                'Not Price'
                'Have Price')
            end
            object Button2: TButton
              Left = 602
              Top = 21
              Width = 89
              Height = 33
              Caption = 'Query'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = Button2Click
            end
            object NormalCB1: TCheckBox
              Left = 608
              Top = 5
              Width = 81
              Height = 17
              Caption = 'Normal'
              Checked = True
              State = cbChecked
              TabOrder = 3
            end
          end
          object DBGrid2: TDBGridEh
            Left = 0
            Top = 57
            Width = 1141
            Height = 375
            Align = alClient
            DataSource = DS2
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
            FooterRowCount = 1
            FrozenCols = 4
            ParentFont = False
            PopupMenu = Popup1
            SumList.Active = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            UseMultiTitle = True
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                ReadOnly = True
                Title.Caption = #24288#21830#21517#31281'|Supplier'
                Width = 110
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                ReadOnly = True
                Title.Caption = #26448#26009#33521#25991#21517#31281'|MATERIAL'
                Width = 445
              end
              item
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <>
                ReadOnly = True
                Title.Caption = #21934#20301'|Unit'
                Width = 47
              end
              item
                Color = clYellow
                EditButtons = <>
                FieldName = 'SamplePrice'
                Footers = <>
                Title.Caption = #21934#20729'|USD'
                Width = 66
              end
              item
                EditButtons = <>
                FieldName = 'ZWPM'
                Footers = <>
                ReadOnly = True
                Title.Caption = #26448#26009#20013#25991#21517#31281'|MATERIAL'
                Width = 250
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Title.Caption = #26448#26009#32232#34399'|MATERIAL'
                Width = 88
              end
              item
                EditButtons = <>
                FieldName = 'ZSDH'
                Footers = <>
                ReadOnly = True
                Title.Caption = #24288#21830#32232#34399'|Supplier'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'userID'
                Footers = <>
                Title.Caption = 'ID#|USERID'
                Width = 62
              end
              item
                EditButtons = <>
                FieldName = 'userdate'
                Footers = <>
                Title.Caption = #20462#25913#26085#26399'|USERDATE'
                Width = 93
              end>
          end
        end
      end
    end
  end
  object XXZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,xxzls.XieXing as XX' +
        ',xxzls.SheHao as SS,'
      
        'XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,XXZL.IMGName,KFXXZL.J' +
        'iJie,XXZL.DAOMH,KFXXZL.DEVCODE from XXZL '
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      
        'left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXin' +
        'g=XXZL.XieXing '
      'left join(select XXZLS.XieXing,XXZLS.SheHao'
      
        '          FROM XXZLS left join xxzl on xxzl.XieXing=xxzls.XieXin' +
        'g and xxzl.SheHao=xxzls.SheHao'
      '          LEFT JOIN CLZL ON XXZLS.CLBH = CLZL.cldh'
      '          LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      
        '          LEFT JOIN ZSZL_DEV ON ZSZL_DEV.ZSDH=XXZLS.CSBH AND ZSZ' +
        'L_DEV.GSBH='#39'CDC'#39
      '          LEFT JOIN (select* '
      
        '                     from ( select *,ROW_NUMBER() over (PARTITIO' +
        'N BY CLBH ORDER BY Substring(Season,1,2) DESC,Substring(Season,3' +
        ',1) ASC) as  rn '
      '                            from MaterialMOQ'
      
        '                           ) A where A.rn=1 and CLBH not like '#39'V' +
        '%'#39' ) MaterialMOQ ON MaterialMOQ.CLBH=XXZLS.CLBH and MaterialMOQ.' +
        'ZSBH=xxzls.CSBH'
      '          where  xxzl.ARTICLE like '#39'%'#39' and CLZMLB='#39'N'#39
      
        '          and MaterialMOQ.SamplePrice is null and MaterialMOQ.Sa' +
        'mplePriceVN is null'
      
        '          group by XXZLS.XieXing,XXZLS.SheHao) XXZLS on xxzls.Xi' +
        'eXing=xxzl.XieXing and xxzls.SheHao=xxzl.SheHao'
      'where XXZL.XieXing like '#39'%'#39
      ' and XXZL.SheHao like '#39'%'#39
      ' and XXZL.ARTICLE like '#39'%'#39
      ' and KFZL.KFJC like '#39'%%'#39
      ' and XXZL.XieMing like '#39'%'#39
      '  and KFXXZL.JiJie like '#39'%18F%'#39' '
      ' and XXZL.YN='#39'1'#39
      ' order by KFJC,XXZL.XieXing,XXZL.Shehao')
    Left = 132
    Top = 272
    object XXZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object XXZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object XXZLKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object XXZLBZCC: TStringField
      FieldName = 'BZCC'
      FixedChar = True
      Size = 6
    end
    object XXZLIMGName: TStringField
      FieldName = 'IMGName'
      FixedChar = True
      Size = 60
    end
    object XXZLJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object XXZLDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object XXZLXX: TStringField
      FieldName = 'XX'
      FixedChar = True
      Size = 15
    end
    object XXZLSS: TStringField
      FieldName = 'SS'
      FixedChar = True
      Size = 5
    end
    object XXZLDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,Max(XXZLS.CSBH)' +
        ' as ZSDH,Max(ZSZL.ZSYWJC) as ZSYWJC,CLZL.CLZMLB,'
      
        '       MaterialCBD.Season,MaterialCBD.SamplePrice,MaterialCBD.us' +
        'erID,MaterialCBD.userdate '
      'FROM ('
      
        ' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.B' +
        'WLB '
      ' from XXZLS '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  '
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB  '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  '
      ' union all '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.Z' +
        'SDH as CSBH,XXZLS.BWLB  from ( '
      
        ' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BW' +
        'LB '
      ' from XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH '
      ' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao ) XXZLS '
      ' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  '
      ' ) XXZLS '
      'LEFT JOIN CLZL ON XXZLS.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'Left Join MaterialCBD ON MaterialCBD.CLBH=XXZLS.CLBH  '
      
        'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  AND CLZL.' +
        'CLZMLB='#39'N'#39
      'and XXZLS.CLBH like'#39'%'#39
      'and (XXZLS.BWLB=1 and IsNull(XXZLS.CSBH,'#39#39')<>'#39#39') '
      'group by XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.CLZMLB,'
      
        '         MaterialCBD.Season,MaterialCBD.SamplePrice,MaterialCBD.' +
        'userID,MaterialCBD.userdate'
      'ORDER BY XXZLS.CLBH')
    UpdateObject = UpdateSQL1
    Left = 172
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object XXZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object XXZLSZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSCLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object XXZLSSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      OnSetText = XXZLSSamplePriceSetText
      DisplayFormat = '#,##0.0000'
    end
    object XXZLSuserID: TStringField
      FieldName = 'userID'
      FixedChar = True
    end
    object XXZLSuserdate: TDateTimeField
      FieldName = 'userdate'
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 132
    Top = 304
  end
  object DS2: TDataSource
    DataSet = XXZLS
    Left = 172
    Top = 304
  end
  object TemQry: TQuery
    DatabaseName = 'DB'
    Left = 252
    Top = 272
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      '')
    InsertSQL.Strings = (
      '')
    DeleteSQL.Strings = (
      '')
    Left = 172
    Top = 336
  end
  object XXMQ: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,ZSZL_DEV.ZSDH,Z' +
        'SZL.ZSYWJC,CLZL.CLZMLB,'
      
        '       MaterialCBD.Season,MaterialCBD.SamplePrice,MaterialCBD.Sa' +
        'mplePriceVN,MaterialCBD.userID,MaterialCBD.userdate'
      'FROM XXZLS'
      'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      
        'LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=XXZLS.CSBH AND ZSZL_DEV.GSBH' +
        '='#39'CDC'#39
      
        'Left JOIN KFXXZL on XXZLS.XieXing=KFXXZL.XieXing and XXZLS.SheHa' +
        'o=KFXXZL.SheHao '
      'LEFT JOIN (select*'
      
        '           from ( select *,ROW_NUMBER() over (PARTITION BY CLBH,' +
        'ZSBH ORDER BY Substring(Season,1,2) DESC,Substring(Season,3,1) A' +
        'SC) as  rn '
      
        '                  from MaterialCBD) A where A.rn=1  ) MaterialCB' +
        'D ON MaterialCBD.CLBH=XXZLS.CLBH and MaterialCBD.ZSBH=xxzls.CSBH'
      
        'Left JOIN DDZL on DDZL.XieXing=XXZLS.XieXing and DDZL.SheHao=XXZ' +
        'LS.SheHao '
      'where XXZLS.XieXing like'#39'%15%'#39'   AND CLZL.CLZMLB='#39'N'#39
      'and XXZLS.CLBH like'#39'%'#39
      'and CLZL.YWPM like '#39'%%'#39
      'and CLZL.ZWPM like '#39'%%'#39
      'and (XXZLS.BWLB=1 and IsNull(XXZLS.CSBH,'#39#39')<>'#39#39') '
      
        'group by XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,ZSZL_DEV.ZSDH' +
        ',ZSZL.ZSYWJC,CLZL.CLZMLB,'
      
        '         MaterialCBD.Season,MaterialCBD.SamplePrice,MaterialCBD.' +
        'SamplePriceVN,MaterialCBD.userID,MaterialCBD.userdate'
      'ORDER BY XXZLS.CLBH'
      '')
    UpdateObject = UpdateSQL2
    Left = 212
    Top = 272
    object XXMQCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXMQYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXMQZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object XXMQDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXMQZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object XXMQZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXMQCLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object XXMQSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object XXMQSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      OnSetText = XXMQSamplePriceSetText
      DisplayFormat = '#,##0.0000'
    end
    object XXMQuserID: TStringField
      FieldName = 'userID'
      FixedChar = True
    end
    object XXMQuserdate: TDateTimeField
      FieldName = 'userdate'
    end
  end
  object DS3: TDataSource
    DataSet = XXMQ
    Left = 212
    Top = 304
  end
  object UpdateSQL2: TUpdateSQL
    Left = 212
    Top = 336
  end
  object Popup1: TPopupMenu
    Left = 172
    Top = 368
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
  object Popup2: TPopupMenu
    Left = 212
    Top = 368
    object Modify2: TMenuItem
      Caption = 'Modify'
      OnClick = Modify2Click
    end
    object Save2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save2Click
    end
    object Cancel2: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel2Click
    end
  end
end

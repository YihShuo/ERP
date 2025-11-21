object BOMM: TBOMM
  Left = 358
  Top = 143
  Width = 1307
  Height = 828
  Caption = 'BOMM'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1291
    Height = 65
    Align = alTop
    TabOrder = 0
    object ShoeImage: TImage
      Left = 704
      Top = 0
      Width = 97
      Height = 65
      PopupMenu = shoePicpopo
      Stretch = True
    end
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
      Font.Name = 'MS Sans Serif'
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
      Font.Name = 'MS Sans Serif'
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
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
      Font.Name = 'MS Sans Serif'
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
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
      Font.Name = 'MS Sans Serif'
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
      Font.Name = 'MS Sans Serif'
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
      Font.Name = 'MS Sans Serif'
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
      Font.Name = 'MS Sans Serif'
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
      Font.Name = 'MS Sans Serif'
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
  end
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 1291
    Height = 724
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'ARTICLE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 73
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 15
          Top = 10
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label2: TLabel
          Left = 187
          Top = 10
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
        end
        object Label3: TLabel
          Left = 15
          Top = 43
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Customer:'
        end
        object Label4: TLabel
          Left = 396
          Top = 43
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
        end
        object Label5: TLabel
          Left = 327
          Top = 10
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
        end
        object Label18: TLabel
          Left = 538
          Top = 10
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season:'
        end
        object Label19: TLabel
          Left = 975
          Top = 4
          Width = 401
          Height = 20
          AutoSize = False
          Caption = #26597#35426#32080#26524#32005#33394':'#20195#34920#27794#26377#23526#38555#29992#37327#33287#38651#33126#29992#37327
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label20: TLabel
          Left = 977
          Top = 23
          Width = 309
          Height = 20
          AutoSize = False
          Caption = #26597#35426#26781#20214#40643#33394':'#33267#23569#22635#23531#19968#27171
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label21: TLabel
          Left = 187
          Top = 43
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DAOMH:'
        end
        object Label22: TLabel
          Left = 670
          Top = 10
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
        end
        object Label23: TLabel
          Left = 620
          Top = 43
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'SR#:'
        end
        object Edit1: TEdit
          Left = 88
          Top = 8
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 261
          Top = 8
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 88
          Top = 41
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 399
          Top = 8
          Width = 134
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 469
          Top = 41
          Width = 148
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button1: TButton
          Left = 896
          Top = 6
          Width = 74
          Height = 33
          Caption = 'QUERY'
          TabOrder = 5
          OnClick = Button1Click
        end
        object SeasonEdit: TEdit
          Left = 614
          Top = 8
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 6
        end
        object Edit6: TEdit
          Left = 260
          Top = 41
          Width = 130
          Height = 24
          TabOrder = 7
        end
        object GroupBox1: TGroupBox
          Left = 878
          Top = 39
          Width = 317
          Height = 30
          TabOrder = 8
          object CK1: TCheckBox
            Left = 8
            Top = 10
            Width = 89
            Height = 17
            Caption = 'Have order'
            Checked = True
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            State = cbChecked
            TabOrder = 0
          end
          object CK2: TCheckBox
            Left = 104
            Top = 10
            Width = 169
            Height = 17
            Caption = 'Usage change at       Day'
            Color = clLime
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
          end
          object DEdit: TEdit
            Left = 228
            Top = 8
            Width = 17
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '1'
          end
        end
        object BuyNoEdit: TEdit
          Left = 746
          Top = 8
          Width = 89
          Height = 24
          Color = clYellow
          TabOrder = 9
        end
        object SREdit: TEdit
          Left = 692
          Top = 40
          Width = 172
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 10
        end
        object cb1: TComboBox
          Left = 837
          Top = 8
          Width = 57
          Height = 24
          ItemHeight = 16
          TabOrder = 11
          Text = 'JNG'
          Visible = False
          Items.Strings = (
            'JNG'
            'YQA'
            'FNS')
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 73
        Width = 1283
        Height = 620
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGrid1DblClick
        OnGetCellParams = DBGrid1GetCellParams
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <
              item
                FieldName = 'XieXing'
                ValueType = fvtCount
              end>
            Title.Caption = 'ArtNo|'#38795#22411
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Title.Caption = 'Color|'#33394#34399
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article|'#22411#39636
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Caption = 'ArtName|'#38795#21517
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Title.Caption = 'Color Name|'#38991#33394
            Width = 201
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'BZCC'
            Footers = <>
            Title.Caption = 'StandardSize|'#27161#28310#23610#23544
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'KFJC'
            Footers = <>
            Title.Caption = 'Customer|'#23458#25142
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Title.Caption = 'Season|'#23395#31680
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = 'DAOMH|'#26028#20992
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            Title.Caption = 'SR#|DEVCODE'
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'XTMH'
            Footers = <>
            Title.Caption = 'XTMH|'#26982#38957#27169#34399
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'LOGO'
            Footers = <>
            Title.Caption = 'Size Range|'#23610#30908#31684#22285
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'MDMH'
            Footers = <>
            Title.Caption = 'MDMH|M/S'#27169#34399
            Width = 96
          end
          item
            EditButtons = <>
            FieldName = 'DDMH'
            Footers = <>
            Title.Caption = 'DDMH|'#22823#24213#27169#34399
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'DevType'
            Footers = <>
            Title.Caption = 'DevType|'#38283#30332#39006#22411
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CYWSM'
            Footers = <>
            Title.Caption = 'main MatE|'#20027#35201#26448#26009#33521#25991
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'CZWSM'
            Footers = <>
            Title.Caption = 'main MatC|'#20027#35201#26448#26009#20013#25991
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'LYWSM'
            Footers = <>
            Title.Caption = 'VULCANIZE E|'#21152#29705#33521#25991
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'LZWSM'
            Footers = <>
            Title.Caption = 'VULCANIZE C|'#21152#29705#20013#25991
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'Gender'
            Footers = <>
            Title.Caption = 'Gender|'#39006#21029
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'BOM_Check'
            Footers = <>
            Title.Caption = 'BOM|Check'
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'BOMDATE'
            Footers = <>
            Title.Caption = 'BOM|DATE'
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'DEVELOP_Check'
            Footers = <>
            Title.Caption = 'DEVELOP|Check'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'DEVELOPDATE'
            Footers = <>
            Title.Caption = 'DEVELOP|DATE'
          end
          item
            EditButtons = <>
            FieldName = 'TECH_Check'
            Footers = <>
            Title.Caption = 'TECH|Check'
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'TECHDATE'
            Footers = <>
            Title.Caption = 'TECH|DATE'
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'BOM'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText1: TDBText
          Left = 85
          Top = 16
          Width = 130
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 301
          Top = 16
          Width = 79
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 457
          Top = 16
          Width = 104
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 633
          Top = 16
          Width = 176
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 2
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label7: TLabel
          Left = 226
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
        end
        object Label8: TLabel
          Left = 383
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
        end
        object Label9: TLabel
          Left = 561
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
        end
        object ChildMatCK: TCheckBox
          Left = 821
          Top = 16
          Width = 161
          Height = 17
          Caption = 'show child material'
          TabOrder = 0
          OnClick = ChildMatCKClick
        end
        object BitBtn1: TBitBtn
          Left = 969
          Top = 0
          Width = 87
          Height = 49
          Hint = 'Modify Current'
          Caption = 'ColorSwatch'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn1Click
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
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1283
        Height = 644
        Align = alClient
        DataSource = DS2
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
        FrozenCols = 4
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XH'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'XH|'#24207#34399
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Part|'#37096#20301#32232#34399
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Title.Caption = 'PartName|'#37096#20301#21517#31281
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'DType'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material|'#26448#26009#32232#34399
            Title.TitleButton = True
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Material|'#26448#26009#21517#31281
            Width = 376
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit|'#21934#20301
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Title.Caption = 'CC|'#21015#21360#23610#23544
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Usage|'#29992#37327
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CCQQ'
            Footers = <>
            Title.Caption = 'SizeRange|'#23610#23544#36215
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CCQZ'
            Footers = <>
            Title.Caption = 'SizeRange|'#23610#23544#36804
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'BWLB'
            Footers = <>
            Title.Caption = 'UnitClass|'#37096#20301#39006#21029
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier|'#24288#21830#21517#31281
            Title.TitleButton = True
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Title.Caption = 'Material Class|'#26448#26009#23376#27597#39006#21029
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'BWZW'
            Footers = <>
            Title.Caption = 'UnitName|'#37096#20301#20013#25991#35498#26126
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CLZW'
            Footers = <>
            Title.Caption = 'MaterialName|'#26448#26009#20013#25991
            Width = 312
          end
          item
            EditButtons = <>
            FieldName = 'userdate'
            Footers = <>
            Title.Caption = #30064#21205#26085#26399'|UserDate'
            Width = 72
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'ACTION'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText5: TDBText
          Left = 85
          Top = 16
          Width = 130
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 299
          Top = 16
          Width = 79
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 457
          Top = 16
          Width = 103
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 644
          Top = 16
          Width = 176
          Height = 17
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 2
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label11: TLabel
          Left = 226
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
        end
        object Label12: TLabel
          Left = 383
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
        end
        object Label13: TLabel
          Left = 567
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
        end
        object Excel: TButton
          Left = 900
          Top = 8
          Width = 65
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = ExcelClick
        end
        object Print: TButton
          Left = 827
          Top = 8
          Width = 65
          Height = 33
          Caption = 'Print'
          Enabled = False
          TabOrder = 1
        end
      end
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 49
        Width = 1283
        Height = 644
        Align = alClient
        DataSource = DS3
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
        FrozenCols = 2
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid3DrawColumnCell
      end
    end
    object TS4: TTabSheet
      Caption = 'COMPUTER'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText9: TDBText
          Left = 78
          Top = 16
          Width = 150
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 306
          Top = 16
          Width = 78
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 463
          Top = 16
          Width = 103
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 637
          Top = 16
          Width = 176
          Height = 17
          Alignment = taRightJustify
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 2
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label15: TLabel
          Left = 232
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
        end
        object Label16: TLabel
          Left = 389
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
        end
        object Label17: TLabel
          Left = 567
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
        end
        object Print2: TButton
          Left = 827
          Top = 8
          Width = 65
          Height = 33
          Caption = 'Print'
          Enabled = False
          TabOrder = 0
        end
        object Excel2: TButton
          Left = 900
          Top = 8
          Width = 65
          Height = 33
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Excel2Click
        end
      end
      object DBGrid4: TDBGridEh
        Left = 0
        Top = 49
        Width = 1283
        Height = 644
        Align = alClient
        DataSource = DS4
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
        FrozenCols = 2
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid4DrawColumnCell
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'BOM-Season'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label29: TLabel
          Left = 10
          Top = 18
          Width = 69
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season:'
        end
        object Button2: TButton
          Left = 154
          Top = 14
          Width = 74
          Height = 33
          Caption = 'QUERY'
          TabOrder = 0
          OnClick = Button2Click
        end
        object Edit12: TEdit
          Left = 86
          Top = 16
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 1
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 57
        Width = 1283
        Height = 636
        Align = alClient
        DataSource = DS6
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
        FrozenCols = 4
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = 'Part|'#37096#20301#32232#34399
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Title.Caption = 'PartName|'#37096#20301#21517#31281
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'DType'
            Footers = <>
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material|'#26448#26009#32232#34399
            Title.TitleButton = True
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Material|'#26448#26009#21517#31281
            Width = 376
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit|'#21934#20301
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Title.Caption = 'CC|'#21015#21360#23610#23544
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = 'Usage|'#29992#37327
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CCQQ'
            Footers = <>
            Title.Caption = 'SizeRange|'#23610#23544#36215
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CCQZ'
            Footers = <>
            Title.Caption = 'SizeRange|'#23610#23544#36804
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'BWLB'
            Footers = <>
            Title.Caption = 'UnitClass|'#37096#20301#39006#21029
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier|'#24288#21830#21517#31281
            Title.TitleButton = True
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Title.Caption = 'Material Class|'#26448#26009#23376#27597#39006#21029
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'BWZW'
            Footers = <>
            Title.Caption = 'UnitName|'#37096#20301#20013#25991#35498#26126
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CLZW'
            Footers = <>
            Title.Caption = 'MaterialName|'#26448#26009#20013#25991
            Width = 312
          end
          item
            EditButtons = <>
            FieldName = 'userdate'
            Footers = <>
            Title.Caption = #30064#21205#26085#26399'|UserDate'
            Width = 72
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'ARTICLE_CHECK'
      ImageIndex = 5
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1283
        Height = 65
        Align = alTop
        TabOrder = 0
        object BitBtn2: TBitBtn
          Left = 13
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Insert one New Record'
          Caption = 'Insert'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn2Click
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
        object BitBtn3: TBitBtn
          Left = 61
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Delete one Record'
          Caption = 'Delete'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
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
        object BitBtn4: TBitBtn
          Left = 109
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Modify'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn4Click
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
        object BitBtn5: TBitBtn
          Left = 157
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Save Current'
          Caption = 'Save'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn5Click
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
        object BitBtn6: TBitBtn
          Left = 205
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Cancel'
          Caption = 'Cancel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn6Click
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
        object BitBtn7: TBitBtn
          Left = 253
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Exit Current Form'
          Caption = 'Exit'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
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
        object BitBtn13: TBitBtn
          Left = 333
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Print'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
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
        object BitBtn14: TBitBtn
          Left = 381
          Top = 8
          Width = 49
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Excel'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
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
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 65
        Width = 1283
        Height = 628
        Align = alClient
        DataSource = DataSource1
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGrid1DblClick
        OnGetCellParams = DBGrid1GetCellParams
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Caption = 'DEV NAME|FD'
            Width = 176
          end
          item
            EditButtons = <>
            FieldName = 'BOM_Check'
            Footers = <>
            Title.Caption = 'BOM|CHECK'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'BOMDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'BOM|DATE'
            Width = 152
          end
          item
            EditButtons = <>
            FieldName = 'DEVELOP_Check'
            Footers = <>
            Title.Caption = 'DEVELOP|CHECK'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'DEVELOPDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'DEVELOP|DATE'
            Width = 172
          end
          item
            EditButtons = <>
            FieldName = 'TECH_Check'
            Footers = <>
            Title.Caption = 'TECH|CHECK'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'TECHDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'TECH|DATE'
            Width = 181
          end>
      end
    end
  end
  object XXZL: TQuery
    AfterOpen = XXZLAfterOpen
    AfterScroll = XXZLAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XTMH,XXZL.DDMH' +
        ',XXZL.MDMH,XXZL.LOGO,KFXXZL.DevType,CLLBZL.YWSM as CYWSM,CLLBZL.' +
        'ZWSM as CZWSM,LBZLS.YWSM as LYWSM,LBZLS.ZWSM as LZWSM,'
      
        'XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.S' +
        'hehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.DAOMH,KFXXZL.DEVCODE,' +
        'XXZL.Gender,KFXXZL.FD '
      
        'BOM_Check,BOMDATE,DEVELOP_Check,DEVELOPDATE,TECH_Check,TECHDATE ' +
        'from XXZL '
      
        'left join xxzl_Check on xxzl_Check.SheHao=XXZL.SheHao and  xxzl_' +
        'Check.XieXing=XXZL.XieXing and xxzl_Check.Article=xxzl.Article'
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      'Left join LBZLS on LBZLS.LBDH=XXZL.XieGN and LBZLS.LB='#39'03'#39
      'Left join CLLBZL on CLLBZL.CLLB=XXZL.CLID'
      
        'left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXin' +
        'g=XXZL.XieXing '
      
        'left join (select xiexing,shehao from xtbwyl1  group by xiexing,' +
        'shehao) as xt'
      '  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao '
      'where XXZL.XieXing like '#39'%'#39
      ' and XXZL.SheHao like '#39'%'#39
      ' and XXZL.ARTICLE like '#39'%'#39
      ' and KFZL.KFJC like '#39'%'#39
      ' and XXZL.XieMing like '#39'%'#39
      
        'and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=X' +
        'XZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '#39'202' +
        '008%'#39' group by XieXing,Shehao) '
      ' and XXZL.YN='#39'1'#39
      ' order by KFJC,XXZL.XieXing,XXZL.Shehao')
    Left = 52
    Top = 265
    object XXZLXieXing: TStringField
      DisplayWidth = 10
      FieldName = 'XieXing'
      Origin = 'DB.XXZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      DisplayWidth = 6
      FieldName = 'SheHao'
      Origin = 'DB.XXZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLARTICLE: TStringField
      DisplayWidth = 10
      FieldName = 'ARTICLE'
      Origin = 'DB.XXZL.ARTICLE'
      FixedChar = True
    end
    object XXZLXieMing: TStringField
      DisplayWidth = 34
      FieldName = 'XieMing'
      Origin = 'DB.XXZL.XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLYSSM: TStringField
      DisplayWidth = 27
      FieldName = 'YSSM'
      Origin = 'DB.XXZL.YSSM'
      FixedChar = True
      Size = 40
    end
    object XXZLBZCC: TStringField
      DisplayWidth = 7
      FieldName = 'BZCC'
      Origin = 'DB.XXZL.BZCC'
      FixedChar = True
      Size = 6
    end
    object XXZLKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object XXZLXx: TStringField
      FieldName = 'Xx'
      FixedChar = True
      Size = 15
    end
    object XXZLSs: TStringField
      FieldName = 'Ss'
      FixedChar = True
      Size = 5
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
    object XXZLDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object XXZLXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object XXZLDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object XXZLMDMH: TStringField
      FieldName = 'MDMH'
      FixedChar = True
      Size = 30
    end
    object XXZLLOGO: TStringField
      FieldName = 'LOGO'
      FixedChar = True
      Size = 60
    end
    object XXZLDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 15
    end
    object XXZLCYWSM: TStringField
      FieldName = 'CYWSM'
      FixedChar = True
    end
    object XXZLCZWSM: TStringField
      FieldName = 'CZWSM'
      FixedChar = True
    end
    object XXZLLYWSM: TStringField
      FieldName = 'LYWSM'
      FixedChar = True
      Size = 50
    end
    object XXZLLZWSM: TStringField
      FieldName = 'LZWSM'
      FixedChar = True
      Size = 50
    end
    object XXZLGender: TStringField
      FieldName = 'Gender'
      FixedChar = True
      Size = 10
    end
    object XXZLFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object XXZLBOMDATE: TDateTimeField
      FieldName = 'BOMDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object XXZLDEVELOPDATE: TDateTimeField
      FieldName = 'DEVELOPDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object XXZLTECHDATE: TDateTimeField
      FieldName = 'TECHDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object XXZLBOM_Check: TBooleanField
      FieldName = 'BOM_Check'
    end
    object XXZLDEVELOP_Check: TBooleanField
      FieldName = 'DEVELOP_Check'
    end
    object XXZLTECH_Check: TBooleanField
      FieldName = 'TECH_Check'
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 52
    Top = 295
  end
  object XXZLS: TQuery
    AfterOpen = XXZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,'#39'Assembly'#39 +
        ' as DType,'
      '       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,'
      
        '       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS' +
        '.LOSS,XXZLS.CLSL,'
      '       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate'
      
        '       ,(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log' +
        '_DateTime end) as '#39'CLBH_Log'#39
      
        '       ,(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log' +
        '_DateTime end) as '#39'CLSL_Log'#39',XXZLS.XieXing,XXZLS.SheHao,CLZL.ywp' +
        'm,BWZL.ywsm'
      'FROM XXZLS'
      
        'LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL' +
        ') as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log'
      
        '            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheH' +
        'ao=:SheHao and Log_DateTime>=GetDate()-1'
      '           Group by XieXing,SheHao,BWBH'
      
        '          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XX' +
        'ZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao'
      'ORDER BY XXZLS.XH'
      ''
      '')
    Left = 92
    Top = 264
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
      end>
    object XXZLSXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object XXZLSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSBWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 40
    end
    object XXZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSDType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
    end
    object XXZLSCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object XXZLSCLZW: TStringField
      FieldName = 'CLZW'
      FixedChar = True
      Size = 200
    end
    object XXZLSBWZW: TStringField
      FieldName = 'BWZW'
      FixedChar = True
      Size = 40
    end
    object XXZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSLYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object XXZLSBZ: TStringField
      FieldName = 'BZ'
      FixedChar = True
    end
    object XXZLSBWLB: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSLOSS: TFloatField
      FieldName = 'LOSS'
      DisplayFormat = '##,#0'
    end
    object XXZLSCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object XXZLSCCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object XXZLSCCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object XXZLSCLZMLB: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object XXZLSuserdate: TDateTimeField
      FieldName = 'userdate'
    end
    object XXZLSCLBH_Log: TStringField
      FieldName = 'CLBH_Log'
      FixedChar = True
    end
    object XXZLSCLSL_Log: TStringField
      FieldName = 'CLSL_Log'
      FixedChar = True
    end
  end
  object DS2: TDataSource
    DataSet = XXZLS
    Left = 92
    Top = 296
  end
  object xtbwyl1: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 132
    Top = 296
  end
  object DS3: TDataSource
    DataSet = xtbwyl1
    Left = 180
    Top = 296
  end
  object xtbwyl: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 180
    Top = 264
  end
  object DS4: TDataSource
    DataSet = xtbwyl
    Left = 220
    Top = 264
  end
  object XXCC: TQuery
    AfterOpen = XXCCAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 132
    Top = 264
  end
  object shoePicpopo: TPopupMenu
    Left = 776
    Top = 24
    object Saveas1: TMenuItem
      Caption = 'Save as'
      OnClick = Saveas1Click
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'jpg'
    Filter = '*.JPG|*.JPG'
    Left = 752
    Top = 24
  end
  object part: TQuery
    DatabaseName = 'dB'
    DataSource = DS5
    SQL.Strings = (
      
        'select case when ywsm = '#39'INSOLE'#39' then '#39'V90/P+INSOLE'#39' when ywsm =' +
        ' '#39'QUARTER LOGO'#39' then '#39'V90+ LOGO'#39' else ywsm end as ywsm'
      'from(select bwzl.ywsm from XXZLS'
      'left join bwzl on bwzl.bwdh = XXZLS.bwbh'
      
        'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao and XXZLS.' +
        'clbh=:clbh'
      'and bwzl.bwdh not in ('#39'E245'#39','#39'E041'#39','#39'B007'#39','#39'B041'#39','#39'B073'#39','#39'E053'#39')'
      'union'
      ''
      'select bwzl.ywsm from XXZLS'
      'left join bwzl on bwzl.bwdh = XXZLS.bwbh'
      'inner join clzhzl on clzhzl.cldh=XXZLS.clbh'
      
        'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao and clzhzl' +
        '.cldh1=:clbh'
      'and bwzl.bwdh not in ('#39'E245'#39','#39'E041'#39','#39'B007'#39','#39'B041'#39','#39'B073'#39','#39'E053'#39')'
      'union'
      'select clzhzl2.ywsm from ('
      'select XXZLS.clbh,bwzl.ywsm,clzhzl.cldh1 from XXZLS'
      'left join bwzl on bwzl.bwdh = XXZLS.bwbh '
      'inner join clzhzl on clzhzl.cldh=XXZLS.clbh'
      
        'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  and bwzl.' +
        'bwdh not in ('#39'E245'#39','#39'E041'#39','#39'B007'#39','#39'B041'#39','#39'B073'#39','#39'E053'#39')  )clzhzl' +
        '2'
      'inner join clzhzl on clzhzl.cldh=clzhzl2.cldh1'
      'where clzhzl.cldh1=:clbh ) XXZLS'
      'group by ywsm')
    Left = 92
    Top = 351
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
      end
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'clbh'
        ParamType = ptUnknown
      end>
  end
  object XXZLS_1: TQuery
    AfterOpen = XXZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,'#39'Assembly'#39 +
        ' as DType,'
      '       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,'
      
        '       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS' +
        '.LOSS,XXZLS.CLSL,'
      '       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate'
      
        '       ,(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log' +
        '_DateTime end) as '#39'CLBH_Log'#39
      
        '       ,(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log' +
        '_DateTime end) as '#39'CLSL_Log'#39',XXZLS.XieXing,XXZLS.SheHao,CLZL.ywp' +
        'm,BWZL.ywsm'
      'FROM XXZLS'
      
        'LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL' +
        ') as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log'
      
        '            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheH' +
        'ao=:SheHao and Log_DateTime>=GetDate()-1'
      '           Group by XieXing,SheHao,BWBH'
      
        '          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XX' +
        'ZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao'
      'ORDER BY XXZLS.XH'
      ''
      '')
    Left = 92
    Top = 400
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
      end>
    object StringField1: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object StringField2: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object StringField3: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 40
    end
    object StringField4: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
    end
    object StringField6: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'CLZW'
      FixedChar = True
      Size = 200
    end
    object StringField8: TStringField
      FieldName = 'BWZW'
      FixedChar = True
      Size = 40
    end
    object StringField9: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField10: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField11: TStringField
      FieldName = 'BZ'
      FixedChar = True
    end
    object StringField12: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object StringField13: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField1: TFloatField
      FieldName = 'LOSS'
      DisplayFormat = '##,#0'
    end
    object FloatField2: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField14: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object StringField15: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object StringField16: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'userdate'
    end
    object StringField17: TStringField
      FieldName = 'CLBH_Log'
      FixedChar = True
    end
    object StringField18: TStringField
      FieldName = 'CLSL_Log'
      FixedChar = True
    end
    object StringField19: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object StringField20: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object StringField21: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object StringField22: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 40
    end
  end
  object DS5: TDataSource
    DataSet = XXZLS_1
    Left = 164
    Top = 384
  end
  object Bom_Season: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,'#39'Assembly'#39 +
        ' as DType,'
      '       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,'
      
        '       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS' +
        '.LOSS,XXZLS.CLSL,'
      '       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate'
      'FROM XXZLS'
      
        'LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL' +
        ') as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log'
      
        '            where XXZLS_Log.XieXing+XXZLS_Log.SheHao in (select ' +
        'XieXing+SheHao from kfxxzl where JiJie = '#39'25S'#39') and Log_DateTime' +
        '>=GetDate()-1 '
      '           Group by XieXing,SheHao,BWBH'
      
        '          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XX' +
        'ZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'group by XXZLS.XH, XXZLS.BWBH,BWZL.ywsm ,XXZLS.CLBH,'
      '       CLZL.YWPM , CLZL.ZWPM ,BWZL.zwsm ,'
      
        '       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS' +
        '.LOSS,XXZLS.CLSL,'
      '       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate'
      'ORDER BY XXZLS.XH'
      '')
    Left = 388
    Top = 272
    object StringField23: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object StringField24: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object StringField25: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 40
    end
    object StringField26: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField27: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
    end
    object StringField28: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object StringField29: TStringField
      FieldName = 'CLZW'
      FixedChar = True
      Size = 200
    end
    object StringField30: TStringField
      FieldName = 'BWZW'
      FixedChar = True
      Size = 40
    end
    object StringField31: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField32: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object StringField33: TStringField
      FieldName = 'BZ'
      FixedChar = True
    end
    object StringField34: TStringField
      FieldName = 'BWLB'
      FixedChar = True
      Size = 1
    end
    object StringField35: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object FloatField3: TFloatField
      FieldName = 'LOSS'
      DisplayFormat = '##,#0'
    end
    object FloatField4: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object StringField36: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object StringField37: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object StringField38: TStringField
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'userdate'
    end
  end
  object DS6: TDataSource
    DataSet = Bom_Season
    Left = 388
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = XXZL_CHECK
    Left = 452
    Top = 332
  end
  object XXZL_CHECK: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select * from xxzl_Check'
      
        'where xxzl_Check.XieXing=:XieXing and xxzl_Check.SheHao=:SheHao ' +
        'and  xxzl_Check.Article=:Article')
    UpdateObject = UpdateSQL1
    Left = 452
    Top = 292
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
      end
      item
        DataType = ftUnknown
        Name = 'Article'
        ParamType = ptUnknown
      end>
    object XXZL_CHECKXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZL_CHECKSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZL_CHECKARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object XXZL_CHECKBOM_Check: TBooleanField
      FieldName = 'BOM_Check'
    end
    object XXZL_CHECKBOMDATE: TDateTimeField
      FieldName = 'BOMDATE'
    end
    object XXZL_CHECKBOM_USERID: TStringField
      FieldName = 'BOM_USERID'
      FixedChar = True
    end
    object XXZL_CHECKDEVELOP_Check: TBooleanField
      FieldName = 'DEVELOP_Check'
    end
    object XXZL_CHECKDEVELOPDATE: TDateTimeField
      FieldName = 'DEVELOPDATE'
    end
    object XXZL_CHECKDEVELOP_USERID: TStringField
      FieldName = 'DEVELOP_USERID'
      FixedChar = True
    end
    object XXZL_CHECKTECH_Check: TBooleanField
      FieldName = 'TECH_Check'
    end
    object XXZL_CHECKTECHDATE: TDateTimeField
      FieldName = 'TECHDATE'
    end
    object XXZL_CHECKTECH_USERID: TStringField
      FieldName = 'TECH_USERID'
      FixedChar = True
    end
    object XXZL_CHECKFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object XXZL_CHECKYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'Update xxzl_Check'
      'Set'
      '   XieXing = :XieXing,'
      '   SheHao =:SheHao,'
      '   ARTICLE =:ARTICLE,'
      '   BOM_Check =:BOM_Check,'
      '   BOMDATE =:BOMDATE,'
      '   BOM_USERID =:BOM_USERID,'
      '   DEVELOP_Check =:DEVELOP_Check,'
      '   DEVELOPDATE =:DEVELOPDATE,'
      '   DEVELOP_USERID =:DEVELOP_USERID,'
      '   TECH_Check =:TECH_Check,'
      '   TECHDATE =:TECHDATE,'
      '   TECH_USERID =:TECH_USERID,'
      '   FD =:FD,'
      '   YN =:YN'
      'where'
      '  XieXing=:OLD_XieXing and'
      '  SheHao=:OLD_SheHao and'
      '  ARTICLE=:OLD_ARTICLE')
    InsertSQL.Strings = (
      'Insert into xxzl_Check'
      
        '   (XieXing, SheHao, ARTICLE, BOM_Check, BOMDATE, BOM_USERID, DE' +
        'VELOP_Check, DEVELOPDATE, DEVELOP_USERID, TECH_Check, TECHDATE, ' +
        'TECH_USERID, FD, YN)'
      'Values'
      
        '   (:XieXing, :SheHao, :ARTICLE ,:BOM_Check, :BOMDATE, :BOM_USER' +
        'ID, :DEVELOP_Check, :DEVELOPDATE, :DEVELOP_USERID, :TECH_Check, ' +
        ':TECHDATE, :TECH_USERID, :FD , :YN)')
    Left = 452
    Top = 372
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 524
    Top = 292
  end
end

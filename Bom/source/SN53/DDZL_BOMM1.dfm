object DDZL_BOMM: TDDZL_BOMM
  Left = 519
  Top = 320
  Width = 1058
  Height = 555
  Caption = 'DDZL_BOMM'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1050
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 58
      Top = 8
      Width = 48
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
      Left = 106
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
      Left = 155
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
      Left = 204
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
      Left = 253
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
      Left = 302
      Top = 8
      Width = 50
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
      Left = 418
      Top = 8
      Width = 48
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
      Left = 467
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
      Left = 516
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
      Caption = 'Spec'
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
      Left = 634
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
    object bbt7: TBitBtn
      Left = 683
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'XLS'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = bbt7Click
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
    Width = 1050
    Height = 459
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
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1042
        Height = 73
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 7
          Top = 42
          Width = 86
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label2: TLabel
          Left = 195
          Top = 43
          Width = 67
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
        end
        object Label4: TLabel
          Left = 325
          Top = 41
          Width = 103
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
        end
        object Label5: TLabel
          Left = 306
          Top = 7
          Width = 104
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
        end
        object Label3: TLabel
          Left = 7
          Top = 12
          Width = 87
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'OrderNo:'
        end
        object Edit1: TEdit
          Left = 98
          Top = 39
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 263
          Top = 40
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 411
          Top = 4
          Width = 177
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object Edit5: TEdit
          Left = 430
          Top = 38
          Width = 176
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object Button1: TButton
          Left = 614
          Top = 32
          Width = 73
          Height = 33
          Caption = 'QUERY'
          TabOrder = 4
          OnClick = Button1Click
        end
        object DDBHEdit: TEdit
          Left = 98
          Top = 6
          Width = 203
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 5
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 73
        Width = 1042
        Height = 355
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnGetCellParams = DBGrid1GetCellParams
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = 'Order No'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <
              item
                FieldName = 'XieXing'
                ValueType = fvtCount
              end>
            Title.Caption = 'ArtNo'
            Title.Font.Charset = ANSI_CHARSET
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
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = 'Color'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = 'ArtName'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = 'Color Name'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 135
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'BZCC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'KFJC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = 'Customer'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = 'Season'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'SysDate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -11
            Footer.Font.Name = 'MS Sans Serif'
            Footer.Font.Style = []
            Footers = <>
            Title.Caption = 'Production Date'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'BOM'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 839
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText1: TDBText
          Left = 66
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 216
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 331
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 532
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 8
          Top = 16
          Width = 58
          Height = 17
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label7: TLabel
          Left = 180
          Top = 16
          Width = 35
          Height = 16
          Caption = 'Color:'
        end
        object Label8: TLabel
          Left = 280
          Top = 16
          Width = 40
          Height = 16
          Caption = 'Article:'
        end
        object Label9: TLabel
          Left = 472
          Top = 16
          Width = 56
          Height = 16
          Caption = 'ArtName:'
        end
      end
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 49
        Width = 839
        Height = 270
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 4
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 23
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 376
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
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'CC'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 27
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CCQQ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'CCQZ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'BWLB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'BWZW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'CLZW'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 312
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'ACTION'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1042
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText5: TDBText
          Left = 79
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 229
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 344
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 545
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 8
          Top = 16
          Width = 58
          Height = 17
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label11: TLabel
          Left = 193
          Top = 16
          Width = 35
          Height = 16
          Caption = 'Color:'
        end
        object Label12: TLabel
          Left = 293
          Top = 16
          Width = 40
          Height = 16
          Caption = 'Article:'
        end
        object Label13: TLabel
          Left = 485
          Top = 16
          Width = 56
          Height = 16
          Caption = 'ArtName:'
        end
        object Excel: TButton
          Left = 731
          Top = 8
          Width = 65
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = ExcelClick
        end
        object Print: TButton
          Left = 658
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
        Width = 1042
        Height = 379
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TS4: TTabSheet
      Caption = 'COMPUTER'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1042
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText9: TDBText
          Left = 92
          Top = 16
          Width = 60
          Height = 16
          AutoSize = True
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
          Left = 242
          Top = 16
          Width = 68
          Height = 16
          AutoSize = True
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
          Left = 357
          Top = 16
          Width = 68
          Height = 16
          AutoSize = True
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
          Left = 558
          Top = 16
          Width = 68
          Height = 16
          AutoSize = True
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
          Left = 8
          Top = 16
          Width = 77
          Height = 17
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label15: TLabel
          Left = 206
          Top = 16
          Width = 35
          Height = 16
          Caption = 'Color:'
        end
        object Label16: TLabel
          Left = 306
          Top = 16
          Width = 40
          Height = 16
          Caption = 'Article:'
        end
        object Label17: TLabel
          Left = 498
          Top = 16
          Width = 56
          Height = 16
          Caption = 'ArtName:'
        end
        object Print2: TButton
          Left = 671
          Top = 8
          Width = 65
          Height = 33
          Caption = 'Print'
          Enabled = False
          TabOrder = 0
        end
        object Excel2: TButton
          Left = 744
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
        Width = 1042
        Height = 379
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object XXZL: TQuery
    AfterOpen = XXZLAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XXZL.DDBH as ZLBH,XXZL.XieXing,XXZL.SheHao,XXZL.Article,'
      
        'XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.S' +
        'hehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.SysDate,'#39'SHOE'#39' as Fla' +
        'g '
      'from DDZL_XXZL XXZL  '
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      
        'left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXin' +
        'g=XXZL.XieXing '
      
        'left join (select xiexing,shehao from DDZL_xtbwyl1 group by xiex' +
        'ing,shehao) as xt'
      ' on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao '
      'where XXZL.DDBH like '#39'AURR2009-001%'#39' '
      ' and XXZL.XieXing like '#39'%'#39
      ' and XXZL.SheHao like '#39'%'#39
      ' and XXZL.ARTICLE like '#39'%'#39
      ' and XXZL.XieMing like '#39'%'#39
      ' order by KFJC,XXZL.XieXing,XXZL.Shehao')
    Left = 36
    Top = 196
    object XXZLZLBH: TStringField
      FieldName = 'ZLBH'
    end
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
    object XXZLSysDate: TDateTimeField
      FieldName = 'SysDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object XXZLFlag: TStringField
      FieldName = 'Flag'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 36
    Top = 228
  end
  object XXZLS: TQuery
    AfterOpen = XXZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,'
      
        '         CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW' +
        ','
      
        '         CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZ' +
        'LS.LOSS,XXZLS.CLSL,'
      '        XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB'
      ' FROM DDZL_XXZLS XXZLS'
      
        'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh                       ' +
        '        '
      
        'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh                      ' +
        '        '
      
        'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39'                             '
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      
        'where XXZLS.DDBH=:ZLBH and XXZLS.XieXing=:XieXing and XXZLS.SheH' +
        'ao=:SheHao'
      ' ORDER BY XXZLS.XH')
    Left = 76
    Top = 195
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end
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
      end>
    object XXZLSXH: TStringField
      DisplayWidth = 4
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object XXZLSBWBH: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSBWMC: TStringField
      DisplayWidth = 21
      FieldName = 'BWMC'
      FixedChar = True
      Size = 30
    end
    object XXZLSCLBH: TStringField
      DisplayWidth = 13
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSCLMC: TStringField
      DisplayWidth = 51
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object XXZLSDWBH: TStringField
      DisplayWidth = 6
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSLYCC: TStringField
      DisplayWidth = 5
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object XXZLSBZ: TStringField
      DisplayWidth = 5
      FieldName = 'BZ'
      FixedChar = True
    end
    object XXZLSBWLB: TStringField
      FieldName = 'BWLB'
    end
    object XXZLSZSYWJC: TStringField
      DisplayWidth = 11
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSLOSS: TFloatField
      DisplayWidth = 5
      FieldName = 'LOSS'
      DisplayFormat = '##,#0'
    end
    object XXZLSCLSL: TFloatField
      DisplayWidth = 6
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
    object XXZLSCLZW: TStringField
      FieldName = 'CLZW'
      FixedChar = True
      Size = 200
    end
    object XXZLSBWZW: TStringField
      FieldName = 'BWZW'
      FixedChar = True
      Size = 30
    end
  end
  object DS2: TDataSource
    DataSet = XXZLS
    Left = 76
    Top = 227
  end
  object xtbwyl1: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 116
    Top = 227
  end
  object DS3: TDataSource
    DataSet = xtbwyl1
    Left = 164
    Top = 227
  end
  object xtbwyl: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 164
    Top = 195
  end
  object DS4: TDataSource
    DataSet = xtbwyl
    Left = 204
    Top = 200
  end
  object XXCC: TQuery
    AfterOpen = XXCCAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 116
    Top = 195
  end
  object shoePicpopo: TPopupMenu
    Left = 776
    Top = 24
    object Saveas1: TMenuItem
      Caption = 'Save as'
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'jpg'
    Filter = '*.JPG|*.JPG'
    Left = 752
    Top = 24
  end
  object Gjtable: TQuery
    DatabaseName = 'DB'
    Left = 289
    Top = 264
  end
  object Titlememo: TQuery
    AfterOpen = TitlememoAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select ZLZL.*,DDZL.*,XXZL.*,KFZL.KFJC,LBZLS.YWSM,'
      'DDZL.CCGB as DDCC ,XXZL.CCGB as BOMCC'
      'from ZLZL '
      'left join DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH'
      'left join LBZLS on LBZLS.LB='#39'06'#39' and LBZLS.LBDH=DDZL.DDGB'
      'where ZLZL.ZLBH=:ZLBH')
    Left = 324
    Top = 264
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object TitlememoZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object TitlememoDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object TitlememoXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object TitlememoSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object TitlememoARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object TitlememoKHBH: TStringField
      FieldName = 'KHBH'
      FixedChar = True
      Size = 4
    end
    object TitlememoKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 19
    end
    object TitlememoVersion: TSmallintField
      FieldName = 'Version'
    end
    object TitlememoTrader: TStringField
      FieldName = 'Trader'
      FixedChar = True
      Size = 4
    end
    object TitlememoTraderPO: TStringField
      FieldName = 'TraderPO'
      FixedChar = True
      Size = 19
    end
    object TitlememoDDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object TitlememoDDCC: TStringField
      FieldName = 'DDCC'
      FixedChar = True
      Size = 1
    end
    object TitlememoBOMCC: TStringField
      FieldName = 'BOMCC'
      FixedChar = True
      Size = 1
    end
    object TitlememoDest: TStringField
      FieldName = 'Dest'
      FixedChar = True
      Size = 4
    end
    object TitlememoDDRQ: TDateTimeField
      FieldName = 'DDRQ'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object TitlememoShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object TitlememoPairs: TIntegerField
      FieldName = 'Pairs'
      DisplayFormat = '##,#0'
    end
    object TitlememoXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object TitlememoYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object TitlememoBZCC: TStringField
      FieldName = 'BZCC'
      FixedChar = True
      Size = 6
    end
    object TitlememoKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object TitlememoXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 15
    end
    object TitlememoDMGJ: TStringField
      FieldName = 'DMGJ'
      FixedChar = True
      Size = 3
    end
    object TitlememoDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 15
    end
    object TitlememoMSGJ: TStringField
      FieldName = 'MSGJ'
      FixedChar = True
      Size = 3
    end
    object TitlememoMDMH: TStringField
      FieldName = 'MDMH'
      FixedChar = True
      Size = 15
    end
    object TitlememoDAOGJ: TStringField
      FieldName = 'DAOGJ'
      FixedChar = True
      Size = 3
    end
    object TitlememoDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object TitlememoIMGName: TStringField
      FieldName = 'IMGName'
      FixedChar = True
      Size = 60
    end
    object TitlememoKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object TitlememoYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 50
    end
  end
  object QMatList: TQuery
    DatabaseName = 'DB'
    Left = 363
    Top = 264
  end
  object TempSQL: TQuery
    DatabaseName = 'DB'
    Left = 400
    Top = 264
  end
end

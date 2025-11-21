object Bomshipping1: TBomshipping1
  Left = 220
  Top = 232
  Width = 1075
  Height = 540
  Caption = 'Bom Shipping'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1059
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
  end
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 1059
    Height = 436
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'ARTICLE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1051
        Height = 73
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 4
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label2: TLabel
          Left = 180
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
        end
        object Label3: TLabel
          Left = 4
          Top = 44
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Customer:'
        end
        object Label4: TLabel
          Left = 389
          Top = 44
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
        end
        object Label5: TLabel
          Left = 317
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
        end
        object Label18: TLabel
          Left = 531
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season:'
        end
        object Label21: TLabel
          Left = 180
          Top = 44
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DAOMH:'
        end
        object Label22: TLabel
          Left = 672
          Top = 13
          Width = 70
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
        end
        object Edit1: TEdit
          Left = 88
          Top = 9
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 256
          Top = 9
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 88
          Top = 40
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 394
          Top = 9
          Width = 134
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 464
          Top = 38
          Width = 195
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button1: TButton
          Left = 862
          Top = 6
          Width = 74
          Height = 33
          Caption = 'QUERY'
          TabOrder = 5
          OnClick = Button1Click
        end
        object SeasonEdit: TEdit
          Left = 611
          Top = 9
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 6
        end
        object Edit6: TEdit
          Left = 255
          Top = 41
          Width = 130
          Height = 24
          TabOrder = 7
        end
        object GroupBox1: TGroupBox
          Left = 668
          Top = 40
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
            Font.Height = -13
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
            Font.Height = -13
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
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '1'
          end
        end
        object BuyNoEdit: TEdit
          Left = 752
          Top = 9
          Width = 89
          Height = 24
          TabOrder = 9
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 73
        Width = 1051
        Height = 332
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGrid1DblClick
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
            Title.Caption = 'ArtNo|'#38795#22411
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
            Title.Caption = 'Color|'#33394#34399
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Article|'#22411#39636
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
            Title.Caption = 'ArtName|'#38795#21517
            Title.Font.Charset = DEFAULT_CHARSET
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
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Color Name|'#38991#33394
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 157
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
            Title.Caption = 'StandardSize|'#27161#28310#23610#23544
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 105
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
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = 'DAOMH|'#26028#20992
            Width = 120
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'BOM'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1051
        Height = 405
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
        FooterRowCount = 1
        FrozenCols = 4
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'XH|'#24207#34399
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Part|'#37096#20301#32232#34399
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
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Material|'#26448#26009#32232#34399
            Width = 125
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Title.Caption = 'Material|'#26448#26009#21517#31281
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Unit|'#21934#20301
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'CC|'#21015#21360#23610#23544
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Usage|'#29992#37327
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 48
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'tyjh'
            Footers = <>
            PickList.Strings = (
              'Y'
              'N')
            Title.Caption = 'Stop|'#38577#34255
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'CCQQ'
            Footers = <>
            Title.Caption = 'SizeRange|'#23610#23544#36215
            Width = 49
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Supplier|'#24288#21830#21517#31281
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Title.Caption = 'Material Class|'#26448#26009#23376#27597#39006#21029
            Width = 89
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
            Width = 192
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
  end
  object DS2: TDataSource
    DataSet = XXZLS
    Left = 436
    Top = 315
  end
  object XXZLS: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select XXZLS.XieXing,XXZLS.SheHao,XXZLS.XH,XXZLS.BWBH,BWZL.ywsm ' +
        'BWMC,XXZLS.CLBH,SHIP_XXZLS.tyjh,'#39'Assembly'#39' as DType,'
      '       CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,'
      
        '       CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS' +
        '.LOSS,XXZLS.CLSL,'
      
        '       XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB,XXZLS.userdate,XXZLS.US' +
        'ERID,XXZLS.YN'
      
        '       ,(case when XXZLS.CLBH<>XXZLS_Log.CLBH then XXZLS_Log.Log' +
        '_DateTime end) as '#39'CLBH_Log'#39
      
        '       ,(case when XXZLS.CLSL<>XXZLS_Log.CLSL then XXZLS_Log.Log' +
        '_DateTime end) as '#39'CLSL_Log'#39
      'FROM XXZLS'
      
        'LEFT join (select XieXing,SheHao,BWBH,Max(CLBH) as CLBH,Max(CLSL' +
        ') as CLSL,Max(Log_DateTime) as Log_DateTime from XXZLS_Log'
      
        '            where XXZLS_Log.XieXing=:XieXing  and XXZLS_Log.SheH' +
        'ao=:SheHao and Log_DateTime>=GetDate()-1 '
      '           Group by XieXing,SheHao,BWBH'
      
        '          )  XXZLS_Log on XXZLS_Log.XieXing=XXZLS.XieXing and XX' +
        'ZLS_Log.SheHao=XXZLS.SheHao and XXZLS_Log.BWBH=XXZLS.BWBH'
      'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      
        'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      
        'LEFT JOIN SHIP_XXZLS ON SHIP_XXZLS.XieXing = XXZLS.XieXing AND S' +
        'HIP_XXZLS.SheHao = XXZLS.SheHao'
      
        'LEFT JOIN XXZL on XXZL.XieMing = XXZLS.XieXing and XXZL.SheHao =' +
        ' XXZLS.SheHao'
      'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao'
      'ORDER BY XXZLS.XH'
      '')
    UpdateObject = UpdateSQL1
    Left = 524
    Top = 284
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
    object XXZLSCLZW: TStringField
      FieldName = 'CLZW'
      FixedChar = True
      Size = 200
    end
    object XXZLSCLMC: TStringField
      FieldName = 'CLMC'
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
    object XXZLStyjh: TStringField
      FieldName = 'tyjh'
      FixedChar = True
      Size = 1
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
    object XXZLSXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object XXZLSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object XXZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,'
      
        'XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.S' +
        'hehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.DAOMH from XXZL '
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      
        'left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXin' +
        'g=XXZL.XieXing'
      
        'left join (select xiexing,shehao from xtbwyl1 group by xiexing,s' +
        'hehao) as xt'
      '  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao '
      'where XXZL.XieXing like '#39'3J235(USA)%'#39
      ' and XXZL.SheHao like '#39'%'#39
      ' and XXZL.ARTICLE like '#39'%'#39
      ' and KFZL.KFJC like '#39'%%'#39
      ' and XXZL.XieMing like '#39'%'#39
      ' and XXZL.YN='#39'1'#39
      ' order by KFJC,XXZL.XieXing,XXZL.Shehao')
    Left = 436
    Top = 284
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
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 556
    Top = 284
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update SHIP_XXZLS'
      'set'
      '  tyjh= :tyjh,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  BWBH = :OLD_BWBH '
      ''
      ''
      '')
    InsertSQL.Strings = (
      'insert into SHIP_XXZLS'
      '  (XieXing,SheHao, BWBH, tyjh, USERDATE, USERID, YN)'
      'values'
      '  (:XieXing,:SheHao,:BWBH, :tyjh, :USERDATE, :USERID, :YN)'
      ''
      ''
      ''
      '')
    DeleteSQL.Strings = (
      'delete SHIP_XXZLS'
      'where'
      ' XieXing = :OLD_XieXing and'
      ' SheHao = :OLD_SheHao and'
      ' BWBH = :OLD_BWBH ')
    Left = 588
    Top = 284
  end
  object SHIP_XXZLS: TQuery
    DatabaseName = 'DB'
    Left = 523
    Top = 319
  end
end

object BOMVN: TBOMVN
  Left = 239
  Top = 76
  Width = 1018
  Height = 505
  Caption = 'BOMVN'
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
  object Top2Panel: TPanel
    Left = 0
    Top = 65
    Width = 1002
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
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
  object PC1: TPageControl
    Left = 0
    Top = 194
    Width = 1002
    Height = 272
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = PC1Change
    object TS1: TTabSheet
      Caption = 'ARTICLE'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 994
        Height = 68
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 7
          Top = 8
          Width = 72
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
        end
        object Label2: TLabel
          Left = 169
          Top = 8
          Width = 66
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
        end
        object Label3: TLabel
          Left = 6
          Top = 40
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Customer:'
        end
        object Label4: TLabel
          Left = 350
          Top = 36
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
        end
        object Label5: TLabel
          Left = 312
          Top = 4
          Width = 53
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
        end
        object Label18: TLabel
          Left = 462
          Top = 3
          Width = 59
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Season:'
        end
        object Label21: TLabel
          Left = 173
          Top = 38
          Width = 62
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'DAOMH:'
        end
        object Label11: TLabel
          Left = 579
          Top = 4
          Width = 65
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'BuyNo:'
        end
        object Edit1: TEdit
          Left = 82
          Top = 4
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 240
          Top = 4
          Width = 65
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 82
          Top = 35
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 368
          Top = 0
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 425
          Top = 33
          Width = 155
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button1: TButton
          Left = 712
          Top = 1
          Width = 81
          Height = 32
          Caption = 'QUERY'
          TabOrder = 5
          OnClick = Button1Click
        end
        object SeasonEdit: TEdit
          Left = 524
          Top = 1
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 6
        end
        object GroupBox2: TGroupBox
          Left = 730
          Top = 33
          Width = 303
          Height = 30
          TabOrder = 7
          object CK1: TCheckBox
            Left = 8
            Top = 10
            Width = 89
            Height = 17
            Caption = 'Have order'
            Color = clBtnFace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object CK2: TCheckBox
            Left = 104
            Top = 10
            Width = 193
            Height = 17
            Caption = 'Vat Tu M% khong thay hien'
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
        end
        object Edit6: TEdit
          Left = 241
          Top = 34
          Width = 102
          Height = 24
          TabOrder = 8
        end
        object BuyNoEdit: TEdit
          Left = 646
          Top = 1
          Width = 57
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 9
        end
        object DFLChk: TCheckBox
          Left = 588
          Top = 39
          Width = 139
          Height = 17
          Caption = 'FLBH is not Set'
          TabOrder = 10
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 68
        Width = 994
        Height = 173
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
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGrid1DblClick
        OnGetCellParams = DBGrid1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ArtNo|'#38795#22411
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Color|'#33394#34399
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article|'#22411#39636
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ArtName|'#38795#21517
            Width = 149
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Color Name|'#38991#33394
            Width = 199
          end
          item
            EditButtons = <>
            FieldName = 'BZCC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'StandardSize|'#27161#28310#23610
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'KFJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Customer|'#23458#25142
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'VNBOM'
            Footers = <>
            ReadOnly = True
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'VNFL'
            Footers = <>
            ReadOnly = True
            Title.Caption = '|VNFL|VN'#38795#22411
            Width = 76
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'QBT'
            Footers = <>
            Title.Caption = #21069#21253#38957#36914#36864'|TOP CAP'
            Width = 102
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'BOM'
      ImageIndex = 1
      object Splitter1: TSplitter
        Left = 97
        Top = 49
        Height = 191
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 994
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText1: TDBText
          Left = 84
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
        object DBText4: TDBText
          Left = 381
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
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 307
          Top = 16
          Width = 69
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 576
          Top = 16
          Width = 68
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 650
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
        object FLBHCK: TCheckBox
          Left = 821
          Top = 16
          Width = 161
          Height = 17
          Caption = 'Only FLBH is not set'
          TabOrder = 0
          OnClick = FLBHCKClick
        end
      end
      object DBGrid2: TDBGridEh
        Left = 100
        Top = 49
        Width = 894
        Height = 191
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
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnEditButtonClick = DBGrid2EditButtonClick
        OnGetCellParams = DBGrid2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XH'
            Footers = <>
            Title.Caption = '#'
          end
          item
            EditButtons = <>
            FieldName = 'XXBW'
            Footers = <>
            ReadOnly = True
            Width = 33
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            ReadOnly = True
            Width = 160
          end
          item
            EditButtons = <>
            FieldName = 'ZWSM'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'FLBH'
            Footers = <>
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            ReadOnly = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'XFL'
            Footers = <>
            ReadOnly = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'BWLB'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 393
          end
          item
            EditButtons = <>
            FieldName = 'ZWPM'
            Footers = <>
            Width = 400
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Title.Caption = #21934#20301
          end>
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 97
        Height = 191
        Align = alLeft
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
        ParentFont = False
        PopupMenu = PopupMenu1
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
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 82
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'VNBOM'
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 97
        Top = 49
        Height = 192
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 994
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label14: TLabel
          Left = 2
          Top = 16
          Width = 70
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText9: TDBText
          Left = 80
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
        object Label15: TLabel
          Left = 208
          Top = 16
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Color:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 264
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
        object Label16: TLabel
          Left = 336
          Top = 16
          Width = 68
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Article:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 410
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
        object Label17: TLabel
          Left = 552
          Top = 16
          Width = 89
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ArtName:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 647
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
        object BitBtn2: TBitBtn
          Left = 762
          Top = 8
          Width = 110
          Height = 33
          Caption = 'NEW MATERIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 885
          Top = 8
          Width = 78
          Height = 33
          Caption = 'NEW PART'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn3Click
        end
      end
      object DBGrid3: TDBGridEh
        Left = 100
        Top = 49
        Width = 894
        Height = 192
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
        ParentFont = False
        PopupMenu = PopupMenu3
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        OnDrawColumnCell = DBGrid3DrawColumnCell
        OnEditButtonClick = DBGrid3EditButtonClick
        OnGetCellParams = DBGrid3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Width = 116
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 272
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Width = 46
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'XFL'
            Footers = <>
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            PickList.Strings = (
              'Y'
              'N')
            Width = 51
          end>
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 49
        Width = 97
        Height = 192
        Align = alLeft
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
        ParentFont = False
        PopupMenu = PopupMenu1
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
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 82
          end>
      end
    end
    object TS4: TTabSheet
      Caption = 'SizeRun'
      ImageIndex = 4
      TabVisible = False
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1346
        Height = 464
        Align = alClient
        DataSource = DS5
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
        ParentFont = False
        PopupMenu = PopupMenu2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CC'
            Footers = <>
            ReadOnly = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Width = 96
          end>
      end
    end
    object TS5: TTabSheet
      Hint = 'Have order No part type'
      Caption = 'Search'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 217
        Height = 242
        Align = alLeft
        TabOrder = 0
        object Label7: TLabel
          Left = 16
          Top = 8
          Width = 180
          Height = 49
          AutoSize = False
          Caption = 'Have Order,No part type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Button2: TButton
          Left = 48
          Top = 64
          Width = 105
          Height = 41
          Caption = 'Serach'
          TabOrder = 0
          OnClick = Button2Click
        end
      end
      object DBGrid4: TDBGridEh
        Left = 217
        Top = 0
        Width = 777
        Height = 242
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
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'YWSM'
            Footers = <>
            Width = 228
          end>
      end
    end
  end
  object Top3Panel: TPanel
    Left = 0
    Top = 130
    Width = 1002
    Height = 64
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object BDT6: TBitBtn
      Left = 632
      Top = 7
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
      TabOrder = 0
      OnClick = BDT6Click
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
    object BDT5: TBitBtn
      Left = 584
      Top = 7
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
      TabOrder = 1
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
    object BDT4: TBitBtn
      Left = 512
      Top = 7
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
      TabOrder = 2
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
    object BDT3: TBitBtn
      Left = 464
      Top = 7
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
      TabOrder = 3
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
    object BDT2: TBitBtn
      Left = 416
      Top = 7
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
      TabOrder = 4
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
    object BDT1: TBitBtn
      Left = 368
      Top = 7
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
      TabOrder = 5
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
    object BD7: TBitBtn
      Left = 296
      Top = 7
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
      OnClick = BD7Click
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
    object BD6: TBitBtn
      Left = 248
      Top = 7
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
      TabOrder = 7
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
    object BD5: TBitBtn
      Left = 200
      Top = 7
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
      TabOrder = 8
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
    object BD4: TBitBtn
      Left = 152
      Top = 7
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
      TabOrder = 9
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
    object BD3: TBitBtn
      Left = 104
      Top = 7
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
      TabOrder = 10
      OnClick = BD3Click
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
    object BD2: TBitBtn
      Left = 56
      Top = 7
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
      TabOrder = 11
      OnClick = BD2Click
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
    object DT7: TBitBtn
      Left = 712
      Top = 7
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Copy'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = DT7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
        FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
        007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
        7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
        99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object Top1Panel: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object BA2: TBitBtn
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
    object BA3: TBitBtn
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
    object BA4: TBitBtn
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
      OnClick = BA4Click
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
    object BA5: TBitBtn
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
      OnClick = BA5Click
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
    object BA6: TBitBtn
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
      OnClick = BA6Click
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
    object BA7: TBitBtn
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
    object BA1: TBitBtn
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
    object BAT1: TBitBtn
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
    object BAT2: TBitBtn
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
    object BAT3: TBitBtn
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
    object BAT4: TBitBtn
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
    object GroupBox1: TGroupBox
      Left = 576
      Top = 8
      Width = 217
      Height = 49
      Caption = 'TOE CAP Info'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      object Label8: TLabel
        Left = 8
        Top = 20
        Width = 101
        Height = 16
        Caption = '1 = No +/- Size'
      end
      object Label10: TLabel
        Left = 128
        Top = 20
        Width = 77
        Height = 16
        Caption = '2 = +/- Size'
      end
    end
  end
  object XXZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.CCGB,XXZLSVN.V' +
        'NBOM,XXBWFL.VNFL,'
      
        'XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,XXZLSVNS2.Article,XXZ' +
        'LSVNS2.QBT,XXZLSVNS2.Userdate,XXZLSVNS2.UserID from XXZL '
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      
        'left join (select distinct XieXing,SheHao,XieXing as VNBOM from ' +
        'XXZLSVN ) XXZLSVN'
      
        '           on XXZLSVN.XieXing=XXZL.XieXing and XXZLSVN.SheHao=XX' +
        'ZL.SheHao '
      
        'left join (select distinct XieXing,XieXing as VNFL from XXBWFL )' +
        ' XXBWFL '
      '           on XXBWFL.XieXing=XXZL.XieXIng '
      
        'left join XXZLSVNS2 on XXZLSVNS2.XieXing=XXZL.XieXing and XXZLSV' +
        'NS2.SheHao=XXZL.SheHao '
      'where XXZL.XieXing like '
      #39'%'#39
      'and XXZL.SheHao like '#39'01%'#39
      'and XXZL.ARTICLE like '#39'%'#39
      'and KFZL.KFJC like '#39'%%'#39
      'and XXZL.XieMing like '#39'%'#39
      'and XXZL.YN='#39'1'#39
      'order by KFJC,XXZL.XieXing,XXZL.Shehao')
    UpdateObject = XXZLUPD
    Left = 60
    Top = 348
    object XXZLXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.XXZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.XXZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLXieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.XXZL.XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.XXZL.ARTICLE'
      FixedChar = True
    end
    object XXZLYSSM: TStringField
      FieldName = 'YSSM'
      Origin = 'DB.XXZL.YSSM'
      FixedChar = True
      Size = 40
    end
    object XXZLBZCC: TStringField
      FieldName = 'BZCC'
      Origin = 'DB.XXZL.BZCC'
      FixedChar = True
      Size = 6
    end
    object XXZLKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object XXZLVNBOM: TStringField
      FieldName = 'VNBOM'
      FixedChar = True
      Size = 15
    end
    object XXZLVNFL: TStringField
      FieldName = 'VNFL'
      FixedChar = True
      Size = 15
    end
    object XXZLCCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object XXZLQBT: TStringField
      FieldName = 'QBT'
      FixedChar = True
      Size = 1
    end
    object XXZLUserdate: TDateTimeField
      FieldName = 'Userdate'
    end
    object XXZLUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 92
    Top = 348
  end
  object XXBWFL: TQuery
    AfterOpen = XXBWFLAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select distinct  XXZLS.XH,XXZLS.BWBH as XXBW,XXBWFL.XieXing,XXBW' +
        'FL.BWBH,'
      
        '          XXBWFL.FLBH,XXZLS.BWLB,XXBWFL.USERID,XXBWFL.USERDATE,X' +
        'XBWFL.YN,'
      
        '          XXBWFL.FLBH as oldFLBH,XXBWFLS.DFL,XXBWFLS.XFL,BWZL.YW' +
        'SM,'
      '          BWZL.ZWSM,XXZLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.dwbh'
      'from XXZLS'
      
        'left join XXBWFL on XXBWFL.BWBH=XXZLS.BWBH and XXBWFL.XieXing=XX' +
        'ZLS.XieXing '
      'left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH'
      'left join BWZL on BWZL.BWDH=XXZLS.BWBH'
      'left join CLZL on CLZL.CLDH=XXZLS.CLBH'
      'where XXZLS.XieXing=:XieXing'
      '        and XXZLS.SheHao=:SheHao'
      'order by XXZLS.XH')
    UpdateObject = UPXXBWFL
    Left = 180
    Top = 360
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
      end>
    object XXBWFLXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
    object XXBWFLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXBWFLXXBW: TStringField
      FieldName = 'XXBW'
      FixedChar = True
      Size = 4
    end
    object XXBWFLYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object XXBWFLFLBH: TStringField
      FieldName = 'FLBH'
      FixedChar = True
      Size = 2
    end
    object XXBWFLDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object XXBWFLXFL: TStringField
      FieldName = 'XFL'
      FixedChar = True
      Size = 10
    end
    object XXBWFLBWLB: TStringField
      FieldName = 'BWLB'
    end
    object XXBWFLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object XXBWFLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object XXBWFLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object XXBWFLoldFLBH: TStringField
      FieldName = 'oldFLBH'
      FixedChar = True
      Size = 2
    end
    object XXBWFLBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXBWFLZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 30
    end
    object XXBWFLCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXBWFLYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXBWFLZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object XXBWFLdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = XXBWFL
    Left = 212
    Top = 360
  end
  object UPXXBWFL: TUpdateSQL
    ModifySQL.Strings = (
      'update XXBWFL'
      'set'
      '  XieXing = :XieXing,'
      '  BWBH = :BWBH,'
      '  FLBH = :FLBH,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  BWBH = :OLD_BWBH')
    InsertSQL.Strings = (
      'insert into XXBWFL'
      '  (XieXing, BWBH, FLBH, USERDATE, USERID, YN)'
      'values'
      '  (:XieXing, :BWBH, :FLBH, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from XXBWFL'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  BWBH = :OLD_BWBH')
    Left = 252
    Top = 360
  end
  object XXZLSVN: TQuery
    AfterOpen = XXZLSVNAfterOpen
    AfterScroll = XXZLSVNAfterScroll
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select  XXZLSVN.*,BWZL.YWSM,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,XXBW' +
        'FLS.DFL,XXBWFLS.XFL,XXZLS.CLBH as XXZLS_CLBH'
      'from XXZLSVN'
      'left join BWZL on BWZL.BWDH= XXZLSVN.BWBH'
      'left join ZSZL on ZSZL.ZSDH= XXZLSVN.CSBH'
      'left join CLZL on XXZLSVN.CLBH=CLZL.CLDH'
      
        'left join xxbwfl on xxbwfl.xiexing=xxzlsvn.xiexing and xxbwfl.bw' +
        'bh=xxzlsvn.bwbh'
      'left join XXBWFLS on XXBWFLS.FLBH=XXZLSVN.FLBH'
      
        'left join (select XieXing,SheHao,CLBH from  XXZLS where XieXing=' +
        ':XieXing and Shehao=:SheHao  and CLBH like '#39'M%'#39' Group by XieXing' +
        ',SheHao,CLBH) XXZLS on XXZLSVN.XieXing=XXZLSVN.XieXing and XXZLS' +
        'VN.SheHao=XXZLS.SheHao and XXZLSVN.CLBH=XXZLS.CLBH'
      'where  XXZLSVN.XieXing=:XieXing and  XXZLSVN.SheHao=:SheHao'
      'order by XXZLSVN.BWBH asc'
      ''
      '')
    UpdateObject = UpXXZLSVN
    Left = 372
    Top = 336
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
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SheHao'
        ParamType = ptUnknown
      end>
    object XXZLSVNBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSVNYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object XXZLSVNCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object XXZLSVNDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSVNCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object XXZLSVNDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object XXZLSVNXFL: TStringField
      FieldName = 'XFL'
      FixedChar = True
      Size = 10
    end
    object XXZLSVNCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 50
    end
    object XXZLSVNZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object XXZLSVNLYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object XXZLSVNFLBH: TStringField
      FieldName = 'FLBH'
      FixedChar = True
      Size = 2
    end
    object XXZLSVNUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object XXZLSVNYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object XXZLSVNXXZLS_CLBH: TStringField
      FieldName = 'XXZLS_CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSVNSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
  end
  object UpXXZLSVN: TUpdateSQL
    ModifySQL.Strings = (
      'update XXZLSVN'
      'set'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao,'
      '  BWBH = :BWBH,'
      '  CLBH = :CLBH,'
      '  CSBH = :CSBH,'
      '  CLSL = :CLSL,'
      '  FLBH = :FLBH,'
      '  LYCC = :LYCC,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  BWBH = :OLD_BWBH')
    InsertSQL.Strings = (
      'insert into XXZLSVN'
      '  (XieXing, SheHao, BWBH, CLBH, CSBH, CLSL, FLBH, LYCC, USERID, '
      'USERDATE, '
      '   YN)'
      'values'
      
        '  (:XieXing, :SheHao, :BWBH, :CLBH, :CSBH, :CLSL, :FLBH, :LYCC, ' +
        ':USERID, '
      '   :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'delete from XXZLSVN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  BWBH = :OLD_BWBH')
    Left = 436
    Top = 336
  end
  object DS3: TDataSource
    DataSet = XXZLSVN
    Left = 404
    Top = 336
  end
  object VNBWFL: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from XXBWFL'
      'where XieXing=:XieXing')
    UpdateObject = UpVNBWFL
    Left = 372
    Top = 368
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end>
    object VNBWFLXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.XXBWFL.XieXing'
      FixedChar = True
      Size = 15
    end
    object VNBWFLBWBH: TStringField
      FieldName = 'BWBH'
      Origin = 'DB.XXBWFL.BWBH'
      FixedChar = True
      Size = 4
    end
    object VNBWFLFLBH: TStringField
      FieldName = 'FLBH'
      Origin = 'DB.XXBWFL.FLBH'
      FixedChar = True
      Size = 2
    end
    object VNBWFLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.XXBWFL.USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object VNBWFLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.XXBWFL.USERID'
      FixedChar = True
      Size = 15
    end
    object VNBWFLYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.XXBWFL.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpVNBWFL: TUpdateSQL
    ModifySQL.Strings = (
      'update XXBWFL'
      'set'
      '  XieXing = :XieXing,'
      '  BWBH = :BWBH,'
      '  FLBH = :FLBH,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  BWBH = :OLD_BWBH')
    InsertSQL.Strings = (
      'insert into XXBWFL'
      '  (XieXing, BWBH, FLBH, USERDATE, USERID, YN)'
      'values'
      '  (:XieXing, :BWBH, :FLBH, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from XXBWFL'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  BWBH = :OLD_BWBH')
    Left = 404
    Top = 368
  end
  object Qsearch: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XXZLS.XieXing,XXZLS.SheHao,XXZLS.BWBH,BWZL.YWSM'
      'from XXZLS'
      'left join BWZL on BWZL.BWDH=XXZLS.BWBH'
      'order by XXZLS.XieXing')
    Left = 692
    Top = 344
    object QsearchXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object QsearchSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object QsearchBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object QsearchYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
  end
  object DS4: TDataSource
    DataSet = Qsearch
    Left = 732
    Top = 336
  end
  object PopupMenu1: TPopupMenu
    Left = 182
    Top = 392
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object VNSize: TQuery
    AfterOpen = VNSizeAfterOpen
    OnNewRecord = VNSizeNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      'select XXZLSVNS.*,XXZLS3.US_Size as CC'
      'from XXZLS3 '
      
        'left join XXZLSVNS on XXZLSVNS.XieXing=XXZLS3.XieXing and XXZLSV' +
        'NS.XXCC=XXZLS3.US_Size'
      '       and XXZLSVNS.SheHao='#39'4672'#39
      '       and XXZLSVNS.BWBH='#39'V101'#39
      'where XXZLS3.XieXing='#39'4672'#39
      'order by XXZLS3.US_Size')
    UpdateObject = UpSize
    Left = 524
    Top = 344
    object VNSizeXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.XXZLSVNS.XieXing'
      FixedChar = True
      Size = 15
    end
    object VNSizeSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.XXZLSVNS.SheHao'
      FixedChar = True
      Size = 5
    end
    object VNSizeBWBH: TStringField
      FieldName = 'BWBH'
      Origin = 'DB.XXZLSVNS.BWBH'
      FixedChar = True
      Size = 4
    end
    object VNSizeXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.XXZLSVNS.XXCC'
      FixedChar = True
      Size = 6
    end
    object VNSizeCLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.XXZLSVNS.CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object VNSizeUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.XXZLSVNS.USERID'
      FixedChar = True
    end
    object VNSizeUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.XXZLSVNS.USERDate'
    end
    object VNSizeYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.XXZLSVNS.YN'
      FixedChar = True
      Size = 1
    end
    object VNSizeCC: TStringField
      FieldName = 'CC'
      Origin = 'DB.XXZLS3.US_Size'
      FixedChar = True
      Size = 6
    end
  end
  object DS5: TDataSource
    DataSet = VNSize
    Left = 548
    Top = 344
  end
  object UpSize: TUpdateSQL
    ModifySQL.Strings = (
      'update XXZLSVNS'
      'set'
      '  XieXing = :XieXing,'
      '  SheHao = :SheHao,'
      '  BWBH = :BWBH,'
      '  XXCC = :XXCC,'
      '  CLSL = :CLSL,'
      '  USERID = :USERID,'
      '  USERDate = :USERDate,'
      '  YN = :YN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  BWBH = :OLD_BWBH and'
      '  XXCC = :OLD_XXCC')
    InsertSQL.Strings = (
      'insert into XXZLSVNS'
      '  (XieXing, SheHao, BWBH, XXCC, CLSL, USERID, USERDate, YN)'
      'values'
      
        '  (:XieXing, :SheHao, :BWBH, :XXCC, :CLSL, :USERID, :USERDate, :' +
        'YN)')
    DeleteSQL.Strings = (
      'delete from XXZLSVNS'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  SheHao = :OLD_SheHao and'
      '  BWBH = :OLD_BWBH and'
      '  XXCC = :OLD_XXCC')
    Left = 580
    Top = 344
  end
  object PopupMenu2: TPopupMenu
    Left = 180
    Top = 424
    object N1: TMenuItem
      Caption = 'Modify'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = N3Click
    end
  end
  object XXZLUPD: TUpdateSQL
    ModifySQL.Strings = (
      'Update XXZLSVNS2'
      'Set'
      '  Article=:Article,'
      '  QBT=:QBT,'
      '  UserDate=:UserDate,'
      '  UserID=:UserID'
      'where'
      '  XieXing=:XieXing and'
      '  Shehao=:Shehao')
    InsertSQL.Strings = (
      'Insert into XXZLSVNS2'
      ' (XieXing, SheHao, Article, QBT, UserDate, UserID)'
      'Values'
      ' (:XieXing, :SheHao, :Article, :QBT, :UserDate, :UserID)')
    Left = 60
    Top = 377
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 372
    Top = 401
  end
  object PopupMenu3: TPopupMenu
    AutoHotkeys = maManual
    Left = 408
    Top = 403
    object N4: TMenuItem
      Caption = 'CopyBoard to Paste'
      OnClick = N4Click
    end
  end
end

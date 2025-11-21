object BOMSHIP: TBOMSHIP
  Left = 228
  Top = 126
  Width = 815
  Height = 498
  Caption = 'BOMSHIP'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 799
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
  end
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 799
    Height = 395
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'ARTICLE'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 791
        Height = 57
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 16
          Top = 18
          Width = 32
          Height = 20
          Caption = 'RY#'
        end
        object Button1: TButton
          Left = 257
          Top = 11
          Width = 73
          Height = 33
          Caption = 'QUERY'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Edit1: TEdit
          Left = 56
          Top = 14
          Width = 145
          Height = 28
          TabOrder = 1
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 57
        Width = 791
        Height = 303
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        OnGetCellParams = DBGrid1GetCellParams
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Title.Caption = 'Color'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Width = 163
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Width = 163
          end
          item
            EditButtons = <>
            FieldName = 'BZCC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'kfjc'
            Footers = <>
            Width = 107
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'BOM'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 791
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText1: TDBText
          Left = 72
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 216
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 344
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 512
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 45
          Height = 20
          Caption = 'ArtNo:'
        end
        object Label7: TLabel
          Left = 160
          Top = 16
          Width = 41
          Height = 20
          Caption = 'Color:'
        end
        object Label8: TLabel
          Left = 288
          Top = 16
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Label9: TLabel
          Left = 432
          Top = 16
          Width = 67
          Height = 20
          Caption = 'ArtName:'
        end
      end
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 49
        Width = 791
        Height = 311
        Align = alClient
        DataSource = DS2
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
        FrozenCols = 4
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 26
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            Width = 140
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            Width = 376
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
            Width = 47
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Title.Caption = 'CC'
            Width = 27
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
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'CCQQ'
            Footers = <>
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'CCQZ'
            Footers = <>
            Width = 49
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Footers = <>
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'CLZMLB'
            Footers = <>
            Width = 69
          end
          item
            EditButtons = <>
            FieldName = 'BWZW'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CLZW'
            Footers = <>
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
        Width = 791
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText5: TDBText
          Left = 56
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 184
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 272
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 432
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 16
          Width = 45
          Height = 20
          Caption = 'ArtNo:'
        end
        object Label11: TLabel
          Left = 136
          Top = 16
          Width = 41
          Height = 20
          Caption = 'Color:'
        end
        object Label12: TLabel
          Left = 224
          Top = 16
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Label13: TLabel
          Left = 360
          Top = 16
          Width = 67
          Height = 20
          Caption = 'ArtName:'
        end
        object Label2: TLabel
          Left = 557
          Top = 16
          Width = 144
          Height = 20
          Caption = 'BOM Created Date: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBText13: TDBText
          Left = 701
          Top = 16
          Width = 97
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'USERDATE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 49
        Width = 791
        Height = 311
        Align = alClient
        DataSource = DS3
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
        TitleFont.Height = -16
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
        Width = 791
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText9: TDBText
          Left = 56
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 184
          Top = 16
          Width = 71
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 272
          Top = 16
          Width = 71
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 440
          Top = 16
          Width = 71
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 16
          Width = 45
          Height = 20
          Caption = 'ArtNo:'
        end
        object Label15: TLabel
          Left = 136
          Top = 16
          Width = 41
          Height = 20
          Caption = 'Color:'
        end
        object Label16: TLabel
          Left = 224
          Top = 16
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Label17: TLabel
          Left = 368
          Top = 16
          Width = 67
          Height = 20
          Caption = 'ArtName:'
        end
      end
      object DBGrid4: TDBGridEh
        Left = 0
        Top = 49
        Width = 791
        Height = 311
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
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object XXZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select ddzl.DDBH, ddzl.XieXing, ddzl.SheHao, ddzl.ARTICLE,xxzl.X' +
        'ieMing,xxzl.YSSM,'
      
        '       xxzl.BZCC, kfzl.kfjc,xt.xiexing as Xx,xt.Shehao as Ss, zl' +
        'zl.USERDATE '
      'from ddzl'
      
        'left join xxzl on ddzl.xiexing = xxzl.xiexing and ddzl.shehao = ' +
        'xxzl.shehao'
      'left join kfzl on kfzl.kfdh = DDZL.KHBH'
      'left join zlzl on zlzl.ZLBH = DDZL.DDBH'
      
        'left join (select xiexing,shehao from xtbwyl1 group by xiexing,s' +
        'hehao) as xt'
      '           on xt.xiexing=ddzl.xiexing and xt.shehao=ddzl.shehao'
      'where ddzl.DDBH like '#39'%'#39
      'order by DDZL.DDBH')
    Left = 124
    Top = 204
    object XXZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
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
    object XXZLARTICLE: TStringField
      FieldName = 'ARTICLE'
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
    object XXZLBZCC: TStringField
      FieldName = 'BZCC'
      FixedChar = True
      Size = 6
    end
    object XXZLkfjc: TStringField
      FieldName = 'kfjc'
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
    object XXZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 132
    Top = 236
  end
  object XXZLS: TQuery
    AfterOpen = XXZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,'
      
        '         CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW' +
        ','
      
        '         CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,ZSZL.ZSYWJC,XXZLS.LOSS,XXZ' +
        'LS.CLSL,'
      '        XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB'
      ' FROM XXZLS  '
      
        'LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh                       ' +
        '        '
      
        'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh                      ' +
        '        '
      
        'LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LB' +
        'ZLS.LB='#39'05'#39'                             '
      'LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao'
      ' ORDER BY XXZLS.XH')
    Left = 220
    Top = 204
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
    Left = 220
    Top = 240
  end
  object XXCC: TQuery
    AfterOpen = XXCCAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 308
    Top = 200
  end
  object xtbwyl1: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 308
    Top = 232
  end
  object DS3: TDataSource
    DataSet = xtbwyl1
    Left = 340
    Top = 248
  end
  object xtbwyl: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 420
    Top = 200
  end
  object DS4: TDataSource
    DataSet = xtbwyl
    Left = 420
    Top = 232
  end
end

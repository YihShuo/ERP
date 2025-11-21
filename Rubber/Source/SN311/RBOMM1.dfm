object RBOMM: TRBOMM
  Left = 347
  Top = 344
  Width = 1169
  Height = 624
  Caption = 'RBOMM'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Label4: TLabel
    Left = 27
    Top = 198
    Width = 30
    Height = 16
    Caption = 'HZS:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1161
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
      OnClick = BB2Click
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
      OnClick = BB3Click
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
  end
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 1161
    Height = 528
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'BOMMas'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1153
        Height = 55
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        object OrderLabel: TLabel
          Left = 17
          Top = 19
          Width = 48
          Height = 16
          Caption = 'XieXing:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 189
          Top = 19
          Width = 40
          Height = 16
          Caption = 'Article:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object XieXingEdit: TEdit
          Left = 72
          Top = 16
          Width = 105
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Button1: TButton
          Left = 411
          Top = 8
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button1Click
        end
        object ArticleEdit: TEdit
          Left = 232
          Top = 16
          Width = 145
          Height = 24
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object DBGridEh0: TDBGridEh
        Left = 0
        Top = 55
        Width = 1153
        Height = 442
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
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEh0DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footer.FieldName = 'ARTICLE'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 124
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 139
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'mjbh'
            Footers = <>
            Title.Caption = 'MJBH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'lbdh'
            Footers = <>
            Title.Caption = 'LBDH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'HZS'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'BOMDet'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 433
        Height = 497
        Align = alLeft
        TabOrder = 0
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 431
          Height = 184
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 13
            Top = 10
            Width = 45
            Height = 16
            Caption = 'XieXing'
          end
          object Label5: TLabel
            Left = 18
            Top = 40
            Width = 41
            Height = 16
            Caption = 'YSSM:'
          end
          object Label10: TLabel
            Left = 18
            Top = 96
            Width = 41
            Height = 16
            Caption = 'KHDH:'
          end
          object Label13: TLabel
            Left = 19
            Top = 124
            Width = 40
            Height = 16
            Caption = 'MJBH:'
          end
          object Label16: TLabel
            Left = 28
            Top = 152
            Width = 30
            Height = 16
            Caption = 'HZS:'
          end
          object Label8: TLabel
            Left = 261
            Top = 11
            Width = 53
            Height = 16
            Caption = 'SheHao:'
          end
          object Label9: TLabel
            Left = 18
            Top = 69
            Width = 40
            Height = 16
            Caption = 'Article:'
          end
          object Label22: TLabel
            Left = 265
            Top = 151
            Width = 50
            Height = 16
            Caption = 'LOSS%:'
          end
          object Label3: TLabel
            Left = 277
            Top = 91
            Width = 35
            Height = 16
            Caption = 'KFJC:'
          end
          object Label6: TLabel
            Left = 275
            Top = 124
            Width = 39
            Height = 16
            Caption = 'LBDH:'
          end
          object KHDHBtn: TSpeedButton
            Left = 136
            Top = 94
            Width = 23
            Height = 22
            Caption = '...'
            Enabled = False
            OnClick = KHDHBtnClick
          end
          object DBEdit13: TDBEdit
            Left = 62
            Top = 149
            Width = 92
            Height = 24
            DataField = 'HZS'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit10: TDBEdit
            Left = 61
            Top = 121
            Width = 204
            Height = 24
            DataField = 'mjbh'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit9: TDBEdit
            Left = 61
            Top = 93
            Width = 76
            Height = 24
            DataField = 'KHDH'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit2: TDBEdit
            Left = 61
            Top = 37
            Width = 348
            Height = 24
            DataField = 'YSSM'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit1: TDBEdit
            Left = 61
            Top = 8
            Width = 188
            Height = 24
            Color = clYellow
            DataField = 'XieXing'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit8: TDBEdit
            Left = 61
            Top = 67
            Width = 204
            Height = 24
            DataField = 'ARTICLE'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit7: TDBEdit
            Left = 317
            Top = 8
            Width = 92
            Height = 24
            Color = clYellow
            DataField = 'SheHao'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit17: TDBEdit
            Left = 317
            Top = 89
            Width = 92
            Height = 24
            Color = clBtnFace
            DataField = 'KFJC'
            DataSource = DS1
            ReadOnly = True
            TabOrder = 7
          end
          object CalBtn: TBitBtn
            Left = 4
            Top = 309
            Width = 24
            Height = 24
            Hint = 'Exit Current Form'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF8686867C7C7C7F7F7F7F7F7F7E7E7E7F7F7F7F7F7F7E7E7E787878CBCB
              CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B10101011111115151521212111
              11111616162121211111111414140E0E0EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9898980E0E0EFFFFFF9A9A9A151515FFFFFF959595141414FFFFFF9797970909
              09FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9999991C1C1C7C7C7C4141412626267E
              7E7E3F3F3F2626267D7D7D404040151515FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9A9A9A1B1B1BAEAEAE585858232323B0B0B0565656232323AFAFAF5757571616
              16FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A1C1C1CFFFFFF8B8B8B242424FF
              FFFF878787232323FFFFFF898989161616FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9A9A9A2F2F2F1515151E1E1E2626261212121E1E1E2626261313132B2B2B2121
              21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9B2828289D9D9D8C8C8C8D8D8D8D
              8D8D8D8D8D8D8D8D9393936969691F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              9C9C9C212121FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B21D1D
              1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF919191292929AAAAAAA2A2A2A1A1A1A1
              A1A1A1A1A1A1A1A1A7A7A7767676151515FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              D8D8D80D0D0D0808080909090909090909090909090909090909090606065858
              58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            Layout = blGlyphTop
          end
          object DBEdit3: TDBEdit
            Left = 317
            Top = 148
            Width = 92
            Height = 24
            DataField = 'LOSS'
            DataSource = DS1
            TabOrder = 9
          end
          object DBEdit4: TDBEdit
            Left = 317
            Top = 119
            Width = 92
            Height = 24
            DataField = 'lbdh'
            DataSource = DS1
            TabOrder = 10
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 185
          Width = 431
          Height = 311
          Align = alClient
          DataSource = DS2
          EvenRowColor = clWindow
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnEditButtonClick = DBGridEh1EditButtonClick
          Columns = <
            item
              EditButtons = <>
              FieldName = 'xh'
              Footers = <>
              Title.Caption = 'XH'
              Width = 22
            end
            item
              EditButtons = <>
              FieldName = 'YSSM'
              Footers = <>
              Width = 100
            end
            item
              ButtonStyle = cbsEllipsis
              EditButtons = <>
              FieldName = 'cldh'
              Footers = <>
              Title.Caption = 'CLDH'
              Width = 109
            end
            item
              Color = clBtnFace
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              ReadOnly = True
              Width = 125
            end>
        end
      end
      object Panel7: TPanel
        Left = 433
        Top = 0
        Width = 720
        Height = 497
        Align = alClient
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 49
          Width = 718
          Height = 447
          Align = alClient
          DataSource = DS3
          EvenRowColor = clWindow
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ParentFont = False
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CC'
              Footer.FieldName = 'CC'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'SIZE'
              Width = 37
            end
            item
              EditButtons = <>
              FieldName = 'G01'
              Footers = <>
              Title.Caption = 'A(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G02'
              Footers = <>
              Title.Caption = 'B(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G03'
              Footers = <>
              Title.Caption = 'C(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G04'
              Footers = <>
              Title.Caption = 'D(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G05'
              Footers = <>
              Title.Caption = 'E(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G06'
              Footers = <>
              Title.Caption = 'F(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G07'
              Footers = <>
              Title.Caption = 'G(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G08'
              Footers = <>
              Title.Caption = 'H(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G09'
              Footers = <>
              Title.Caption = 'I(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G10'
              Footers = <>
              Title.Caption = 'J(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G11'
              Footers = <>
              Title.Caption = 'K(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G12'
              Footers = <>
              Title.Caption = 'L(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G13'
              Footers = <>
              Title.Caption = 'M(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G14'
              Footers = <>
              Title.Caption = 'N(G)'
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'G15'
              Footers = <>
              Title.Caption = 'O(G)'
              Width = 40
            end>
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 718
          Height = 48
          Align = alTop
          TabOrder = 1
          object BC6: TBitBtn
            Left = 239
            Top = -1
            Width = 49
            Height = 50
            Hint = 'Cancel'
            Caption = 'Cancel'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
          object BC5: TBitBtn
            Left = 192
            Top = -1
            Width = 49
            Height = 50
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
          object BC4: TBitBtn
            Left = 144
            Top = -1
            Width = 49
            Height = 50
            Hint = 'Modify Current'
            Caption = 'Modify'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
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
          object BC2: TBitBtn
            Left = 48
            Top = -1
            Width = 49
            Height = 50
            Hint = 'Insert one New Record'
            Caption = 'Insert'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = BC2Click
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
          object BC3: TBitBtn
            Left = 97
            Top = -1
            Width = 49
            Height = 50
            Hint = 'Delete one Record'
            Caption = 'Delete'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = BC3Click
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
          object btnSize: TBitBtn
            Left = 0
            Top = -1
            Width = 49
            Height = 50
            Hint = 'Inser price all'
            Caption = 'SIZE'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btnSizeClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C006000000000000000000000000000000000000F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFEFEFEF7F7F7F7F7F7F8F8F8FFFFFFCECE
              CE0A0A0A5E5E5EA5A5A5FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFF979797050505D4D4D4FFFFFFFFFFFF
              FFFFFFF0F0F0000000000000000000000000FFFFFFF8F8F8F7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFF19191900000000000000
              00004F4F4F070707000000000000000000000000000000000000D7D7D7FFFFFF
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFF1010
              1000000000000000000000000000000000000000000000000000000000000000
              0000000000767676FFFFFFFEFEFEFFFFFFFEFEFEF7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7FFFFFF5555550000000000000000000000000000000000000000000000
              000000000000000000000000000000001C1C1CE6E6E6ACACACC8C8C8FFFFFFF7
              F7F7F7F7F7F7F7F7FFFFFFD9D9D9000000000000000000000000000000111111
              7272729595958686864141410000000000000000000000000000000000000000
              00000000FFFFFFFAFAFAFDFDFDFFFFFFFFFFFF00000000000000000000000000
              0000DBDBDBF1F1F16A6A6A4F4F4F505050919191FFFFFF595959000000000000
              0000000000000000000000002C2C2CFFFFFFD6D6D69A9A9A3838380000000000
              00000000080808FFFFFF3D3D3D656565EDEDEDFFFFFFFFFFFFCBCBCB313131A6
              A6A6A5A5A50000000000000000000000000000005C5C5CFFFFFF000000000000
              000000000000000000000000FFFFFF1E1E1EE3E3E3FFFFFFFAFAFAF7F7F7F7F7
              F7FDFDFDFFFFFF7878789E9E9E606060000000000000000000101010FFFFFFF7
              F7F7000000000000000000000000000000626262939393AEAEAEFFFFFFF7F7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFF343434FEFEFE0000000000000000
              00000000FFFFFFF7F7F7000000000000000000000000000000CDCDCD343434FF
              FFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCFCFCD5D5D5818181
              494949000000000000000000DADADAFCFCFCDBDBDB0101010000000000000000
              00F2F2F2454545FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7FFFFFF494949868686000000000000000000C8C8C8FFFFFFFFFFFF595959
              000000000000000000EBEBEB454545FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7FFFFFF4848488C8C8C0000000000000000002A2A2AFF
              FFFFFFFFFF707070000000000000000000B8B8B8353535FFFFFFF7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FCFCFCCFCFCF8383835858580000000000
              00000000000000000000FFFFFFBABABA000000000000000000393939A5A5A5A3
              A3A3FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFF2B2B2BFFFFFF
              000000000000000000000000000000161616FFFFFFD9D9D90000000000000000
              00000000DBDBDB2E2E2ED6D6D6FFFFFFFBFBFBF7F7F7F8F8F8FEFEFEFFFFFF66
              6666A6A6A68787870000000000000000000000000000004F4F4FFFFFFF000000
              000000000000000000000000000000FAFAFA535353575757DDDDDDFFFFFFFFFF
              FFBABABA262626B1B1B1D1D1D1000000000000000000000000868686B3B3B3F5
              F5F5F8F8F80000000000000000000000000000000000000000009B9B9BF8F8F8
              7F7F7F535353585858A0A0A0FFFFFF7A7A7A0000000000000000000000005959
              59FFFFFFFFFFFFF9F9F9FFFFFFADADAD00000000000000000000000000000000
              00000000000000005050508181817F7F7F484848000000000000000000000000
              0000001E1E1EFFFFFFF8F8F8F7F7F7F7F7F7F7F7F7FFFFFFAAAAAAD1D1D1D1D1
              D100000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000C5C5C5FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              FFFFFFFEFEFEFFFFFFFFFFFF3F3F3F0000000000000000000000000000000000
              00000000000000000000000000000000000000767676FFFFFFF7F7F7F7F7F7F7
              F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FAFAFAFFFFFF6A6A6A000000000000
              000000000000000000000000363636383838000000000000000000939393FFFF
              FFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFF9C
              9C9C000000000000000000454545FFFFFFFFFFFFFFFFFFFFFFFF8E8E8E1E1E1E
              EBEBEBFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7
              F7F7F7F7F9F9F9F8F8F8909090515151292929FFFFFFFAFAFAF7F7F7F7F7F7F7
              F7F7FFFFFFFFFFFFFCFCFCF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7}
            Layout = blGlyphTop
          end
        end
      end
    end
  end
  object XXZLQry: TQuery
    AfterOpen = XXZLQryAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT XXZL.*,KFZL.KFJC,1 as YN  '
      'FROM LIY_DD.dbo.XXZL XXZL  '
      'Left join LIY_DD.dbo.KFZL KFZL on KFZL.kfdh=XXZL.KHDH '
      'where ( XXZL.CQDH='#39'VR3'#39')  '
      'ORDER BY XXZL.XieXing ,XXZL.SheHao ')
    UpdateObject = UpXXZL
    Left = 154
    Top = 340
    object XXZLQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 18
    end
    object XXZLQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLQryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object XXZLQryYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 200
    end
    object XXZLQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object XXZLQrymjbh: TStringField
      FieldName = 'mjbh'
      FixedChar = True
    end
    object XXZLQrylbdh: TStringField
      FieldName = 'lbdh'
      FixedChar = True
      Size = 4
    end
    object XXZLQryKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object XXZLQryHZS: TFloatField
      FieldName = 'HZS'
    end
    object XXZLQryLOSS: TFloatField
      FieldName = 'LOSS'
    end
    object XXZLQryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object XXZLQryUSERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object XXZLQryJBYX: TIntegerField
      FieldName = 'JBYX'
    end
    object XXZLQryJBMS: TIntegerField
      FieldName = 'JBMS'
    end
    object XXZLQryCCBT: TIntegerField
      FieldName = 'CCBT'
    end
    object XXZLQryKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object XXZLQryYN: TIntegerField
      FieldName = 'YN'
    end
  end
  object UpXXZL: TUpdateSQL
    ModifySQL.Strings = (
      'Update LIY_DD.dbo.DDZL'
      'Set'
      '  ZLBH1 =:ZLBH1,'
      '  DDLB =:DDLB,'
      '  XieXing =:XieXing,'
      '  SheHao =:SheHao,'
      '  Article =:Article,'
      '  KHDH =:KHDH,'
      '  KHPO =:KHPO,'
      '  DDRQ =:DDRQ,'
      '  SCRQ =:SCRQ,'
      '  DDJQ =:DDJQ,'
      '  Pairs =:Pairs,'
      '  QtySC =:QtySC,'
      '  QtyCH =:QtyCH,'
      '  Totals =:Totals,'
      '  ACCNO =:ACCNO,'
      '  ZLBH =:ZLBH,'
      '  DDZT =:DDZT,'
      '  CQDH1 =:CQDH1,'
      '  USERID =:USERID,'
      '  USERDATE =:USERDATE,'
      '  QKBL =:QKBL,'
      '  ZLBHA =:ZLBHA'
      'where'
      '  DDBH=:OLD_DDBH and'
      '  CQDH=:OLD_CQDH')
    InsertSQL.Strings = (
      'INSERT INTO LIY_DD.dbo.DDZL'
      
        '  (DDBH, CQDH, ZLBH1, DDLB, XieXing, SheHao, ARTICLE, KHDH, KHPO' +
        ', DDRQ, SCRQ, DDJQ, Pairs, QtySC,'
      
        '   QtyCH, Totals, ACCNO, ZLBH, DDZT, CQDH1, USERID, USERDATE, QK' +
        'BL, ZLBHA)'
      'VALUES'
      
        '  (:DDBH, :CQDH, :ZLBH1, :DDLB, :XieXing, :SheHao, :ARTICLE, :KH' +
        'DH, :KHPO, :DDRQ, :SCRQ, :DDJQ, :Pairs, :QtySC,'
      
        '   :QtyCH, :Totals, :ACCNO, :ZLBH, :DDZT, :CQDH1, :USERID, :USER' +
        'DATE, :QKBL, :ZLBHA)')
    DeleteSQL.Strings = (
      'Delete'
      'From LIY_DD.dbo.DDZL'
      'where '
      '  DDBH=:OLD_DDBH and'
      '  CQDH=:OLD_CQDH')
    Left = 154
    Top = 401
  end
  object DS1: TDataSource
    DataSet = XXZLQry
    Left = 154
    Top = 372
  end
  object XXZLS1Qry: TQuery
    AfterOpen = XXZLS1QryAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *,1 as YN'
      'from LIY_DD.dbo.XXZLS1 XXZLS1'
      
        'where XXZLS1.CQDH=:CQDH and XXZLS1.XieXing=:XieXing and XXZLS1.S' +
        'heHao=:SheHao')
    UpdateObject = UpXXZLS1
    Left = 244
    Top = 340
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CQDH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 19
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end>
    object XXZLS1QryXieXing: TStringField
      DisplayWidth = 14
      FieldName = 'XieXing'
      FixedChar = True
      Size = 18
    end
    object XXZLS1QrySheHao: TStringField
      DisplayWidth = 6
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLS1QryCQDH: TStringField
      DisplayWidth = 4
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object XXZLS1QryCC: TStringField
      DisplayWidth = 6
      FieldName = 'CC'
      FixedChar = True
      Size = 6
    end
    object XXZLS1QryG01: TFloatField
      DisplayWidth = 10
      FieldName = 'G01'
    end
    object XXZLS1QryG02: TFloatField
      DisplayWidth = 10
      FieldName = 'G02'
    end
    object XXZLS1QryG03: TFloatField
      DisplayWidth = 10
      FieldName = 'G03'
    end
    object XXZLS1QryG04: TFloatField
      DisplayWidth = 10
      FieldName = 'G04'
    end
    object XXZLS1QryG05: TFloatField
      DisplayWidth = 10
      FieldName = 'G05'
    end
    object XXZLS1QryG06: TFloatField
      DisplayWidth = 10
      FieldName = 'G06'
    end
    object XXZLS1QryG07: TFloatField
      DisplayWidth = 10
      FieldName = 'G07'
    end
    object XXZLS1QryG08: TFloatField
      DisplayWidth = 10
      FieldName = 'G08'
    end
    object XXZLS1QryG09: TFloatField
      DisplayWidth = 10
      FieldName = 'G09'
    end
    object XXZLS1QryG10: TFloatField
      DisplayWidth = 10
      FieldName = 'G10'
    end
    object XXZLS1QryG11: TFloatField
      DisplayWidth = 10
      FieldName = 'G11'
    end
    object XXZLS1QryG12: TFloatField
      DisplayWidth = 10
      FieldName = 'G12'
    end
    object XXZLS1QryG13: TFloatField
      DisplayWidth = 10
      FieldName = 'G13'
    end
    object XXZLS1QryG14: TFloatField
      DisplayWidth = 10
      FieldName = 'G14'
    end
    object XXZLS1QryG15: TFloatField
      DisplayWidth = 10
      FieldName = 'G15'
    end
    object XXZLS1Qrymjsl: TFloatField
      DisplayWidth = 10
      FieldName = 'mjsl'
    end
    object XXZLS1QryUSERID: TStringField
      DisplayWidth = 20
      FieldName = 'USERID'
      FixedChar = True
    end
    object XXZLS1QryUSERDATE: TStringField
      DisplayWidth = 8
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object XXZLS1QryYN: TIntegerField
      DisplayWidth = 10
      FieldName = 'YN'
    end
  end
  object XXZLSQry: TQuery
    AfterOpen = XXZLQryAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'SELECT XXZLS.*,CLZL.YWPM,1 as YN'
      'FROM LIY_DD.dbo.XXZLS XXZLS'
      'Left join LIY_DD.dbo.CLZL CLZL on CLZL.CLDH=XXZLS.CLDH '
      
        'where XXZLS.CQDH=:CQDH and XXZLS.XieXing=:XieXing and XXZLS.SheH' +
        'ao=:SheHao'
      'ORDER BY XXZLS.XH')
    UpdateObject = UpXXZLS
    Left = 196
    Top = 340
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CQDH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 19
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end>
    object XXZLSQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 18
    end
    object XXZLSQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLSQryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object XXZLSQryxh: TStringField
      FieldName = 'xh'
      FixedChar = True
      Size = 1
    end
    object XXZLSQrycldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 16
    end
    object XXZLSQryYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object XXZLSQryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object XXZLSQryUSERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object XXZLSQryLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 10
    end
    object XXZLSQryHZS: TFloatField
      FieldName = 'HZS'
    end
    object XXZLSQryDZ: TFloatField
      FieldName = 'DZ'
    end
    object XXZLSQryRS: TFloatField
      FieldName = 'RS'
    end
    object XXZLSQryYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 60
    end
    object XXZLSQryYN: TIntegerField
      FieldName = 'YN'
    end
  end
  object DS2: TDataSource
    DataSet = XXZLSQry
    Left = 197
    Top = 372
  end
  object DS3: TDataSource
    DataSet = XXZLS1Qry
    Left = 245
    Top = 372
  end
  object UpXXZLS: TUpdateSQL
    ModifySQL.Strings = (
      'Update LIY_DD.dbo.XXZLS'
      'Set'
      '  CLDH =:CLDH,'
      '  YSSM =:YSSM,'
      '  USERID =:USERID,'
      '  USERDATE =:USERDATE,'
      '  LB =:LB,'
      '  HZS =:HZS,'
      '  DZ =:DZ,'
      '  RS =:RS'
      'where '
      '  XieXing=:OLD_XieXing and'
      '  SheHao=:OLD_SheHao and'
      '  CQDH=:OLD_CQDH and'
      '  XH=:OLD_XH')
    InsertSQL.Strings = (
      'INSERT INTO LIY_DD.dbo.XXZLS'
      
        '  (XieXing, SheHao, CQDH, XH, CLDH, YSSM, USERID, USERDATE, LB, ' +
        'HZS, DZ, RS)'
      'VALUES'
      
        '  (:XieXing, :SheHao, :CQDH, :XH, :CLDH, :YSSM, :USERID, :USERDA' +
        'TE, :LB, :HZS, :DZ, :RS)')
    DeleteSQL.Strings = (
      'Delete'
      '  From LIY_DD.dbo.XXZLS'
      'where '
      '  XieXing=:OLD_XieXing and'
      '  SheHao=:OLD_SheHao and'
      '  CQDH=:OLD_CQDH and'
      '  XH=:OLD_XH')
    Left = 196
    Top = 401
  end
  object UpXXZLS1: TUpdateSQL
    ModifySQL.Strings = (
      'Update LIY_DD.dbo.DDZL'
      'Set'
      '  ZLBH1 =:ZLBH1,'
      '  DDLB =:DDLB,'
      '  XieXing =:XieXing,'
      '  SheHao =:SheHao,'
      '  Article =:Article,'
      '  KHDH =:KHDH,'
      '  KHPO =:KHPO,'
      '  DDRQ =:DDRQ,'
      '  SCRQ =:SCRQ,'
      '  DDJQ =:DDJQ,'
      '  Pairs =:Pairs,'
      '  QtySC =:QtySC,'
      '  QtyCH =:QtyCH,'
      '  Totals =:Totals,'
      '  ACCNO =:ACCNO,'
      '  ZLBH =:ZLBH,'
      '  DDZT =:DDZT,'
      '  CQDH1 =:CQDH1,'
      '  USERID =:USERID,'
      '  USERDATE =:USERDATE,'
      '  QKBL =:QKBL,'
      '  ZLBHA =:ZLBHA'
      'where'
      '  DDBH=:OLD_DDBH and'
      '  CQDH=:OLD_CQDH')
    InsertSQL.Strings = (
      'INSERT INTO LIY_DD.dbo.DDZL'
      
        '  (DDBH, CQDH, ZLBH1, DDLB, XieXing, SheHao, ARTICLE, KHDH, KHPO' +
        ', DDRQ, SCRQ, DDJQ, Pairs, QtySC,'
      
        '   QtyCH, Totals, ACCNO, ZLBH, DDZT, CQDH1, USERID, USERDATE, QK' +
        'BL, ZLBHA)'
      'VALUES'
      
        '  (:DDBH, :CQDH, :ZLBH1, :DDLB, :XieXing, :SheHao, :ARTICLE, :KH' +
        'DH, :KHPO, :DDRQ, :SCRQ, :DDJQ, :Pairs, :QtySC,'
      
        '   :QtyCH, :Totals, :ACCNO, :ZLBH, :DDZT, :CQDH1, :USERID, :USER' +
        'DATE, :QKBL, :ZLBHA)')
    DeleteSQL.Strings = (
      'Delete'
      'From LIY_DD.dbo.DDZL'
      'where '
      '  DDBH=:OLD_DDBH and'
      '  CQDH=:OLD_CQDH')
    Left = 244
    Top = 401
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      '')
    Left = 108
    Top = 340
  end
end

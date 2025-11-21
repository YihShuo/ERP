object OrderSpec: TOrderSpec
  Left = 317
  Top = 84
  Width = 980
  Height = 500
  Caption = 'OrderSpec'
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
    Width = 964
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label18: TLabel
      Left = 704
      Top = 32
      Width = 74
      Height = 24
      Caption = 'Master'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
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
    object bbt6: TBitBtn
      Left = 608
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
      TabOrder = 11
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
    Width = 964
    Height = 396
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
      Caption = 'OrdList'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 956
        Height = 89
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 32
          Width = 53
          Height = 16
          Caption = 'SpecNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 176
          Top = 32
          Width = 55
          Height = 16
          Caption = 'ArtName:'
        end
        object Label3: TLabel
          Left = 360
          Top = 32
          Width = 60
          Height = 16
          Caption = 'Customer:'
        end
        object Label4: TLabel
          Left = 480
          Top = 32
          Width = 63
          Height = 16
          Caption = 'ETD Year:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 624
          Top = 32
          Width = 39
          Height = 16
          Caption = 'Month:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object DBNavigator1: TDBNavigator
          Left = 8
          Top = 64
          Width = 320
          Height = 25
          DataSource = DS1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 64
          Top = 24
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
          TabOrder = 1
        end
        object Edit2: TEdit
          Left = 232
          Top = 24
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object CBX2: TComboBox
          Left = 544
          Top = 24
          Width = 73
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 3
        end
        object CBX3: TComboBox
          Left = 664
          Top = 24
          Width = 49
          Height = 24
          DropDownCount = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 4
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object Button1: TButton
          Left = 723
          Top = 16
          Width = 70
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = Button1Click
        end
        object Edit3: TEdit
          Left = 424
          Top = 24
          Width = 49
          Height = 24
          TabOrder = 6
        end
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 89
        Width = 956
        Height = 276
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
        FooterFont.Height = -11
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
        UseMultiTitle = True
        OnDblClick = DBGridEh1DblClick
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        OnKeyPress = DBGridEh1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            Width = 131
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CCGB'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'ShipDate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DDZT'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Width = 69
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'SpecDet'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 956
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label5: TLabel
          Left = 344
          Top = 24
          Width = 42
          Height = 16
          Caption = 'ProNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 528
          Top = 24
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
        object DBEdit1: TDBEdit
          Left = 392
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'SCBH'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 576
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'Article'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBNavigator2: TDBNavigator
          Left = 8
          Top = 16
          Width = 320
          Height = 25
          DataSource = DS2
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 2
        end
        object Button2: TButton
          Left = 728
          Top = 8
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 3
          OnClick = Button2Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 49
        Width = 956
        Height = 316
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
        FooterFont.Height = -11
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
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'bwbh'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 52
          end
          item
            EditButtons = <>
            FieldName = 'BWMCY'
            Footers = <>
            Width = 197
          end
          item
            EditButtons = <>
            FieldName = 'clbh'
            Footers = <>
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'CLMCY'
            Footers = <>
            Width = 297
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'USAGE'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LOSS'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'clsl'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DFL'
            Footers = <>
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'XFL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'LYCC'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'JGYWSM'
            Footers = <>
            Width = 145
          end>
      end
    end
    object Matset: TTabSheet
      Caption = 'Matset'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 956
        Height = 49
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 344
          Top = 24
          Width = 42
          Height = 16
          Caption = 'ProNo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 528
          Top = 24
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
        object DBEdit3: TDBEdit
          Left = 392
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'SCBH'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 576
          Top = 16
          Width = 121
          Height = 24
          Color = 14803425
          DataField = 'Article'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBNavigator3: TDBNavigator
          Left = 8
          Top = 16
          Width = 320
          Height = 25
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 2
        end
        object Button3: TButton
          Left = 728
          Top = 8
          Width = 89
          Height = 33
          Caption = 'EXCEL'
          TabOrder = 3
          OnClick = Button3Click
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 49
        Width = 956
        Height = 316
        Align = alClient
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid3DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CLBH'
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YWPM'
            Width = 363
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DWBH'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usage'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLSL'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'okQty'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DelQty'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DFL'
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LYCC'
            Width = 47
            Visible = True
          end>
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 88
    Top = 312
  end
  object DS1: TDataSource
    DataSet = SpecMas
    Left = 168
    Top = 344
  end
  object SpecMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL.SheHao,DD' +
        'ZL.DDZT,'
      
        'SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,XXZL.XieMin' +
        'g,DDZL.GSBH'
      'from SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH '
      'left join DDZL  on ZLZL.DDBH=DDZL.DDBH'
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'order by SCZL.SCBH')
    Left = 208
    Top = 344
    object SpecMasSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object SpecMasXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SpecMasSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SpecMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SpecMasXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SpecMasQty: TFloatField
      FieldName = 'Qty'
    end
    object SpecMasCCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object SpecMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object SpecMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object SpecMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
  end
  object SpecDet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT ZLZLS2.bwbh ,zlzls2.clbh AS clbh  ,sum(zlzls2.clsl) AS cl' +
        'sl ,MAX(ZLZLS2.USAGE) AS USAGE,max(BWZL.ywsm) AS BWMCY ,CLZL.CQD' +
        'H,'
      
        '       max(CLZL.ywpm) AS CLMCY ,max(CLZL.dwbh) AS dwbh,XXZLS.LOS' +
        'S, XXBWFLS.DFL,XXBWFLS.XFL,ZLZLS2.YN,CLZL.LYCC,XXZLS.JGYWSM'
      'FROM ZLZLS2 AS ZLZLS2 '
      'LEFT JOIN BWZL AS BWZL ON ZLZLS2.BWBH = BWZL.bwdh '
      'LEFT JOIN CLZL AS CLZL ON ZLZLS2.CLBH = CLZL.cldh '
      
        'left join (select distinct  SCZL.SCBH,SCZL.ZLBH from SCZL where ' +
        'SCZL.ZLBH=:ZLBH) SCZL on SCZL.SCBH=ZLZLS2.ZLBH'
      'LEFT JOIN DDZL AS DDZL ON SCZL.ZLBH = DDZL.ZLBH '
      'LEFT JOIN XXZLS AS XXZLS ON DDZL.XIEXING = XXZLS.XIEXING '
      
        '        AND DDZL.SHEHAO = XXZLS.SHEHAO AND ZLZLS2.BWBH = XXZLS.B' +
        'WBH AND ZLZLS2.CLBH = XXZLS.CLBH '
      
        'left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing  and  XXBWFL.BWB' +
        'H=ZLZLS2.BWBH '
      'left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH'
      ' '
      'where  ZLZLS2.ZLBH=:SCBH and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39
      
        'GROUP BY zlzls2.zlbh,zlzls2.bwbh,zlzls2.clbh,XXZLS.CLSL,CLZL.CQD' +
        'H,XXZLS.LOSS,XXBWFLS.DFL,XXBWFLS.XFL,ZLZLS2.YN,CLZL.LYCC,CLZL.CQ' +
        'DH,XXZLS.JGYWSM'
      'ORDER BY zlzls2.zlbh , zlzls2.bwbh ASC')
    Left = 276
    Top = 348
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object SpecDetbwbh: TStringField
      FieldName = 'bwbh'
      FixedChar = True
      Size = 4
    end
    object SpecDetBWMCY: TStringField
      FieldName = 'BWMCY'
      FixedChar = True
      Size = 30
    end
    object SpecDetclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 10
    end
    object SpecDetCLMCY: TStringField
      FieldName = 'CLMCY'
      FixedChar = True
      Size = 200
    end
    object SpecDetdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object SpecDetUSAGE: TFloatField
      FieldName = 'USAGE'
      DisplayFormat = '#,##0.0000'
    end
    object SpecDetLOSS: TFloatField
      FieldName = 'LOSS'
      DisplayFormat = '#,##0.0%'
    end
    object SpecDetclsl: TFloatField
      FieldName = 'clsl'
      DisplayFormat = '#,##0.0'
    end
    object SpecDetDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object SpecDetXFL: TStringField
      FieldName = 'XFL'
      FixedChar = True
      Size = 10
    end
    object SpecDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SpecDetLYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object SpecDetCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object SpecDetJGYWSM: TStringField
      FieldName = 'JGYWSM'
      FixedChar = True
      Size = 100
    end
  end
  object DS2: TDataSource
    DataSet = SpecDet
    Left = 308
    Top = 348
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 156
    Top = 228
  end
  object DS3: TDataSource
    DataSet = MatStock
    Left = 400
    Top = 352
  end
  object MatStock: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'declare @p decimal(18,4)  '
      'set @p=(select Delperson from BasData  where GSBH=:GSBH)'
      'select OrdCL1.ZLBH,OrdCL1.CLBH,sum(OrdCL1.Usage) as Usage,'
      
        '        round((sum(OrdCL1.CLSL)+0.0499),1) as CLSL,OrdCL1.DFL,Or' +
        'dCL1.YWPM,OrdCL1.DWBH,OrdCL1.LYCC,'
      
        '        OrdCL1.Article,OrdCL1.XieMing,OrdCL1.XieXing,OrdCL1.SheH' +
        'ao,KCSMCL.okQty,KCSMCLok.DelQty '
      '  from '
      '      ( select  ZLBH,CLBH,sum(USAGE) as USAGE,case when CLTX='#39'3'#39
      ' then sum(CLSL)*@p/100  else sum(CLSL) end as CLSL ,DFL,YWPM, '
      '          DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX'
      
        '     from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as U' +
        'SAGE,'
      
        '             sum(ZLZLS2.CLSL)   CLSL,isnull(XXBWFLS.DFL,'#39'N'#39') as ' +
        'DFL'
      
        '             ,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.Sh' +
        'eHao,XXZL.Article,XXZL.XieMing,isnull(XXZLS.CLTX,1) as CLTX'
      '             from ZLZLS2'
      '             left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '             left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '             left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '             left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZ' +
        'L.SheHao=DDZL.SheHao'
      
        '             left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZ' +
        'L.XieXing=XXBWFL.XieXing'
      '             left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH'
      
        '             left join XXZLS on XXZLS.XieXing=XXZL.XieXing and X' +
        'XZLS.SheHao=XXZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH'
      '            where  ZLZLS2.ZLBH=:ZLBH'
      
        '            group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,CLZL.YW' +
        'PM,CLZL.DWBH,CLZL.LYCC,'
      
        '                 DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieM' +
        'ing,XXZLS.CLTX ) as OrdCL'
      ''
      
        '      group by ZLBH,CLBH,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieX' +
        'ing,SheHao,CLTX) OrdCL1'
      
        'left join (select ZLBH,CLBH,DFL,sum(Qty) as okQty from KCSMCL gr' +
        'oup by ZLBH,CLBH,DFL) KCSMCL'
      
        '             on KCSMCL.ZLBH=OrdCL1.ZLBH and KCSMCL.CLBH=OrdCL1.C' +
        'LBH and KCSMCL.DFL=OrdCL1.DFL'
      
        'left join (select ZLBH,CLBH,DFL,sum(Qty) as DelQty from KCSMCL w' +
        'here YN<>'#39'1'#39' group by ZLBH,CLBH,DFL) KCSMCLok'
      
        '             on KCSMCLok.ZLBH=OrdCL1.ZLBH and KCSMCLok.CLBH=OrdC' +
        'L1.CLBH and KCSMCLok.DFL=OrdCL1.DFL'
      
        'group by OrdCL1.ZLBH,OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.D' +
        'WBH,'
      
        '              OrdCL1.LYCC,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.X' +
        'ieXing,OrdCL1.SheHao,KCSMCL.okQty,KCSMCLok.DelQty'
      'order by OrdCL1.DFL,OrdCL1.CLBH')
    Left = 368
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1Usage: TFloatField
      FieldName = 'Usage'
      DisplayFormat = '##,#0.0000'
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1DelQty: TCurrencyField
      FieldName = 'DelQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1LYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
  end
end

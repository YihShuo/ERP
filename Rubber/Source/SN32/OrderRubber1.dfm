object OrderRubber: TOrderRubber
  Left = 297
  Top = 127
  Width = 1377
  Height = 528
  Caption = 'OrderRubber'
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1361
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label18: TLabel
      Left = 708
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
    object bbt6: TBitBtn
      Left = 608
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'ImRY'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
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
    object btbImEX: TBitBtn
      Left = 656
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'ImEX'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = btbImEXClick
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
    Width = 1361
    Height = 424
    ActivePage = TS4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS3: TTabSheet
      Caption = 'OrdMas'
      ImageIndex = 2
      object DBGridEh0: TDBGridEh
        Left = 0
        Top = 55
        Width = 1353
        Height = 338
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridEh0DblClick
        OnDrawColumnCell = DBGridEh0DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footer.ValueType = fvtCount
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH1'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Width = 97
          end
          item
            EditButtons = <>
            FieldName = 'KHDH'
            Footers = <>
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'KHPO'
            Footers = <>
            Width = 107
          end
          item
            EditButtons = <>
            FieldName = 'DDRQ'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'SCRQ'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DDLB'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Totals'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CQDH'
            Footers = <>
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'DDBZ'
            Footers = <>
            Width = 250
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1353
        Height = 55
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object OrderLabel: TLabel
          Left = 17
          Top = 19
          Width = 35
          Height = 17
          Caption = 'Order:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 390
          Top = 18
          Width = 34
          Height = 16
          Caption = 'From:'
        end
        object Label4: TLabel
          Left = 521
          Top = 20
          Width = 20
          Height = 16
          Caption = 'To:'
        end
        object Label1: TLabel
          Left = 169
          Top = 19
          Width = 45
          Height = 17
          Caption = 'ZLBH1:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 56
          Top = 16
          Width = 105
          Height = 25
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
          Left = 715
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
        object DTP1: TDateTimePicker
          Left = 429
          Top = 16
          Width = 86
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyyMMdd'
          Time = 39255.000000000000000000
          TabOrder = 2
        end
        object DTP2: TDateTimePicker
          Left = 550
          Top = 15
          Width = 86
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyyMMdd'
          Time = 39255.000000000000000000
          TabOrder = 3
        end
        object Check: TCheckBox
          Left = 654
          Top = 17
          Width = 57
          Height = 17
          Caption = 'Mine'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object Edit2: TEdit
          Left = 216
          Top = 16
          Width = 145
          Height = 25
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Button2: TButton
          Left = 803
          Top = 8
          Width = 81
          Height = 33
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = Button2Click
        end
      end
    end
    object TS4: TTabSheet
      Caption = 'OrdDet'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 521
        Height = 393
        Align = alLeft
        TabOrder = 0
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 519
          Height = 338
          Align = alTop
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label2: TLabel
            Left = 11
            Top = 11
            Width = 37
            Height = 16
            Caption = 'Order:'
          end
          object Label5: TLabel
            Left = 4
            Top = 42
            Width = 48
            Height = 16
            Caption = 'XieXing:'
          end
          object Label10: TLabel
            Left = 10
            Top = 72
            Width = 41
            Height = 16
            Caption = 'YSSM:'
          end
          object Label13: TLabel
            Left = 3
            Top = 100
            Width = 50
            Height = 16
            Caption = 'LOSS%:'
          end
          object Label14: TLabel
            Left = 11
            Top = 128
            Width = 41
            Height = 16
            Caption = 'GSBH:'
          end
          object Label16: TLabel
            Left = 11
            Top = 158
            Width = 43
            Height = 16
            Caption = 'DDRQ:'
          end
          object Label19: TLabel
            Left = 11
            Top = 186
            Width = 41
            Height = 16
            Caption = 'SCRQ:'
          end
          object Label20: TLabel
            Left = 11
            Top = 213
            Width = 40
            Height = 16
            Caption = 'DDJQ:'
          end
          object Label21: TLabel
            Left = 15
            Top = 239
            Width = 34
            Height = 16
            Caption = 'Pairs:'
          end
          object Label26: TLabel
            Left = 10
            Top = 266
            Width = 41
            Height = 16
            Caption = 'Memo:'
          end
          object Label6: TLabel
            Left = 183
            Top = 42
            Width = 53
            Height = 16
            Caption = 'SheHao:'
          end
          object Label7: TLabel
            Left = 198
            Top = 11
            Width = 39
            Height = 16
            Caption = 'DDLB:'
          end
          object Label8: TLabel
            Left = 303
            Top = 11
            Width = 44
            Height = 16
            Caption = 'ZLBH1:'
          end
          object Label9: TLabel
            Left = 304
            Top = 42
            Width = 40
            Height = 16
            Caption = 'Article:'
          end
          object Label25: TLabel
            Left = 290
            Top = 232
            Width = 34
            Height = 16
            Caption = 'Total:'
          end
          object Label24: TLabel
            Left = 282
            Top = 208
            Width = 42
            Height = 16
            Caption = 'QtyCH:'
          end
          object Label23: TLabel
            Left = 289
            Top = 183
            Width = 34
            Height = 16
            Caption = 'PJZL:'
          end
          object Label22: TLabel
            Left = 301
            Top = 158
            Width = 21
            Height = 16
            Caption = 'BB:'
          end
          object Label15: TLabel
            Left = 282
            Top = 129
            Width = 42
            Height = 16
            Caption = 'CQDH:'
          end
          object Label27: TLabel
            Left = 439
            Top = 269
            Width = 37
            Height = 16
            Caption = 'QKBL:'
          end
          object SKUBtn: TSpeedButton
            Left = 152
            Top = 40
            Width = 23
            Height = 22
            Caption = '...'
            OnClick = SKUBtnClick
          end
          object DBMemo1: TDBMemo
            Left = 53
            Top = 267
            Width = 377
            Height = 57
            DataField = 'DDBZ'
            DataSource = DS1
            TabOrder = 0
          end
          object DBEdit16: TDBEdit
            Left = 54
            Top = 236
            Width = 92
            Height = 24
            DataField = 'Pairs'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit15: TDBEdit
            Left = 54
            Top = 210
            Width = 92
            Height = 24
            Color = clYellow
            DataField = 'DDJQ'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit14: TDBEdit
            Left = 54
            Top = 183
            Width = 92
            Height = 24
            Color = clYellow
            DataField = 'SCRQ'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit13: TDBEdit
            Left = 54
            Top = 155
            Width = 92
            Height = 24
            DataField = 'DDRQ'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit10: TDBEdit
            Left = 53
            Top = 97
            Width = 92
            Height = 24
            DataField = 'LOSS'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit9: TDBEdit
            Left = 53
            Top = 69
            Width = 452
            Height = 24
            DataField = 'YSSM'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit2: TDBEdit
            Left = 53
            Top = 40
            Width = 100
            Height = 24
            DataField = 'XieXing'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit1: TDBEdit
            Left = 53
            Top = 8
            Width = 121
            Height = 24
            Color = clYellow
            DataField = 'DDBH'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit3: TDBEdit
            Left = 240
            Top = 40
            Width = 49
            Height = 24
            DataField = 'SheHao'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit8: TDBEdit
            Left = 349
            Top = 37
            Width = 156
            Height = 24
            DataField = 'ARTICLE'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object DBEdit7: TDBEdit
            Left = 349
            Top = 8
            Width = 156
            Height = 24
            DataField = 'ZLBH1'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit12: TDBEdit
            Left = 326
            Top = 125
            Width = 92
            Height = 24
            DataField = 'CQDH'
            DataSource = DS1
            ReadOnly = True
            TabOrder = 12
          end
          object DBEdit17: TDBEdit
            Left = 326
            Top = 154
            Width = 92
            Height = 24
            DataField = 'bb'
            DataSource = DS1
            ReadOnly = True
            TabOrder = 13
          end
          object DBEdit18: TDBEdit
            Left = 326
            Top = 180
            Width = 92
            Height = 24
            DataField = 'PJZL'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object DBEdit19: TDBEdit
            Left = 326
            Top = 204
            Width = 92
            Height = 24
            DataField = 'QtyCH'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 15
          end
          object DBEdit20: TDBEdit
            Left = 327
            Top = 230
            Width = 92
            Height = 24
            DataField = 'Totals'
            DataSource = DS1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
          object DBEdit21: TDBEdit
            Left = 440
            Top = 290
            Width = 50
            Height = 24
            DataField = 'QKBL'
            DataSource = DS1
            ReadOnly = True
            TabOrder = 17
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
            TabOrder = 18
            OnClick = CalBtnClick
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
          object DBComboBox1: TDBComboBox
            Left = 240
            Top = 8
            Width = 49
            Height = 24
            DataField = 'DDLB'
            DataSource = DS1
            ItemHeight = 16
            Items.Strings = (
              ''
              'N'
              'S'
              'B'
              'O')
            TabOrder = 19
          end
          object DBComboBox2: TDBComboBox
            Left = 53
            Top = 125
            Width = 93
            Height = 24
            DataField = 'KHDH'
            DataSource = DS1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ItemHeight = 16
            Items.Strings = (
              '')
            ParentFont = False
            TabOrder = 20
          end
        end
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 339
          Width = 519
          Height = 53
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
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'XH'
              Footers = <>
              Width = 20
            end
            item
              EditButtons = <>
              FieldName = 'CLDH'
              Footers = <>
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'Description'
              Footers = <>
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'KGS'
              Footer.ValueType = fvtSum
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'LOSS'
              Footers = <>
            end>
        end
      end
      object Panel7: TPanel
        Left = 521
        Top = 0
        Width = 832
        Height = 393
        Align = alClient
        TabOrder = 1
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 49
          Width = 830
          Height = 343
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
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridEh2DrawColumnCell
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CC'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'xh'
              Footers = <>
              ReadOnly = True
              Width = 19
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footer.FieldName = 'Qty'
              Footer.ValueType = fvtSum
              Footers = <>
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'Price'
              Footers = <>
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'TotalPrice'
              Footers = <>
              Title.Caption = 'TPrice'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'QtySC'
              Footers = <>
              Width = 51
            end
            item
              EditButtons = <>
              FieldName = 'QtyCH'
              Footers = <>
              Width = 48
            end>
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 830
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
            Left = 96
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
            Left = 0
            Top = -9
            Width = 49
            Height = 58
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
            Left = 49
            Top = -9
            Width = 49
            Height = 58
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
          object btnPrice: TBitBtn
            Left = 144
            Top = -2
            Width = 49
            Height = 50
            Hint = 'Inser price all'
            Caption = 'Price'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnClick = btnPriceClick
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000024000000100000000100
              180000000000C0060000C30E0000C30E00000000000000000000F6F6F6F6F6F6
              F6F6F6F6F6F6F4F4F4F6F6F6FAFAFADCDCDCEDEDEDEDEDEDF8F8F8F8F8F8E6E6
              E6E2E2E2F8F8F8F8F8F8F7F7F7F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F4F4F4FA
              FAFADCDCDCEDEDEDF8F8F8F8F8F8F8F8F8E6E6E6F8F8F8F7F7F7F5F5F5F5F5F5
              F6F6F6F6F6F6F4F4F4F5F5F5F5F5F5F5F5F5F8F8F8FFFFFFF0F0F00000004343
              43434343FFFFFFC9C9C9151515000000BABABABABABAFFFFFFF4F4F4F3F3F3F6
              F6F6F4F4F4F4F4F4F8F8F8F0F0F0000000434343FFFFFFFFFFFFC9C9C9151515
              BABABAFFFFFFF9F9F9F9F9F9F3F3F3F6F6F6F6F6F6F2F2F2F9F9F9F9F9F9FFFF
              FF77777738383800000000000000000000000000000000000000000033333333
              3333969696FFFFFFF5F5F5F4F4F4FFFFFFFFFFFFFFFFFF383838000000000000
              000000000000000000000000333333969696F6F6F6F6F6F6F5F5F5F4F4F4F1F1
              F1FDFDFDFFFFFFFFFFFF000000000000000000000000222222222222B3B3B38E
              8E8E080808000000020202020202000000676767FFFFFFFAFAFA343434343434
              000000000000000000222222B3B3B3B3B3B38E8E8E0808080202020000000000
              00000000FFFFFFFAFAFAFFFFFFF6F6F6151515151515000000FFFFFFFFFFFF00
              0000454545454545FFFFFFD0D0D0181818000000DFDFDFDFDFDFB4B4B4000000
              6C6C6CFFFFFF000000000000000000FFFFFF000000454545FFFFFFFFFFFFD0D0
              D0181818DFDFDFB4B4B40202020202026C6C6CFFFFFFFFFFFF75757500000000
              0000FFFFFFFFFFFFF0F0F0000000414141414141FFFFFFCCCCCC151515000000
              C4C4C4C4C4C4FFFFFF000000000000FFFFFF000000000000FFFFFFF0F0F00000
              00414141FFFFFFFFFFFFCCCCCC151515C4C4C4FFFFFF606060606060000000FF
              FFFFF6F6F6EEEEEEDDDDDDDDDDDDFFFFFFFFFFFFF3F3F3000000424242424242
              FFFFFFD0D0D0181818000000E1E1E1E1E1E1AEAEAE0000004D4D4DFFFFFFCDCD
              CDCDCDCDFFFFFFF3F3F3000000424242FFFFFFFFFFFFD0D0D0181818E1E1E1AE
              AEAE0101010101014D4D4DFFFFFFF5F5F5F8F8F8FBFBFBFBFBFBFFFFFFFFFFFF
              F0F0F0000000464646464646C9C9C97878780202020000000000000000000000
              006F6F6FFFFFFFFBFBFBF8F8F8F8F8F8FFFFFFF0F0F0000000464646C9C9C9C9
              C9C9787878020202000000000000000000000000FFFFFFFBFBFBF5F5F5F1F1F1
              FAFAFAFAFAFADDDDDD4E4E4E1414140000000000000000000000000000000000
              000000005A5A5A5A5A5AC4C4C4FFFFFFF3F3F3F7F7F7FFFFFFFFFFFFDDDDDD14
              14140000000000000000000000000000000000005A5A5AC4C4C4FEFEFEFEFEFE
              F3F3F3F7F7F7F1F1F1FFFFFFFFFFFFFFFFFF0000000000002222220000002424
              24242424FFFFFFD6D6D61F1F1F000000C3C3C3C3C3C3FFFFFFFFFFFFF5F5F5F4
              F4F4000000000000000000222222000000242424FFFFFFFFFFFFD6D6D61F1F1F
              C3C3C3FFFFFFFFFFFFFFFFFFF5F5F5F4F4F4F6F6F6FFFFFF4A4A4A4A4A4A0000
              00FFFFFFF9F9F9000000444444444444FFFFFFCCCCCC151515000000CBCBCBCB
              CBCBF7F7F7696969F3F3F3FFFFFF000000000000000000F9F9F9000000444444
              FFFFFFFFFFFFCCCCCC151515CBCBCBF7F7F7909090909090F3F3F3FFFFFFFBFB
              FBFFFFFF3E3E3E3E3E3E000000FFFFFFF0F0F0000000414141414141FFFFFFCD
              CDCD141414000000EDEDEDEDEDED717171000000F5F5F5FFFFFF000000000000
              000000F0F0F0000000414141FFFFFFFFFFFFCDCDCD141414EDEDED7171710000
              00000000F5F5F5FFFFFFF1F1F1FFFFFFDCDCDCDCDCDC000000000000B3B3B300
              0000444444444444FFFFFFC8C8C8151515000000181818181818040404B9B9B9
              FFFFFFF6F6F6000000000000000000B3B3B3000000444444FFFFFFFFFFFFC8C8
              C8151515181818040404000000000000FFFFFFF6F6F6F6F6F6F2F2F2FEFEFEFE
              FEFE828282000000000000000000000000000000000000000000000000000000
              000000000000616161FFFFFFF4F4F4F4F4F4FFFFFFFFFFFF8282820000000000
              00000000000000000000000000000000000000616161F6F6F6F6F6F6F4F4F4F4
              F4F4F4F4F4F5F5F5F3F3F3F3F3F3FFFFFFFFFFFFF1F1F1000000262626262626
              D4D4D4A7A7A7070707000000BEBEBEBEBEBEFFFFFFF4F4F4F3F3F3F6F6F6F6F6
              F6F6F6F6FFFFFFF1F1F1000000262626D4D4D4D4D4D4A7A7A7070707BEBEBEFF
              FFFFFAFAFAFAFAFAF3F3F3F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F3F3F3FFFFFF
              FDFDFD525252B4B4B4B4B4B4FFFFFFF3F3F38E8E8E7E7E7EEDEDEDEDEDEDFDFD
              FDF6F6F6F3F3F3F7F7F7F6F6F6F6F6F6F3F3F3FDFDFD525252B4B4B4FFFFFFFF
              FFFFF3F3F38E8E8EEDEDEDFDFDFDF4F4F4F4F4F4F3F3F3F7F7F7}
            Layout = blGlyphTop
            NumGlyphs = 2
          end
        end
      end
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      '')
    Left = 460
    Top = 316
  end
  object DDZLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT DDZL.* ,XXZL.YSSM ,kfzl.kfjc ,kfzl.bb ,XXZL.HZS ,XXZL.LOS' +
        'S '
      'FROM LIY_DD.dbo.DDZL DDZL  '
      
        'LEFT JOIN LIY_DD.dbo.XXZL XXZL ON DDZL.XieXing = XXZL.XieXing AN' +
        'D DDZL.SheHao = XXZL.SheHao AND DDZL.CQDH=XXZL.CQDH  '
      'LEFT JOIN LIY_DD.dbo.kfzl kfzl ON DDZL.KHDH = kfzl.kfdh  '
      
        'where (( DDZL.DDBH =  '#39'ZSVN1109-004-B1'#39') And ( DDZL.CQDH =  '#39'VR2' +
        #39') ) ')
    UpdateObject = UpDDZL
    Left = 492
    Top = 316
    object DDZLQryDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object DDZLQryCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 3
    end
    object DDZLQryZLBH1: TStringField
      FieldName = 'ZLBH1'
      FixedChar = True
      Size = 18
    end
    object DDZLQryDDLB: TStringField
      FieldName = 'DDLB'
      FixedChar = True
      Size = 1
    end
    object DDZLQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 18
    end
    object DDZLQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object DDZLQryARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object DDZLQryKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object DDZLQryKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 50
    end
    object DDZLQryDDRQ: TStringField
      FieldName = 'DDRQ'
      FixedChar = True
      Size = 8
    end
    object DDZLQrySCRQ: TStringField
      FieldName = 'SCRQ'
      FixedChar = True
      Size = 8
    end
    object DDZLQryDDJQ: TStringField
      FieldName = 'DDJQ'
      FixedChar = True
      Size = 8
    end
    object DDZLQryPairs: TFloatField
      FieldName = 'Pairs'
    end
    object DDZLQryQtySC: TFloatField
      FieldName = 'QtySC'
    end
    object DDZLQryQtyCH: TFloatField
      FieldName = 'QtyCH'
    end
    object DDZLQryTotals: TFloatField
      FieldName = 'Totals'
    end
    object DDZLQryPJZL: TFloatField
      FieldName = 'PJZL'
    end
    object DDZLQryACCNO: TStringField
      FieldName = 'ACCNO'
      FixedChar = True
      Size = 10
    end
    object DDZLQryPGNO: TStringField
      FieldName = 'PGNO'
      FixedChar = True
      Size = 10
    end
    object DDZLQryZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object DDZLQryDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object DDZLQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DDZLQryCQDH1: TStringField
      FieldName = 'CQDH1'
      FixedChar = True
      Size = 3
    end
    object DDZLQryUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object DDZLQryUSERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object DDZLQryDDBZ: TStringField
      FieldName = 'DDBZ'
      FixedChar = True
      Size = 250
    end
    object DDZLQryQKBL: TFloatField
      FieldName = 'QKBL'
    end
    object DDZLQryQTYQK: TFloatField
      FieldName = 'QTYQK'
    end
    object DDZLQryZLBHA: TStringField
      FieldName = 'ZLBHA'
      FixedChar = True
      Size = 15
    end
    object DDZLQryCHRQ: TStringField
      FieldName = 'CHRQ'
      FixedChar = True
      Size = 8
    end
    object DDZLQrymode: TStringField
      FieldName = 'mode'
      FixedChar = True
      Size = 1
    end
    object DDZLQryYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 200
    end
    object DDZLQrykfjc: TStringField
      FieldName = 'kfjc'
      FixedChar = True
    end
    object DDZLQrybb: TStringField
      FieldName = 'bb'
      FixedChar = True
      Size = 4
    end
    object DDZLQryHZS: TFloatField
      FieldName = 'HZS'
    end
    object DDZLQryLOSS: TFloatField
      FieldName = 'LOSS'
    end
  end
  object DDZLSQry: TQuery
    AfterOpen = DDZLSQryAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'Select DDZLS.*,DDZLS.Qty*DDZLS.Price as TotalPrice,'#39'1'#39' as YN'
      'From LIY_DD.dbo.DDZLS DDZLS'
      'WHERE DDBH=:DDBH AND CQDH=:CQDH '
      'ORDER BY DDBH,CQDH,CC,XH'
      '')
    UpdateObject = UPDDZLS
    Left = 572
    Top = 316
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 19
      end
      item
        DataType = ftFixedChar
        Name = 'CQDH'
        ParamType = ptUnknown
        Size = 4
      end>
    object DDZLSQryDDBH: TStringField
      DisplayWidth = 18
      FieldName = 'DDBH'
      FixedChar = True
      Size = 18
    end
    object DDZLSQryCQDH: TStringField
      DisplayWidth = 5
      FieldName = 'CQDH'
      FixedChar = True
      Size = 3
    end
    object DDZLSQryCC: TStringField
      DisplayWidth = 6
      FieldName = 'CC'
      FixedChar = True
      Size = 6
    end
    object DDZLSQryQty: TFloatField
      DisplayWidth = 10
      FieldName = 'Qty'
    end
    object DDZLSQryPrice: TFloatField
      DisplayWidth = 10
      FieldName = 'Price'
    end
    object DDZLSQryIPrice: TFloatField
      DisplayWidth = 10
      FieldName = 'IPrice'
    end
    object DDZLSQryQtySC: TFloatField
      DisplayWidth = 10
      FieldName = 'QtySC'
    end
    object DDZLSQryQtyCH: TFloatField
      DisplayWidth = 10
      FieldName = 'QtyCH'
    end
    object DDZLSQryUSERID: TStringField
      DisplayWidth = 20
      FieldName = 'USERID'
      FixedChar = True
    end
    object DDZLSQryUSERDATE: TStringField
      DisplayWidth = 8
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object DDZLSQryQtyLOSS: TIntegerField
      DisplayWidth = 10
      FieldName = 'QtyLOSS'
    end
    object DDZLSQryxh: TStringField
      DisplayWidth = 1
      FieldName = 'xh'
      FixedChar = True
      Size = 1
    end
    object DDZLSQryTotalPrice: TFloatField
      FieldName = 'TotalPrice'
    end
    object DDZLSQryYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = DDZLQry
    Left = 524
    Top = 316
  end
  object DS2: TDataSource
    DataSet = DDZLSQry
    Left = 604
    Top = 316
  end
  object UpDDZL: TUpdateSQL
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
    Left = 492
    Top = 345
  end
  object UPDDZLS: TUpdateSQL
    ModifySQL.Strings = (
      'update LIY_DD.dbo.DDZLS'
      'set'
      '  Qty=:Qty,'
      '  Price=:Price,'
      '  QtySC=:QtySC,'
      '  QtyCH=:QtyCH,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      ''
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CQDH = :OLD_CQDH and'
      '  DDBH = :OLD_DDBH and'
      '  CC = :OLD_CC and'
      '  xh=:OLD_xh'
      ''
      '')
    InsertSQL.Strings = (
      'INSERT INTO LIY_DD.dbo.DDZLS'
      
        '  (DDBH, CQDH, CC, Price , Qty, QtySC, QtyCH, USERID, USERDATE, ' +
        'xh)'
      'VALUES'
      
        '  (:DDBH, :CQDH, :CC, :Price, :Qty, :QtySC, :QtyCH, :USERID, :US' +
        'ERDATE, :xh)')
    DeleteSQL.Strings = (
      'delete from LIY_DD.dbo.DDZLS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CQDH = :OLD_CQDH and'
      '  DDBH = :OLD_DDBH and'
      '  CC = :OLD_CC and'
      '  xh=:OLD_xh'
      '')
    Left = 572
    Top = 346
  end
  object DDZLS1Qry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select DDZLS1.XH, DDZLS1.CLDH, clzl.ywpm as Description, DDZLS1.' +
        'KGS, DDZLS1.LOSS'
      'from LIY_DD.dbo.DDZLS1 DDZLS1 left join LIY_DD.dbo.clzl clzl'
      'on DDZLS1.cldh=clzl.cldh'
      'where DDZLS1.DDBH=:DDBH and CQDH=:CQDH')
    Left = 140
    Top = 492
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CQDH'
        ParamType = ptUnknown
      end>
    object DDZLS1QryXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 1
    end
    object DDZLS1QryCLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 16
    end
    object DDZLS1QryDescription: TStringField
      FieldName = 'Description'
      FixedChar = True
      Size = 60
    end
    object DDZLS1QryKGS: TFloatField
      FieldName = 'KGS'
    end
    object DDZLS1QryLOSS: TFloatField
      FieldName = 'LOSS'
    end
  end
  object DS3: TDataSource
    DataSet = DDZLS1Qry
    Left = 172
    Top = 492
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 653
    Top = 317
  end
end

object MaterialCode: TMaterialCode
  Left = 290
  Top = 190
  Width = 870
  Height = 500
  Caption = 'MaterialCode'
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
    Width = 862
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
    object bbt5: TBitBtn
      Left = 584
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Send'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PopupMenu = Pop1
      TabOrder = 11
      OnClick = bbt5Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555775777777
        57705557757777775FF7555555555555000755555555555F777F555555555550
        87075555555555F7577F5555555555088805555555555F755F75555555555033
        805555555555F755F75555555555033B05555555555F755F75555555555033B0
        5555555555F755F75555555555033B05555555555F755F75555555555033B055
        55555555F755F75555555555033B05555555555F755F75555555555033B05555
        555555F75FF75555555555030B05555555555F7F7F75555555555000B0555555
        5555F777F7555555555501900555555555557777755555555555099055555555
        5555777755555555555550055555555555555775555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbt6: TBitBtn
      Left = 704
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
    object BBT7: TBitBtn
      Left = 632
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
      TabOrder = 13
      OnClick = BBT7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 862
    Height = 401
    ActivePage = TS2
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
      object DBGrid1: TDBGrid
        Left = 0
        Top = 81
        Width = 854
        Height = 289
        Align = alClient
        DataSource = DS1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'VNI-Times'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'SCBH'
            Title.Alignment = taCenter
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Article'
            Title.Alignment = taCenter
            Width = 187
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'XieMing'
            Title.Alignment = taCenter
            Title.Caption = 'Article Name'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            Title.Alignment = taCenter
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CCGB'
            Title.Alignment = taCenter
            Title.Caption = 'Size'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ShipDate'
            Title.Alignment = taCenter
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DDZT'
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KFJC'
            Width = 102
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 81
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
          Width = 38
          Height = 16
          Caption = 'SKU#:'
        end
        object Label3: TLabel
          Left = 312
          Top = 32
          Width = 60
          Height = 16
          Caption = 'Customer:'
        end
        object Label4: TLabel
          Left = 472
          Top = 32
          Width = 31
          Height = 16
          Caption = 'CSD:'
        end
        object Label7: TLabel
          Left = 608
          Top = 32
          Width = 14
          Height = 16
          Caption = 'To'
        end
        object DBNavigator1: TDBNavigator
          Left = 0
          Top = 56
          Width = 320
          Height = 25
          DataSource = DS1
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 5
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
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 216
          Top = 24
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
          Left = 755
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
          TabOrder = 6
          OnClick = Button1Click
        end
        object Edit3: TEdit
          Left = 376
          Top = 24
          Width = 89
          Height = 24
          TabOrder = 2
        end
        object DTP1: TDateTimePicker
          Left = 504
          Top = 24
          Width = 97
          Height = 24
          Date = 39783.568310717590000000
          Format = 'yyyy/MM/dd'
          Time = 39783.568310717590000000
          TabOrder = 3
        end
        object DTP2: TDateTimePicker
          Left = 632
          Top = 24
          Width = 97
          Height = 24
          Date = 39783.569282222220000000
          Format = 'yyyy/MM/dd'
          Time = 39783.569282222220000000
          TabOrder = 4
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'SpecDet'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 169
        Width = 592
        Height = 201
        Align = alClient
        DataSource = DS2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CLBH'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YWPM'
            Width = 284
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DWBH'
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DFL'
            Width = 26
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLSL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NQty'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LLQty'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Scan'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KCQty'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ZBQty'
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Usage'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LYCC'
            Width = 34
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 854
        Height = 49
        Align = alTop
        TabOrder = 1
        object Label5: TLabel
          Left = 24
          Top = 24
          Width = 40
          Height = 16
          Caption = 'SCBH:'
        end
        object Label6: TLabel
          Left = 232
          Top = 24
          Width = 38
          Height = 16
          Caption = 'CLBH:'
        end
        object Label8: TLabel
          Left = 448
          Top = 24
          Width = 23
          Height = 16
          Caption = 'Qty:'
        end
        object DBEdit1: TDBEdit
          Left = 72
          Top = 16
          Width = 121
          Height = 24
          Color = 15132390
          DataField = 'SCBH'
          DataSource = DS1
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 280
          Top = 16
          Width = 121
          Height = 24
          Color = 15132390
          DataField = 'CLBH'
          DataSource = DS2
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 480
          Top = 16
          Width = 121
          Height = 24
          Color = 15132390
          DataField = 'CLSL'
          DataSource = DS2
          TabOrder = 2
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 49
        Width = 854
        Height = 120
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        object Label9: TLabel
          Left = 32
          Top = 16
          Width = 18
          Height = 20
          Caption = 'A:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 128
          Top = 16
          Width = 18
          Height = 20
          Caption = 'B:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 232
          Top = 16
          Width = 18
          Height = 20
          Caption = 'C:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 328
          Top = 16
          Width = 19
          Height = 20
          Caption = 'D:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 424
          Top = 16
          Width = 18
          Height = 20
          Caption = 'E:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 520
          Top = 16
          Width = 17
          Height = 20
          Caption = 'F:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 32
          Top = 56
          Width = 20
          Height = 20
          Caption = 'G:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object H: TLabel
          Left = 128
          Top = 56
          Width = 19
          Height = 20
          Caption = 'H:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object I: TLabel
          Left = 232
          Top = 56
          Width = 12
          Height = 20
          Caption = 'I:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object J: TLabel
          Left = 328
          Top = 56
          Width = 15
          Height = 20
          Caption = 'J:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object K: TLabel
          Left = 424
          Top = 56
          Width = 17
          Height = 20
          Caption = 'K:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 520
          Top = 56
          Width = 16
          Height = 20
          Caption = 'L:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 32
          Top = 96
          Width = 20
          Height = 20
          Caption = 'M:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 128
          Top = 96
          Width = 18
          Height = 20
          Caption = 'N:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 232
          Top = 96
          Width = 19
          Height = 20
          Caption = 'O:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 328
          Top = 96
          Width = 17
          Height = 20
          Caption = 'P:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 424
          Top = 96
          Width = 19
          Height = 20
          Caption = 'Q:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 520
          Top = 96
          Width = 19
          Height = 20
          Caption = 'R:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object E1: TEdit
          Left = 56
          Top = 8
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = E1Exit
          OnKeyPress = E1KeyPress
        end
        object E2: TEdit
          Left = 152
          Top = 8
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnExit = E2Exit
          OnKeyPress = E2KeyPress
        end
        object E3: TEdit
          Left = 256
          Top = 8
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnExit = E3Exit
          OnKeyPress = E3KeyPress
        end
        object E4: TEdit
          Left = 352
          Top = 8
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnExit = E4Exit
          OnKeyPress = E4KeyPress
        end
        object E5: TEdit
          Left = 448
          Top = 8
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnExit = E5Exit
          OnKeyPress = E5KeyPress
        end
        object E6: TEdit
          Left = 544
          Top = 8
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnExit = E6Exit
          OnKeyPress = E6KeyPress
        end
        object Button2: TButton
          Left = 640
          Top = 76
          Width = 81
          Height = 33
          Caption = 'NO'
          TabOrder = 6
          OnClick = Button2Click
        end
        object E7: TEdit
          Left = 56
          Top = 48
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnExit = E7Exit
          OnKeyPress = E7KeyPress
        end
        object E8: TEdit
          Left = 152
          Top = 48
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnExit = E8Exit
          OnKeyPress = E8KeyPress
        end
        object E9: TEdit
          Left = 256
          Top = 48
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnExit = E9Exit
          OnKeyPress = E9KeyPress
        end
        object E10: TEdit
          Left = 352
          Top = 48
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnExit = E10Exit
          OnKeyPress = E10KeyPress
        end
        object E11: TEdit
          Left = 448
          Top = 48
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnExit = E11Exit
          OnKeyPress = E11KeyPress
        end
        object E12: TEdit
          Left = 544
          Top = 48
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnExit = E12Exit
          OnKeyPress = E12KeyPress
        end
        object E13: TEdit
          Left = 56
          Top = 88
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnExit = E13Exit
          OnKeyPress = E13KeyPress
        end
        object E14: TEdit
          Left = 152
          Top = 88
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnExit = E14Exit
          OnKeyPress = E14KeyPress
        end
        object E15: TEdit
          Left = 256
          Top = 88
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnExit = E15Exit
          OnKeyPress = E15KeyPress
        end
        object E16: TEdit
          Left = 352
          Top = 88
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnExit = E16Exit
          OnKeyPress = E16KeyPress
        end
        object E17: TEdit
          Left = 448
          Top = 88
          Width = 65
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnExit = E17Exit
          OnKeyPress = E17KeyPress
        end
        object E18: TEdit
          Left = 544
          Top = 88
          Width = 73
          Height = 28
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          OnExit = E18Exit
          OnKeyPress = E18KeyPress
        end
      end
      object DBGrid3: TDBGrid
        Left = 592
        Top = 169
        Width = 262
        Height = 201
        Align = alRight
        DataSource = DS3
        ReadOnly = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'XH'
            Width = 26
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qty'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MATCODE'
            Width = 136
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
    Left = 496
    Top = 328
  end
  object Pop1: TPopupMenu
    Left = 608
    Top = 65
    object Divide1: TMenuItem
      Caption = 'Divide'
      OnClick = Divide1Click
    end
  end
  object DS1: TDataSource
    DataSet = SpecMas
    Left = 168
    Top = 344
  end
  object SpecMas: TQuery
    AfterScroll = SpecMasAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select distinct DDZL.GSBH,SCZL.SCBH, SCZL.ZLBH,DDZL.XieXing,DDZL' +
        '.SheHao, DDZL.XieXing,DDZL.DDZT,'
      
        '       SCZL.Qty as Qty,DDZL.Article,DDZL.ShipDate,XXZL.CCGB,XXZL' +
        '.XieMing,KFZL.KFJC'
      'from SCZL'
      'left join ZLZL on ZLZL.ZLBH=SCZL.ZLBH'
      'left join DDZL  on ZLZL.DDBH=DDZL.DDBH'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      
        'left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZ' +
        'L.SheHao'
      'where SCZL.SCBH like '#39'%'#39
      '      and KFZL.KFJC like'#39'%%'#39
      '      and SCZL.SCBH=SCZL.ZLBH'
      '      and XXZL.Article like '#39'%'#39
      
        '      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,11' +
        '1)) between '
      '      '#39'2009/05/06'#39'and '#39'2009/06/05'#39
      'order by SCZL.ZLBH')
    Left = 208
    Top = 344
    object SpecMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
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
      DisplayFormat = '##,#0.0'
    end
    object SpecMasCCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object SpecMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SpecMasDDZT: TStringField
      FieldName = 'DDZT'
      FixedChar = True
      Size = 1
    end
    object SpecMasKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
  end
  object SpecDet: TQuery
    AfterOpen = SpecDetAfterOpen
    OnCalcFields = SpecDetCalcFields
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'declare @p decimal(18,4)'
      'set @p=(select Delperson from BasData where GSBH=:GSBH)'
      ''
      'select OrdCL1.ZLBH,OrdCL1.CLBH,sum(OrdCL1.Usage) as Usage,'
      
        '        round((sum(OrdCL1.CLSL)+0.0499),1) as CLSL,OrdCL1.DFL,Or' +
        'dCL1.YWPM,OrdCL1.DWBH,OrdCL1.LYCC,'
      
        '        OrdCL1.Article,OrdCL1.XieMing,OrdCL1.XieXing,OrdCL1.SheH' +
        'ao,KCSMCL.Scan,isnull(#TEMPCL.Qty,0) as KCQty'
      
        '       ,isnull(CLPEND.Qty,0) as ZBQty,isnull(sum(KCLLS.Qty),0) a' +
        's LLQty'
      'from '
      
        '    ( select  ZLBH,CLBH,sum(USAGE) as USAGE,case when CLTX='#39'3'#39' t' +
        'hen sum(CLSL)*@p/100  else sum(CLSL) end as CLSL ,DFL,YWPM,'
      '          DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX'
      
        '     from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as U' +
        'SAGE,'
      
        '             sum(ZLZLS2.CLSL)   CLSL,isnull(XXBWFLS.DFL,'#39'N'#39') as ' +
        'DFL'
      
        '             ,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.Sh' +
        'eHao,XXZL.Article,XXZL.XieMing,isnull(XXZLS.CLTX,1) as CLTX'
      '             from ZLZLS2'
      '             left join CLZL on ZLZLS2.CLBH=CLZL.CLDH '
      '             left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '             left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '             left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZ' +
        'L.SheHao=DDZL.SheHao'
      
        '             left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZ' +
        'L.XieXing=XXBWFL.XieXing'
      '             left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH'
      
        '             left join XXZLS on XXZLS.XieXing=XXZL.XieXing and X' +
        'XZLS.SheHao=XXZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH'
      '            where ZLZLS2.ZLBH=:SCBH and MJBH='#39'ZZZZZZZZZZ'#39
      '            group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,'
      
        '                 CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL' +
        '.SheHao,XXZL.Article,XXZL.XieMing,XXZLS.CLTX ) as OrdCL'
      
        '      group by ZLBH,CLBH,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieX' +
        'ing,SheHao,CLTX) OrdCL1'
      
        'left join (select distinct ZLBH,CLBH,DFL,'#39'ok'#39' as Scan from KCSMC' +
        'L) KCSMCL on KCSMCL.ZLBH=OrdCL1.ZLBH and KCSMCL.CLBH=OrdCL1.CLBH' +
        ' and KCSMCL.DFL=OrdCL1.DFL'
      'left join #TEMPCL on #TEMPCL.CLDH=OrdCL1.CLBH'
      
        'left join (select CLBH,sum(Qty) as Qty from KCSMCL where YN='#39'1'#39' ' +
        ' or YN='#39'2'#39' group by CLBH) CLPEND on CLPEND.CLBH=OrdCL1.CLBH'
      
        'left join (select SCBH,CLBH,DFL,sum(Qty) as Qty from KCLLS where' +
        ' SCBH=:SCBH group by SCBH,CLBH,DFL  ) KCLLS '
      
        '             on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL1.CLB' +
        'H and KCLLS.DFL=OrdCL1.DFL'
      ''
      
        'group by OrdCL1.ZLBH,OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.D' +
        'WBH,'
      
        '              OrdCL1.LYCC,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.X' +
        'ieXing,OrdCL1.SheHao,KCSMCL.Scan,#TEMPCL.Qty,CLPEND.Qty'
      'order by OrdCL1.ZLBH,OrdCL1.DFL,OrdCL1.CLBH')
    Left = 280
    Top = 344
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'GSBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end>
    object SpecDetZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object SpecDetCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object SpecDetYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object SpecDetDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object SpecDetUsage: TFloatField
      FieldName = 'Usage'
      DisplayFormat = '##,#0.0000'
    end
    object SpecDetCLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object SpecDetNQty: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NQty'
      DisplayFormat = '##,#0.0'
      Calculated = True
    end
    object SpecDetDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object SpecDetLYCC: TStringField
      FieldName = 'LYCC'
      FixedChar = True
      Size = 1
    end
    object SpecDetLLQty: TFloatField
      FieldName = 'LLQty'
      DisplayFormat = '##,#0.0'
    end
    object SpecDetScan: TStringField
      FieldName = 'Scan'
      FixedChar = True
      Size = 2
    end
    object SpecDetKCQty: TFloatField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
    object SpecDetZBQty: TFloatField
      FieldName = 'ZBQty'
      DisplayFormat = '##,#0.0'
    end
    object SpecDetSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object SpecDetXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object SpecDetXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SpecDetArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
  end
  object DS2: TDataSource
    DataSet = SpecDet
    Left = 312
    Top = 344
  end
  object KCSMPRINT: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select *'
      'from KCSMCL'
      'where ZLBH=:ZLBH'
      '         and CLBH=:CLBH'
      '         and DFL=:DFL           '
      'order by CLBH,XH')
    Left = 668
    Top = 316
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'DFL'
        ParamType = ptUnknown
        Size = 2
      end>
    object KCSMPRINTZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.KCSMPRINT.ZLBH'
      FixedChar = True
      Size = 15
    end
    object KCSMPRINTCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCSMPRINT.CLBH'
      FixedChar = True
      Size = 15
    end
    object KCSMPRINTDFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCSMCL.DFL'
      FixedChar = True
      Size = 1
    end
    object KCSMPRINTXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.KCSMPRINT.XH'
      FixedChar = True
      Size = 2
    end
    object KCSMPRINTQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCSMPRINT.Qty'
      DisplayFormat = '##,#0.0'
    end
    object KCSMPRINTMATCODE: TStringField
      FieldName = 'MATCODE'
      Origin = 'DB.KCSMCL.MATCODE'
      FixedChar = True
      Size = 45
    end
  end
  object DS3: TDataSource
    DataSet = KCSMPRINT
    Left = 700
    Top = 316
  end
  object KCSMCL: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'select *'
      'from KCSMCL'
      'where ZLBH=:ZLBH'
      'and CLBH=:CLBH'
      'and DFL=:DFL')
    Left = 436
    Top = 332
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'DFL'
        ParamType = ptUnknown
        Size = 2
      end>
    object KCSMCLZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.KCSMCL.ZLBH'
      FixedChar = True
      Size = 15
    end
    object KCSMCLCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.KCSMCL.CLBH'
      FixedChar = True
      Size = 15
    end
    object KCSMCLDFL: TStringField
      FieldName = 'DFL'
      Origin = 'DB.KCSMCL.DFL'
      FixedChar = True
      Size = 1
    end
    object KCSMCLXH: TStringField
      FieldName = 'XH'
      Origin = 'DB.KCSMCL.XH'
      FixedChar = True
      Size = 1
    end
    object KCSMCLQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCSMCL.Qty'
    end
    object KCSMCLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCSMCL.USERDATE'
    end
    object KCSMCLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.KCSMCL.USERID'
      FixedChar = True
      Size = 15
    end
    object KCSMCLYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.KCSMCL.YN'
      FixedChar = True
      Size = 1
    end
  end
end

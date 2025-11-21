object ScanAdjust2: TScanAdjust2
  Left = 237
  Top = 151
  Width = 1121
  Height = 500
  Caption = 'ScanAdjust2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1105
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 177
    Width = 1105
    Height = 284
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'SMNO'
        Footers = <>
        ReadOnly = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'GX'
        Title.TitleButton = True
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.Caption = 'OrderNO'
        Title.TitleButton = True
        Width = 114
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        ReadOnly = True
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Size'
        Title.TitleButton = True
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 32
      end
      item
        EditButtons = <>
        FieldName = 'CODEBAR'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 108
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 49
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'CTS'
        Footers = <
          item
            FieldName = 'CTS'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'TotQty'
        Footers = <
          item
            FieldName = 'TotQty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Width = 59
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'ScanDate'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 174
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Width = 174
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1105
    Height = 112
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 5
      Top = 35
      Width = 34
      Height = 16
      Caption = 'From:'
    end
    object Label2: TLabel
      Left = 240
      Top = 35
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label3: TLabel
      Left = 4
      Top = 77
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Label4: TLabel
      Left = 197
      Top = 77
      Width = 45
      Height = 16
      Caption = 'OrdNO:'
    end
    object Label5: TLabel
      Left = 375
      Top = 77
      Width = 37
      Height = 16
      Caption = 'GXLB:'
    end
    object Label8: TLabel
      Left = 479
      Top = 78
      Width = 29
      Height = 16
      Caption = 'Size:'
    end
    object DTP1: TDateTimePicker
      Left = 40
      Top = 27
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 0
      OnChange = DTP1Change
    end
    object DTP2: TDateTimePicker
      Left = 144
      Top = 27
      Width = 89
      Height = 24
      Date = 39983.000011574070000000
      Format = 'HH:mm:ss'
      Time = 39983.000011574070000000
      Kind = dtkTime
      TabOrder = 1
    end
    object Button1: TButton
      Left = 475
      Top = 19
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 6
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 71
      Top = 69
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 243
      Top = 69
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object DTP3: TDateTimePicker
      Left = 264
      Top = 27
      Width = 97
      Height = 24
      Date = 39983.610104166670000000
      Format = 'yyyy/MM/dd'
      Time = 39983.610104166670000000
      TabOrder = 2
    end
    object DTP4: TDateTimePicker
      Left = 368
      Top = 27
      Width = 89
      Height = 24
      Date = 39983.999988425930000000
      Format = 'HH:mm:ss'
      Time = 39983.999988425930000000
      Kind = dtkTime
      TabOrder = 3
    end
    object CBX4: TComboBox
      Left = 414
      Top = 69
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 7
    end
    object CBX5: TComboBox
      Left = 509
      Top = 69
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 8
      Items.Strings = (
        'ALL')
    end
    object GroupBox1: TGroupBox
      Left = 579
      Top = -5
      Width = 595
      Height = 77
      TabOrder = 9
      Visible = False
      object Label6: TLabel
        Left = 133
        Top = 17
        Width = 84
        Height = 16
        Caption = 'Count_SMNO:'
        Visible = False
      end
      object Label9: TLabel
        Left = 157
        Top = 55
        Width = 63
        Height = 16
        Caption = 'Dep_New:'
        Visible = False
      end
      object Label10: TLabel
        Left = 363
        Top = 55
        Width = 43
        Height = 16
        Caption = 'SMNO:'
        Visible = False
      end
      object Label11: TLabel
        Left = 488
        Top = 50
        Width = 15
        Height = 16
        Caption = '-->'
        Visible = False
      end
      object Label7: TLabel
        Left = 292
        Top = 16
        Width = 41
        Height = 16
        Caption = 'Times:'
        Visible = False
      end
      object CB1: TRadioButton
        Left = 5
        Top = 15
        Width = 112
        Height = 18
        Caption = 'Chuyenthoigian'
        Color = clYellow
        ParentColor = False
        TabOrder = 0
        Visible = False
        OnClick = CB1Click
      end
      object CB2: TRadioButton
        Left = 6
        Top = 53
        Width = 110
        Height = 17
        Caption = 'Chuyendonvi'
        Color = clAqua
        ParentColor = False
        TabOrder = 1
        Visible = False
        OnClick = CB2Click
      end
      object Edit4: TEdit
        Left = 225
        Top = 47
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        Color = clAqua
        TabOrder = 2
        Visible = False
      end
      object Dep: TButton
        Left = 337
        Top = 46
        Width = 19
        Height = 25
        Caption = '...'
        TabOrder = 3
        Visible = False
        OnClick = DepClick
      end
      object Edit5: TEdit
        Left = 407
        Top = 46
        Width = 81
        Height = 24
        Color = clInactiveBorder
        TabOrder = 4
        Visible = False
      end
      object Edit6: TEdit
        Left = 503
        Top = 46
        Width = 81
        Height = 24
        Color = clInactiveBorder
        TabOrder = 5
        Visible = False
      end
      object TIME: TDateTimePicker
        Left = 430
        Top = 10
        Width = 82
        Height = 24
        Date = 39983.000011574070000000
        Format = 'HH:mm:ss'
        Time = 39983.000011574070000000
        Color = clYellow
        Kind = dtkTime
        TabOrder = 6
        Visible = False
      end
      object DATE: TDateTimePicker
        Left = 335
        Top = 10
        Width = 97
        Height = 24
        Date = 39983.610104166670000000
        Format = 'yyyy/MM/dd'
        Time = 39983.610104166670000000
        Enabled = False
        TabOrder = 7
        Visible = False
      end
      object Edit7: TEdit
        Left = 541
        Top = 9
        Width = 41
        Height = 24
        Enabled = False
        TabOrder = 8
        Text = '0'
        Visible = False
      end
      object sedtQty: TSpinEdit
        Left = 224
        Top = 10
        Width = 43
        Height = 26
        Color = clYellow
        MaxValue = 0
        MinValue = 0
        TabOrder = 9
        Value = 0
        Visible = False
        OnChange = sedtQtyChange
      end
    end
    object GroupBox2: TGroupBox
      Left = 580
      Top = 72
      Width = 357
      Height = 36
      TabOrder = 10
      Visible = False
      object lbQty: TLabel
        Left = 134
        Top = 14
        Width = 84
        Height = 16
        Caption = 'Count_SMNO:'
        Visible = False
      end
      object edtQtyDelete: TEdit
        Left = 225
        Top = 10
        Width = 41
        Height = 24
        Color = 19967
        TabOrder = 0
        Visible = False
        OnChange = edtQtyDeleteChange
        OnKeyPress = edtQtyDeleteKeyPress
      end
      object cbXoa: TCheckBox
        Left = 6
        Top = 13
        Width = 107
        Height = 17
        Caption = 'Xoa'
        Color = 19967
        ParentColor = False
        TabOrder = 1
        Visible = False
        OnClick = cbXoaClick
      end
      object Edit8: TEdit
        Left = 306
        Top = 9
        Width = 41
        Height = 24
        Enabled = False
        TabOrder = 2
        Text = '0'
        Visible = False
      end
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 280
    Top = 264
  end
  object UpSMZL: TUpdateSQL
    ModifySQL.Strings = (
      'update SMZL'
      'set'
      '   ScanDate = :ScanDate,'
      '   USERDATE =:USERDATE'
      'where'
      '  SMNO = :OLD_SMNO and'
      '  ScanDate = :OLD_ScanDate and'
      '  USERDATE =:OLD_USERDATE')
    InsertSQL.Strings = (
      'insert into SMZL'
      '  (CTS, DepNO, ScanDate)'
      'values'
      '  (:CTS, :DepNO, :ScanDate)')
    DeleteSQL.Strings = (
      'delete from SMZL'
      'where'
      '  SMNO = :OLD_SMNO')
    Left = 248
    Top = 320
  end
  object SMZL: TQuery
    OnCalcFields = SMZLCalcFields
    OnNewRecord = SMZLNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMZL.SMNO,SMZL.CODEBAR,  SMZL.CTS,  SMZL.DepNO,  convert(' +
        'smalldatetime,convert(varchar,SMZL.ScanDate,111)) as ScanDate'
      '        , SMZL.USERDATE,  SMZL.USERID,  SMZL.YN,  SMZL.SB'
      '        ,BDepartment.DepName,SMDDSS.DDBH,SMDD.YSBH,SMDDSS.GXLB'
      '         ,SMDDSS.XXCC,SMDDSS.XH,SMDDSS.Qty,SMDDSS.CTS as oldCTS'
      'from SMZL '
      'left join BDepartment on BDepartment.ID=SMZL.DepNo '
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR '
      
        'left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXL' +
        'B'
      
        'where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111))' +
        ' between'
      '      '#39'2009/09/16'#39' and '#39'2009/09/19'#39
      'order by SMDDSS.GXLB,SMDDSS.DDBH,SMZL.CodeBar ')
    UpdateObject = UpSMZL
    Left = 288
    Top = 320
    object SMZLSMNO: TFloatField
      FieldName = 'SMNO'
    end
    object SMZLDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMZLGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMZLXXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMZLXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 1
    end
    object SMZLQty: TIntegerField
      FieldName = 'Qty'
    end
    object SMZLCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZLCTS: TIntegerField
      FieldName = 'CTS'
    end
    object SMZLDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMZLDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMZLScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object SMZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object SMZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMZLTotQty: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'TotQty'
      Calculated = True
    end
    object SMZLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SMZLoldCTS: TIntegerField
      FieldName = 'oldCTS'
    end
    object SMZLSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object SMZLYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS1: TDataSource
    DataSet = SMZL
    Left = 328
    Top = 320
  end
  object UpSMZLold: TUpdateSQL
    ModifySQL.Strings = (
      'update SMZLold'
      'set'
      '   ScanDate = :ScanDate,'
      '   USERDATE =:USERDATE'
      'where'
      ' SMNO = :OLD_SMNO and '
      ' ScanDate = :OLD_ScanDate and'
      '  USERDATE =:OLD_USERDATE')
    DeleteSQL.Strings = (
      'delete from SMZLold'
      'where'
      '  SMNO = :OLD_SMNO   '
      '')
    Left = 248
    Top = 360
  end
  object SMZLold: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select smzlold.*'
      'from smzlold'
      'inner join smddss on smzlold.codebar=smddss.codebar'
      'inner join bdepartment on smzlold.depno=bdepartment.id'
      
        'where scandate between '#39'2018/04/26 00:00:00'#39' and '#39'2018/04/26 23:' +
        '59:59'#39
      'and depname like '#39'A2_LEAN2-11_G%'#39
      'and SMDDSS.DDBH like '#39'Y1804-0078%'#39
      'and smddss.gxlb='#39'a'#39
      'order by SMDDSS.GXLB,SMDDSS.DDBH,SMZLOld.CodeBar')
    UpdateObject = UpSMZLold
    Left = 288
    Top = 360
    object SMZLoldSMNO: TFloatField
      FieldName = 'SMNO'
    end
    object SMZLoldCODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZLoldCTS2: TIntegerField
      FieldName = 'CTS'
    end
    object SMZLoldDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMZLoldScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object SMZLoldUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object SMZLoldUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMZLoldYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = SMZLold
    Left = 328
    Top = 360
  end
  object SMZL2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select SMZL.*,SMDD.YSBH,SCBB.PRONO,SMDDSS.XXCC,SMDDSS.Qty as Per' +
        'Qty,SMDDSS.GXLB'
      'from SMZL'
      'left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR'
      'left join SMDD on SMDD.DDBH=SMDDSS.DDBH'
      
        'left join SCBB on SCBB.DepNO=SMZL.DepNO and convert(varchar,SCBB' +
        '.SCDate,111)=convert(varchar,SMZL.ScanDate,111)'
      'where SMZL.SMNO=:SMNO')
    Left = 288
    Top = 400
    ParamData = <
      item
        DataType = ftFloat
        Name = 'SMNO'
        ParamType = ptUnknown
        Size = 8
      end>
    object SMZL2SMNO: TFloatField
      FieldName = 'SMNO'
    end
    object SMZL2CODEBAR: TStringField
      FieldName = 'CODEBAR'
      FixedChar = True
    end
    object SMZL2CTS: TIntegerField
      FieldName = 'CTS'
    end
    object SMZL2DepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMZL2ScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object SMZL2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object SMZL2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMZL2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SMZL2SB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object SMZL2YSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SMZL2PRONO: TStringField
      FieldName = 'PRONO'
      FixedChar = True
      Size = 10
    end
    object SMZL2XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object SMZL2PerQty: TIntegerField
      FieldName = 'PerQty'
    end
    object SMZL2GXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
  end
  object Dep_New: TQuery
    DatabaseName = 'DB'
    Left = 328
    Top = 264
  end
end

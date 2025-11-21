object PreOrder_Calcuate: TPreOrder_Calcuate
  Left = 459
  Top = 342
  Width = 999
  Height = 612
  Caption = 'PreOrder_Calcuate'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 65
    Align = alTop
    TabOrder = 0
    object BD2: TBitBtn
      Left = 65
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
    object BD3: TBitBtn
      Left = 113
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
    object BD4: TBitBtn
      Left = 161
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
    object BD5: TBitBtn
      Left = 209
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
    object BD6: TBitBtn
      Left = 257
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
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
    object BD7: TBitBtn
      Left = 305
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
    object BD1: TBitBtn
      Left = 15
      Top = 9
      Width = 49
      Height = 49
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BD1Click
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
    object BDT5: TBitBtn
      Left = 384
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'PrintL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BDT5Click
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 991
    Height = 65
    Align = alTop
    TabOrder = 1
    Visible = False
    object BB2: TBitBtn
      Left = 65
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      Left = 114
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
      Left = 162
      Top = 9
      Width = 48
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      Left = 210
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      Left = 259
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      Left = 308
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
    object bbt6: TBitBtn
      Left = 386
      Top = 9
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
      Left = 448
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'CAL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = bbt7Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000EEEEEEFFFFFF
        8B8B8B0808081212121414141313131313131313131313131313131313131313
        131313131313131313131313131313131414140C0C0C1F1F1FCECECEFAFAFAEE
        EEEEFDFDFD6A6A6A0A0A0AEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B8
        B8000000D1D1D1F2F2F2FFFFFF000000ECECECF7F7F7F1F1F1E6E6E6E6E6E6E6
        E6E6F1F1F1F6F6F6E6E6E6E6E6E6E6E6E6ECECECF7F7F7EAEAEAE6E6E6E6E6E6
        E7E7E7F4F4F4FFFFFF7A7A7A353535FFFFFFF6F6F6000000F9F9F9FFFFFF2121
        210000000A0A0A0000001F1F1F9A9A9A0000000A0A0A0A0A0A000000D1D1D100
        00000A0A0A0A0A0A0000008F8F8FFFFFFF949494242424FFFFFFF8F8F8000000
        F7F7F7FFFFFF111111BDBDBDFFFFFFC9C9C9111111919191575757FFFFFFFFFF
        FF000000CBCBCB000000FFFFFFFFFFFF414141848484FFFFFF929292252525FF
        FFFFF8F8F8000000F7F7F7FFFFFF0F0F0F969696E3E3E3A0A0A00E0E0E8F8F8F
        3F3F3FE7E7E7E8E8E8000000C7C7C7000000DEDEDEE9E9E92C2C2C828282FFFF
        FF929292252525FFFFFFF8F8F8000000F7F7F7FEFEFE7575752D2D2D2C2C2C2D
        2D2D747474C6C6C62E2E2E2C2C2C2B2B2B3F3F3FECECEC3E3E3E2C2C2C2C2C2C
        313131BDBDBDFFFFFF929292252525FFFFFFF8F8F8000000F7F7F7FFFFFF6464
        64171717161616171717626262C0C0C0171717161616151515292929E9E9E929
        29291616161616161A1A1AB5B5B5FFFFFF929292252525FFFFFFF8F8F8000000
        F7F7F7FFFFFF0F0F0FA1A1A1F2F2F2ABABAB0F0F0F909090464646F5F5F5F8F8
        F8000000C8C8C8000000ECECECF7F7F7323232828282FFFFFF929292252525FF
        FFFFF8F8F8000000F7F7F7FFFFFF111111BEBEBEFFFFFFCACACA111111919191
        565656FFFFFFFFFFFF000000CACACA000000FFFFFFFFFFFF414141848484FFFF
        FF929292252525FFFFFFF8F8F8000000F7F7F7FFFFFF32323200000007070700
        0000303030A4A4A4000000080808070707000000D8D8D8000000070707080808
        000000989898FFFFFF929292252525FFFFFFF8F8F8000000F7F7F7F8F8F8B1B1
        B1717171727272717171AFAFAFE7E7E7717171717171707070878787FFFFFF82
        8282717171717171747474DFDFDFFCFCFC929292252525FFFFFFF8F8F8000000
        F7F7F7FFFFFF1010104F4F4F8282825656560F0F0F8E8E8E1616168383838484
        84000000C6C6C60000007E7E7E8585850B0B0B828282FFFFFF929292252525FF
        FFFFF8F8F8000000F7F7F7FFFFFF131313BDBDBDFFFFFFC8C8C8131313939393
        565656FFFFFFFFFFFF000000CBCBCB000000FFFFFFFFFFFF414141858585FFFF
        FF929292252525FFFFFFF8F8F8000000F7F7F7FFFFFF0F0F0F3939396565653E
        3E3E0E0E0E8F8F8F090909656565666666000000C8C8C8000000606060666666
        000000828282FFFFFF929292252525FFFFFFF8F8F8000000F7F7F7F5F5F5BFBF
        BF909090919191919191BFBFBFE9E9E9919191919191909090A1A1A1FAFAFA9F
        9F9F909090919191939393E0E0E0FBFBFB929292252525FFFFFFF8F8F8000000
        F7F7F7F0F0F0F6F6F6ECECECECECECECECECE8E8E8E4E4E4ECECECECECECECEC
        ECEBEBEBE3E3E3EBEBEBECECECECECECEDEDEDF6F6F6F9F9F9929292252525FF
        FFFFF8F8F8000000F7F7F7FFFFFF1E1E1E000000050505040404030303030303
        0303030303030303030303030303030303030303030707070000008D8D8DFFFF
        FF929292252525FFFFFFF8F8F8000000F7F7F7FFFFFF121212BCBCBCFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        414141848484FFFFFF929292252525FFFFFFF4F4F4000000F5F5F5FFFFFF0F0F
        0FB1B1B1FFFFFFFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC
        FCFCFCFCFCFFFFFF3B3B3B838383FFFFFF939393252525FFFFFFF4F4F4000000
        F6F6F6FFFFFF4949490000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000A3A3A3FFFFFF959595232323FF
        FFFFFFFFFF000000999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF222222737373FAFAFAF2F2F2DCDCDC0000004B4B4B9C9C9C9A9A9A98989898
        98989797979797979999999B9B9B9797979898989797979898989999999B9B9B
        9B9B9B9191910D0D0D272727FFFFFFEFEFEFEEEEEEF4F4F4FAFAFA9696966767
        6765656566666666666666666666666666666666666666666665656566666664
        64646565656464646262626D6D6DBCBCBCFFFFFFEFEFEFEEEEEE}
      Layout = blGlyphTop
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 130
    Width = 991
    Height = 451
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = PC1Change
    object TS1: TTabSheet
      Caption = 'Master'
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 41
        Width = 983
        Height = 379
        Align = alClient
        DataSource = DSYGZL
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
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBGridEh4DblClick
        OnDrawColumnCell = DBGridEh4DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YGNO'
            Footers = <>
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Width = 215
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Width = 68
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 983
        Height = 41
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
        object Label4: TLabel
          Left = 489
          Top = 12
          Width = 15
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = '~'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 3
          Top = 10
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'YGNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 168
          Top = 10
          Width = 84
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Memo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Button1: TButton
          Left = 604
          Top = 3
          Width = 78
          Height = 30
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 394
          Top = 7
          Width = 90
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object DTP2: TDateTimePicker
          Left = 515
          Top = 7
          Width = 87
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object CheckBox1: TCheckBox
          Left = 341
          Top = 12
          Width = 48
          Height = 14
          Caption = 'From'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          State = cbChecked
          TabOrder = 3
        end
        object YGNOEdit: TEdit
          Left = 93
          Top = 7
          Width = 79
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object MemoEdit: TEdit
          Left = 253
          Top = 7
          Width = 79
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object Check: TCheckBox
          Left = 693
          Top = 11
          Width = 57
          Height = 17
          Caption = 'Mine'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'Detail'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 983
        Height = 420
        Align = alClient
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 977
          Top = 1
          Width = 5
          Height = 316
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object Splitter2: TSplitter
          Left = 1
          Top = 317
          Width = 981
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 976
          Height = 316
          Align = alClient
          TabOrder = 0
          object LeftPanel: TPanel
            Left = 1
            Top = 1
            Width = 613
            Height = 314
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBGridEh1: TDBGridEh
              Left = 1
              Top = 1
              Width = 611
              Height = 312
              Align = alClient
              DataSource = DSYGZLS
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
              Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
              ParentFont = False
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGridEh1DrawColumnCell
              OnEditButtonClick = DBGridEh1EditButtonClick
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'Article'
                  Footers = <>
                  ReadOnly = True
                  Width = 92
                end
                item
                  EditButtons = <>
                  FieldName = 'BWBH'
                  Footers = <>
                  ReadOnly = True
                  Width = 45
                end
                item
                  EditButtons = <>
                  FieldName = 'YWSM'
                  Footers = <>
                  ReadOnly = True
                  Width = 77
                end
                item
                  EditButtons = <>
                  FieldName = 'ZWSM'
                  Footers = <>
                  ReadOnly = True
                  Width = 75
                end
                item
                  EditButtons = <>
                  FieldName = 'CLBH'
                  Footers = <>
                  ReadOnly = True
                  Width = 85
                end
                item
                  EditButtons = <>
                  FieldName = 'YWPM'
                  Footers = <>
                  ReadOnly = True
                  Width = 203
                end
                item
                  EditButtons = <>
                  FieldName = 'ZWPM'
                  Footers = <>
                  ReadOnly = True
                  Width = 221
                end
                item
                  EditButtons = <>
                  FieldName = 'CCQQ'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'CCQZ'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'DWBH'
                  Footers = <>
                  ReadOnly = True
                end
                item
                  EditButtons = <>
                  FieldName = 'CQDH'
                  Footers = <>
                  ReadOnly = True
                end
                item
                  EditButtons = <>
                  FieldName = 'CSBH'
                  Footers = <>
                  ReadOnly = True
                end
                item
                  EditButtons = <>
                  FieldName = 'zsywjc'
                  Footers = <>
                  ReadOnly = True
                  Width = 108
                end
                item
                  EditButtons = <>
                  FieldName = 'USERID'
                  Footers = <>
                  ReadOnly = True
                  Width = 58
                end
                item
                  EditButtons = <>
                  FieldName = 'USERDATE'
                  Footers = <>
                  ReadOnly = True
                  Width = 81
                end>
            end
          end
          object Panel4: TPanel
            Left = 614
            Top = 1
            Width = 361
            Height = 314
            Align = alRight
            TabOrder = 1
            object DBGridEh2: TDBGridEh
              Left = 1
              Top = 305
              Width = 359
              Height = 8
              Align = alClient
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
              ParentFont = False
              ReadOnly = True
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              Visible = False
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'BUYNO'
                  Footers = <>
                  Width = 72
                end
                item
                  EditButtons = <>
                  FieldName = 'ZLBH'
                  Footers = <>
                  Width = 80
                end
                item
                  EditButtons = <>
                  FieldName = 'Size'
                  Footers = <>
                end
                item
                  EditButtons = <>
                  FieldName = 'Qty'
                  Footers = <
                    item
                      FieldName = 'Qty'
                      ValueType = fvtSum
                    end>
                  Width = 46
                end
                item
                  EditButtons = <>
                  FieldName = 'Pairs'
                  Footers = <>
                  Width = 50
                end
                item
                  EditButtons = <>
                  FieldName = 'KHPO'
                  Footers = <>
                  Width = 80
                end>
            end
            object Panel5: TPanel
              Left = 1
              Top = 1
              Width = 359
              Height = 304
              Align = alTop
              TabOrder = 1
              object DBGridEh3: TDBGridEh
                Left = 1
                Top = 57
                Width = 357
                Height = 246
                Align = alClient
                DataSource = DSYGZLSS
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
                ParentFont = False
                SumList.Active = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDrawColumnCell = DBGridEh3DrawColumnCell
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'XTCC'
                    Footers = <>
                    Width = 72
                  end
                  item
                    Color = clYellow
                    EditButtons = <>
                    FieldName = 'Pairs'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CLSL'
                    Footers = <>
                    ReadOnly = True
                    Title.Caption = 'Usage'
                    Width = 69
                  end>
              end
              object Panel6: TPanel
                Left = 1
                Top = 1
                Width = 357
                Height = 56
                Align = alTop
                TabOrder = 1
                object BC2: TBitBtn
                  Left = 2
                  Top = 2
                  Width = 55
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
                  TabOrder = 0
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
                  Left = 56
                  Top = 2
                  Width = 55
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
                  TabOrder = 1
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
                object BC4: TBitBtn
                  Left = 110
                  Top = 2
                  Width = 53
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
                object BC5: TBitBtn
                  Left = 162
                  Top = 2
                  Width = 47
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
                  TabOrder = 3
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
                object BC6: TBitBtn
                  Left = 208
                  Top = 2
                  Width = 50
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
                  TabOrder = 4
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
              end
            end
          end
        end
        object Panel9: TPanel
          Left = 1
          Top = 320
          Width = 981
          Height = 99
          Align = alBottom
          TabOrder = 1
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 1
            Width = 979
            Height = 97
            Align = alClient
            DataSource = DSYGZLS2
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
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridEh4DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ARTICLE'
                Footers = <>
                Width = 95
              end
              item
                EditButtons = <>
                FieldName = 'BWBH'
                Footers = <>
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'ZWSM'
                Footers = <>
                Width = 80
              end
              item
                EditButtons = <>
                FieldName = 'YWSM'
                Footers = <>
                Width = 74
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                Width = 315
              end
              item
                EditButtons = <>
                FieldName = 'ZWPM'
                Footers = <>
                Width = 255
              end
              item
                EditButtons = <>
                FieldName = 'SIZE'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'CSBH'
                Footers = <>
                Width = 54
              end
              item
                EditButtons = <>
                FieldName = 'CLSL'
                Footers = <>
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'CQDH'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                Width = 58
              end
              item
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                Width = 84
              end>
          end
        end
      end
    end
  end
  object qryYGZL: TQuery
    AfterOpen = qryYGZLAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from YGZL')
    UpdateObject = UpYGZL
    Left = 296
    Top = 212
    object qryYGZLYGNO: TStringField
      FieldName = 'YGNO'
      Origin = 'DB.YGZL.YGNO'
      FixedChar = True
      Size = 11
    end
    object qryYGZLGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.YGZL.GSBH'
      FixedChar = True
      Size = 4
    end
    object qryYGZLMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.YGZL.Memo'
      FixedChar = True
      Size = 30
    end
    object qryYGZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YGZL.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryYGZLUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YGZL.USERID'
      FixedChar = True
      Size = 15
    end
    object qryYGZLYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YGZL.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DSYGZL: TDataSource
    DataSet = qryYGZL
    Left = 296
    Top = 244
  end
  object UpYGZL: TUpdateSQL
    ModifySQL.Strings = (
      'Update YGZL'
      'Set'
      '  Memo=:Memo,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where YGNO=:OLD_YGNO')
    InsertSQL.Strings = (
      'Insert into YGZL'
      '    (YGNO, GSBH, Memo, UserID, UserDate, YN)'
      'values'
      '    (:YGNO, :GSBH, :Memo, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete '
      'from YGZL'
      'where YGNO=:OLD_YGNO')
    Left = 296
    Top = 276
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from KCZKP')
    Left = 259
    Top = 212
  end
  object qryYGZLS: TQuery
    AfterOpen = qryYGZLSAfterOpen
    DatabaseName = 'DB'
    DataSource = DSYGZL
    SQL.Strings = (
      
        'Select YGZLS.YGNO, XXZL.Article, YGZLS.XieXing, YGZLS.SheHao, YG' +
        'ZLS.BWBH, BWZL.YWSM, BWZL.ZWSM ,XXZLS.CLBH,XXZLS.CCQQ,XXZLS.CCQZ' +
        ',CLZL.YWPM,CLZL.ZWPM,'
      
        '       CLZL.DWBH,CLZL.CQDH,XXZLS.CSBH,ZSZL.zsywjc, YGZLS.USERID,' +
        ' YGZLS.USERDATE, YGZLS.YN'
      'From YGZLS'
      
        'Left join XXZLS on XXZLS.XieXing=YGZLS.XieXing and XXZLS.SheHao=' +
        'YGZLS.SheHao and XXZLS.BWBH=YGZLS.BWBH'
      
        'Left join XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZ' +
        'LS.SheHao'
      'Left join BWZL on BWZL.bwdh=YGZLS.BWBH'
      'Left join CLZL on CLZL.CLDH=XXZLS.CLBH'
      'Left join ZSZL on ZSZL.ZSDH=XXZLS.CSBH'
      'Where  YGZLS.YGNO=:YGNO')
    UpdateObject = upYGZLS
    Left = 336
    Top = 212
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object qryYGZLSYGNO: TStringField
      FieldName = 'YGNO'
      FixedChar = True
      Size = 11
    end
    object qryYGZLSArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object qryYGZLSXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qryYGZLSSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qryYGZLSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object qryYGZLSYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object qryYGZLSZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
    object qryYGZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object qryYGZLSYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object qryYGZLSZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object qryYGZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object qryYGZLSCCQQ: TStringField
      FieldName = 'CCQQ'
      FixedChar = True
      Size = 6
    end
    object qryYGZLSCCQZ: TStringField
      FieldName = 'CCQZ'
      FixedChar = True
      Size = 6
    end
    object qryYGZLSCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object qryYGZLSCSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object qryYGZLSzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qryYGZLSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object qryYGZLSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryYGZLSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object upYGZLS: TUpdateSQL
    ModifySQL.Strings = (
      'update YGZLS'
      'Set'
      '  XieXing =:XieXing,'
      '  SheHao =:SheHao,'
      '  BWBH =:BWBH,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where'
      '  YGNO =:OLD_YGNO,'
      '  and XieXing =:OLD_XieXing,'
      '  and SheHao =:OLD_SheHao,'
      '  and BWBH =:OLD_BWBH')
    InsertSQL.Strings = (
      'Insert into YGZLS'
      '   (YGNO, XieXing , SheHao ,BWBH, UserID, UserDate, YN)'
      'values'
      '   (:YGNO, :XieXing, :SheHao, :BWBH, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete from YGZLS'
      'where'
      '  YGNO =:OLD_YGNO'
      '  and XieXing =:OLD_XieXing'
      '  and SheHao =:OLD_SheHao'
      '  and BWBH =:OLD_BWBH')
    Left = 336
    Top = 276
  end
  object DSYGZLS: TDataSource
    DataSet = qryYGZLS
    Left = 336
    Top = 244
  end
  object qryYGZLSS: TQuery
    AfterOpen = qryYGZLSSAfterOpen
    DatabaseName = 'DB'
    DataSource = DSYGZLS
    SQL.Strings = (
      'Select YGZLSS.*,xtbwyl1.CLSL '
      'from YGZLSS'
      
        'left join xtbwyl1 on xtbwyl1.XieXing=YGZLSS.XieXing and xtbwyl1.' +
        'SheHao=YGZLSS.SheHao and xtbwyl1.BWBH=YGZLSS.BWBH and xtbwyl1.XT' +
        'CC=YGZLSS.XTCC'
      'where YGZLSS.YGNO=:YGNO'
      '     and YGZLSS.XieXing=:XieXing'
      #9' and YGZLSS.SheHao=:SheHao'
      #9' and YGZLSS.BWBH=:BWBH')
    UpdateObject = upYGZLSS
    Left = 376
    Top = 212
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YGNO'
        ParamType = ptUnknown
        Size = 12
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
      end
      item
        DataType = ftFixedChar
        Name = 'BWBH'
        ParamType = ptUnknown
        Size = 5
      end>
    object qryYGZLSSYGNO: TStringField
      FieldName = 'YGNO'
      Origin = 'DB.YGZLSS.YGNO'
      FixedChar = True
      Size = 11
    end
    object qryYGZLSSXieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.YGZLSS.XieXing'
      FixedChar = True
      Size = 15
    end
    object qryYGZLSSSheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.YGZLSS.SheHao'
      FixedChar = True
      Size = 5
    end
    object qryYGZLSSBWBH: TStringField
      FieldName = 'BWBH'
      Origin = 'DB.YGZLSS.BWBH'
      FixedChar = True
      Size = 4
    end
    object qryYGZLSSXTCC: TStringField
      FieldName = 'XTCC'
      Origin = 'DB.YGZLSS.XTCC'
      FixedChar = True
      Size = 6
    end
    object qryYGZLSSPairs: TFloatField
      FieldName = 'Pairs'
      Origin = 'DB.YGZLSS.Pairs'
    end
    object qryYGZLSSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.YGZLSS.USERID'
      FixedChar = True
    end
    object qryYGZLSSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.YGZLSS.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryYGZLSSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.YGZLSS.YN'
      FixedChar = True
      Size = 1
    end
    object qryYGZLSSCLSL: TFloatField
      FieldName = 'CLSL'
      Origin = 'DB.xtbwyl1.CLSL'
    end
  end
  object DSYGZLSS: TDataSource
    DataSet = qryYGZLSS
    Left = 376
    Top = 244
  end
  object upYGZLSS: TUpdateSQL
    ModifySQL.Strings = (
      'update YGZLSS'
      'Set'
      '  Pairs=:Pairs,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where'
      '  YGNO =:OLD_YGNO'
      '  and XieXing =:OLD_XieXing'
      '  and SheHao =:OLD_SheHao'
      '  and BWBH =:OLD_BWBH'
      '  and XTCC =:OLD_XTCC')
    InsertSQL.Strings = (
      'Insert into YGZLSS'
      
        '   (YGNO, XieXing , SheHao ,BWBH, XTCC, Pairs, UserID, UserDate,' +
        ' YN)'
      'values'
      
        '   (:YGNO, :XieXing, :SheHao, :BWBH, :XTCC, :Pairs, :UserID, :Us' +
        'erDate, :YN)')
    DeleteSQL.Strings = (
      'Delete from YGZLSS'
      'where'
      '  YGNO =:OLD_YGNO'
      '  and XieXing =:OLD_XieXing'
      '  and SheHao =:OLD_SheHao'
      '  and BWBH =:OLD_BWBH'
      '  and XTCC =:OLD_XTCC')
    Left = 376
    Top = 276
  end
  object qryYGZLS2: TQuery
    AfterOpen = qryYGZLSSAfterOpen
    DatabaseName = 'DB'
    DataSource = DSYGZL
    SQL.Strings = (
      
        'Select YGZLS2.*,XXZL.ARTICLE, BWZL.YWSM, BWZL.ZWSM, ZSZL.ZSYWJC,' +
        ' CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH '
      'from YGZLS2'
      
        'Left join XXZL on XXZL.XieXing=YGZLS2.XieXing and XXZL.SheHao=YG' +
        'ZLS2.SheHao'
      'Left join BWZL on BWZL.bwdh=YGZLS2.BWBH'
      'left join CLZL on CLZL.cldh=YGZLS2.CLBH'
      'left join ZSZL on ZSZL.ZSDH=YGZLS2.CSBH'
      'where YGZLS2.YGNO=:YGNO')
    Left = 424
    Top = 213
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object qryYGZLS2YGNO: TStringField
      FieldName = 'YGNO'
      FixedChar = True
      Size = 11
    end
    object qryYGZLS2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object qryYGZLS2SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object qryYGZLS2CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object qryYGZLS2CLSL: TFloatField
      FieldName = 'CLSL'
    end
    object qryYGZLS2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object qryYGZLS2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryYGZLS2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qryYGZLS2ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object qryYGZLS2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object qryYGZLS2ZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object qryYGZLS2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object qryYGZLS2CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object qryYGZLS2XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object qryYGZLS2SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object qryYGZLS2BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object qryYGZLS2ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object qryYGZLS2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object qryYGZLS2ZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
      Size = 40
    end
  end
  object DSYGZLS2: TDataSource
    DataSet = qryYGZLS2
    Left = 424
    Top = 245
  end
end

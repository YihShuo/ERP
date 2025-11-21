object SampleOrder: TSampleOrder
  Left = 242
  Top = 36
  Width = 1101
  Height = 673
  Caption = 'SampleOrder'
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
  object MasPanel: TPanel
    Left = 0
    Top = 0
    Width = 1085
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label17: TLabel
      Left = 688
      Top = 40
      Width = 147
      Height = 20
      Caption = 'Article no basic data '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
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
    object BDT6: TBitBtn
      Left = 632
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Execl'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
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
    object BBT5: TBitBtn
      Left = 568
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Materail supplier no assign purchaser list'
      Caption = 'No Pur'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = BBT5Click
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
  object DetPanel: TPanel
    Left = 0
    Top = 65
    Width = 1085
    Height = 65
    Align = alTop
    TabOrder = 1
    Visible = False
    object Label18: TLabel
      Left = 309
      Top = 18
      Width = 167
      Height = 20
      Caption = 'Material ID is temporary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label40: TLabel
      Left = 309
      Top = 38
      Width = 231
      Height = 20
      Caption = 'Material ID has sub  material'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BD2: TBitBtn
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
  end
  object PC1: TPageControl
    Left = 0
    Top = 195
    Width = 1085
    Height = 440
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
      Caption = 'YPMas'
      ImageIndex = 2
      object InfoPanel: TPanel
        Left = 0
        Top = 97
        Width = 1077
        Height = 192
        Align = alTop
        TabOrder = 0
        object Label11: TLabel
          Left = 0
          Top = 12
          Width = 71
          Height = 16
          AutoSize = False
          Caption = 'Sample No:'
        end
        object Label13: TLabel
          Left = 17
          Top = 36
          Width = 52
          Height = 16
          AutoSize = False
          Caption = 'ART No:'
        end
        object Label6: TLabel
          Left = 459
          Top = 12
          Width = 56
          Height = 16
          AutoSize = False
          Caption = 'Color No:'
        end
        object Label2: TLabel
          Left = 36
          Top = 62
          Width = 32
          Height = 16
          AutoSize = False
          Caption = 'Rate:'
        end
        object Label7: TLabel
          Left = 16
          Top = 87
          Width = 52
          Height = 16
          AutoSize = False
          Caption = 'Ins Date:'
        end
        object Label8: TLabel
          Left = 18
          Top = 112
          Width = 48
          Height = 16
          AutoSize = False
          Caption = 'Factory:'
        end
        object Label9: TLabel
          Left = 16
          Top = 137
          Width = 50
          Height = 16
          AutoSize = False
          Caption = 'Season:'
        end
        object Label20: TLabel
          Left = 642
          Top = 12
          Width = 40
          Height = 16
          AutoSize = False
          Caption = 'Stage:'
        end
        object Label21: TLabel
          Left = 483
          Top = 36
          Width = 29
          Height = 16
          AutoSize = False
          Caption = 'Size:'
        end
        object Label23: TLabel
          Left = 439
          Top = 60
          Width = 75
          Height = 16
          AutoSize = False
          Caption = 'OutsoleSize:'
        end
        object Label24: TLabel
          Left = 452
          Top = 156
          Width = 62
          Height = 16
          AutoSize = False
          Caption = 'USER No:'
        end
        object Label25: TLabel
          Left = 461
          Top = 84
          Width = 54
          Height = 16
          AutoSize = False
          Caption = 'LastSize:'
        end
        object Label26: TLabel
          Left = 464
          Top = 108
          Width = 50
          Height = 16
          AutoSize = False
          Caption = 'Pair Qty:'
        end
        object Label27: TLabel
          Left = 0
          Top = 161
          Width = 73
          Height = 16
          AutoSize = False
          Caption = #38283#30332#20154#21729':'
        end
        object Label10: TLabel
          Left = 231
          Top = 12
          Width = 54
          Height = 16
          AutoSize = False
          Caption = 'Style No:'
        end
        object Label12: TLabel
          Left = 226
          Top = 36
          Width = 59
          Height = 16
          AutoSize = False
          Caption = 'Art Name:'
        end
        object Label14: TLabel
          Left = 229
          Top = 62
          Width = 56
          Height = 16
          AutoSize = False
          Caption = 'Currency:'
        end
        object Label15: TLabel
          Left = 231
          Top = 87
          Width = 55
          Height = 16
          AutoSize = False
          Caption = 'Mat ETA:'
        end
        object Label16: TLabel
          Left = 215
          Top = 112
          Width = 71
          Height = 16
          AutoSize = False
          Caption = 'Finish date :'
        end
        object Label19: TLabel
          Left = 230
          Top = 137
          Width = 57
          Height = 16
          AutoSize = False
          Caption = 'Dev type:'
        end
        object Label28: TLabel
          Left = 213
          Top = 161
          Width = 73
          Height = 16
          AutoSize = False
          Caption = #38283#30332#39006#22411'1:'
        end
        object Label22: TLabel
          Left = 483
          Top = 132
          Width = 30
          Height = 16
          AutoSize = False
          Caption = 'ETA:'
        end
        object Label29: TLabel
          Left = 634
          Top = 156
          Width = 73
          Height = 16
          AutoSize = False
          Caption = #38991#33394#35498#26126':'
        end
        object Label30: TLabel
          Left = 634
          Top = 132
          Width = 73
          Height = 16
          AutoSize = False
          Caption = #38283#30332#31278#39006':'
        end
        object Label31: TLabel
          Left = 634
          Top = 108
          Width = 73
          Height = 16
          AutoSize = False
          Caption = #23610#23544#22283#21029':'
        end
        object XieXingQry: TSpeedButton
          Left = 408
          Top = 8
          Width = 23
          Height = 22
          Caption = '...'
          Visible = False
          OnClick = XieXingQryClick
        end
        object StageQry: TSpeedButton
          Left = 776
          Top = 8
          Width = 23
          Height = 22
          Caption = '...'
          Visible = False
          OnClick = StageQryClick
        end
        object CurrencyQry: TSpeedButton
          Left = 408
          Top = 59
          Width = 23
          Height = 22
          Caption = '...'
          Visible = False
          OnClick = CurrencyQryClick
        end
        object YPDH_DB: TDBEdit
          Left = 72
          Top = 8
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'YPDH'
          DataSource = YPZL_DS
          ReadOnly = True
          TabOrder = 0
        end
        object ARTNO_DB: TDBEdit
          Left = 72
          Top = 33
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'ARTICLE'
          DataSource = YPZL_DS
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 516
          Top = 8
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          DataField = 'SheHao'
          DataSource = YPZL_DS
          TabOrder = 2
        end
        object Rate_DB: TDBEdit
          Left = 72
          Top = 59
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Rate'
          DataSource = YPZL_DS
          ReadOnly = True
          TabOrder = 3
        end
        object USERDATE_DB: TDBEdit
          Left = 72
          Top = 84
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'USERDATE'
          DataSource = YPZL_DS
          ReadOnly = True
          TabOrder = 4
        end
        object PFC_DB: TDBEdit
          Left = 72
          Top = 109
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'PFC'
          DataSource = YPZL_DS
          Enabled = False
          ReadOnly = True
          TabOrder = 5
        end
        object JiJie_DB: TDBEdit
          Left = 72
          Top = 135
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'JiJie'
          DataSource = YPZL_DS
          Enabled = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit14: TDBEdit
          Left = 690
          Top = 8
          Width = 89
          Height = 24
          CharCase = ecUpperCase
          DataField = 'KFJD'
          DataSource = YPZL_DS
          ReadOnly = True
          TabOrder = 7
        end
        object YPCC_DB: TDBEdit
          Left = 516
          Top = 32
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          DataField = 'YPCC'
          DataSource = YPZL_DS
          TabOrder = 8
        end
        object YPCCO_DB: TDBEdit
          Left = 516
          Top = 56
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          DataField = 'YPCCO'
          DataSource = YPZL_DS
          TabOrder = 9
        end
        object USERID_DB: TDBEdit
          Left = 516
          Top = 152
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'USERID'
          DataSource = YPZL_DS
          Enabled = False
          ReadOnly = True
          TabOrder = 10
        end
        object YPCCL_DB: TDBEdit
          Left = 516
          Top = 80
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          DataField = 'YPCCL'
          DataSource = YPZL_DS
          TabOrder = 11
        end
        object Quantity_DB: TDBEdit
          Left = 516
          Top = 104
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Quantity'
          DataSource = YPZL_DS
          TabOrder = 12
        end
        object FD_DB: TDBEdit
          Left = 72
          Top = 159
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'FD'
          DataSource = YPZL_DS
          Enabled = False
          ReadOnly = True
          TabOrder = 13
        end
        object XieXing_DB: TDBEdit
          Left = 288
          Top = 8
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'XieXing'
          DataSource = YPZL_DS
          TabOrder = 14
        end
        object XieMing_DB: TDBEdit
          Left = 288
          Top = 33
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'XieMing'
          DataSource = YPZL_DS
          ReadOnly = True
          TabOrder = 15
        end
        object Currency_DB: TDBEdit
          Left = 288
          Top = 59
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'Currency'
          DataSource = YPZL_DS
          TabOrder = 16
        end
        object KFRQ_DB: TDBEdit
          Left = 288
          Top = 84
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'KFRQ'
          DataSource = YPZL_DS
          TabOrder = 17
        end
        object FINDATE_DB: TDBEdit
          Left = 288
          Top = 109
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          DataField = 'FINDATE'
          DataSource = YPZL_DS
          TabOrder = 18
        end
        object KFLX2_DB: TDBEdit
          Left = 288
          Top = 135
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'KFLX2'
          DataSource = YPZL_DS
          ReadOnly = True
          TabOrder = 19
        end
        object DevType_DB: TDBEdit
          Left = 288
          Top = 159
          Width = 121
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'DevType'
          DataSource = YPZL_DS
          Enabled = False
          ReadOnly = True
          TabOrder = 20
        end
        object DBEdit2: TDBEdit
          Left = 516
          Top = 128
          Width = 109
          Height = 24
          CharCase = ecUpperCase
          DataField = 'JHRQ'
          DataSource = YPZL_DS
          TabOrder = 21
        end
        object DBEdit3: TDBEdit
          Left = 706
          Top = 152
          Width = 225
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'YSSM'
          DataSource = YPZL_DS
          Enabled = False
          ReadOnly = True
          TabOrder = 22
        end
        object DBEdit4: TDBEdit
          Left = 706
          Top = 128
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'Category'
          DataSource = YPZL_DS
          Enabled = False
          ReadOnly = True
          TabOrder = 23
        end
        object DBEdit5: TDBEdit
          Left = 706
          Top = 104
          Width = 47
          Height = 24
          CharCase = ecUpperCase
          Color = clSilver
          DataField = 'CCGB'
          DataSource = YPZL_DS
          Enabled = False
          ReadOnly = True
          TabOrder = 24
        end
      end
      object YPZLGrid: TDBGridEh
        Left = 0
        Top = 289
        Width = 1077
        Height = 120
        Align = alClient
        DataSource = YPZL_DS
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
        OnDblClick = YPZLGridDblClick
        OnEditButtonClick = YPZLGridEditButtonClick
        OnGetCellParams = YPZLGridGetCellParams
        OnKeyDown = YPZLGridKeyDown
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <
              item
                FieldName = 'YPDH'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.Caption = #27171#21697#21934#34399'|Sample No'
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38283#21934#26085#26399'|Date'
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'Quantity'
            Footers = <>
            Title.Caption = #25976#37327'|Pair Qty'
          end
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <>
            Title.Caption = #38795#22411'|Style No'
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            ReadOnly = True
            Title.Caption = #33394#34399'|Color'
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Aricle|ARTNO'
          end
          item
            EditButtons = <>
            FieldName = 'KFJD'
            Footers = <>
            Title.Caption = #38283#30332#38542#27573'|Stage'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'YPCC'
            Footers = <>
            Title.Caption = #38283#30332#23610#23544'|Size'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'JHRQ'
            Footers = <>
            Title.Caption = #20132#26399'|ETA'
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29992#25142#32232#34399'|USERID'
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'CGBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #25505#36092#32232#34399'|CGBH'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38283#30332#20195#30908'|DevCode'
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Color Name|'#38991#33394#21517#31281
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            Title.Caption = #20462#25913#26085#26399'|Date'
          end>
      end
      object ToolPanel: TPanel
        Left = 0
        Top = 0
        Width = 1077
        Height = 97
        Align = alTop
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Visible = False
        object Label1: TLabel
          Left = 0
          Top = 20
          Width = 73
          Height = 16
          Caption = 'Sample NO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 20
          Top = 72
          Width = 52
          Height = 16
          Caption = 'Ins Date:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 184
          Top = 72
          Width = 20
          Height = 16
          Caption = 'To:'
        end
        object Label5: TLabel
          Left = 230
          Top = 20
          Width = 52
          Height = 16
          Caption = 'ART No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 18
          Top = 44
          Width = 54
          Height = 16
          Caption = 'Style No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 229
          Top = 44
          Width = 56
          Height = 16
          Caption = 'Color No:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 464
          Top = 44
          Width = 50
          Height = 16
          Caption = 'Season:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 475
          Top = 20
          Width = 39
          Height = 16
          Caption = 'Stage:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 456
          Top = 69
          Width = 59
          Height = 16
          AutoSize = False
          Caption = 'Art Name:'
        end
        object Label41: TLabel
          Left = 654
          Top = 68
          Width = 61
          Height = 16
          Caption = 'DevCode:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object YPDHEdit: TEdit
          Left = 73
          Top = 16
          Width = 121
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
          Left = 713
          Top = 24
          Width = 81
          Height = 33
          Caption = 'QUERY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = Button1Click
        end
        object DTP1: TDateTimePicker
          Left = 74
          Top = 68
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 1
        end
        object DTP2: TDateTimePicker
          Left = 216
          Top = 68
          Width = 97
          Height = 24
          Date = 39255.000000000000000000
          Format = 'yyyy/MM/dd'
          Time = 39255.000000000000000000
          TabOrder = 2
        end
        object Check: TCheckBox
          Left = 657
          Top = 36
          Width = 54
          Height = 17
          Caption = 'Mine'
          Checked = True
          State = cbChecked
          TabOrder = 4
        end
        object ArticleEdit: TEdit
          Left = 286
          Top = 16
          Width = 155
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
        object XieXingEdit: TEdit
          Left = 73
          Top = 40
          Width = 121
          Height = 25
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object SheHaoEdit: TEdit
          Left = 286
          Top = 40
          Width = 155
          Height = 25
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object KFJDEdit: TEdit
          Left = 516
          Top = 16
          Width = 121
          Height = 25
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
        object JiJieEdit: TEdit
          Left = 516
          Top = 40
          Width = 121
          Height = 25
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object XieMingEdit: TEdit
          Left = 516
          Top = 66
          Width = 121
          Height = 25
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DevCodeEdit: TEdit
          Left = 716
          Top = 64
          Width = 121
          Height = 25
          AutoSelect = False
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'VNI-Times'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'YPDet'
      ImageIndex = 3
      object YPZLSGrid: TDBGridEh
        Left = 0
        Top = 89
        Width = 1077
        Height = 320
        Align = alClient
        DataSource = YPZLS_DS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = YPZLSGridEditButtonClick
        OnGetCellParams = YPZLSGridGetCellParams
        OnKeyDown = YPZLSGridKeyDown
        Columns = <
          item
            EditButtons = <>
            FieldName = 'xh'
            Footers = <
              item
                FieldName = 'xh'
                ValueType = fvtCount
              end>
            Title.Caption = '#|'#24207#34399
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = #37096#20301'|Part'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37096#20301#21517#31281'|Part Name'
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26448#26009#32232#34399'|Mat No'
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'cqdh'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24288#21312'|Location'
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            ReadOnly = True
            Title.Caption = #26448#26009#21517#31281'|Mat Name'
            Width = 431
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301'|Unit'
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'clzmlb'
            Footers = <>
            Title.Caption = #21152#24037'|Extra'
            Width = 36
          end
          item
            EditButtons = <>
            FieldName = 'loss'
            Footers = <>
            Title.Caption = #32791#25613'|Loss%'
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            Title.Caption = #29992#37327'|Usage'
            Width = 53
          end
          item
            EditButtons = <>
            FieldName = 'CSBH'
            Footers = <>
            Title.Caption = #24288#21830'No.|Sup No.'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'zsjc'
            Footers = <>
            ReadOnly = True
            Title.Caption = #24288#21830'|Supplier'
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Currency'
            Footers = <>
            Title.Caption = #24163#21029'|Cur'
            Width = 57
          end
          item
            DisplayFormat = '0.000'
            EditButtons = <>
            FieldName = 'CLDJ'
            Footers = <>
            Title.Caption = #21934#20729'|U.P.'
            Width = 47
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'Rate'
            Footers = <>
            Title.Caption = #21295#29575'|Rate'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.Caption = #25551#36848'|Desc'
          end
          item
            EditButtons = <>
            FieldName = 'SamplePurchaser'
            Footers = <>
            Title.Caption = #25505#36092#20154#21729'|Purchaser'
            Width = 67
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1077
        Height = 89
        Align = alTop
        TabOrder = 1
        object Label32: TLabel
          Left = 32
          Top = 12
          Width = 71
          Height = 16
          AutoSize = False
          Caption = 'Part Name:'
        end
        object Label33: TLabel
          Left = 8
          Top = 36
          Width = 97
          Height = 16
          AutoSize = False
          Caption = 'Material Name:'
        end
        object Label35: TLabel
          Left = 28
          Top = 62
          Width = 77
          Height = 16
          AutoSize = False
          Caption = 'Description:'
        end
        object DBEdit6: TDBEdit
          Left = 99
          Top = 8
          Width = 174
          Height = 24
          CharCase = ecUpperCase
          DataField = 'BWMC'
          DataSource = YPZLS_DS
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit7: TDBEdit
          Left = 99
          Top = 33
          Width = 649
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CLMC'
          DataSource = YPZLS_DS
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 99
          Top = 59
          Width = 649
          Height = 24
          CharCase = ecUpperCase
          DataField = 'ywpm'
          DataSource = YPZLS_DS
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit8: TDBEdit
          Left = 272
          Top = 8
          Width = 198
          Height = 24
          CharCase = ecUpperCase
          DataField = 'BWYWMC'
          DataSource = YPZLS_DS
          ReadOnly = True
          TabOrder = 3
        end
        object DelCK: TCheckBox
          Left = 480
          Top = 8
          Width = 97
          Height = 17
          Caption = 'DelCK'
          TabOrder = 4
        end
      end
    end
    object TS3: TTabSheet
      Caption = 'Memo'
      ImageIndex = 2
      object YPZLS2Grid: TDBGridEh
        Left = 0
        Top = 0
        Width = 1077
        Height = 409
        Align = alClient
        DataSource = YPZLS2_DS
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = YPZLS2GridGetCellParams
        OnKeyDown = YPZLS2GridKeyDown
        Columns = <
          item
            EditButtons = <>
            FieldName = 'LineNum'
            Footers = <
              item
                FieldName = 'xh'
                ValueType = fvtCount
              end>
            Title.Caption = '#|'#24207#34399
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            Title.Caption = #20633#24536'|Mark'
            Width = 659
          end>
      end
    end
  end
  object RemarkPanel: TPanel
    Left = 0
    Top = 130
    Width = 1085
    Height = 65
    Align = alTop
    TabOrder = 3
    Visible = False
    object BE2: TBitBtn
      Left = 104
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
      TabOrder = 0
      OnClick = BE2Click
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
    object BE3: TBitBtn
      Left = 152
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
      TabOrder = 1
      OnClick = BE3Click
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
    object BE4: TBitBtn
      Left = 200
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
      TabOrder = 2
      OnClick = BE4Click
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
    object BE5: TBitBtn
      Left = 248
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
      TabOrder = 3
      OnClick = BE5Click
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
    object BE6: TBitBtn
      Left = 296
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
      TabOrder = 4
      OnClick = BE6Click
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
  object upMas: TUpdateSQL
    ModifySQL.Strings = (
      'Update YPZL Set'
      '   YPDH=:YPDH,'
      '   XieXing=:XieXing,'
      '   SheHao=:SheHao,'
      '   ARTICLE=:ARTICLE,'
      '   KFJD=:KFJD,'
      '   YPCC=:YPCC,'
      '   Rate=:Rate,'
      '   Currency=:Currency,'
      '   KFRQ=:KFRQ,'
      '   SDRQ=:SDRQ,'
      '   JHRQ=:JHRQ,'
      '   Quantity=:Quantity,'
      '   PFC=:PFC,'
      '   CFM=:CFM,'
      '   FINDATE=:FINDATE,'
      '   GSDH=:GSDH,'
      '   USERID=:USERID,'
      '   USERDATE=:USERDATE,'
      '   CGBH=:CGBH,'
      '   KFLX=:KFLX,'
      '   YPCCO=:YPCCO,'
      '   YPCCL=:YPCCL,'
      '   CGBH1=:CGBH1'
      'where'
      '  YPDH=:OLD_YPDH')
    InsertSQL.Strings = (
      'Insert into YPZL'
      
        '   (YPDH, XieXing, SheHao, ARTICLE ,KFJD, YPCC, Rate, Currency, ' +
        'KFRQ, SDRQ, JHRQ, Quantity, PFC, CFM , FINDATE, GSDH, USERID, US' +
        'ERDATE, CGBH, KFLX, YPCCO ,YPCCL , CGBH1)'
      'Values'
      
        '   (:YPDH, :XieXing, :SheHao, :ARTICLE , :KFJD, :YPCC, :Rate, :C' +
        'urrency, :KFRQ, :SDRQ, :JHRQ, :Quantity, :PFC, :CFM , :FINDATE, ' +
        ':GSDH, :USERID, :USERDATE, :CGBH, :KFLX, :YPCCO , :YPCCL , :CGBH' +
        '1)')
    DeleteSQL.Strings = (
      'Delete From YPZL'
      'where'
      '  YPDH=:OLD_YPDH')
    Left = 820
    Top = 392
  end
  object YPZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ypzl.* ,kfxxzl.XieMing ,kfxxzl.ARTICLE AS ARTNO ,kfxxzl.Y' +
        'SSM ,kfxxzl.JiJie ,kfxxzl.XTMH ,kfxxzl.DDMH ,kfxxzl.KFLX AS KFLX' +
        '2 ,kfxxzl.DEVCODE ,kfzl.kfjc ,lbzls.ywsm ,kfzl.kfdh ,kfxxzl.CCGB' +
        ' ,kfxxzl.FD ,kfxxzl.DevType ,kfxxzl.Category,'#39'1'#39' as YN FROM ypzl' +
        ' ypzl '
      
        'LEFT JOIN kfxxzl kfxxzl ON ypzl.XieXing = kfxxzl.XieXing AND ypz' +
        'l.SheHao = kfxxzl.SheHao'
      'LEFT JOIN kfzl kfzl ON kfxxzl.KHDH = kfzl.kfdh '
      
        'LEFT JOIN lbzls lbzls ON ypzl.KFJD = lbzls.lbdh AND lbzls.lb = '#39 +
        '04'#39'  '
      'where  ypzl.YPDH =  '#39'Y01S120800012'#39)
    UpdateObject = upMas
    Left = 819
    Top = 421
    object YPZLYPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object YPZLSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object YPZLARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
    object YPZLKFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object YPZLYPCC: TStringField
      FieldName = 'YPCC'
      FixedChar = True
      Size = 6
    end
    object YPZLRate: TFloatField
      FieldName = 'Rate'
    end
    object YPZLCurrency: TStringField
      FieldName = 'Currency'
      FixedChar = True
      Size = 3
    end
    object YPZLKFRQ: TStringField
      FieldName = 'KFRQ'
      FixedChar = True
      Size = 8
    end
    object YPZLSDRQ: TStringField
      FieldName = 'SDRQ'
      FixedChar = True
      Size = 8
    end
    object YPZLJHRQ: TStringField
      FieldName = 'JHRQ'
      FixedChar = True
      Size = 8
    end
    object YPZLQuantity: TFloatField
      FieldName = 'Quantity'
    end
    object YPZLPFC: TStringField
      FieldName = 'PFC'
      FixedChar = True
      Size = 3
    end
    object YPZLCFM: TStringField
      FieldName = 'CFM'
      FixedChar = True
      Size = 1
    end
    object YPZLFINDATE: TStringField
      FieldName = 'FINDATE'
      FixedChar = True
      Size = 8
    end
    object YPZLGSDH: TStringField
      FieldName = 'GSDH'
      FixedChar = True
      Size = 3
    end
    object YPZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object YPZLUSERDATE: TStringField
      FieldName = 'USERDATE'
      FixedChar = True
      Size = 8
    end
    object YPZLCGBH: TStringField
      FieldName = 'CGBH'
      FixedChar = True
    end
    object YPZLKFLX: TStringField
      FieldName = 'KFLX'
      FixedChar = True
      Size = 2
    end
    object YPZLYPCCO: TStringField
      FieldName = 'YPCCO'
      FixedChar = True
      Size = 6
    end
    object YPZLYPCCL: TStringField
      FieldName = 'YPCCL'
      FixedChar = True
      Size = 6
    end
    object YPZLCGBH1: TStringField
      FieldName = 'CGBH1'
      FixedChar = True
    end
    object YPZLXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object YPZLARTNO: TStringField
      FieldName = 'ARTNO'
      FixedChar = True
    end
    object YPZLYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object YPZLJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object YPZLXTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object YPZLDDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object YPZLKFLX2: TStringField
      FieldName = 'KFLX2'
      FixedChar = True
      Size = 2
    end
    object YPZLDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object YPZLkfjc: TStringField
      FieldName = 'kfjc'
      FixedChar = True
    end
    object YPZLywsm: TStringField
      FieldName = 'ywsm'
      FixedChar = True
      Size = 50
    end
    object YPZLkfdh: TStringField
      FieldName = 'kfdh'
      FixedChar = True
      Size = 4
    end
    object YPZLCCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object YPZLFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object YPZLDevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 10
    end
    object YPZLCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
    object YPZLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object YPZL_DS: TDataSource
    DataSet = YPZL
    Left = 820
    Top = 365
  end
  object YPZLS: TQuery
    AfterOpen = YPZLSAfterOpen
    AfterInsert = YPZLSAfterInsert
    DatabaseName = 'DB'
    DataSource = YPZL_DS
    SQL.Strings = (
      ''
      
        'SELECT ypzls.YPDH ,ypzls.xh ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ' +
        ',ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ' +
        ',ypzls.Rate ,ypzls.Remark ,bwzl.zwsm AS BWMC ,bwzl.ywsm AS BWYWM' +
        'C ,clzl.zwpm AS CLMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,clzl.ty' +
        'jh ,clzl.tyjh ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc ,clzl.ywp' +
        'm ,clzl.cqdh,zszl.SamplePurchaser,'#39'1'#39' as YN FROM ypzls ypzls '
      'LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh '
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh '
      'LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh '
      'WHERE YPDH =:YPDH '
      'ORDER BY YPZLS.YPDH , YPZLS.XH')
    UpdateObject = UpDet
    Left = 851
    Top = 421
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object YPZLSYPDH: TStringField
      DisplayWidth = 15
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object YPZLSxh: TStringField
      DisplayWidth = 3
      FieldName = 'xh'
      FixedChar = True
      Size = 3
    end
    object YPZLSBWBH: TStringField
      DisplayWidth = 6
      FieldName = 'BWBH'
      OnSetText = YPZLSBWBHSetText
      FixedChar = True
      Size = 4
    end
    object YPZLSCLBH: TStringField
      DisplayWidth = 15
      FieldName = 'CLBH'
      OnSetText = YPZLSCLBHSetText
      FixedChar = True
      Size = 15
    end
    object YPZLSBWLB: TStringField
      DisplayWidth = 5
      FieldName = 'BWLB'
      FixedChar = True
      Size = 5
    end
    object YPZLSCSBH: TStringField
      DisplayWidth = 6
      FieldName = 'CSBH'
      OnSetText = YPZLSCSBHSetText
      FixedChar = True
      Size = 6
    end
    object YPZLSloss: TFloatField
      DisplayWidth = 10
      FieldName = 'loss'
      DisplayFormat = '0%'
    end
    object YPZLSCLSL: TFloatField
      DisplayWidth = 10
      FieldName = 'CLSL'
      DisplayFormat = '0.0000'
    end
    object YPZLSCLDJ: TFloatField
      DisplayWidth = 10
      FieldName = 'CLDJ'
    end
    object YPZLSCurrency: TStringField
      DisplayWidth = 3
      FieldName = 'Currency'
      FixedChar = True
      Size = 3
    end
    object YPZLSRate: TFloatField
      DisplayWidth = 10
      FieldName = 'Rate'
    end
    object YPZLSRemark: TStringField
      DisplayWidth = 50
      FieldName = 'Remark'
      FixedChar = True
      Size = 50
    end
    object YPZLSBWMC: TStringField
      DisplayWidth = 40
      FieldName = 'BWMC'
      FixedChar = True
      Size = 40
    end
    object YPZLSBWYWMC: TStringField
      DisplayWidth = 40
      FieldName = 'BWYWMC'
      FixedChar = True
      Size = 40
    end
    object YPZLSCLMC: TStringField
      DisplayWidth = 200
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object YPZLSdwbh: TStringField
      DisplayWidth = 4
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object YPZLSzsjc: TStringField
      DisplayWidth = 20
      FieldName = 'zsjc'
      FixedChar = True
    end
    object YPZLSclzmlb: TStringField
      DisplayWidth = 1
      FieldName = 'clzmlb'
      FixedChar = True
      Size = 1
    end
    object YPZLStyjh: TStringField
      DisplayWidth = 1
      FieldName = 'tyjh'
      FixedChar = True
      Size = 1
    end
    object YPZLStyjh_1: TStringField
      DisplayWidth = 1
      FieldName = 'tyjh_1'
      FixedChar = True
      Size = 1
    end
    object YPZLSJGZWSM: TStringField
      DisplayWidth = 100
      FieldName = 'JGZWSM'
      FixedChar = True
      Size = 100
    end
    object YPZLSJGYWSM: TStringField
      DisplayWidth = 100
      FieldName = 'JGYWSM'
      FixedChar = True
      Size = 100
    end
    object YPZLSzsywjc: TStringField
      DisplayWidth = 20
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object YPZLSywpm: TStringField
      DisplayWidth = 200
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object YPZLScqdh: TStringField
      DisplayWidth = 4
      FieldName = 'cqdh'
      FixedChar = True
      Size = 4
    end
    object YPZLSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object YPZLSSamplePurchaser: TStringField
      FieldName = 'SamplePurchaser'
      FixedChar = True
    end
  end
  object UpDet: TUpdateSQL
    ModifySQL.Strings = (
      'Update YPZLS Set'
      '   YPDH=:YPDH,'
      '   BWBH=:BWBH,'
      '   XH=:XH,'
      '   BWLB=:BWLB,'
      '   CLBH=:CLBH,'
      '   CSBH=:CSBH,'
      '   LOSS=:LOSS,'
      '   CLSL=:CLSL,'
      '   CLDJ=:CLDJ,'
      '   Currency=:Currency,'
      '   Rate=:Rate,'
      '   Remark=:Remark,'
      '   JGZWSM=:JGZWSM,'
      '   JGYWSM=:JGYWSM'
      'where'
      '  YPDH=:OLD_YPDH'
      '  and XH=:OLD_XH'
      '  and BWBH=:OLD_BWBH')
    InsertSQL.Strings = (
      'Insert into YPZLS'
      
        '   (YPDH, XH, BWBH, BWLB ,CLBH, CSBH, LOSS, CLSL, CLDJ, Currency' +
        ', Rate, Remark, JGZWSM, JGYWSM )'
      'Values'
      
        '   (:YPDH, :XH, :BWBH, :BWLB ,:CLBH, :CSBH, :LOSS, :CLSL, :CLDJ,' +
        ' :Currency, :Rate, :Remark, :JGZWSM, :JGYWSM )')
    DeleteSQL.Strings = (
      'Delete From YPZLS'
      'where'
      '  YPDH=:OLD_YPDH'
      '  and XH=:OLD_XH'
      '  and BWBH=:OLD_BWBH')
    Left = 851
    Top = 391
  end
  object YPZLS_DS: TDataSource
    DataSet = YPZLS
    Left = 884
    Top = 365
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 916
    Top = 420
  end
  object MatQry: TQuery
    DatabaseName = 'DB'
    ParamCheck = False
    SQL.Strings = (
      
        'select   CLDH,ZWPM,dwbh,CQDH from CLZL where ((Substring(CLDH,1,' +
        '4)='#39'V901'#39') or YN=1 )')
    Left = 852
    Top = 461
  end
  object PartQry: TQuery
    DatabaseName = 'DB'
    ParamCheck = False
    Left = 852
    Top = 493
  end
  object SupplierQry: TQuery
    DatabaseName = 'DB'
    ParamCheck = False
    SQL.Strings = (
      'select zsdh,zsqm,ZSYWJC from ZSZL where zsdh<>'#39#39)
    Left = 852
    Top = 525
  end
  object PopupMenu: TPopupMenu
    Left = 788
    Top = 390
    object CopySampleOrder2: TMenuItem
      Caption = 'Copy Sample Order'
      OnClick = CopySampleOrder2Click
    end
  end
  object YPZLS2: TQuery
    AfterOpen = YPZLS2AfterOpen
    DatabaseName = 'DB'
    DataSource = YPZL_DS
    SQL.Strings = (
      'select ypdh,LineNum,Remark,'#39'1'#39' as YN from YPZLS2'
      'where YPDH=:YPDH'
      'order by LineNum')
    UpdateObject = UpMemo
    Left = 883
    Top = 421
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end>
    object YPZLS2ypdh: TStringField
      FieldName = 'ypdh'
      Origin = 'DB.ypzls2.ypdh'
      FixedChar = True
    end
    object YPZLS2LineNum: TStringField
      FieldName = 'LineNum'
      Origin = 'DB.ypzls2.LineNum'
      FixedChar = True
      Size = 3
    end
    object YPZLS2Remark: TStringField
      FieldName = 'Remark'
      Origin = 'DB.ypzls2.Remark'
      FixedChar = True
      Size = 100
    end
    object YPZLS2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpMemo: TUpdateSQL
    ModifySQL.Strings = (
      'Update YPZLS2 Set'
      '  LineNum=:LineNum,'
      '  Remark=:Remark'
      'Where YPDH=:OLD_YPDH'
      '     and LineNum=:OLD_LineNum')
    InsertSQL.Strings = (
      'Insert into YPZLS2'
      '   (YPDH, LineNum, Remark)'
      'Values'
      '   (:YPDH, :LineNum, :Remark)')
    DeleteSQL.Strings = (
      'Delete From YPZLS2'
      '  where YPDH=:OLD_YPDH'
      '        and LineNum=:OLD_LineNum')
    Left = 884
    Top = 392
  end
  object YPZLS2_DS: TDataSource
    DataSet = YPZLS2
    Left = 852
    Top = 365
  end
  object PopupMenu1: TPopupMenu
    Left = 788
    Top = 422
    object MenuItem1: TMenuItem
      Caption = 'Sub Part Material'
      OnClick = MenuItem1Click
    end
  end
end

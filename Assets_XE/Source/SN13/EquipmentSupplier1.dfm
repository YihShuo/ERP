object EquipmentSupplier: TEquipmentSupplier
  Left = 411
  Top = 322
  Caption = 'EquipmentSupplier'
  ClientHeight = 627
  ClientWidth = 1091
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
  object Splitter1: TSplitter
    Left = 0
    Top = 321
    Width = 1091
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 1099
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1091
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
      ParentFont = False
      TabOrder = 1
      OnClick = BB2Click
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
      ParentFont = False
      TabOrder = 2
      OnClick = BB3Click
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
      ParentFont = False
      TabOrder = 3
      OnClick = BB4Click
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
      ParentFont = False
      TabOrder = 4
      OnClick = BB5Click
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
      ParentFont = False
      TabOrder = 5
      OnClick = BB6Click
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
      ParentFont = False
      TabOrder = 6
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
      ParentFont = False
      TabOrder = 0
      OnClick = BB1Click
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
      ParentFont = False
      TabOrder = 7
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
      ParentFont = False
      TabOrder = 8
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
      ParentFont = False
      TabOrder = 9
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
      ParentFont = False
      TabOrder = 10
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
      ParentFont = False
      TabOrder = 11
    end
    object bbt6: TBitBtn
      Left = 632
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
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
      ParentFont = False
      TabOrder = 12
      OnClick = bbt6Click
    end
    object btnSyn: TBitBtn
      Left = 699
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Syn'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF55C068FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EDA5AFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3FB24C60FA7B3C8E454A8B53458C4E538A5AFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A8B5344E15C4BE26560FA7B60
        FA7B58ED713DD6572F943BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF3CCB514ACF6044D35A4BE2654EDD6548D65E48D65E44DE5F2AB43CFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4A8B5335BC4850D5664EDD655C
        8D63FFFFFFFFFFFF5B956335BC482F943BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF57955D3CC35057755CFFFFFFFFFFFFFFFFFFFFFFFF3C8E
        45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F8F71FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF2F943B3C8E45FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF4AB55653A55CFFFFFFFFFFFFFFFFFF4A8B533DD65722AB333C8E45FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57955D58ED714AB5563C8E4544
        9F4B46995147D95D39C84D24BF3917A327FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF57955D58ED716BF78478FD9060FA7B58ED714EDD6544D35A4A8B
        53FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59AA6253A55C5C
        CF6966D26F60DC7472F18A52BA5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF59AA626BF784FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF57A85FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      ParentFont = False
      TabOrder = 13
      Visible = False
      OnClick = btnSynClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1091
    Height = 96
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 30
      Top = 10
      Width = 40
      Height = 16
      Caption = 'ZSDH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 202
      Top = 10
      Width = 65
      Height = 16
      Caption = 'ZSJC_YW:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 39
      Width = 71
      Height = 16
      Caption = 'LB1_Memo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 20
      Top = 66
      Width = 47
      Height = 16
      Caption = 'AuthCE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 394
      Top = 67
      Width = 66
      Height = 16
      Caption = 'AuthZSDH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 402
      Top = 10
      Width = 64
      Height = 16
      Caption = 'ZSJC_ZW:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ZSDHEdit: TEdit
      Left = 73
      Top = 6
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object ZSJC_YWEdit: TEdit
      Left = 272
      Top = 6
      Width = 124
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 642
      Top = 25
      Width = 89
      Height = 33
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object LB1_MemoEdit: TEdit
      Left = 73
      Top = 35
      Width = 560
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object AuthCEEdit: TEdit
      Left = 73
      Top = 62
      Width = 304
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object AuthZSDHEdit: TEdit
      Left = 463
      Top = 64
      Width = 268
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object ZSJC_ZWEdit: TEdit
      Left = 469
      Top = 4
      Width = 124
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 324
    Width = 1091
    Height = 303
    Align = alClient
    DataSource = TSCDDS
    DynProps = <>
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
    Font.Style = []
    FooterParams.Color = clWindow
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsdh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #32232#34399'|zsdh'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsjc_zw'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #20013#25991#31777#31281'|ZSJC_ZW'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 89
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsjc_yw'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #33521#25991#31777#31281'|ZSJC_YW'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 158
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsjc_vw'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #36234#25991#31777#31281'|ZSJC_VW'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 142
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsqm_yw'
        Footers = <>
        Title.Caption = #33521#25991#20840#21517'|zsqm_yw'
        Width = 189
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsqm_zw'
        Footers = <>
        Title.Caption = #20013#25991#20840#21517'|zsqm_zw'
        Width = 162
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsqm_vw'
        Footers = <>
        Title.Caption = #36234#25991#20840#21517'|zsqm_vw'
        Width = 177
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'llr'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #32879#32097#20154'|llr'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'dh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #38651#35441'|dh'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 99
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #38651#23376#37109#31665'|email'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LB1_Memo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #29986#21697#38917#30446'|LB1_Memo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AuthCE_Memo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #21697#29260#23433#20840#35469#35657'|AuthCE'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 123
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AuthZSDH_Memo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #23458#20154#25351#23450#24288#21830'|AuthZSDH'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 140
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'IsZSDH'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #20844#21496#25351#23450'|IsZSDH'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'cz'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #20659#30495'|cz'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tybh'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #32113#19968#32232#34399'|tybh'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 79
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'yjdz'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #22320#22336'|yjdz'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 215
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Memo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 192
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TYJH'
        Footers = <>
        Title.Caption = 'Stop'
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'ID|USERID'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 68
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Caption = #26356#26032#26085#26399'|UserDate'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 76
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 161
    Width = 1091
    Height = 160
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label12: TLabel
      Left = 12
      Top = 34
      Width = 97
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #20013#25991'ZSJC_ZW:'
    end
    object Label14: TLabel
      Left = 12
      Top = 61
      Width = 98
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #33521#25991'ZSJC_YW:'
    end
    object Label3: TLabel
      Left = 5
      Top = 86
      Width = 106
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #36234#25991'ZSJC_VW:'
    end
    object Label9: TLabel
      Left = 28
      Top = 8
      Width = 81
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #32232#34399'ZSDH:'
    end
    object Label10: TLabel
      Left = 286
      Top = 10
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #32879#32097#20154'llr:'
    end
    object Label11: TLabel
      Left = 536
      Top = 8
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #38651#35441'dh:'
    end
    object Label13: TLabel
      Left = 45
      Top = 112
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #22320#22336'yjdz:'
    end
    object Label15: TLabel
      Left = 8
      Top = 136
      Width = 100
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = #29986#21697#38917#30446'LB1_Memo:'
    end
    object DBEdit6: TDBEdit
      Left = 113
      Top = 32
      Width = 656
      Height = 24
      CharCase = ecUpperCase
      DataField = 'zsjc_zw'
      DataSource = TSCDDS
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 113
      Top = 59
      Width = 656
      Height = 24
      CharCase = ecUpperCase
      DataField = 'zsjc_yw'
      DataSource = TSCDDS
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 113
      Top = 85
      Width = 656
      Height = 24
      CharCase = ecUpperCase
      DataField = 'zsjc_vw'
      DataSource = TSCDDS
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 113
      Top = 5
      Width = 168
      Height = 24
      CharCase = ecUpperCase
      DataField = 'zsdh'
      DataSource = TSCDDS
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 378
      Top = 6
      Width = 152
      Height = 24
      CharCase = ecUpperCase
      DataField = 'llr'
      DataSource = TSCDDS
      TabOrder = 4
    end
    object DBEdit4: TDBEdit
      Left = 615
      Top = 5
      Width = 154
      Height = 24
      CharCase = ecUpperCase
      DataField = 'dh'
      DataSource = TSCDDS
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 113
      Top = 109
      Width = 656
      Height = 24
      CharCase = ecUpperCase
      DataField = 'yjdz'
      DataSource = TSCDDS
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 113
      Top = 133
      Width = 656
      Height = 24
      CharCase = ecUpperCase
      DataField = 'LB1_Memo'
      DataSource = TSCDDS
      TabOrder = 7
    end
    object BBTT2: TBitBtn
      Left = 747
      Top = 134
      Width = 22
      Height = 25
      Caption = '...'
      TabOrder = 8
      Visible = False
      OnClick = BBTT2Click
    end
    object BBTT1: TBitBtn
      Left = 258
      Top = 5
      Width = 22
      Height = 25
      Caption = '...'
      TabOrder = 9
      Visible = False
      OnClick = BBTT1Click
    end
  end
  object TSCD_ZSZL: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select TSCD_ZSZL.zsdh,TSCD_ZSZL.zsjc_yw,TSCD_ZSZL.zsjc_zw,TSCD_Z' +
        'SZL.zsjc_vw,TSCD_ZSZL.zsqm_yw,TSCD_ZSZL.zsqm_zw,TSCD_ZSZL.zsqm_v' +
        'w,TSCD_ZSZL.tybh,TSCD_ZSZL.yjdz,TSCD_ZSZL.fpdz,TSCD_ZSZL.dh,TSCD' +
        '_ZSZL.fzr '
      
        '       ,TSCD_ZSZL.llr, TSCD_ZSZL.cz, TSCD_ZSZL.tybh,TSCD_ZSZL.em' +
        'ail,IsNull(TSCD_ZSZL.LB1,0) as LB1,IsNull(TSCD_ZSZL.LB2,0) as LB' +
        '2,IsNull(TSCD_ZSZL.LB3,0) as LB3 '
      
        '       ,TSCD_ZSZL.LB1_Memo ,TSCD_ZSZL.LB2_Memo, TSCD_ZSZL.LB3_Me' +
        'mo, TSCD_ZSZL.Memo'
      
        '       ,TSCD_ZSZL.AuthCE, TSCD_ZSZL.AuthCE_Memo, TSCD_ZSZL.AuthZ' +
        'SDH , TSCD_ZSZL.AuthZSDH_Memo, TSCD_ZSZL.IsZSDH,TSCD_ZSZL.USERID' +
        ',TSCD_ZSZL.USERDATE,TSCD_ZSZL.YN '
      'from TSCD_ZSZL '
      'where 1=1'
      '')
    UpdateObject = UpSQL
    Left = 248
    Top = 392
    object TSCD_ZSZLzsdh: TStringField
      FieldName = 'zsdh'
      FixedChar = True
      Size = 6
    end
    object TSCD_ZSZLzsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLzsjc_zw: TStringField
      FieldName = 'zsjc_zw'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLzsjc_vw: TStringField
      FieldName = 'zsjc_vw'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLzsqm_yw: TStringField
      FieldName = 'zsqm_yw'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLzsqm_zw: TStringField
      FieldName = 'zsqm_zw'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLzsqm_vw: TStringField
      FieldName = 'zsqm_vw'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLtybh: TStringField
      FieldName = 'tybh'
      FixedChar = True
    end
    object TSCD_ZSZLyjdz: TStringField
      FieldName = 'yjdz'
      FixedChar = True
      Size = 100
    end
    object TSCD_ZSZLfpdz: TStringField
      FieldName = 'fpdz'
      FixedChar = True
      Size = 100
    end
    object TSCD_ZSZLdh: TStringField
      FieldName = 'dh'
      FixedChar = True
    end
    object TSCD_ZSZLfzr: TStringField
      FieldName = 'fzr'
      FixedChar = True
    end
    object TSCD_ZSZLllr: TStringField
      FieldName = 'llr'
      FixedChar = True
    end
    object TSCD_ZSZLcz: TStringField
      FieldName = 'cz'
      FixedChar = True
    end
    object TSCD_ZSZLtybh_1: TStringField
      FieldName = 'tybh_1'
      FixedChar = True
    end
    object TSCD_ZSZLemail: TStringField
      FieldName = 'email'
      FixedChar = True
      Size = 30
    end
    object TSCD_ZSZLLB1: TBooleanField
      FieldName = 'LB1'
    end
    object TSCD_ZSZLLB2: TBooleanField
      FieldName = 'LB2'
    end
    object TSCD_ZSZLLB3: TBooleanField
      FieldName = 'LB3'
    end
    object TSCD_ZSZLLB1_Memo: TStringField
      FieldName = 'LB1_Memo'
      FixedChar = True
      Size = 100
    end
    object TSCD_ZSZLLB2_Memo: TStringField
      FieldName = 'LB2_Memo'
      FixedChar = True
      Size = 100
    end
    object TSCD_ZSZLLB3_Memo: TStringField
      FieldName = 'LB3_Memo'
      FixedChar = True
      Size = 100
    end
    object TSCD_ZSZLMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLAuthCE: TBooleanField
      FieldName = 'AuthCE'
    end
    object TSCD_ZSZLAuthCE_Memo: TStringField
      FieldName = 'AuthCE_Memo'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLAuthZSDH: TBooleanField
      FieldName = 'AuthZSDH'
    end
    object TSCD_ZSZLAuthZSDH_Memo: TStringField
      FieldName = 'AuthZSDH_Memo'
      FixedChar = True
      Size = 50
    end
    object TSCD_ZSZLIsZSDH: TBooleanField
      FieldName = 'IsZSDH'
    end
    object TSCD_ZSZLTYJH: TStringField
      FieldName = 'TYJH'
      Size = 1
    end
    object TSCD_ZSZLUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object TSCD_ZSZLUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object TSCD_ZSZLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpSQL: TUpdateSQL
    ModifySQL.Strings = (
      'update'
      '  TSCD_ZSZL'
      'set'
      '  zsjc_yw =:zsjc_yw,'
      '  zsjc_zw =:zsjc_zw,'
      '  zsjc_vw =:zsjc_vw,'
      '  zsqm_yw =:zsqm_yw,'
      '  zsqm_zw =:zsqm_zw,'
      '  zsqm_vw =:zsqm_vw,'
      '  yjdz =:yjdz,'
      '  fpdz =:fpdz,'
      '  dh =:dh,'
      '  llr =:llr,'
      '  cz =:cz,'
      '  tybh =:tybh,'
      '  email =:email, '
      '  LB1 = :LB1,'
      '  LB2 = :LB2,'
      '  LB3 = :LB3,'
      '  LB1_Memo = :LB1_Memo,'
      '  LB2_Memo = :LB2_Memo,'
      '  LB3_Memo = :LB3_Memo,'
      '  AuthCE = :AuthCE,'
      '  AuthCE_Memo = :AuthCE_Memo,'
      '  AuthZSDH = :AuthZSDH,'
      '  AuthZSDH_Memo = :AuthZSDH_Memo,'
      '  IsZSDH = :IsZSDH, '
      '  Memo = :Memo,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE'
      'where'
      '  ZSDH = :OLD_ZSDH')
    InsertSQL.Strings = (
      'insert into TSCD_ZSZL'
      
        '  (ZSDH,zsjc_yw,zsjc_zw,zsjc_vw,zsqm_yw,zsqm_zw,zsqm_vw,yjdz,fpd' +
        'z,dh,llr,cz,fzr,tybh,email,LB1,LB2,LB3,LB1_Memo,LB2_Memo,LB3_Mem' +
        'o,AuthCE,AuthCE_Memo,AuthZSDH,AuthZSDH_Memo,IsZSDH,Memo,USERID,U' +
        'SERDATE,YN)'
      'values'
      
        ' (:ZSDH, :zsjc_yw, :zsjc_zw, :zsjc_vw, :zsqm_yw, :zsqm_zw, :zsqm' +
        '_vw, :yjdz, :fpdz, :dh, :llr, :cz, :fzr, :tybh, :email, :LB1, :L' +
        'B2, :LB3, :LB1_Memo, :LB2_Memo, :LB3_Memo, :AuthCE, :AuthCE_Memo' +
        ', :AuthZSDH, :AuthZSDH_Memo, :IsZSDH, :Memo, :USERID, :USERDATE,' +
        ' :YN)')
    DeleteSQL.Strings = (
      'delete from TSCD_ZSZL'
      'where'
      '  ZSDH = :OLD_ZSDH')
    Left = 248
    Top = 424
  end
  object TSCDDS: TDataSource
    DataSet = TSCD_ZSZL
    Left = 248
    Top = 352
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 217
    Top = 392
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 193
    Top = 472
  end
  object PopupMenu1: TPopupMenu
    Left = 488
    Top = 520
    object N1: TMenuItem
      Caption = 'Lock'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = 'Unlock'
      OnClick = N2Click
    end
  end
end

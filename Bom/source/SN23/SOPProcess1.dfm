object SOPProcess: TSOPProcess
  Left = 335
  Top = 237
  Width = 1279
  Height = 684
  Caption = 'SOPProcess'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 234
    Top = 105
    Height = 540
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1263
    Height = 65
    Align = alTop
    TabOrder = 0
    object BB1: TBitBtn
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
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
    object BBT7: TBitBtn
      Left = 704
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'GC'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = BBT7Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000000000000FFFFFF006767
        670066666600AEAEAE000000000056565600F5F5F5003E3E3E00C1C1C1001616
        1600090909001D1D1D00D9D9D900DCDCDC00242424009A9A9A00C2C2C2000B0B
        0B00F0F0F00057575700CDCDCD00BCBCBC009B9B9B00AAAAAA009D9D9D00B6B6
        B600A3A3A30092929200FEFEFE001A1A1A00020202000303030078787800DFDF
        DF0099999900E4E4E400D5D5D500CFCFCF00191919000F0F0F00757575003737
        3700EBEBEB00F9F9F90012121200EEEEEE004E4E4E006C6C6C007B7B7B002525
        250043434300B5B5B500EFEFEF0038383800656565006060600023232300C3C3
        C3007070700068686800F6F6F600202020003333330095959500A8A8A800A5A5
        A5005B5B5B00B4B4B400989898001010100011111100646464004D4D4D002828
        2800CECECE0041414100CBCBCB00DDDDDD00E8E8E800BEBEBE00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004C4D10171717
        171717171717404E4F23472247040404044849040404044A4B0F364243040404
        0400440404044500461636042A3E040404003F04040440410416360437123804
        04393A04043B3C3D04162D2E042F0030311E0A3233343504041600020404292A
        2B000000102C0404041600020404042504262722020428010416002004040421
        04040422020423240416001B0404041C1D041E1002041F1E0416001704040400
        180402000204191A041600100404110012131000020414150416000D04040E00
        0000000002040404040F0006040407000000000008090A0A0B0C000004040500
        0000000000000000000000000102030000000000000000000000}
      Layout = blGlyphTop
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1263
    Height = 40
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 400
      Top = 12
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 199
      Top = 12
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Model:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 5
      Top = 12
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 561
      Top = 12
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'BuyNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object XieMingDHEdit: TEdit
      Left = 461
      Top = 8
      Width = 96
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 796
      Top = 4
      Width = 70
      Height = 30
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object XieXingEdit: TEdit
      Left = 271
      Top = 8
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object ArticleEdit: TEdit
      Left = 75
      Top = 8
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object BuyNoEdit: TEdit
      Left = 635
      Top = 8
      Width = 104
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGridEh
    Left = 237
    Top = 105
    Width = 1026
    Height = 540
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = ANSI_CHARSET
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGrid1EditButtonClick
    OnGetCellParams = DBGrid1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Caption = #38795#22411'|XieXing'
        Visible = False
        Width = 96
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'gcbwdh'
        Footers = <>
        Title.Caption = #21152#24037'|ID'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037'|EN'
        Width = 117
      end
      item
        EditButtons = <>
        FieldName = 'zwsm'
        Footers = <>
        ReadOnly = True
        Title.Caption = #21152#24037'|CH'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Qty1Day'
        Footers = <>
        Title.Caption = #27161#28310#29986#33021'|Capacity'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'EarlyDay'
        Footers = <>
        Title.Caption = #25552#21069#25104#22411#22825#25976'|In Advance'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'DL'
        Footers = <>
        Title.Caption = #30452#24037'|DL'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'IDL'
        Footers = <>
        Title.Caption = #38291#24037'|IDL'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'|Sup. ID'
        Width = 53
      end
      item
        EditButtons = <>
        FieldName = 'zsjc'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'|Sup. Name'
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20633#35387'|Memo'
        Width = 141
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'ID|User ID'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#26085#26399'|User Date'
        Width = 92
      end>
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 234
    Height = 540
    Align = alLeft
    DataSource = DS2
    Flat = False
    Font.Charset = ANSI_CHARSET
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
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnEditButtonClick = DBGrid1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = #22411#39636'|SKU'
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Caption = #38795#22411'|Model'
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Caption = #33394#34399'|Color'
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|Name'
        Width = 146
      end>
  end
  object GCBWQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      'Select KT_SOPCutS_GCBW.XieXing,KT_SOPCutS_GCBW.gcbwdh,'
      
        '       KT_SOPCutS_GCBWD.ywsm,KT_SOPCutS_GCBWD.zwsm,KT_SOPCutS_GC' +
        'BWD.zsdh,'
      
        '       ISNULL(KT_SOPCutS_GCBW.Qty1Day,KT_SOPCutS_GCBWD.Qty1Day) ' +
        'AS Qty1Day,'
      
        '       ISNULL(KT_SOPCutS_GCBW.EarlyDay, KT_SOPCutS_GCBWD.EarlyDa' +
        'y) AS EarlyDay,'
      
        '       KT_SOPCutS_GCBW.DL,KT_SOPCutS_GCBW.IDL,KT_SOPCutS_GCBWD.M' +
        'emo,'
      
        '       KT_SOPCutS_GCBW.USERID,KT_SOPCutS_GCBW.USERDATE,KT_SOPCut' +
        'S_GCBW.YN,ZSZL.zsjc '
      'from KT_SOPCutS_GCBW'
      
        'Left join KT_SOPCutS_GCBWD on KT_SOPCutS_GCBWD.gcbwdh=KT_SOPCutS' +
        '_GCBW.gcbwdh'
      'Left join ZSZL on ZSZL.zsdh=KT_SOPCutS_GCBWD.ZSDH'
      'where KT_SOPCutS_GCBW.XieXing=:XieXing')
    UpdateObject = GCBWUpd
    Left = 268
    Top = 210
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end>
    object GCBWQryXieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object GCBWQrygcbwdh: TStringField
      DisplayWidth = 6
      FieldName = 'gcbwdh'
      Origin = 'DB.KT_SOPCutS_GCBW.gcbwdh'
      FixedChar = True
      Size = 6
    end
    object GCBWQryywsm: TStringField
      DisplayWidth = 16
      FieldName = 'ywsm'
      Origin = 'DB.KT_SOPCutS_GCBW.ywsm'
      FixedChar = True
      Size = 40
    end
    object GCBWQryzwsm: TStringField
      DisplayWidth = 15
      FieldName = 'zwsm'
      Origin = 'DB.KT_SOPCutS_GCBW.zwsm'
      FixedChar = True
      Size = 40
    end
    object GCBWQryzsdh: TStringField
      DisplayWidth = 8
      FieldName = 'zsdh'
      Origin = 'DB.KT_SOPCutS_GCBW.zsdh'
      FixedChar = True
      Size = 6
    end
    object GCBWQryzsjc: TStringField
      FieldName = 'zsjc'
      Origin = 'DB.KT_SOPCutS_GCBW.gcbwdh'
      FixedChar = True
    end
    object GCBWQryQty1Day: TFloatField
      DisplayWidth = 8
      FieldName = 'Qty1Day'
      Origin = 'DB.KT_SOPCutS_GCBW.Qty1Day'
    end
    object GCBWQryEarlyDay: TFloatField
      FieldName = 'EarlyDay'
      Origin = 'DB.KT_SOPCutS_GCBW.EarlyDay'
    end
    object GCBWQryMemo: TStringField
      DisplayWidth = 16
      FieldName = 'Memo'
      Origin = 'DB.KT_SOPCutS_GCBW.USERID'
      FixedChar = True
      Size = 40
    end
    object GCBWQryUSERID: TStringField
      DisplayWidth = 7
      FieldName = 'USERID'
      Origin = 'DB.KT_SOPCutS_GCBW.USERID'
      FixedChar = True
      Size = 15
    end
    object GCBWQryUSERDATE: TDateTimeField
      DisplayWidth = 10
      FieldName = 'USERDATE'
      Origin = 'DB.KT_SOPCutS_GCBW.USERDATE'
    end
    object GCBWQryYN: TStringField
      DisplayWidth = 2
      FieldName = 'YN'
      Origin = 'DB.KT_SOPCutS_GCBW.YN'
      FixedChar = True
      Size = 1
    end
    object GCBWQryDL: TFloatField
      FieldName = 'DL'
    end
    object GCBWQryIDL: TFloatField
      FieldName = 'IDL'
    end
  end
  object DS1: TDataSource
    DataSet = GCBWQry
    Left = 268
    Top = 240
  end
  object GCBWUpd: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE'
      '   KT_SOPCutS_GCBW'
      'SET'
      '  gcbwdh = :gcbwdh,'
      '  Qty1Day = :Qty1Day, '
      '  EarlyDay = :EarlyDay, '
      '  DL = :DL, '
      '  IDL = :IDL,'
      '  userID = :userID,'
      '  userdate = :userdate,'
      '  YN = :YN'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  gcbwdh = :OLD_gcbwdh'
      '')
    InsertSQL.Strings = (
      'INSERT INTO KT_SOPCutS_GCBW'
      
        '  (XieXing, gcbwdh, Qty1Day, EarlyDay, DL, IDL, USERID, USERDATE' +
        ' ,YN)'
      'VALUES'
      
        '  (:XieXing, :gcbwdh, :Qty1Day, :EarlyDay, :DL, :IDL, :USERID, :' +
        'USERDATE , :YN)')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '  KT_SOPCutS_GCBW'
      'WHERE'
      '  XieXing = :OLD_XieXing AND'
      '  gcbwdh = :OLD_gcbwdh')
    Left = 268
    Top = 271
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 238
    Top = 210
    object StringField1: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object StringField2: TStringField
      DisplayWidth = 6
      FieldName = 'gcbwdh'
      Origin = 'DB.KT_SOPCutS_GCBW.gcbwdh'
      FixedChar = True
      Size = 6
    end
    object StringField3: TStringField
      DisplayWidth = 16
      FieldName = 'ywsm'
      Origin = 'DB.KT_SOPCutS_GCBW.ywsm'
      FixedChar = True
      Size = 40
    end
    object StringField4: TStringField
      DisplayWidth = 15
      FieldName = 'zwsm'
      Origin = 'DB.KT_SOPCutS_GCBW.zwsm'
      FixedChar = True
      Size = 40
    end
    object StringField5: TStringField
      DisplayWidth = 8
      FieldName = 'zsdh'
      Origin = 'DB.KT_SOPCutS_GCBW.zsdh'
      FixedChar = True
      Size = 6
    end
    object StringField6: TStringField
      FieldName = 'zsjc'
      Origin = 'DB.KT_SOPCutS_GCBW.gcbwdh'
      FixedChar = True
    end
    object FloatField1: TFloatField
      DisplayWidth = 8
      FieldName = 'Qty1Day'
      Origin = 'DB.KT_SOPCutS_GCBW.Qty1Day'
    end
    object FloatField2: TFloatField
      FieldName = 'EarlyDay'
      Origin = 'DB.KT_SOPCutS_GCBW.EarlyDay'
    end
    object StringField7: TStringField
      DisplayWidth = 16
      FieldName = 'Memo'
      Origin = 'DB.KT_SOPCutS_GCBW.USERID'
      FixedChar = True
      Size = 40
    end
    object StringField8: TStringField
      DisplayWidth = 7
      FieldName = 'USERID'
      Origin = 'DB.KT_SOPCutS_GCBW.USERID'
      FixedChar = True
      Size = 15
    end
    object DateTimeField1: TDateTimeField
      DisplayWidth = 10
      FieldName = 'USERDATE'
      Origin = 'DB.KT_SOPCutS_GCBW.USERDATE'
    end
    object StringField9: TStringField
      DisplayWidth = 2
      FieldName = 'YN'
      Origin = 'DB.KT_SOPCutS_GCBW.YN'
      FixedChar = True
      Size = 1
    end
  end
  object XXZLQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,XXZL.XieMing,KT_SOP' +
        'CutS_GCBW.XieXing as LB from XXZL '
      
        'left join (select XieXing from KT_SOPCutS_GCBW group by XieXing)' +
        ' KT_SOPCutS_GCBW on KT_SOPCutS_GCBW.XieXing=XXZL.XieXing'
      'where  XXZL.ARTICLE like '#39'%162066C%'#39)
    Left = 156
    Top = 210
    object XXZLQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLQryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object XXZLQryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLQryLB: TStringField
      FieldName = 'LB'
      FixedChar = True
      Size = 15
    end
  end
  object DS2: TDataSource
    DataSet = XXZLQry
    Left = 156
    Top = 240
  end
end

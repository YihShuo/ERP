object Reality_Remain_Quantity_Pre: TReality_Remain_Quantity_Pre
  Left = 373
  Top = 390
  Width = 1094
  Height = 663
  Caption = 'Reality_Remain_Quantity_Pre'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
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
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 1086
    Height = 65
    Align = alTop
    TabOrder = 0
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
      Caption = 'Article'
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
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 1086
    Height = 65
    Align = alTop
    TabOrder = 1
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
      OnClick = BD7Click
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
    object BDT6: TBitBtn
      Left = 432
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'PrintD'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BDT6Click
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
  object PC1: TPageControl
    Left = 0
    Top = 130
    Width = 1086
    Height = 502
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
        Top = 33
        Width = 1078
        Height = 438
        Align = alClient
        DataSource = DSKCZKP
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
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ZKNO'
            Footers = <>
            Title.Caption = 'NO'
          end
          item
            EditButtons = <>
            FieldName = 'Memo'
            Footers = <>
            Width = 215
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Width = 68
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1078
        Height = 33
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
          Left = 513
          Top = 8
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
          Left = 8
          Top = 7
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'NO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 184
          Top = 7
          Width = 89
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
          Left = 644
          Top = -4
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
          Left = 418
          Top = 3
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
          Left = 539
          Top = 3
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
          Left = 365
          Top = 8
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
        object ZKNOEdit: TEdit
          Left = 98
          Top = 4
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
          Left = 274
          Top = 3
          Width = 87
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
          Left = 736
          Top = 3
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
        Width = 1078
        Height = 471
        Align = alClient
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 711
          Top = 1
          Width = 5
          Height = 469
          Align = alRight
          Color = clSkyBlue
          ParentColor = False
        end
        object Panel4: TPanel
          Left = 716
          Top = 1
          Width = 361
          Height = 469
          Align = alRight
          TabOrder = 0
          object DBGridEh2: TDBGridEh
            Left = 1
            Top = 305
            Width = 359
            Height = 163
            Align = alClient
            DataSource = DSCGYGUSE
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
            PopupMenu = PopupMenu2
            ReadOnly = True
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
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
              DataSource = DSKCZKS
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
              PopupMenu = PopupMenu2
              SumList.Active = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnDrawColumnCell = DBGridEh3DrawColumnCell
              OnGetCellParams = DBGridEh3GetCellParams
              Columns = <
                item
                  EditButtons = <>
                  FieldName = 'SIZE'
                  Footers = <>
                  Width = 72
                end
                item
                  Color = clYellow
                  EditButtons = <>
                  FieldName = 'Qty'
                  Footer.FieldName = 'Qty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                end
                item
                  Color = clBtnFace
                  EditButtons = <>
                  FieldName = 'LQty'
                  Footer.FieldName = 'LQty'
                  Footer.ValueType = fvtSum
                  Footers = <>
                  ReadOnly = True
                  Title.Caption = 'Remain Qty'
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
        object LeftPanel: TPanel
          Left = 1
          Top = 1
          Width = 710
          Height = 469
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 708
            Height = 467
            Align = alClient
            DataSource = DSKCZL
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
            PopupMenu = PopupMenu1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = DBGridEh1CellClick
            OnDrawColumnCell = DBGridEh1DrawColumnCell
            OnEditButtonClick = DBGridEh1EditButtonClick
            OnGetCellParams = DBGridEh1GetCellParams
            Columns = <
              item
                EditButtons = <>
                FieldName = 'ZKBH'
                Footer.FieldName = 'ZKBH'
                Footer.ValueType = fvtCount
                Footers = <>
                ReadOnly = True
                Visible = False
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'GSBH'
                Footers = <>
                Visible = False
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
                Title.Caption = 'MatID'
                Width = 82
              end
              item
                EditButtons = <>
                FieldName = 'ywpm'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'MatName'
                Width = 244
              end
              item
                EditButtons = <>
                FieldName = 'CQDH'
                Footers = <>
                Width = 43
              end
              item
                EditButtons = <>
                FieldName = 'dwbh'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Unit'
                Width = 40
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
                ReadOnly = True
                Width = 60
              end
              item
                Color = clBtnFace
                EditButtons = <>
                FieldName = 'LQty'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Remain Qty'
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'Memo'
                Footers = <>
                Width = 103
              end
              item
                EditButtons = <>
                FieldName = 'CGNO'
                Footers = <>
                ReadOnly = True
              end
              item
                EditButtons = <>
                FieldName = 'ZSBH'
                Footers = <>
                Width = 47
              end
              item
                EditButtons = <>
                FieldName = 'ZSYWJC'
                Footers = <>
                ReadOnly = True
                Width = 102
              end
              item
                EditButtons = <>
                FieldName = 'UserID'
                Footers = <>
                ReadOnly = True
                Width = 52
              end
              item
                EditButtons = <>
                FieldName = 'UserDate'
                Footers = <>
                ReadOnly = True
                Width = 78
              end
              item
                EditButtons = <>
                FieldName = 'YN'
                Footers = <>
                Width = 21
              end>
          end
        end
      end
    end
  end
  object DSKCZL: TDataSource
    DataSet = qryKCZK
    Left = 336
    Top = 244
  end
  object qryKCZK: TQuery
    AfterOpen = qryKCZKAfterOpen
    DatabaseName = 'DB'
    DataSource = DSKCZKP
    SQL.Strings = (
      
        'select KCZK.ZKNO,KCZK.ZKBH,KCZK.GSBH,KCZK.CLBH,clzl.ywpm,clzl.DW' +
        'BH,KCZK.Qty,KCZK.LQty , '
      
        '       KCZK.Memo,KCZK.CGNO,KCZK.ZSBH,ZSZL.ZSYWJC,ZSZL_DEV.Zsdh_T' +
        'W,CLZL.CQDH,KCZK.UserID,KCZK.UserDate,KCZK.YN'
      'from KCZK'
      'left join clzl on KCZK.CLBH=clzl.cldh '
      'left join zszl on zszl.ZSDH=KCZK.ZSBH '
      
        'left join zszl_Dev on zszl.ZSDH=zszl_Dev.zsdh and zszl_Dev.GSBH=' +
        #39'VA12'#39
      'where KCZK.ZKNO='#39'20211100001'#39' and KCZK.GSBH='#39'VA12'#39' '
      
        ' and  convert(smalldatetime,convert(varchar,KCZK.USERDATE,111)) ' +
        'between '
      '          '#39'2021/10/05'#39' and '#39'2021/11/04'#39
      'and KCZK.USERID='#39'21191'#39' '
      'order by KCZK.ZSBH,KCZK.LQty desc, KCZK.CLBH asc')
    UpdateObject = UpKCZK
    Left = 336
    Top = 212
    object qryKCZKZKNO: TStringField
      FieldName = 'ZKNO'
      FixedChar = True
      Size = 11
    end
    object qryKCZKZKBH: TStringField
      FieldName = 'ZKBH'
      FixedChar = True
      Size = 11
    end
    object qryKCZKGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object qryKCZKCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object qryKCZKywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object qryKCZKCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object qryKCZKdwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object qryKCZKQty: TFloatField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object qryKCZKLQty: TFloatField
      FieldName = 'LQty'
    end
    object qryKCZKMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 200
    end
    object qryKCZKCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object qryKCZKZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object qryKCZKZsdh_TW: TStringField
      FieldName = 'Zsdh_TW'
      FixedChar = True
      Size = 6
    end
    object qryKCZKZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object qryKCZKUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object qryKCZKUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object qryKCZKYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpKCZK: TUpdateSQL
    ModifySQL.Strings = (
      'update KCZK'
      'set '
      '  CLBH=:CLBH,'
      '  Qty=:Qty,'
      '  LQty=:LQty,'
      '  Memo=:Memo,'
      '  ZSBH=:ZSBH,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate,'
      '  YN=:YN'
      'where'
      '  ZKBH=:old_ZKBH')
    InsertSQL.Strings = (
      'Insert into KCZK'
      '   (ZKNO, ZKBH,GSBH,CLBH,Qty,LQty,Memo,ZSBH,UserID,UserDate,YN)'
      'values'
      
        '   (:ZKNO, :ZKBH,:GSBH,:CLBH,:Qty,:LQty,:Memo,:ZSBH,:UserID,:Use' +
        'rDate,:YN)')
    DeleteSQL.Strings = (
      'Delete from KCZK where ZKBH=:old_ZKBH')
    Left = 336
    Top = 276
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from KCZKP')
    Left = 259
    Top = 212
  end
  object qryCGYGUSE: TQuery
    DatabaseName = 'DB'
    DataSource = DSKCZL
    SQL.Strings = (
      
        'select CGYGUSE.CLBH,YWPM,DDZL.BUYNO,CGYGUSE.ZLBH,DDZL.KHPO,DDZL.' +
        'Pairs,IsNull(CGYGUSES.Qty,CGYGUSE.Qty) as Qty,IsNull(CGYGUSES.SI' +
        'ZE,'#39'ZZZZZZ'#39') as Size'
      'from CGYGUSE'
      
        'left join CGYGUSES on  CGYGUSES.GSBH=CGYGUSE.GSBH and CGYGUSES.Z' +
        'LBH=CGYGUSE.ZLBH and CGYGUSES.CLBH=CGYGUSE.CLBH'
      'left join DDZL  on DDZL.DDBH=CGYGUSE.ZLBH'
      'left join CLZL on CGYGUSE.CLBH=CLZL.CLDH'
      'where CGYGUSE.GSBH=:GSBH'
      'and CGYGUSE.CLBH=:CLBH'
      'and CGYGUSES.ZKBH=:ZKBH')
    Left = 873
    Top = 556
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'GSBH'
        ParamType = ptUnknown
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ZKBH'
        ParamType = ptUnknown
        Size = 12
      end>
    object qryCGYGUSECLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object qryCGYGUSEYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object qryCGYGUSEBUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object qryCGYGUSEZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object qryCGYGUSEKHPO: TStringField
      FieldName = 'KHPO'
      FixedChar = True
      Size = 30
    end
    object qryCGYGUSEPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object qryCGYGUSESize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object qryCGYGUSEQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
  end
  object DSCGYGUSE: TDataSource
    DataSet = qryCGYGUSE
    Left = 873
    Top = 588
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 336
    Top = 312
    object mnu1: TMenuItem
      Caption = 'Set [Memo]'
      OnClick = SetClick
    end
    object mnu3: TMenuItem
      Caption = 'Set [Delete] Flag'
      OnClick = SetClick
    end
    object mnu4: TMenuItem
      Caption = 'Set [YN] Priority'
      OnClick = SetClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnu5: TMenuItem
      Caption = 'Paste to Grid Cell'
      OnClick = mnu5Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnu6: TMenuItem
      Caption = 'Generatge PO#'
      OnClick = mnu6Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 904
    Top = 560
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object qryKCZKS: TQuery
    DatabaseName = 'DB'
    DataSource = DSKCZL
    SQL.Strings = (
      'Select KCZKS.*'
      'from KCZKS'
      'where KCZKS.ZKBH=:ZKBH')
    UpdateObject = UpKCZKS
    Left = 784
    Top = 212
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'ZKBH'
        ParamType = ptUnknown
        Size = 12
      end>
    object qryKCZKSZKBH: TStringField
      FieldName = 'ZKBH'
      Origin = 'DB.KCZKS.ZKBH'
      FixedChar = True
      Size = 11
    end
    object qryKCZKSSIZE: TStringField
      FieldName = 'SIZE'
      Origin = 'DB.KCZKS.SIZE'
      FixedChar = True
      Size = 6
    end
    object qryKCZKSQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.KCZKS.Qty'
    end
    object qryKCZKSLQty: TFloatField
      FieldName = 'LQty'
      Origin = 'DB.KCZKS.LQty'
    end
    object qryKCZKSUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.KCZKS.UserID'
      FixedChar = True
      Size = 10
    end
    object qryKCZKSUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.KCZKS.UserDate'
    end
    object qryKCZKSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.KCZKS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DSKCZKS: TDataSource
    DataSet = qryKCZKS
    Left = 784
    Top = 244
  end
  object UpKCZKS: TUpdateSQL
    ModifySQL.Strings = (
      'update'
      '  KCZKS'
      'Set'
      '  SIZE =:SIZE,'
      '  Qty =:Qty,'
      '  LQty =:LQty,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate,'
      '  YN=:YN'
      'where'
      '  ZKBH=:old_ZKBH and'
      '  SIZE=:OLD_SIZE')
    InsertSQL.Strings = (
      'Insert into KCZKS'
      '   (ZKBH,SIZE,Qty,LQty,UserID,UserDate,YN)'
      'values'
      '   (:ZKBH, :SIZE, :Qty, :LQty, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete from KCZKS'
      'where'
      '  ZKBH=:old_ZKBH and'
      '  SIZE=:OLD_SIZE')
    Left = 784
    Top = 276
  end
  object qryKCZKP: TQuery
    AfterOpen = qryKCZKPAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from KCZKP')
    UpdateObject = UpKCZKP
    Left = 296
    Top = 212
    object qryKCZKPZKNO: TStringField
      FieldName = 'ZKNO'
      Origin = 'DB.KCZKP.ZKNO'
      FixedChar = True
      Size = 11
    end
    object qryKCZKPGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.KCZKP.GSBH'
      FixedChar = True
      Size = 4
    end
    object qryKCZKPMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.KCZKP.Memo'
      FixedChar = True
      Size = 100
    end
    object qryKCZKPUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.KCZKP.UserID'
      FixedChar = True
      Size = 10
    end
    object qryKCZKPUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.KCZKP.UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryKCZKPYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.KCZKP.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DSKCZKP: TDataSource
    DataSet = qryKCZKP
    Left = 296
    Top = 244
  end
  object UpKCZKP: TUpdateSQL
    ModifySQL.Strings = (
      'Update KCZKP '
      'Set'
      '  Memo=:Memo,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where ZKNO=:OLD_ZKNO')
    InsertSQL.Strings = (
      'Insert into KCZKP'
      '    (ZKNO, GSBH, Memo, UserID, UserDate, YN)'
      'values'
      '    (:ZKNO, :GSBH, :Memo, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete '
      'from KCZKP'
      'where ZKNO=:OLD_ZKNO')
    Left = 296
    Top = 276
  end
end

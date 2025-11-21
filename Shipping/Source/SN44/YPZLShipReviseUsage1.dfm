object YPZLShipReviseUsage: TYPZLShipReviseUsage
  Left = 410
  Top = 266
  Width = 1004
  Height = 473
  Caption = 'YPZLShipReviseUsage'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 988
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
      Left = 664
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Delete one Record'
      Caption = 'Reset'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = bbt7Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000EDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEEEEEEEDEDEDEEEEEEEEEEEEF1F0F4F3F0F7F3F0F8F2EF
        F7F3F0F7F1F0F3EFEFEFEDEDEDEEEEEEEDEDEDEDEDEDECECECEDEDEDEDEDEDED
        EDEDECECECEDEDEDECECECECECECEDEDEDEDEDEDF0EFF0F5F0F9E6E0EFC9D2C0
        B6CC96ABC985ABC985B5CA97C9D1BEE7E0F1F3EFF8F0EFF0ECECECEDEDEDEDED
        EDEDEDEDECECECEDEDEDEEEEEEEDEDEDEDEDEDEDEDEDEDEDEDF4F1F7E3DEEAAD
        C8868DC83E85C72B83C42982C42782C42783C52986C72D8DC83DABC886E4DFEB
        F3F0F6EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDF5EF
        FAC5D0B78AC63983C5287EC1207FC02380C02480C02580C02580C0247FC1237E
        C02183C62889C638C9D1BBF4F0FBEDEDEDEEEEEEEDEDEDECECECEEEEEEEDEDED
        EDEDEDF6F1FCBCCEA485C82D7FC12280C02480C12680C1267DBF1F7ABE1B7ABD
        1B7CBF1F80C02680C1267FC1237FC12385C82CBECFA5F3EFFAEEEEEEEDEDEDED
        EDEDECECECECECECF3F0F6CAD6BB85C82C7CBF1F7EBF2380C1277ABE1972BA0B
        9ACE52B4DA7EB6DB819ECF5774BB0F79BE1980C12680C0267EC02085C82CCED6
        C0F3F0F6EDEDEDECECECEDEDEDEFEEF0EBE5F28BC73B7DC02090C74089C6316E
        B907B0D674FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1D87872BA0D80C126
        80C0267FC12388C638EBE6F2EEEEEFEEEEEEEDEDEDF2EEF6B7D29082C3277DBF
        208CC73AFFFFFFCDE5A8FFFFFFFFFFFFD5E9B6AFD673ACD56ECFE5ABFFFFFFFF
        FFFFD3E6B372BA0D80C1267FC12483C528B4D28FF3EFF7ECECECEEEDEEF2ECFD
        8CC83C7EC0217FC02481C223FFFFFFFFFFFFEFF6E37DBF2074BC0F7ABE1B7ABE
        1C74BC1280C022FBFAF7FFFFFFB1D87979BD1A80C1267EC0208CC73DF2EBFDED
        EDEDEFEDF0D9E1CE83C52A7FC0237FC0247CBF1DFFFFFFFFFFFFFFFEFF85C32C
        7EC02381C12681C12681C1267CBF1E7FBF20FFFFFFFFFFFF75BB0F80C1257FC0
        2384C52AD7E0CEF0EEF2F2F0F7C3DAA582C32880C02580C1267DBF2191C94393
        CB469ED05AA1D05B7DBF2181C12681C12681C12681C12674BC13CFE5ABFFFFFF
        9FCF587CBF1F80C02582C327C5DAA7F2EFF6F3EFF7BCD89580C32580C02580C0
        267BC01B72BB0C78BE177CBF1E7DC02081C12681C12681C12681C12681C1267A
        BE1CACD56EFFFFFFB7DB857ABD1B80C02580C225BAD894F2EFF7F3F0F8BCD995
        80C22580C0257ABE1BBBDC8CFFFFFFB1D7787ABE1C81C12681C12681C12681C1
        2681C12681C1267ABE1CABD46DFFFFFFB5DA817ABE1B80C02580C225BCDA95F3
        EFF8F1EEF5C8DEAA80C2267FC0247CBF1F9ECF57FFFFFFD0E7AC74BB1081C127
        81C12681C12681C12681C12681C12675BC13CFE5ABFFFFFF9ACD537CBF1F80C0
        2581C327C8DDA8F1EEF5F0EFF3DDE5D382C6287FC02380C12675BA0FFFFFFFFF
        FFFF81C1227CBF1E81C12681C12681C12681C1267CBF1E7FC020FFFFFFFFFFFF
        72BB0C80C1267FC02382C429DCE5D2F0EEF2ECECEDF7F0FF8FCC417DBF2080C1
        2679BE1AB0D776FFFFFFFAFAF880C12273BB0F7ABE1C7ABE1C74BC117EC021F9
        FBF5FFFFFFAFD77379BE1980C1267EC12091CA41F6F0FFEDECEDEDEDEDF3EFF7
        BDD89581C4277FC02480C12672B90CD4E9B2FFFFFFFFFFFFCFE7ACABD570ABD5
        70CFE6ACFFFFFFFFFFFFD1E7B071B90D81C1267FC02482C427BBDA96F4EFF8ED
        EDEDEDEDEDEDEDEEF5F0FB8CC93D7FC12280C02680C12672B90BB1D977FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFD77372BA0C80C12680C0267EC0228CC8
        3CF4EFFBEDEDEEEDEDEDEDEDEDEDEDEDF0EEF4DAE4CC84C52A7EC02180C02680
        C12679BD1A74BB0E9ECF59B8DC82B7DA839ACD5074BB0D7ABE1B80C12680C026
        7FC02282C42ADBE6CCF1EFF4EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDF5F0FCCDE1
        B384C52B7FC02280C02480C12680C0267CBF1F7ABD1B7ABD1B7CBF2080C02680
        C12680C0257FC02383C52AD1E2B8F5EFFAEDEDEDEDEDEDEDEDEDEDEDEDECECEC
        ECECECECECECF5F0FCDAE4CD8DCA3D82C4277DBE207FC12380C02580C02580C0
        2580C0257FC1237EBF2181C3268DC93CDBE6CCF4EFFBECEDECEEEEEEEDEDEDEC
        ECECEDEDEDEDEDEDEDEDEDECECECEDEDEDF1EEF4F4F0FABFDA978FCB4082C427
        81C22780C22580C22581C22783C5298DC93CC0DC9AF4EFFAF1EEF4EDEDEDECEC
        ECEDEDEDECECECEDEDEDEEEEEEEDEDEDEDEDEDECECECEDEDEDEDEDEDEDEDEEF3
        EEF8F8F1FFE0E7D4C9DFABC0DC98BFDC98C9DFA9DEE6D3F8F1FFF2EEF5EEEEEF
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDECEC
        ECEDEDEDECECECEDEDEDECECECEFEEF1F1EEF5F1EFF7F3EFF8F1EEF6EFEEF1EC
        ECECECECECEEEEEEECECECEDEDEDECECECEDEDEDEDEDEDEDEDED}
      Layout = blGlyphTop
    end
  end
  object ToolPanel: TPanel
    Left = 0
    Top = 65
    Width = 988
    Height = 71
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label2: TLabel
      Left = 44
      Top = 14
      Width = 43
      Height = 16
      Caption = 'MatNo:'
    end
    object Label3: TLabel
      Left = 203
      Top = 12
      Width = 62
      Height = 16
      Caption = 'MatName:'
    end
    object Label5: TLabel
      Left = 1
      Top = 44
      Width = 87
      Height = 16
      Caption = 'Sample Order:'
    end
    object Label1: TLabel
      Left = 237
      Top = 44
      Width = 27
      Height = 16
      Caption = 'Part:'
    end
    object Label7: TLabel
      Left = 479
      Top = 14
      Width = 40
      Height = 16
      Caption = 'MJBH:'
    end
    object Label4: TLabel
      Left = 620
      Top = 12
      Width = 51
      Height = 16
      Caption = 'Material:'
    end
    object Button1: TButton
      Left = 793
      Top = 35
      Width = 81
      Height = 33
      Caption = 'QUERY'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 91
      Top = 10
      Width = 110
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 267
      Top = 10
      Width = 94
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 364
      Top = 10
      Width = 109
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 91
      Top = 42
      Width = 111
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 267
      Top = 40
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object CheckBox2: TCheckBox
      Left = 629
      Top = 45
      Width = 90
      Height = 17
      Caption = 'Qty<>CLSL'
      TabOrder = 6
    end
    object VTCombo: TComboBox
      Left = 677
      Top = 8
      Width = 108
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 7
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'Xuat GC'
        'Xuat Hien Truong')
    end
    object MotherEdit: TEdit
      Left = 523
      Top = 10
      Width = 94
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object CheckBox3: TCheckBox
      Left = 522
      Top = 44
      Width = 61
      Height = 17
      Caption = '<>W%'
      TabOrder = 9
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 136
    Width = 988
    Height = 298
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Spec'
      object Splitter1: TSplitter
        Left = 779
        Top = 0
        Width = 5
        Height = 263
        Align = alRight
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 779
        Height = 263
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
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDrawColumnCell = DBGridEh1DrawColumnCell
        OnEditButtonClick = DBGridEh1EditButtonClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #35330#21934'|Order No'
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            Title.Caption = #37096#20301'|Part'
            Width = 39
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            ReadOnly = True
            Title.Caption = #37096#20301#21517#31281'|Part Name'
            Width = 121
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = #26009#34399'|Mat No'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21697#21517'|Material Name'
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'SIZE'
            Footers = <>
            Title.Caption = #23610#30908'|SIZE'
            Width = 55
          end
          item
            EditButtons = <>
            FieldName = 'dwbh'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20301'|Unit'
            Width = 37
          end
          item
            Color = clYellow
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <
              item
                FieldName = 'CLSL'
                ValueType = fvtSum
              end>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USAGE'
            Footers = <>
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'ZSMC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'MJBH'
            Footers = <>
            Title.Caption = #27597#26009#34399'|MJBH'
          end>
      end
      object DBGridEh2: TDBGridEh
        Left = 784
        Top = 0
        Width = 196
        Height = 263
        Align = alRight
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
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = #38936#26009'|KCLLS Qty'
          end>
      end
    end
  end
  object Query1: TQuery
    AfterOpen = Query1AfterOpen
    AutoRefresh = True
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select YPZL.*,CLZL.dwbh,CLZL.ywpm as CLMC,bwzl.ywsm as BWMC,ZSZL' +
        '.ZSYWJC AS ZSMC,YPZLAll.CLSLQty,KCLLS.Qty '
      'from #YPZL_ZLZLS2 as YPZL'
      'LEFT JOIN BWZL ON BWZL.BWDH=YPZL.BWBH '
      'LEFT JOIN CLZL ON YPZL.CLBH=CLZL.CLDH '
      'LEFT JOIN ZSZL ON ZSZL.ZSDH=YPZL.CSBH '
      
        'Left join ( Select  YPDH,CLBH,MJBH,Round(IsNull(Sum(CLSL),0)+0.0' +
        '049,2) as CLSLQty from ( '
      '            Select * from #YPZL_ZLZLS2 '
      '            where CLBH like '#39'%'#39' '
      ' ) YPZL  Group by YPDH,CLBH,MJBH '
      
        ')  YPZLAll on YPZL.YPDH=YPZLAll.YPDH and YPZL.CLBH=YPZLAll.CLBH ' +
        'and YPZL.MJBH=YPZLAll.MJBH '
      
        'left join (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from ' +
        '('
      
        '            select   KCLLS.SCBH, KCLLS.CLBH,'#39'ZZZZZZZZZZ'#39' as MJBH' +
        ', sum(KCLLS.Qty) as Qty'
      '            from KCLLS'
      '            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '            where  KCLLS.SCBH like '#39'LAIV191200001%'#39'  and KCLLS.C' +
        'LBH like '#39'%'#39'  '
      '                 and KCLL.GSBH='#39'VA12'#39' '
      '                 and KCLL.SCBH<>'#39'JJJJJJJJJJ'#39' '
      '            Group by KCLLS.SCBH, KCLLS.CLBH'
      '            Union all'
      
        '            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.' +
        'CLBH as MJBH,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS'
      
        '            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS' +
        '.CLBH=JGZLSS.CLBH '
      '            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO '
      
        '            where JGZLSS.ZLBH like '#39'LAIV191200001%'#39' and JGZLS.ZM' +
        'LB like '#39'%'#39' and JGZLS.CLBH like '#39'%'#39'  '
      '                  and JGZL.GSBH='#39'VA12'#39' '
      
        '                  and convert(smalldatetime,convert(varchar,JGZL' +
        '.CFMDate1,111))<'#39'2017/09/01'#39'  '
      '            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH'
      '            Union all'
      
        '            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, s' +
        'um(KCLLS.Qty) as Qty'
      '            from KCLLS'
      '            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO '
      
        '            where  KCLLS.SCBH like '#39'LAIV191200001%'#39'  and KCLLS.C' +
        'LBH like '#39'%'#39'  '
      '                 and KCLL.GSBH='#39'VA12'#39' '
      '                 and KCLL.SCBH='#39'JJJJJJJJJJ'#39' '
      '            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL'
      
        '           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=' +
        'YPZL.CLBH and KCLLS.SCBH=YPZL.YPDH  and KCLLS.MJBH=YPZL.MJBH '
      'WHERE YPZL.CLBH like '#39'%'#39' '
      '            and CLZL.YWPM like '#39'%%'#39' '
      '            and CLZL.YWPM like '#39'%%'#39' '
      '            and YPZL.BWBH like '#39'%'#39' '
      '          and YPZL.CLBH not like '#39'W%'#39)
    UpdateObject = UpdateSQL1
    Left = 136
    Top = 216
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1MJBH: TStringField
      FieldName = 'MJBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1ZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 1
    end
    object Query1SIZE: TStringField
      FieldName = 'SIZE'
      FixedChar = True
      Size = 6
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#0.0000'
    end
    object Query1USAGE: TFloatField
      FieldName = 'USAGE'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 5
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Query1CLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object Query1BWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 40
    end
    object Query1ZSMC: TStringField
      FieldName = 'ZSMC'
      FixedChar = True
    end
    object Query1CLSLQty: TFloatField
      FieldName = 'CLSLQty'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 248
  end
  object DS2: TDataSource
    DataSet = KCLLSQry
    Left = 232
    Top = 248
  end
  object KCLLSQry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select SCBH,CLBH,Sum(Qty) as Qty from ('
      'select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qty'
      'from KCLLS'
      'where  CLBH=:CLBH and KCLLS.SCBH=:YPDH'
      'group by KCLLS.SCBH, KCLLS.CLBH'
      'Union all'
      
        '        select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,Sum(JGZLS.' +
        'Qty*JGZLSS.Qty) as Qty from JGZLS'
      
        'Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS' +
        '.CLBH '
      'where JGZLSS.ZLBH=:YPDH and JGZLS.ZMLB=:CLBH'
      'Group by JGZLSS.ZLBH,JGZLS.ZMLB'
      ') KCLLS group by SCBH,CLBH')
    Left = 232
    Top = 216
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'YPDH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object KCLLSQrySCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object KCLLSQryCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object KCLLSQryQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#0.00'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 136
    Top = 312
    object QtyCLSL1: TMenuItem
      Caption = 'Set Qty=CLSL'
      OnClick = QtyCLSL1Click
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update YPZL_ZLZLS2'
      'set'
      '        CLBH=:CLBH,'
      '        CSBH=:CSBH,'
      '        BWBH=:BWBH,'
      '        CLSL=:CLSL,'
      '        USAGE=:USAGE,'
      '        USERID=:USERID,'
      '        USERDATE=:USERDATE'
      'WHERE'
      '   YPDH=:OLD_YPDH AND'
      '   BWBH=:OLD_BWBH AND'
      '   CLBH=:OLD_CLBH AND'
      '   SIZE=:OLD_SIZE'
      ''
      ''
      '')
    InsertSQL.Strings = (
      'Insert into YPZL_ZLZLS2'
      
        '   (YPDH, BWBH, CSBH, MJBH, CLBH, ZMLB, SIZE, CLSL, USAGE, USERI' +
        'D, USERDATE, YN)'
      'Values'
      
        '   (:YPDH, :BWBH, :CSBH, :MJBH, :CLBH, :ZMLB, :SIZE, :CLSL, :USA' +
        'GE, :USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'Delete From YPZL_ZLZLS2'
      'WHERE'
      '   YPDH=:OLD_YPDH AND'
      '   BWBH=:OLD_BWBH AND'
      '   CLBH=:OLD_CLBH AND'
      '   SIZE=:OLD_SIZE')
    Left = 136
    Top = 280
  end
  object UpdateQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'if object_id('#39'tempdb..#YPZL_ZLZLS2'#39') is not null'
      'begin   drop table #YPZL_ZLZLS2 end'
      'Select * into #YPZL_ZLZLS2 from ('
      'select  ypzls.YPDH,ypzls.BWBH,IsNull(ypzls.CSBH,'#39#39') as CSBH,'
      ' '#39'ZZZZZZZZZZ'#39' as MJBH,ypzls.CLBH,CLZL.CLZMLB as ZMLB,'
      
        ' '#39'ZZZZZZ'#39' as SIZE, round(YPZL.Quantity*ypzls.CLSL+0.0000,4) as C' +
        'LSL,ypzls.CLSL as  USAGE ,'
      ' '#39'21191'#39'  as USERID,'
      ' GetDate() as USERDATE,'
      ' '#39'2'#39' as YN'
      ' from YPZL'
      ' left join ypzls on ypzls.YPDH=YPZL.YPDH'
      ' left join CLZL on CLZL.CLDH=ypzls.CLBH'
      ' where YPZL.YPDH='#39'LAIV191200001'#39
      'Union all'
      
        'select YPDH,BWBH,ZSDH,MJBH,CLBH,ZMLB,SIZE,Sum(CLSL)  as CLSL,avg' +
        '(usage) as Usage,Max(USERID) as USERID,Max(UserDate) as UserDate' +
        ',Max(YN) as YN'
      ' from('
      ' select  ypzls.YPDH,ypzls.BWBH,'
      
        ' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<' +
        '>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh'
      ' ,ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,'
      
        ' '#39'ZZZZZZ'#39' as SIZE, round(YPZL.Quantity*ypzls.CLSL*CLZHZL.SYL+0.0' +
        '000,4) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,'
      ' '#39'21191'#39'  as USERID,'
      ' GetDate() as USERDATE,'
      ' '#39'2'#39' as YN '
      ' from YPZL'
      ' INNER join ypzls on ypzls.YPDH=YPZL.YPDH'
      ' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh '
      
        ' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CL' +
        'ZHZL_Dev.cldh1 = CLZHZL.cldh1 '
      ' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 '
      ' where CLZHZL.SYL>0 and YPZL.YPDH='#39'LAIV191200001'#39' ) A'
      ' Group by YPDH,BWBH,CLBH,ZSDH,MJBH,ZMLB,SIZE'
      'Union all'
      ' select CLZHZL2.YPDH,CLZHZL2.BWBH,'
      
        '        case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_de' +
        'v.zsdh<>'#39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh,'
      
        '        CLZHZL2.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB a' +
        's ZMLB,'
      
        '        '#39'ZZZZZZ'#39' as SIZE, round(CLZHZL2.CLSL*CLZHZL.SYL,1) as CL' +
        'SL,CLZHZL2.USAGE* CLZHZL.SYL as  USAGE ,'
      '        '#39'21191'#39'  as USERID,GetDate() as USERDATE,'#39'2'#39' as YN'
      '  from ('
      'select  ypzls.YPDH,ypzls.BWBH,'
      
        'case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>' +
        #39#39')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh,'
      'ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,'
      
        #39'ZZZZZZ'#39' as SIZE, round(YPZL.Quantity*ypzls.CLSL*CLZHZL.SYL+0.00' +
        '00,4) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,'
      #39'21191'#39'  as USERID,GetDate() as USERDATE,'#39'2'#39' as YN'
      '  from YPZL'
      ' INNER join ypzls on ypzls.YPDH=YPZL.YPDH '
      ' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh'
      
        ' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CL' +
        'ZHZL_Dev.cldh1 = CLZHZL.cldh1'
      ' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1'
      
        ' where CLZHZL.SYL>0 and YPZL.YPDH='#39'LAIV191200001'#39'and CLZL.CLZMLB' +
        '='#39'Y'#39' '
      ' ) CLZHZL2'
      ' INNER  JOIN CLZHZL   ON CLZHZL2.CLBH = CLZHZL.cldh '
      
        ' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CL' +
        'ZHZL_Dev.cldh1 = CLZHZL.cldh1'
      ' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 '
      ' where CLZHZL.SYL>0 ) YPZL')
    Left = 104
    Top = 216
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 104
    Top = 248
  end
end

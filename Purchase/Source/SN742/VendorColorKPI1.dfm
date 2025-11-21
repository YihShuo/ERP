object VendorColorKPI: TVendorColorKPI
  Left = 470
  Top = 251
  Width = 1280
  Height = 539
  Caption = 'VendorColorKPI'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1264
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
      OnClick = BBT1Click
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
      OnClick = BBT2Click
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
      OnClick = BBT3Click
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
      OnClick = BBT4Click
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
      Left = 560
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 1264
    Height = 81
    Align = alTop
    TabOrder = 1
    object Label11: TLabel
      Left = 12
      Top = 11
      Width = 66
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KPIPeriod:'
    end
    object Label12: TLabel
      Left = 200
      Top = 11
      Width = 83
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MaterialType:'
    end
    object Label13: TLabel
      Left = 40
      Top = 51
      Width = 83
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SuppID:'
    end
    object Label14: TLabel
      Left = 256
      Top = 51
      Width = 100
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SuppName:'
    end
    object Label6: TLabel
      Left = 416
      Top = 10
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'USERDate:'
    end
    object DBEdit5: TDBEdit
      Left = 80
      Top = 8
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Color = 14803425
      DataField = 'KPIPeriod'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 288
      Top = 8
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      Color = 14803425
      DataField = 'MaterialType'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 360
      Top = 48
      Width = 225
      Height = 21
      CharCase = ecUpperCase
      Color = 14803425
      DataField = 'VendorFlexID'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 128
      Top = 48
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Supplier'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 3
    end
    object BBTT1: TBitBtn
      Left = 232
      Top = 48
      Width = 19
      Height = 25
      Caption = '...'
      TabOrder = 4
      Visible = False
      OnClick = BBTT1Click
    end
    object DBEdit1: TDBEdit
      Left = 504
      Top = 8
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      Color = 14803425
      DataField = 'USERDate'
      DataSource = DS3
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 146
    Width = 1264
    Height = 55
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 78
      Height = 20
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'KPIPeriod:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 568
      Top = 19
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'From:'
    end
    object Label4: TLabel
      Left = 715
      Top = 19
      Width = 20
      Height = 16
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 181
      Top = 19
      Width = 87
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MaterialType:'
    end
    object Label2: TLabel
      Left = 391
      Top = 19
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
    end
    object Edit1: TEdit
      Left = 88
      Top = 16
      Width = 89
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
      Left = 908
      Top = 13
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 616
      Top = 16
      Width = 97
      Height = 24
      Date = 45226.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 45226.000000000000000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 736
      Top = 16
      Width = 97
      Height = 24
      Date = 45227.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 45227.000000000000000000
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 268
      Top = 16
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Check: TCheckBox
      Left = 840
      Top = 20
      Width = 57
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object Edit2: TEdit
      Left = 451
      Top = 16
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
  end
  object DBGrid3: TDBGridEh
    Left = 0
    Top = 201
    Width = 1264
    Height = 299
    Align = alClient
    DataSource = DS3
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
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
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGrid3DrawColumnCell
    OnEditButtonClick = DBGrid3EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KPIPERIOD'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'Supplier'
        Footers = <>
        Width = 218
      end
      item
        EditButtons = <>
        FieldName = 'VendorFlexID'
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'MaterialType'
        Footers = <>
        PickList.Strings = (
          'TEXTILE'
          'CHEMICAL'
          'COMPONENT'
          'LEATHER'
          'SYNTHETIC')
        Width = 121
      end
      item
        EditButtons = <>
        FieldName = 'TotalPO'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ColorMatchingRate'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'ColorRftRate'
        Footers = <>
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'OverallRate'
        Footers = <>
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 80
      end
      item
        DisplayFormat = 'dd/mm/yyyy'
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 64
      end
      item
        DisplayFormat = 'dd/mm/yyyy'
        EditButtons = <>
        FieldName = 'ConfirmedDate'
        Footers = <>
        Width = 102
      end
      item
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 64
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 146
    Top = 352
  end
  object CGMas: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from MATCHINGKPI where KPIPeriod like '#39'%'#39
      
        'and convert(smalldatetime,convert(varchar,USERDate,111))  betwee' +
        'n '
      #39'2020/08/27'#39' and  '#39'2020/08/30'#39)
    UpdateObject = UpMas
    Left = 404
    Top = 372
    object CGMasKPIPERIOD: TStringField
      FieldName = 'KPIPERIOD'
      FixedChar = True
      Size = 10
    end
    object CGMasSupplier: TStringField
      FieldName = 'Supplier'
      FixedChar = True
      Size = 50
    end
    object CGMasVendorFlexID: TStringField
      FieldName = 'VendorFlexID'
      FixedChar = True
      Size = 50
    end
    object CGMasMaterialType: TStringField
      FieldName = 'MaterialType'
      FixedChar = True
      Size = 50
    end
    object CGMasTotalPO: TCurrencyField
      FieldName = 'TotalPO'
      DisplayFormat = '#,##0.0'
    end
    object CGMasColorMatchingRate: TCurrencyField
      FieldName = 'ColorMatchingRate'
      DisplayFormat = '#,##0.0'
    end
    object CGMasColorRftRate: TCurrencyField
      FieldName = 'ColorRftRate'
      DisplayFormat = '#,##0.0'
    end
    object CGMasOverallRate: TCurrencyField
      FieldName = 'OverallRate'
      DisplayFormat = '#,##0.0'
    end
    object CGMasUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object CGMasUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object CGMasConfirmedDate: TDateTimeField
      FieldName = 'ConfirmedDate'
    end
    object CGMasRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 5
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update MATCHINGKPI'
      'set'
      '  KPIPeriod  = :KPIPeriod ,'
      '  Supplier = :Supplier ,'
      '  VendorFlexID = :VendorFlexID ,'
      '  MaterialType= :MaterialType,'
      '  TotalPO = :TotalPO ,'
      '  ColorMatchingRate = :ColorMatchingRate ,'
      '  ColorRftRate= :ColorRftRate,'
      '  OverallRate = :OverallRate,'
      '  UserID= :UserID,'
      '  USERDATE= :USERDATE,'
      '  ConfirmedDate= :ConfirmedDate,'
      '  Remark = :Remark'
      'where'
      '  KPIPeriod  = :OLD_KPIPeriod  '
      '  and Supplier = :OLD_Supplier'
      '  and VendorFlexID =:OLD_VendorFlexID'
      '  and MaterialType = :OLD_MaterialType'
      '')
    InsertSQL.Strings = (
      'insert into MATCHINGKPI'
      
        '  (KPIPeriod ,Supplier , VendorFlexID,  MaterialType,TotalPO, Co' +
        'lorMatchingRate, ColorRftRate, OverallRate,USERID,USERDate,Confi' +
        'rmedDate,Remark)'
      'values'
      
        '  (:KPIPeriod ,:Supplier, :VendorFlexID,  :MaterialType, :TotalP' +
        'O, :ColorMatchingRate, :ColorRftRate, :OverallRate, :USERID, :US' +
        'ERDate, :ConfirmedDate, :Remark)')
    DeleteSQL.Strings = (
      'delete from MATCHINGKPI'
      'where'
      'KPIPeriod= :OLD_KPIPeriod'
      'and VendorFlexID= :OLD_VendorFlexID'
      'and Supplier =  :OLD_Supplier'
      'and MaterialType = :OLD_MaterialType')
    Left = 404
    Top = 403
  end
  object DS3: TDataSource
    DataSet = CGMas
    Left = 444
    Top = 372
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 176
    Top = 352
  end
end

object Equipment_Classification: TEquipment_Classification
  Left = 394
  Top = 242
  Caption = 'Equipment Classification'
  ClientHeight = 459
  ClientWidth = 1182
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
    Width = 1182
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
    object bbt6: TBitBtn
      Left = 584
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
      TabOrder = 11
      OnClick = bbt6Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 1182
    Height = 72
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 10
      Top = 11
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SBBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 207
      Top = 10
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZWPM:'
    end
    object Label5: TLabel
      Left = 8
      Top = 43
      Width = 87
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'QUCBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 207
      Top = 43
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'LSBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 408
      Top = 11
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'VWPM:'
    end
    object Label4: TLabel
      Left = 407
      Top = 42
      Width = 68
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HGPM:'
    end
    object Edit1: TEdit
      Left = 96
      Top = 8
      Width = 105
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 905
      Top = 34
      Width = 81
      Height = 32
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
    object ZWPMEdit: TEdit
      Left = 281
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 2
    end
    object Check: TCheckBox
      Left = 600
      Top = 14
      Width = 169
      Height = 17
      Caption = 'Mine'
      TabOrder = 3
    end
    object QUCBHEdit: TEdit
      Left = 96
      Top = 40
      Width = 105
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object LSBHEdit: TEdit
      Left = 281
      Top = 38
      Width = 120
      Height = 26
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object YWPMEdit: TEdit
      Left = 481
      Top = 7
      Width = 113
      Height = 24
      TabOrder = 6
    end
    object HGPMEdit: TEdit
      Left = 481
      Top = 39
      Width = 113
      Height = 24
      TabOrder = 7
    end
    object GroupBox1: TGroupBox
      Left = 600
      Top = 34
      Width = 297
      Height = 33
      TabOrder = 8
      object AuthCEBox: TCheckBox
        Left = 8
        Top = 13
        Width = 81
        Height = 17
        Caption = 'CE'
        TabOrder = 0
      end
      object AuthCoBox: TCheckBox
        Left = 88
        Top = 13
        Width = 98
        Height = 17
        Caption = 'Company'
        TabOrder = 1
      end
      object AuthBrBox: TCheckBox
        Left = 192
        Top = 13
        Width = 102
        Height = 17
        Caption = 'Brand'
        TabOrder = 2
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 137
    Width = 1182
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label12: TLabel
      Left = 0
      Top = 13
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YWPM:'
    end
    object Label13: TLabel
      Left = 416
      Top = 44
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Supplier:'
    end
    object Label14: TLabel
      Left = 0
      Top = 44
      Width = 71
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ZWPM:'
    end
    object Label8: TLabel
      Left = 415
      Top = 11
      Width = 62
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'HGPM:'
    end
    object DBEdit6: TDBEdit
      Left = 73
      Top = 11
      Width = 336
      Height = 24
      CharCase = ecUpperCase
      DataField = 'YWPM'
      DataSource = DS1
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 74
      Top = 41
      Width = 335
      Height = 24
      CharCase = ecUpperCase
      DataField = 'ZWPM'
      DataSource = DS1
      TabOrder = 1
    end
    object DBEdit7: TDBEdit
      Left = 481
      Top = 40
      Width = 152
      Height = 24
      CharCase = ecUpperCase
      DataField = 'zsjc_yw'
      DataSource = DS1
      TabOrder = 2
    end
    object BBTT1: TBitBtn
      Left = 632
      Top = 38
      Width = 19
      Height = 25
      Caption = '...'
      TabOrder = 3
      Visible = False
      OnClick = BBTT1Click
    end
    object DBEdit1: TDBEdit
      Left = 481
      Top = 8
      Width = 336
      Height = 24
      CharCase = ecUpperCase
      DataField = 'HGPM'
      DataSource = DS1
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 218
    Width = 1182
    Height = 241
    Align = alClient
    DataSource = DS1
    DynProps = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterRowCount = 1
    FooterParams.Color = clWindow
    ParentFont = False
    PopupMenu = PopupMenu
    SumList.Active = True
    TabOrder = 3
    TitleParams.MultiTitle = True
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'SBBH'
        Footer.FieldName = 'SBBH'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Caption = #39006#21029'ID|SBBH'
        Width = 69
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LSBH'
        Footers = <>
        Title.Caption = #22411#34399'|LSBH'
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #33521#25991#21517#31281'|YWPM'
        Width = 179
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = #20013#25991#21517#31281'|ZWPM'
        Width = 156
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'VWPM'
        Footers = <>
        Title.Caption = #36234#25991#21517#31281'|VWPM'
        Width = 168
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'HGPM'
        Footers = <>
        Title.Caption = #28023#38364#21517#31281'|HGPM'
        Width = 172
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        PickList.Strings = (
          'BAG'
          'BOLT'
          'BOX'
          'CAN'
          'CM'
          'CONE'
          'CTN'
          'DOZ'
          'G'
          'GALS'
          'GRN'
          'HOLE'
          'KGS'
          'L'
          'LBS'
          'M'
          'M3'
          'MM'
          'MT'
          'PC'
          'PCE'
          'PCS'
          'PNL'
          'PRS'
          'ROLL'
          'SET'
          'SHT'
          'SPL'
          'SQF'
          'SQM'
          'SQYD'
          'TON'
          'YRD')
        Title.Caption = #21934#20301'|DWBH'
        Width = 43
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUCBH'
        Footers = <>
        Title.Caption = #35215#26684'|QUCBH'
        Width = 112
      end
      item
        CellButtons = <>
        Color = clYellow
        DynProps = <>
        EditButtons = <>
        FieldName = 'ZSDH'
        Footers = <>
        ReadOnly = True
        Title.Caption = #24288#21830'No|Sup No'
        Width = 49
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'zsjc_yw'
        Footers = <>
        ReadOnly = True
        Title.Caption = #35069#36896#24288#21830'|ZSYWJC'
        Width = 76
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        PickList.Strings = (
          'TW'
          'VN')
        Title.Caption = #25505#21312'|CQDH'
        Width = 45
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QUSPrice'
        Footers = <>
        Title.Caption = #22577#20729'|USPrice'
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QVNPrice'
        Footers = <>
        Title.Caption = #22577#20729'|VNPrice'
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AuthCE'
        Footers = <>
        Title.Caption = #23433#20840#35469#35657'|AuthCE'
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AuthCompany'
        Footers = <>
        Title.Caption = #20844#21496#25351#23450'|Company'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'AuthBrand'
        Footers = <>
        Title.Caption = #23458#20154#25351#23450'|AuthBrand'
        Width = 63
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = #20633#35387'|Memo'
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CLZMLB'
        Footers = <>
        ReadOnly = True
        Title.Caption = #32068#21512'|CLZMLB'
        Width = 32
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TYJH'
        Footers = <>
        Width = 87
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773'ID|USERID'
        Width = 56
      end
      item
        CellButtons = <>
        DisplayFormat = 'yyyy/MM/dd'
        DynProps = <>
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = #20351#29992#32773#26085#26399'|USERDATE'
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object TSCD_SB: TQuery
    AfterOpen = TSCD_SBAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  TSCD_SB.*,TSCD_ZSZL.zsjc_yw from TSCD_SB  '
      'Left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_SB.zsdh  '
      'where TSCD_SB.SBBH like '#39'%'#39' '
      '   and TSCD_SB.USERID='#39'21191'#39' '
      'order by TSCD_SB.SBBH')
    UpdateObject = UpMas
    Left = 316
    Top = 268
    object TSCD_SBSBBH: TStringField
      FieldName = 'SBBH'
      Origin = 'DB.TSCD_SB.SBBH'
      FixedChar = True
    end
    object TSCD_SBLSBH: TStringField
      FieldName = 'LSBH'
      FixedChar = True
      Size = 30
    end
    object TSCD_SBYWPM: TStringField
      FieldName = 'YWPM'
      Origin = 'DB.TSCD_SB.YWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBZWPM: TStringField
      FieldName = 'ZWPM'
      Origin = 'DB.TSCD_SB.ZWPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBVWPM: TStringField
      FieldName = 'VWPM'
      FixedChar = True
      Size = 250
    end
    object TSCD_SBHGPM: TStringField
      FieldName = 'HGPM'
      FixedChar = True
      Size = 200
    end
    object TSCD_SBQUCBH: TStringField
      FieldName = 'QUCBH'
      Origin = 'DB.TSCD_SB.QUCBH'
      FixedChar = True
      Size = 30
    end
    object TSCD_SBDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 10
    end
    object TSCD_SBZSDH: TStringField
      FieldName = 'ZSDH'
      Origin = 'DB.TSCD_SB.ZSDH'
      FixedChar = True
      Size = 6
    end
    object TSCD_SBCQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object TSCD_SBQUSPrice: TFloatField
      FieldName = 'QUSPrice'
      DisplayFormat = '#0.00'
    end
    object TSCD_SBQVNPrice: TCurrencyField
      FieldName = 'QVNPrice'
      DisplayFormat = '#,##0'
    end
    object TSCD_SBAuthCE: TBooleanField
      FieldName = 'AuthCE'
    end
    object TSCD_SBAuthCompany: TBooleanField
      FieldName = 'AuthCompany'
    end
    object TSCD_SBAuthBrand: TBooleanField
      FieldName = 'AuthBrand'
    end
    object TSCD_SBCLZMLB: TStringField
      FieldName = 'CLZMLB'
      Origin = 'DB.TSCD_SB.CLZMLB'
      FixedChar = True
      Size = 1
    end
    object TSCD_SBMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 50
    end
    object TSCD_SBUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.TSCD_SB.USERID'
      FixedChar = True
      Size = 10
    end
    object TSCD_SBUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.TSCD_SB.USERDATE'
    end
    object TSCD_SBYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.TSCD_SB.YN'
      FixedChar = True
      Size = 1
    end
    object TSCD_SBzsjc_yw: TStringField
      FieldName = 'zsjc_yw'
      Origin = 'DB.TSCD_ZSZL.zsjc_yw'
      FixedChar = True
    end
    object TSCD_SBTYJH: TStringField
      FieldName = 'TYJH'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update TSCD_SB'
      'set'
      '  QUCBH = :QUCBH,'
      '  YWPM = :YWPM,'
      '  ZWPM = :ZWPM,'
      '  VWPM = :VWPM,'
      '  HGPM = :HGPM,'
      '  DWBH = :DWBH,'
      '  ZSDH = :ZSDH,'
      '  MEMO = :MEMO,'
      '  AuthCE = :AuthCE,'
      '  AuthCompany = :AuthCompany,'
      '  AuthBrand =:AuthBrand,'
      '  QUSPrice =:QUSPrice,'
      '  QVNPrice =:QVNPrice,'
      '  LSBH = :LSBH,'
      '  CQDH = :CQDH,'
      '  CLZMLB = :CLZMLB,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN'
      'where'
      '  SBBH = :OLD_SBBH')
    InsertSQL.Strings = (
      'insert into TSCD_SB'
      
        '  (SBBH, YWPM, ZWPM, VWPM, HGPM , DWBH, QUCBH, ZSDH, LSBH, MEMO,' +
        ' AuthCE, AuthCompany ,AuthBrand ,QUSPrice ,QVNPrice, CLZMLB, CQD' +
        'H,  USERID, USERDATE, YN )'
      'values'
      
        '  (:SBBH, :YWPM, :ZWPM, :VWPM, :HGPM, :DWBH, :QUCBH, :ZSDH, :LSB' +
        'H, :MEMO, :AuthCE, :AuthCompany, :AuthBrand ,:QUSPrice ,:QVNPric' +
        'e, :CLZMLB, :CQDH, :USERID, :USERDATE, :YN )')
    DeleteSQL.Strings = (
      'delete from TSCD_SB'
      'where'
      '  SBBH= :OLD_SBBH')
    Left = 316
    Top = 300
  end
  object DS1: TDataSource
    DataSet = TSCD_SB
    Left = 348
    Top = 300
  end
  object TmpQuery: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 282
    Top = 270
  end
  object PopupMenu: TPopupMenu
    Left = 283
    Top = 302
    object N1: TMenuItem
      Caption = 'Combined Machine '#32068#21512#27231#22120#35373#20633
      OnClick = N1Click
    end
    object Lock1: TMenuItem
      Caption = 'Lock'
      OnClick = Lock1Click
    end
    object Unlock1: TMenuItem
      Caption = 'Unlock'
      OnClick = Unlock1Click
    end
  end
end

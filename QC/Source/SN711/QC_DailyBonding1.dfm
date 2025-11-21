object QC_DailyBonding: TQC_DailyBonding
  Left = 472
  Top = 422
  Width = 1171
  Height = 656
  Caption = 'QC_DailyBonding'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
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
  PixelsPerInch = 120
  TextHeight = 25
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1153
    Height = 81
    Align = alTop
    TabOrder = 0
    object BB2: TBitBtn
      Left = 70
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Insert one New Record'
      Caption = 'Insert'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 130
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Delete one Record'
      Caption = 'Delete'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 190
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Modify'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 250
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Save Current'
      Caption = 'Save'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 310
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Cancel'
      Caption = 'Cancel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 370
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Exit Current Form'
      Caption = 'Exit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 10
      Top = 10
      Width = 61
      Height = 61
      Caption = 'Query'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 460
      Top = 10
      Width = 61
      Height = 61
      Caption = 'First'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 520
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Insert one New Record'
      Caption = 'Prior'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 580
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Delete one Record'
      Caption = 'Next'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 640
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Last'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 730
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Print'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
      Left = 790
      Top = 10
      Width = 61
      Height = 61
      Hint = 'Modify Current'
      Caption = 'Excel'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
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
  object ToolPanel: TPanel
    Left = 0
    Top = 81
    Width = 1153
    Height = 100
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 285
      Top = 64
      Width = 64
      Height = 26
      Caption = 'Article:'
    end
    object Label2: TLabel
      Left = 523
      Top = 65
      Width = 62
      Height = 26
      Caption = 'Brand:'
    end
    object Label3: TLabel
      Left = 10
      Top = 23
      Width = 132
      Height = 26
      Caption = 'RcDate From:'
    end
    object Label4: TLabel
      Left = 300
      Top = 24
      Width = 32
      Height = 26
      Caption = 'To:'
    end
    object Label5: TLabel
      Left = 25
      Top = 64
      Width = 118
      Height = 26
      Caption = 'Tested Item:'
    end
    object Label6: TLabel
      Left = 494
      Top = 20
      Width = 98
      Height = 26
      Caption = 'Database:'
    end
    object Label7: TLabel
      Left = 730
      Top = 63
      Width = 36
      Height = 26
      Caption = 'RY:'
    end
    object Edit1: TEdit
      Left = 348
      Top = 59
      Width = 151
      Height = 34
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 590
      Top = 60
      Width = 123
      Height = 34
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object Button1: TButton
      Left = 930
      Top = 53
      Width = 111
      Height = 41
      Caption = 'QUERY'
      TabOrder = 2
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 140
      Top = 20
      Width = 131
      Height = 34
      Date = 41815.449349594910000000
      Format = 'yyyy/MM/dd'
      Time = 41815.449349594910000000
      TabOrder = 3
    end
    object DTP2: TDateTimePicker
      Left = 349
      Top = 20
      Width = 131
      Height = 34
      Date = 41815.449349594910000000
      Format = 'yyyy/MM/dd'
      Time = 41815.449349594910000000
      TabOrder = 4
    end
    object DFL: TComboBox
      Left = 140
      Top = 60
      Width = 131
      Height = 34
      Style = csDropDownList
      ItemHeight = 26
      TabOrder = 5
      Items.Strings = (
        'C-FSM-05'
        'C-FSM-09'
        'FGT-02'
        'FGT-13'
        'FST-01'
        'FST-07')
    end
    object Edit3: TEdit
      Left = 590
      Top = 14
      Width = 123
      Height = 34
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object Edit4: TEdit
      Left = 769
      Top = 59
      Width = 151
      Height = 34
      CharCase = ecUpperCase
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 841
    Top = 181
    Width = 312
    Height = 430
    Align = alRight
    TabOrder = 2
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 310
      Height = 70
      Align = alTop
      TabOrder = 0
      object RB1: TBitBtn
        Left = 0
        Top = 0
        Width = 61
        Height = 61
        Hint = 'Insert one New Record'
        Caption = 'Insert'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = RB1Click
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
      object RB2: TBitBtn
        Left = 60
        Top = 0
        Width = 61
        Height = 61
        Hint = 'Delete one Record'
        Caption = 'Delete'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = RB2Click
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
      object RB3: TBitBtn
        Left = 120
        Top = 0
        Width = 61
        Height = 61
        Hint = 'Modify Current'
        Caption = 'Modify'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = RB3Click
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
      object RB4: TBitBtn
        Left = 180
        Top = 0
        Width = 61
        Height = 61
        Hint = 'Save Current'
        Caption = 'Save'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = RB4Click
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
      object RB5: TBitBtn
        Left = 240
        Top = 0
        Width = 61
        Height = 61
        Hint = 'Cancel'
        Caption = 'Cancel'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = RB5Click
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
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 71
      Width = 310
      Height = 358
      Align = alClient
      DataSource = DetDS
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -20
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      SumList.Active = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -20
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh2DrawColumnCell
      OnEditButtonClick = DBGridEh2EditButtonClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SCBH'
          Footers = <
            item
              FieldName = 'SCBH'
              ValueType = fvtCount
            end>
          Width = 163
        end>
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 181
    Width = 841
    Height = 430
    Align = alClient
    DataSource = MasDS
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -20
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 4
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -20
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnEditButtonClick = DBGridEh1EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TSNO'
        Footers = <
          item
            FieldName = 'TSNO'
            ValueType = fvtCount
          end>
        Title.Caption = 'ID'
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'RcDate'
        Footers = <>
        Title.Caption = 'Rece Date'
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'TSDate'
        Footers = <>
        Title.Caption = 'Test Date'
        Width = 113
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'DBNM'
        Footers = <>
        Title.Caption = 'Database'
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'Stage'
        Footers = <>
        PickList.Strings = (
          'DEV'
          'PRO'
          'SAM'
          'TRL')
        Width = 63
      end
      item
        EditButtons = <>
        FieldName = 'Category'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'kfjc'
        Footers = <>
        Title.Caption = 'Brand'
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        Title.Caption = 'Tested Item'
        Width = 143
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        PickList.Strings = (
          '01'
          '01.5'
          '02'
          '02.5'
          '03'
          '03.5'
          '04'
          '04.5'
          '05'
          '05.5'
          '06'
          '06.5'
          '07'
          '07.5'
          '08'
          '08.5'
          '09'
          '09.5'
          '10'
          '10.5'
          '11'
          '11.5'
          '12'
          '12.5'
          '13'
          '13.5'
          '01.0K'
          '01.5K'
          '02.0K'
          '02.5K'
          '03.0K'
          '03.5K'
          '04.0K'
          '04.5K'
          '05.0K'
          '05.5K'
          '06.0K'
          '06.5K'
          '07.0K'
          '07.5K'
          '08.0K'
          '08.5K'
          '09.0K'
          '09.5K'
          '10.0K'
          '10.5K'
          '11.0K'
          '11.5K'
          '12.0K'
          '12.5K'
          '13.0K'
          '13.5K')
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'UpMat'
        Footers = <>
        PickList.Strings = (
          'LEA'
          'SYN'
          'TEX')
        Title.Caption = 'Upper Mat'
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Pass'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'FailMm'
        Footers = <>
        Title.Caption = 'Fail Reason'
        Width = 218
      end
      item
        EditButtons = <>
        FieldName = 'ReTest'
        Footers = <>
        PickList.Strings = (
          '0'
          '1'
          '2'
          '3')
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'Standard'
        Footers = <>
        Width = 125
      end
      item
        EditButtons = <>
        FieldName = 'Sender'
        Footers = <>
        Width = 78
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Title.Caption = 'Remark'
        Width = 329
      end>
  end
  object LabTS: TQuery
    AfterOpen = LabTSAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select QC_LabTS.*,XXZL.XieMing,BDepartment.DepName,kfzl.kfjc, 1 ' +
        'as YN  from QC_LabTS'
      
        'left join XXZL on QC_LabTS.XieXing=XXZL.XieXing and QC_LabTS.She' +
        'Hao=XXZL.SheHao'
      'left join BDepartment on BDepartment.ID=QC_LabTS.DepNO'
      'left join kfzl on xxzl.KHDH=kfzl.kfdh')
    UpdateObject = UpdLabTS
    Left = 192
    Top = 184
    object LabTSTSNO: TIntegerField
      FieldName = 'TSNO'
      DisplayFormat = '00000'
    end
    object LabTSDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 10
    end
    object LabTSGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object LabTSRcDate: TDateTimeField
      FieldName = 'RcDate'
    end
    object LabTSTSDate: TDateTimeField
      FieldName = 'TSDate'
    end
    object LabTSDBNM: TStringField
      FieldName = 'DBNM'
      FixedChar = True
      Size = 10
    end
    object LabTSStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object LabTSXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object LabTSSheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object LabTSArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object LabTSSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object LabTSQty: TIntegerField
      FieldName = 'Qty'
    end
    object LabTSPass: TIntegerField
      FieldName = 'Pass'
    end
    object LabTSUpMat: TStringField
      FieldName = 'UpMat'
      FixedChar = True
      Size = 10
    end
    object LabTSCategory: TStringField
      FieldName = 'Category'
      FixedChar = True
      Size = 10
    end
    object LabTSDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object LabTSStandard: TStringField
      FieldName = 'Standard'
      FixedChar = True
    end
    object LabTSReTest: TIntegerField
      FieldName = 'ReTest'
    end
    object LabTSFailMm: TStringField
      FieldName = 'FailMm'
      FixedChar = True
      Size = 30
    end
    object LabTSMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 30
    end
    object LabTSSender: TStringField
      FieldName = 'Sender'
      FixedChar = True
      Size = 15
    end
    object LabTSPicture: TStringField
      FieldName = 'Picture'
      FixedChar = True
      Size = 1
    end
    object LabTSUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object LabTSUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object LabTSXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object LabTSDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object LabTSkfjc: TStringField
      FieldName = 'kfjc'
      FixedChar = True
    end
    object LabTSYN: TIntegerField
      FieldName = 'YN'
    end
  end
  object MasDS: TDataSource
    DataSet = LabTS
    Left = 192
    Top = 224
  end
  object LabTSS: TQuery
    DatabaseName = 'DB'
    DataSource = MasDS
    SQL.Strings = (
      'Select QC_LabTSS.*, 1 as YN  from QC_LabTSS where TSNO=:TSNO')
    UpdateObject = UpdLabTSS
    Left = 744
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TSNO'
        ParamType = ptUnknown
        Size = 4
      end>
    object LabTSSTSNO: TIntegerField
      FieldName = 'TSNO'
    end
    object LabTSSSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object LabTSSUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 10
    end
    object LabTSSUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object LabTSSYN: TIntegerField
      FieldName = 'YN'
    end
  end
  object DetDS: TDataSource
    DataSet = LabTSS
    Left = 744
    Top = 272
  end
  object UpdLabTSS: TUpdateSQL
    ModifySQL.Strings = (
      'update QC_LabTSS'
      'set'
      'SCBH=:SCBH,'
      'UserID=:UserID,'
      'UserDate=:UserDate'
      'where TSNO=:OLD_TSNO and SCBH=:OLD_SCBH')
    InsertSQL.Strings = (
      'insert into QC_LabTSS'
      'values(:TSNO,:SCBH,:UserID,:UserDate)')
    DeleteSQL.Strings = (
      'delete  QC_LabTSS'
      'where TSNO=:OLD_TSNO and SCBH=:OLD_SCBH')
    Left = 790
    Top = 241
  end
  object tempQ: TQuery
    DatabaseName = 'DB'
    Left = 280
    Top = 184
  end
  object QueryExcel: TQuery
    AutoCalcFields = False
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select QC_LabTS.TSNO,QC_LabTS.RcDate,QC_LabTS.TSDate,QC_LabTS.DB' +
        'NM,QC_LabTS.Stage,kfzl.kfjc,BDepartment.DepName,'
      
        'xxzl.XieMing, QC_LabTS.Article,QC_LabTSS.SCBH,QC_LabTS.Size,QC_L' +
        'abTS.UpMat,QC_LabTS.DFL,QC_LabTS.Qty,QC_LabTS.Pass,'
      
        'QC_LabTS.Qty-QC_LabTS.Pass as Fail, QC_LabTS.ReTest,QC_LabTS.Sta' +
        'ndard, QC_LabTS.Sender, QC_LabTS.Memo'
      'from QC_LabTS left join QC_LabTSS'
      'on QC_LabTS.TSNO=QC_LabTSS.TSNO'
      
        'left join xxzl on QC_LabTS.XieXing=xxzl.XieXing and QC_LabTS.She' +
        'Hao=xxzl.SheHao'
      'left join kfzl on xxzl.KHDH=kfzl.kfdh'
      'left join BDepartment on QC_LabTS.DepNO=BDepartment.ID')
    Left = 312
    Top = 184
    object QueryExcelTSNO: TIntegerField
      FieldName = 'TSNO'
    end
    object QueryExcelRcDate: TDateTimeField
      FieldName = 'RcDate'
    end
    object QueryExcelTSDate: TDateTimeField
      FieldName = 'TSDate'
    end
    object QueryExcelDBNM: TStringField
      FieldName = 'DBNM'
      FixedChar = True
      Size = 10
    end
    object QueryExcelStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 3
    end
    object QueryExcelkfjc: TStringField
      FieldName = 'kfjc'
      FixedChar = True
    end
    object QueryExcelDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object QueryExcelXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object QueryExcelArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object QueryExcelSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 10
    end
    object QueryExcelSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 5
    end
    object QueryExcelUpMat: TStringField
      FieldName = 'UpMat'
      FixedChar = True
      Size = 10
    end
    object QueryExcelDFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 10
    end
    object QueryExcelQty: TIntegerField
      FieldName = 'Qty'
    end
    object QueryExcelPass: TIntegerField
      FieldName = 'Pass'
    end
    object QueryExcelFail: TIntegerField
      FieldName = 'Fail'
    end
    object QueryExcelReTest: TIntegerField
      FieldName = 'ReTest'
    end
    object QueryExcelStandard: TStringField
      FieldName = 'Standard'
      FixedChar = True
    end
    object QueryExcelSender: TStringField
      FieldName = 'Sender'
      FixedChar = True
      Size = 15
    end
    object QueryExcelMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 30
    end
  end
  object UpdLabTS: TUpdateSQL
    ModifySQL.Strings = (
      'update  QC_LabTS'
      'set'
      'RcDate=:RcDate,'
      'TSDate=:TSDate,'
      'DBNM=:DBNM,'
      'Stage=:Stage,'
      'XieXing=:XieXing,'
      'SheHao=:SheHao,'
      'Article=:Article,'
      'DFL=:DFL,'
      'Size=:Size,'
      'Qty=:Qty,'
      'Pass=:Pass,'
      'Category=:Category,'
      'UpMat=:UpMat,'
      'DepNo=:DepNo,'
      'Standard=:Standard,'
      'ReTest=:ReTest,'
      'FailMm=:FailMm,'
      'Memo=:Memo,'
      'Sender=:Sender,'
      'UserID=:UserID,'
      'UserDate=:UserDate'
      'where TSNO=:OLD_TSNO and DFL=:OLD_DFL'
      '')
    InsertSQL.Strings = (
      'insert into QC_LabTS'
      
        '(TSNO,DFL,GSBH,RcDate,TSDate,DBNM,Stage,XieXing,SheHao,Article,S' +
        'ize,Qty,Pass,UpMat,Category,DepNo,Standard,ReTest,FailMm,Memo,Se' +
        'nder,UserID,UserDate)'
      'Values'
      
        '(:TSNO,:DFL,:GSBH,:RcDate,:TSDate,:DBNM,:Stage,:XieXing,:SheHao,' +
        ':Article,:Size,:Qty,:Pass,:UpMat,:Category,:DepNo,:Standard,:ReT' +
        'est,:FailMm,:Memo,:Sender,:UserID,:UserDate)'
      '')
    DeleteSQL.Strings = (
      'delete  QC_LabTS'
      'where  TSNO=:OLD_TSNO and DFL=:OLD_DFL'
      '')
    Left = 224
    Top = 184
  end
end

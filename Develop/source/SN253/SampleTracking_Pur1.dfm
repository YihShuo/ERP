object SampleTracking_Pur: TSampleTracking_Pur
  Left = 281
  Top = 95
  Width = 1024
  Height = 632
  Caption = 'SampleTracking_Pur'
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
    Left = 607
    Top = 145
    Width = 9
    Height = 449
    Align = alRight
    Beveled = True
    Color = clBtnShadow
    ParentColor = False
  end
  object MasPanel: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 73
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
      Left = 592
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Execl'
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
    Top = 73
    Width = 1008
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
      Left = 46
      Top = 12
      Width = 29
      Height = 16
      Caption = 'SR#:'
    end
    object Label2: TLabel
      Left = 184
      Top = 44
      Width = 59
      Height = 16
      Caption = 'StartDate:'
    end
    object Label3: TLabel
      Left = 368
      Top = 44
      Width = 56
      Height = 16
      Caption = 'EndDate:'
    end
    object Button1: TButton
      Left = 568
      Top = 32
      Width = 81
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object SR: TEdit
      Left = 80
      Top = 8
      Width = 169
      Height = 24
      TabOrder = 1
    end
    object DTP1: TDateTimePicker
      Left = 248
      Top = 40
      Width = 105
      Height = 24
      Date = 41815.449349594910000000
      Time = 41815.449349594910000000
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 432
      Top = 40
      Width = 105
      Height = 24
      Date = 41815.449349594910000000
      Time = 41815.449349594910000000
      TabOrder = 3
    end
    object DateSearch: TComboBox
      Left = 80
      Top = 40
      Width = 97
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'ODate'
      Items.Strings = (
        'ODate'
        'ShipDate')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 145
    Width = 607
    Height = 449
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 605
      Height = 447
      Align = alClient
      DataSource = MasDs
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FrozenCols = 2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      Columns = <
        item
          EditButtons = <>
          FieldName = 'SPNO'
          Footers = <>
          ReadOnly = True
          Title.Caption = #32232#34399'|SPNO'
          Width = 56
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'SR#|SR#'
          Width = 140
        end
        item
          EditButtons = <>
          FieldName = 'Stage'
          Footers = <>
          ReadOnly = True
          Title.Caption = #38542#27573'|Stage'
          Width = 49
        end
        item
          EditButtons = <>
          FieldName = 'Pairs'
          Footers = <>
          Title.Caption = #38617#25976'|Pairs'
          Width = 46
        end
        item
          EditButtons = <>
          FieldName = 'ODate'
          Footers = <>
          ReadOnly = True
          Title.Caption = #19979#21934#26085#26399'|ODate'
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'ShipDate'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20986#36008#26085#26399'|ShipDate'
          Width = 73
        end
        item
          EditButtons = <>
          FieldName = 'MLDate'
          Footers = <>
          Title.Caption = #25505#36092#38754#26009#35336#30059'|MLDate'
          Width = 86
        end
        item
          EditButtons = <>
          FieldName = 'MLExDate'
          Footers = <>
          ReadOnly = True
          Title.Caption = #25505#36092#38754#26009#23526#38555'|MLExDate'
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'FLDate'
          Footers = <>
          Title.Caption = #25505#36092#21103#26009#35336#30059'|FLDate'
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'FLExDate'
          Footers = <>
          ReadOnly = True
          Title.Caption = #25505#36092#21103#26009#23526#38555'|FLExDate'
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'DLDate'
          Footers = <>
          Title.Caption = #25505#36092#24213#26009#35336#30059'|DLDate'
          Width = 84
        end
        item
          EditButtons = <>
          FieldName = 'DLExDate'
          Footers = <>
          ReadOnly = True
          Title.Caption = #25505#36092#24213#26009#23526#38555'|DLExDate'
          Width = 81
        end>
    end
  end
  object Panel2: TPanel
    Left = 616
    Top = 145
    Width = 392
    Height = 449
    Align = alRight
    TabOrder = 3
    object Panel3: TPanel
      Left = 1
      Top = 81
      Width = 390
      Height = 64
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object RB1: TBitBtn
        Left = 8
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
        Left = 56
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
        Left = 104
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
        Left = 152
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
        Left = 200
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
      object BitBtn1: TBitBtn
        Left = 320
        Top = 7
        Width = 49
        Height = 49
        Hint = 'Modify Current'
        Caption = 'Reason'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn1Click
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
    end
    object DBGridEh2: TDBGridEh
      Left = 1
      Top = 145
      Width = 390
      Height = 303
      Align = alClient
      DataSource = DetDs
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      OnDrawColumnCell = DBGridEh2DrawColumnCell
      OnEditButtonClick = DBGridEh2EditButtonClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ItemNM'
          Footers = <>
          Title.Caption = #26085#26399#38917#30446'|ItemNM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'ZWSM'
          Footers = <>
          ReadOnly = True
          Title.Caption = #20013#25991'|ZWSM'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'YWSM'
          Footers = <>
          Title.Caption = #33521#25991'|YWSM'
          Width = 77
        end
        item
          DisplayFormat = 'YYYY/MM/DD'
          EditButtons = <>
          FieldName = 'ExeDate'
          Footers = <>
          Title.Caption = #23436#25104#26085#26399'|ExeDate'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 91
        end>
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 390
      Height = 80
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label12: TLabel
        Left = 8
        Top = 8
        Width = 249
        Height = 16
        AutoSize = False
        Caption = 'MLExDate = '#25505#36092#38754#26009'/ Thu mua vat tu / VT mat'
      end
      object Label13: TLabel
        Left = 8
        Top = 24
        Width = 249
        Height = 16
        AutoSize = False
        Caption = 'FLExDate = '#25505#36092#21103#26009'/ Thu mua vat tu / phu lieu'
      end
      object Label14: TLabel
        Left = 8
        Top = 40
        Width = 233
        Height = 16
        AutoSize = False
        Caption = 'DLExDate = '#25505#36092#24213#26009'/ Thu mua vat tu / De'
      end
    end
  end
  object SPSCMas: TQuery
    AfterOpen = SPSCMasAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SPSCList.SPNO,SPSCList.Article,SPSCList.GSBH,SPSCList.Sta' +
        'ge,SPSCList.Pairs,SPSCList.ODate,SPSCList.CkDate,SPSCList.ShipDa' +
        'te, '
      
        '  SPSCList.MLDate,(Select MAX(ExeDate) from SPSCRm A where A.SPN' +
        'O=SPSCList.SPNO and ItemNM='#39'MLExDate'#39') as MLExDate,'
      
        '  SPSCList.FLDate,(Select MAX(ExeDate) from SPSCRm A where A.SPN' +
        'O=SPSCList.SPNO and ItemNM='#39'FLExDate'#39') as FLExDate,'
      
        '  SPSCList.DLDate,(Select MAX(ExeDate) from SPSCRm A where A.SPN' +
        'O=SPSCList.SPNO and ItemNM='#39'DLExDate'#39') as DLExDate,'
      '   UserID2,UserDate2,'#39'1'#39' as YN'
      'from SPSCList '
      'where Article like '#39'%%'#39' '
      
        'and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) b' +
        'etween '
      #39'2014/06/23'#39
      ' and  '
      #39'2014/07/08'#39
      'order by SPSCList.ODate')
    UpdateObject = UpMas
    Left = 160
    Top = 178
    object SPSCMasSPNO: TIntegerField
      FieldName = 'SPNO'
      DisplayFormat = '0000'
    end
    object SPSCMasArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SPSCMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SPSCMasStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 10
    end
    object SPSCMasPairs: TFloatField
      FieldName = 'Pairs'
    end
    object SPSCMasODate: TDateTimeField
      FieldName = 'ODate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object SPSCMasShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object SPSCMasUserID: TStringField
      FieldName = 'UserID2'
      FixedChar = True
    end
    object SPSCMasUserDate: TDateTimeField
      FieldName = 'UserDate2'
    end
    object SPSCMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SPSCMasCkDate: TDateTimeField
      FieldName = 'CkDate'
    end
    object SPSCMasMLDate: TDateTimeField
      FieldName = 'MLDate'
    end
    object SPSCMasMLExDate: TDateTimeField
      FieldName = 'MLExDate'
    end
    object SPSCMasFLDate: TDateTimeField
      FieldName = 'FLDate'
    end
    object SPSCMasFLExDate: TDateTimeField
      FieldName = 'FLExDate'
    end
    object SPSCMasDLDate: TDateTimeField
      FieldName = 'DLDate'
    end
    object SPSCMasDLExDate: TDateTimeField
      FieldName = 'DLExDate'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'Update SPSCList'
      '   Set'
      '     MLDate=:MLDate,'
      '     FLDate=:FLDate,'
      '     DLDate=:DLDate,'
      '     UserID2=:UserID2,'
      '     UserDate2=UserDate2'
      'where'
      '   SPNO=:OLD_SPNO'
      ''
      '')
    InsertSQL.Strings = (
      'Insert into SPSCList'
      
        '   (SPNO, Article, GSBH, Stage, Pairs, ODate, CkDate, RelyDate, ' +
        'UserID, UserDate)'
      'Values'
      
        '   (:SPNO, :Article, :GSBH, :Stage, :Pairs, :ODate, :CkDate, :Re' +
        'lyDate, :UserID, :UserDate)'
      '')
    DeleteSQL.Strings = (
      'Delete From'
      '  SPSCList'
      'where SPNO=:OLD_SPNO')
    Left = 192
    Top = 178
  end
  object MasDs: TDataSource
    DataSet = SPSCMas
    Left = 224
    Top = 178
  end
  object SPSCDet: TQuery
    DatabaseName = 'DB'
    DataSource = MasDs
    SQL.Strings = (
      
        'select  SPSCRm.SPNO, SPSCRm.ItemNM, SPSCRm.RENO, SPSCRm.LYBH,SPS' +
        'CRmS.ZWSM, SPSCRmS.YWSM, SPSCRm.ExeDate, SPSCRm.UserDate, SPSCRm' +
        '.UserID,1 as YN'
      'from SPSCRm'
      'Left join SPSCRmS on SPSCRmS.LYBH=SPSCRm.LYBH'
      
        'where SPNO=:SPNO and RENO>0  and ((SPSCRm.ItemNM='#39'MLExDate'#39') or ' +
        '(SPSCRm.ItemNM='#39'FLExDate'#39') or (SPSCRm.ItemNM='#39'DLExDate'#39') )'
      'order by SPSCRm.ItemNM,SPSCRm.ExeDate')
    UpdateObject = UpDet
    Left = 696
    Top = 242
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SPNO'
        ParamType = ptUnknown
        Size = 4
      end>
    object SPSCDetSPNO: TIntegerField
      FieldName = 'SPNO'
      Origin = 'DB.SPSCRm.SPNO'
    end
    object SPSCDetItemNM: TStringField
      FieldName = 'ItemNM'
      Origin = 'DB.SPSCRm.ItemNM'
      OnSetText = SPSCDetItemNMSetText
      FixedChar = True
    end
    object SPSCDetRENO: TIntegerField
      FieldName = 'RENO'
      Origin = 'DB.SPSCRm.RENO'
    end
    object SPSCDetLYBH: TStringField
      FieldName = 'LYBH'
      FixedChar = True
      Size = 5
    end
    object SPSCDetZWSM: TStringField
      FieldName = 'ZWSM'
      FixedChar = True
    end
    object SPSCDetYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
    end
    object SPSCDetExeDate: TDateTimeField
      FieldName = 'ExeDate'
    end
    object SPSCDetUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.SPSCRm.UserDate'
    end
    object SPSCDetUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.SPSCRm.UserID'
      FixedChar = True
      Size = 8
    end
    object SPSCDetYN: TIntegerField
      FieldName = 'YN'
    end
  end
  object tmpQuery: TQuery
    DatabaseName = 'DB'
    Left = 160
    Top = 210
  end
  object ExeQuery: TQuery
    DatabaseName = 'DB'
    Left = 160
    Top = 242
  end
  object DetDs: TDataSource
    DataSet = SPSCDet
    Left = 728
    Top = 242
  end
  object UpDet: TUpdateSQL
    ModifySQL.Strings = (
      'Update SPSCRm Set'
      '   LYBH=:LYBH,'
      '   ExeDate=:ExeDate,'
      '   UserID=:UserID,'
      '   UserDate=:UserDate'
      'where'
      '  SPNO=:OLD_SPNO  And'
      '  ItemNM=:OLD_ItemNM  And'
      '  RENO=:OLD_RENO'
      ''
      '')
    InsertSQL.Strings = (
      'Insert into SPSCRm'
      '  (SPNO, ItemNM, RENO, LYBH, ExeDate, UserID, UserDate)'
      'Values'
      '  (:SPNO, :ItemNM, :RENO, :LYBH, :ExeDate, :UserID, :UserDate)')
    DeleteSQL.Strings = (
      'Delete From  SPSCRm'
      'Where'
      '  SPNO=:OLD_SPNO  And'
      '  ItemNM=:OLD_ItemNM  And'
      '  RENO=:OLD_RENO'
      ''
      ''
      '')
    Left = 696
    Top = 274
  end
end

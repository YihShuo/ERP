object editplan: Teditplan
  Left = 214
  Top = 112
  Width = 866
  Height = 480
  Caption = 'Edit Plan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 850
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
      Left = 632
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
      ParentFont = False
      TabOrder = 12
      OnClick = bbt5Click
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
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 850
    Height = 48
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 235
      Top = 17
      Width = 50
      Height = 20
      Caption = 'OrdNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 124
      Top = 19
      Width = 39
      Height = 16
      Caption = 'Month:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 10
      Top = 19
      Width = 35
      Height = 16
      Caption = ' Year:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 552
      Top = 19
      Width = 21
      Height = 16
      Caption = 'GX:'
    end
    object Label2: TLabel
      Left = 400
      Top = 18
      Width = 60
      Height = 16
      Caption = 'Customer:'
    end
    object Edit1: TEdit
      Left = 288
      Top = 16
      Width = 105
      Height = 29
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
      Left = 656
      Top = 8
      Width = 73
      Height = 33
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
    object CBX1: TComboBox
      Left = 48
      Top = 16
      Width = 65
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017'
        '2018'
        '2019'
        '2020')
    end
    object CBX2: TComboBox
      Left = 168
      Top = 16
      Width = 57
      Height = 24
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = '01'
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12')
    end
    object CBX3: TComboBox
      Left = 576
      Top = 16
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 4
      Text = 'All'
      Items.Strings = (
        'All')
    end
    object Edit2: TEdit
      Left = 464
      Top = 16
      Width = 73
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
    object Button5: TButton
      Left = 736
      Top = 8
      Width = 75
      Height = 33
      Caption = 'Graphical'
      TabOrder = 6
      OnClick = Button5Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 153
    Width = 700
    Height = 287
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnEditButtonClick = DBGridEh1EditButtonClick
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <
          item
            FieldName = 'DDBH'
            ValueType = fvtCount
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 38
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 69
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 133
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        ReadOnly = True
        Title.TitleButton = True
        Width = 63
      end
      item
        Color = clLime
        EditButtons = <>
        FieldName = 'etd'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'X/F date'
        Width = 72
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'DepNO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        Title.TitleButton = True
        Width = 65
      end
      item
        Color = clWhite
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.TitleButton = True
        Width = 69
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Title.TitleButton = True
        Width = 72
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'PlanEdate'
        Footers = <>
        Width = 72
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'PRdate'
        Footers = <>
        ReadOnly = True
        Width = 72
      end
      item
        Color = 10682367
        EditButtons = <>
        FieldName = 'OKdate'
        Footers = <>
        ReadOnly = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'YSBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 42
      end
      item
        EditButtons = <>
        FieldName = 'SB'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 27
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'KFJC'
        Footers = <>
        ReadOnly = True
        Title.TitleButton = True
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'CTS_Lock'
        Footers = <>
        Width = 42
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 700
    Top = 153
    Width = 150
    Height = 287
    Align = alRight
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <
          item
            FieldName = 'XXCC'
            ValueType = fvtCount
          end>
        Width = 49
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <
          item
            FieldName = 'Qty'
            ValueType = fvtSum
          end>
        Width = 51
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 850
    Height = 40
    Align = alTop
    TabOrder = 4
    Visible = False
    object Label5: TLabel
      Left = 8
      Top = 10
      Width = 66
      Height = 16
      Caption = 'DepName:'
    end
    object Label6: TLabel
      Left = 208
      Top = 10
      Width = 59
      Height = 16
      Caption = 'PlanDate:'
    end
    object Label8: TLabel
      Left = 386
      Top = 10
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label9: TLabel
      Left = 528
      Top = 11
      Width = 21
      Height = 16
      Caption = 'GX:'
    end
    object Edit3: TEdit
      Left = 80
      Top = 8
      Width = 121
      Height = 24
      ReadOnly = True
      TabOrder = 0
      OnDblClick = Edit3DblClick
    end
    object DTP1: TDateTimePicker
      Left = 272
      Top = 8
      Width = 105
      Height = 24
      Date = 39783.568310717590000000
      Format = 'yyyy/MM/dd'
      Time = 39783.568310717590000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 408
      Top = 8
      Width = 106
      Height = 24
      Date = 39783.569282222220000000
      Format = 'yyyy/MM/dd'
      Time = 39783.569282222220000000
      TabOrder = 2
    end
    object Button2: TButton
      Left = 696
      Top = 8
      Width = 65
      Height = 29
      Caption = 'Print'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 768
      Top = 8
      Width = 65
      Height = 29
      Caption = 'Cancel'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 624
      Top = 8
      Width = 65
      Height = 29
      Caption = 'Query'
      TabOrder = 5
      OnClick = Button4Click
    end
    object Edit4: TEdit
      Left = 184
      Top = 16
      Width = 49
      Height = 24
      TabOrder = 6
      Visible = False
    end
    object CBX4: TComboBox
      Left = 552
      Top = 8
      Width = 57
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 7
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 96
    Top = 216
    Width = 320
    Height = 120
    DataSource = DS3
    Flat = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #26032#32048#26126#39636
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = #27161#26999#39636
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #26032#32048#26126#39636
    TitleFont.Style = []
    UseMultiTitle = True
    Visible = False
  end
  object DBGridEh4: TDBGridEh
    Left = 496
    Top = 248
    Width = 225
    Height = 120
    DataSource = DS4
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    PopupMenu = PopupMenu2
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GXLB'
        Footers = <>
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'MEMO'
        Footers = <>
        Width = 56
      end
      item
        Color = 7471103
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Width = 88
      end>
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 392
    Top = 192
  end
  object SMDD: TQuery
    BeforeEdit = SMDDBeforeEdit
    OnNewRecord = SMDDNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select SMDD.*,SCGXDY.MEMO,Bdepartment.DepName,XXZL.DAOMH,DDZL.Sh' +
        'ipDate as CSD,DDZL.RYType,RTSSMDD.YN as CTS_Lock '
      ',KFZL.KFJC,ywdd.etd,f.fpd,f.fped '
      'from SMDD'
      'left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  '
      'left join Bdepartment on Bdepartment.ID=SMDD.DepNo '
      'left join DDZL on DDZl.ZLBH=SMDD.YSBH '
      
        'left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZ' +
        'L.SheHao'
      'left join KFZL on KFZL.KFDH=DDZL.KHBH '
      
        'left join (select ysbh,etd from  ywdd  group by ysbh,etd) as ywd' +
        'd on ywdd.ysbh=smdd.ysbh'
      
        'left join (select ddbh,sccx,max(plandate) as fpd,min(planedate) ' +
        'as fped from smdd group by ddbh,sccx) '
      ' as f on f.ddbh=smdd.ddbh and f.sccx=smdd.gxlb'
      'left join ('
      'select RTSSMDD.DDBH,RTSSMDD.YN from RTSSMDD,DDZL '
      
        'where RTSSMDD.DDBH=DDZL.DDBH and RTSSMDD.YN='#39'Y'#39' and Year(DDZL.Sh' +
        'ipDate)=2016 and  Month(DDZL.ShipDate)=5 and RTSSMDD.DDBH like '#39 +
        '%'#39' group by RTSSMDD.DDBH,RTSSMDD.YN'
      ') as RTSSMDD on RTSSMDD.DDBH=SMDD.YSBH  '
      ''
      'where SMDD.DDBH like '#39'%'#39
      '      and isnull(KFZL.KFJC,'#39#39') like '#39'%%'#39
      '      and SMDD.SCYEAR='#39'2016'#39
      '      and SMDD.SCMONTH='#39'05'#39
      '      and ddzl.khbh='#39'036'#39
      '      and SMDD.GSBH='#39'VA12'#39
      '      and SMDD.SB<>'#39'3'#39
      'order by ywdd.etd,SMDD.DDBH,SMDD.SCCX')
    UpdateObject = UpSMDD
    Left = 432
    Top = 280
    object SMDDDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDGXLB: TStringField
      FieldName = 'GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object SMDDYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object SMDDKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object SMDDGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object SMDDArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object SMDDXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object SMDDQty: TIntegerField
      FieldName = 'Qty'
      DisplayFormat = '##,#0'
    end
    object SMDDSCCX: TStringField
      FieldName = 'SCCX'
      FixedChar = True
      Size = 1
    end
    object SMDDSB: TStringField
      FieldName = 'SB'
      FixedChar = True
      Size = 1
    end
    object SMDDSCYEAR: TStringField
      FieldName = 'SCYEAR'
      FixedChar = True
      Size = 4
    end
    object SMDDSCMONTH: TStringField
      FieldName = 'SCMONTH'
      FixedChar = True
      Size = 2
    end
    object SMDDDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
    object SMDDDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object SMDDPlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object SMDDPlanEdate: TDateTimeField
      FieldName = 'PlanEdate'
    end
    object SMDDPRdate: TDateTimeField
      FieldName = 'PRdate'
    end
    object SMDDOKdate: TDateTimeField
      FieldName = 'OKdate'
    end
    object SMDDDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 15
    end
    object SMDDUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object SMDDUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object SMDDYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object SMDDCSD: TDateTimeField
      FieldName = 'CSD'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SMDDetd: TDateTimeField
      FieldName = 'etd'
    end
    object SMDDfpd: TDateTimeField
      FieldName = 'fpd'
    end
    object SMDDfped: TDateTimeField
      FieldName = 'fped'
    end
    object SMDDRYTYPE: TStringField
      FieldName = 'RYTYPE'
      FixedChar = True
      Size = 10
    end
    object SMDDCTS_Lock: TStringField
      FieldName = 'CTS_Lock'
      FixedChar = True
      Size = 1
    end
    object SMDDRPlanDate: TDateTimeField
      FieldName = 'RPlanDate'
    end
    object SMDDRPlanEdate: TDateTimeField
      FieldName = 'RPlanEdate'
    end
  end
  object DS1: TDataSource
    DataSet = SMDD
    Left = 392
    Top = 280
  end
  object UpSMDD: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDD'
      'set'
      '  DepNO = :DepNO,'
      '  PlanDate = :PlanDate,'
      '  PlanEdate = :PlanEdate,'
      '  RPlanDate = :PlanDate,'
      '  RPlanEdate = :PlanEdate'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB ')
    InsertSQL.Strings = (
      'insert into SMDD'
      '  (DepNO, PlanDate, PlanEdate)'
      'values'
      '  (:DepNO, :PlanDate, :PlanEdate)')
    DeleteSQL.Strings = (
      'delete from SMDD'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB')
    Left = 472
    Top = 280
  end
  object DDdet: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select *'
      'from SMDDS'
      'where DDBH=:DDBH'
      'order by XXCC DESC')
    Left = 743
    Top = 226
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object DDdetDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SMDDS.DDBH'
      FixedChar = True
      Size = 15
    end
    object DDdetXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SMDDS.XXCC'
      FixedChar = True
      Size = 6
    end
    object DDdetQty: TIntegerField
      FieldName = 'Qty'
      Origin = 'DB.SMDDS.Qty'
      DisplayFormat = '##,#0'
    end
  end
  object DS2: TDataSource
    DataSet = DDdet
    Left = 775
    Top = 226
  end
  object SMDDS: TQuery
    DatabaseName = 'DB'
    Left = 224
    Top = 248
  end
  object DS3: TDataSource
    DataSet = SMDDS
    Left = 256
    Top = 248
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh3
    Options = [pghFitingByColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.CenterText.Strings = (
      #35330#21934#22238#36681#21934
      'Production Cycle')
    PageHeader.Font.Charset = ANSI_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -24
    PageHeader.Font.Name = #26032#32048#26126#39636
    PageHeader.Font.Style = []
    Units = MM
    OnBeforePrint = PrintDBGridEh1BeforePrint
    Left = 304
    Top = 248
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E73696370673935305C64656666305C646566
      6C616E67313033335C6465666C616E676665313032387B5C666F6E7474626C7B
      5C66305C666E696C5C6663686172736574313336204D532053616E7320536572
      69663B7D7D0D0A5C766965776B696E64345C7563315C706172645C6C616E6731
      3032385C66305C6673313620255B544465705D200D0A5C706172207D0D0A00}
  end
  object PopupMenu1: TPopupMenu
    Left = 40
    Top = 264
    object N2: TMenuItem
      Caption = 'Infer other'
      OnClick = N2Click
    end
  end
  object SMDDT: TQuery
    AfterOpen = SMDDTAfterOpen
    OnNewRecord = SMDDTNewRecord
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select SMDD.DDBH,SMDD.GXLB,SCGXDY.MEMO,SMDD.PlanDate,SMDD.DepNO'
      'from SMDD'
      'left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  '
      'where SMDD.DDBH=:DDBH'
      'and SMDD.GXLB<>:GXLB')
    UpdateObject = UPSMDDT
    Left = 608
    Top = 288
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'GXLB'
        ParamType = ptUnknown
        Size = 2
      end>
    object SMDDTDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object SMDDTGXLB: TStringField
      FieldName = 'GXLB'
      Origin = 'DB.SMDD.GXLB'
      FixedChar = True
      Size = 1
    end
    object SMDDTMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object SMDDTPlanDate: TDateTimeField
      FieldName = 'PlanDate'
      Origin = 'DB.SMDD.PlanDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object SMDDTDepNO: TStringField
      FieldName = 'DepNO'
      FixedChar = True
      Size = 10
    end
  end
  object DS4: TDataSource
    DataSet = SMDDT
    Left = 640
    Top = 288
  end
  object UPSMDDT: TUpdateSQL
    ModifySQL.Strings = (
      'update SMDD'
      'set'
      '  PlanDate = :PlanDate'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB')
    InsertSQL.Strings = (
      'insert into SMDD'
      '  (PlanDate)'
      'values'
      '  (:PlanDate)')
    DeleteSQL.Strings = (
      'delete from SMDD'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  GXLB = :OLD_GXLB')
    Left = 672
    Top = 288
  end
  object PopupMenu2: TPopupMenu
    Left = 616
    Top = 320
    object B1: TMenuItem
      Caption = 'Modify'
      OnClick = B1Click
    end
    object B2: TMenuItem
      Caption = 'Infer'
      OnClick = B2Click
    end
    object B3: TMenuItem
      Caption = 'Save'
      OnClick = B3Click
    end
    object B4: TMenuItem
      Caption = 'Cancel'
      OnClick = B4Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
  object SMDIFF: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from SMDIFF'
      'order by GSBH,GXLB1')
    Left = 568
    Top = 320
  end
  object Q1: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'update smdd'
      'set prdate = r.sdate'
      'from smdd as p,'
      '(select scbbs.scbh,scbbs.gxlb,min(scbb.scdate) as sdate '
      '      from scbbs'
      '      left join scbb on scbb.prono=scbbs.prono'
      '      where scbb.scdate>'#39'2010/01/01'#39' '
      '      group by  scbbs.scbh ,scbbs.gxlb) as r '
      
        'where r.scbh=p.ysbh and r.gxlb=p.gxlb and p.prdate is null and p' +
        '.plandate is not null'
      ''
      '')
    Left = 784
    Top = 57
  end
  object q2: TQuery
    DatabaseName = 'dB'
    SQL.Strings = (
      'update smdd'
      'set okdate = r.edate'
      'from smdd as p,'
      
        '(select scbbs.scbh,scbbs.gxlb,max(scbb.scdate) as edate,sum(qty)' +
        ' as qty , ddzl.pairs as totalQty'
      '      from scbbs'
      '      left join scbb on scbb.prono=scbbs.prono'
      '      left join ddzl on scbbs.scbh = ddzl.zlbh'
      '      where scbb.scdate>'#39'2010/01/01'#39
      '      group by  scbbs.scbh ,scbbs.gxlb, ddzl.pairs) as r'
      'where r.scbh=p.ysbh and r.gxlb=p.gxlb'
      
        '           and r.qty=r.totalQty and p.OKdate is null and p.pland' +
        'ate is not null')
    Left = 752
    Top = 57
  end
end

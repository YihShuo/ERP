object LabelFinished: TLabelFinished
  Left = 259
  Top = 196
  Width = 859
  Height = 500
  Caption = 'LabelFinished'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 851
    Height = 401
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 57
      Width = 664
      Height = 343
      Align = alClient
      DataSource = DS1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DDBH'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XieXing'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SheHao'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Article'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XieMing'
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pairs'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KHBH'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KHPO'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DDCC'
          Width = 34
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XXCC'
          Width = 31
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ShipDate'
          Width = 69
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 849
      Height = 56
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 42
        Height = 16
        Caption = 'DDBH:'
      end
      object Label3: TLabel
        Left = 136
        Top = 24
        Width = 56
        Height = 16
        Caption = 'ArtName:'
      end
      object Label4: TLabel
        Left = 304
        Top = 24
        Width = 60
        Height = 16
        Caption = 'Customer:'
      end
      object Label1: TLabel
        Left = 408
        Top = 24
        Width = 63
        Height = 16
        Caption = 'ETD Year:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 560
        Top = 24
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
      object Button1: TButton
        Left = 672
        Top = 8
        Width = 73
        Height = 33
        Caption = 'QUERY'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit1: TEdit
        Left = 56
        Top = 16
        Width = 81
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 192
        Top = 16
        Width = 105
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 368
        Top = 16
        Width = 33
        Height = 24
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object CBX2: TComboBox
        Left = 480
        Top = 16
        Width = 73
        Height = 24
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = '2006'
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
      object CBX3: TComboBox
        Left = 600
        Top = 16
        Width = 49
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
        TabOrder = 5
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
    end
    object Panel4: TPanel
      Left = 665
      Top = 57
      Width = 185
      Height = 343
      Align = alRight
      TabOrder = 2
      object BitBtn1: TBitBtn
        Left = 40
        Top = 24
        Width = 113
        Height = 89
        Hint = 'Modify Current'
        Caption = 'SCAN IN'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 40
        Top = 144
        Width = 113
        Height = 89
        Hint = 'Modify Current'
        Caption = 'SCAN OUT'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
          333333333333337FF3333333333333903333333333333377FF33333333333399
          03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
          99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
          99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
          03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
          33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
          33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
          3333777777333333333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 65
    Align = alTop
    TabOrder = 1
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
      Left = 616
      Top = 8
      Width = 65
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Download'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object BBT7: TBitBtn
      Left = 688
      Top = 8
      Width = 65
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Update'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = BBT7Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DDZL: TQuery
    SQL.Strings = (
      'select *'
      'from DDXXZL')
    Left = 144
    Top = 176
    object DDZLDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object DDZLKHPO: TStringField
      FieldName = 'KHPO'
      Size = 19
    end
    object DDZLXieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object DDZLSheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object DDZLArticle: TStringField
      FieldName = 'Article'
    end
    object DDZLXieMing: TStringField
      FieldName = 'XieMing'
      Size = 50
    end
    object DDZLPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object DDZLShipDate: TStringField
      FieldName = 'ShipDate'
      Size = 30
    end
    object DDZLKHBH: TStringField
      FieldName = 'KHBH'
      Size = 4
    end
    object DDZLDDCC: TStringField
      FieldName = 'DDCC'
      Size = 1
    end
    object DDZLXXCC: TStringField
      FieldName = 'XXCC'
      Size = 1
    end
  end
  object DS1: TDataSource
    DataSet = DDZL
    Left = 176
    Top = 176
  end
  object TDDXXZL: TTable
    IndexFieldNames = 'DDBH'
    TableName = 'DDXXZL.DB'
    Left = 752
    Top = 32
  end
  object QDDXXZL: TQuery
    DatabaseName = 'DB'
    Left = 792
    Top = 32
  end
  object QSCSMRKS: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DataSource1
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from SCSMRKS'
      'where DDBH=:DDBH'
      'and CTNO=:CTNO')
    UpdateObject = UpSCSMRKS
    Left = 721
    Top = 186
    ParamData = <
      item
        DataType = ftString
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftString
        Name = 'CTNO'
        ParamType = ptUnknown
        Size = 6
      end>
    object QSCSMRKSDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCSMRKS.DDBH'
      FixedChar = True
      Size = 15
    end
    object QSCSMRKSCTNO: TStringField
      FieldName = 'CTNO'
      Origin = 'DB.SCSMRKS.CTNO'
      FixedChar = True
      Size = 5
    end
    object QSCSMRKSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.SCSMRKS.XXCC'
      FixedChar = True
      Size = 6
    end
    object QSCSMRKSLHLabel: TStringField
      FieldName = 'LHLabel'
      Origin = 'DB.SCSMRKS.LHLabel'
      FixedChar = True
      Size = 25
    end
    object QSCSMRKSQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCSMRKS.Qty'
    end
  end
  object TSCLH: TTable
    IndexFieldNames = 'DDBH;XXCC'
    TableName = 'SCLH.DB'
    Left = 752
    Top = 65
  end
  object QSCLH: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from SCLH')
    Left = 793
    Top = 66
  end
  object QSCSMRK: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DataSource1
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from SCSMRK'
      'where DDBH=:DDBH'
      'and CTNO=:CTNO')
    UpdateObject = UpSCSMRK
    Left = 720
    Top = 153
    ParamData = <
      item
        DataType = ftString
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftString
        Name = 'CTNO'
        ParamType = ptUnknown
        Size = 6
      end>
    object QSCSMRKDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCSMRK.DDBH'
      FixedChar = True
      Size = 15
    end
    object QSCSMRKCTNO: TStringField
      FieldName = 'CTNO'
      Origin = 'DB.SCSMRK.CTNO'
      FixedChar = True
      Size = 5
    end
    object QSCSMRKQty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCSMRK.Qty'
    end
    object QSCSMRKUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SCSMRK.USERDate'
    end
    object QSCSMRKUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SCSMRK.USERID'
      FixedChar = True
      Size = 15
    end
    object QSCSMRKYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SCSMRK.YN'
      FixedChar = True
      Size = 1
    end
    object QSCSMRKRKCS: TIntegerField
      FieldName = 'RKCS'
      Origin = 'DB.SCSMRK.RKCS'
    end
  end
  object UpSCSMRK: TUpdateSQL
    ModifySQL.Strings = (
      'update SCSMRK'
      'set'
      '  DDBH = :DDBH,'
      '  CTNO = :CTNO,'
      '  Qty = :Qty,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN,'
      '  RKCS = :RKCS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO')
    InsertSQL.Strings = (
      'insert into SCSMRK'
      '  (DDBH, CTNO, Qty, USERDate, USERID, YN, RKCS)'
      'values'
      '  (:DDBH, :CTNO, :Qty, :USERDate, :USERID, :YN, :RKCS)')
    DeleteSQL.Strings = (
      'delete from SCSMRK'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO')
    Left = 752
    Top = 153
  end
  object TSCSMRK: TTable
    IndexFieldNames = 'DDBH;CTNO'
    TableName = 'SCSMRK.DB'
    Left = 784
    Top = 153
    object TSCSMRKDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object TSCSMRKCTNO: TStringField
      FieldName = 'CTNO'
      Size = 5
    end
    object TSCSMRKQty: TIntegerField
      FieldName = 'Qty'
    end
    object TSCSMRKUSERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object TSCSMRKUSERID: TStringField
      FieldName = 'USERID'
      Size = 15
    end
    object TSCSMRKYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = TSCSMRK
    Left = 816
    Top = 153
  end
  object TSCSMRKS: TQuery
    DataSource = DataSource1
    SQL.Strings = (
      'select DDBH,CTNO,XXCC,LHLabel,count(LHLabel) as Qty'
      'from SCSMRKS'
      'where DDBH=:DDBH'
      'and CTNO=:CTNO'
      'group by DDBH,CTNO,XXCC,LHLabel'
      'order by XXCC')
    Left = 785
    Top = 186
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CTNO'
        ParamType = ptUnknown
      end>
  end
  object UpSCSMRKS: TUpdateSQL
    ModifySQL.Strings = (
      'update SCSMRKS'
      'set'
      '  DDBH = :DDBH,'
      '  CTNO = :CTNO,'
      '  XXCC = :XXCC,'
      '  LHLabel = :LHLabel,'
      '  Qty = :Qty'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO and'
      '  XXCC = :OLD_XXCC and'
      '  LHLabel = :OLD_LHLabel')
    InsertSQL.Strings = (
      'insert into SCSMRKS'
      '  (DDBH, CTNO, XXCC, LHLabel, Qty)'
      'values'
      '  (:DDBH, :CTNO, :XXCC, :LHLabel, :Qty)')
    DeleteSQL.Strings = (
      'delete from SCSMRKS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO and'
      '  XXCC = :OLD_XXCC and'
      '  LHLabel = :OLD_LHLabel')
    Left = 753
    Top = 186
  end
  object RKSDel: TTable
    TableName = 'SCSMRKS.DB'
    Left = 681
    Top = 186
  end
  object QSCSMRK2: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DataSource2
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from SCSMRK'
      'where DDBH=:DDBh'
      'and CTNO=:CTNO')
    UpdateObject = UpSCSMRK2
    Left = 657
    Top = 250
    ParamData = <
      item
        DataType = ftString
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftString
        Name = 'CTNO'
        ParamType = ptUnknown
        Size = 6
      end>
    object QSCSMRK2DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCSMRK.DDBH'
      FixedChar = True
      Size = 15
    end
    object QSCSMRK2CTNO: TStringField
      FieldName = 'CTNO'
      Origin = 'DB.SCSMRK.CTNO'
      FixedChar = True
      Size = 5
    end
    object QSCSMRK2Qty: TFloatField
      FieldName = 'Qty'
      Origin = 'DB.SCSMRK.Qty'
    end
    object QSCSMRK2USERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SCSMRK.USERDate'
    end
    object QSCSMRK2USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SCSMRK.USERID'
      FixedChar = True
      Size = 15
    end
    object QSCSMRK2YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SCSMRK.YN'
      FixedChar = True
      Size = 1
    end
    object QSCSMRK2RKCS: TIntegerField
      FieldName = 'RKCS'
      Origin = 'DB.SCSMRK.RKCS'
    end
  end
  object QSCSMCK: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = DataSource2
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from SCSMCK'
      'where DDBH=:DDBH'
      'and CTNO=:CTNO')
    UpdateObject = UpSCSMCK
    Left = 721
    Top = 250
    ParamData = <
      item
        DataType = ftString
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftString
        Name = 'CTNO'
        ParamType = ptUnknown
        Size = 6
      end>
    object QSCSMCKDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.SCSMCK.DDBH'
      FixedChar = True
      Size = 15
    end
    object QSCSMCKCTNO: TStringField
      FieldName = 'CTNO'
      Origin = 'DB.SCSMCK.CTNO'
      FixedChar = True
      Size = 5
    end
    object QSCSMCKUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.SCSMCK.USERDate'
    end
    object QSCSMCKUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.SCSMCK.USERID'
      FixedChar = True
      Size = 15
    end
    object QSCSMCKYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SCSMCK.YN'
      FixedChar = True
      Size = 1
    end
    object QSCSMCKCKCS: TIntegerField
      FieldName = 'CKCS'
      Origin = 'DB.SCSMCK.CKCS'
    end
  end
  object TSCSMCK: TTable
    TableName = 'SCSMCK.DB'
    Left = 785
    Top = 250
  end
  object DataSource2: TDataSource
    DataSet = TSCSMCK
    Left = 817
    Top = 250
  end
  object UpSCSMRK2: TUpdateSQL
    ModifySQL.Strings = (
      'update SCSMRK'
      'set'
      '  YN = :YN'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO')
    InsertSQL.Strings = (
      'insert into SCSMRK'
      '  (YN)'
      'values'
      '  (:YN)')
    DeleteSQL.Strings = (
      'delete from SCSMRK'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO')
    Left = 689
    Top = 250
  end
  object UpSCSMCK: TUpdateSQL
    ModifySQL.Strings = (
      'update SCSMCK'
      'set'
      '  DDBH = :DDBH,'
      '  CTNO = :CTNO,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN,'
      '  CKCS = :CKCS'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO')
    InsertSQL.Strings = (
      'insert into SCSMCK'
      '  (DDBH, CTNO, USERDate, USERID, YN, CKCS)'
      'values'
      '  (:DDBH, :CTNO, :USERDate, :USERID, :YN, :CKCS)')
    DeleteSQL.Strings = (
      'delete from SCSMCK'
      'where'
      '  DDBH = :OLD_DDBH and'
      '  CTNO = :OLD_CTNO')
    Left = 753
    Top = 250
  end
end

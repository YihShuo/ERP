object EmbArticle: TEmbArticle
  Left = 254
  Top = 209
  Width = 870
  Height = 500
  Caption = 'EmbArticle'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 862
    Height = 401
    Align = alClient
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 57
      Width = 431
      Height = 343
      Align = alClient
      DataSource = DS1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
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
      OnDrawColumnCell = DBGrid1DrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'XieXing'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Article'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'XieMing'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'KHDH'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCGB'
          Width = 52
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 860
      Height = 56
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 8
        Top = 24
        Width = 48
        Height = 20
        Caption = 'Article:'
      end
      object Label3: TLabel
        Left = 168
        Top = 24
        Width = 67
        Height = 20
        Caption = 'ArtName:'
      end
      object Label4: TLabel
        Left = 400
        Top = 24
        Width = 73
        Height = 20
        Caption = 'Customer:'
      end
      object Button1: TButton
        Left = 704
        Top = 16
        Width = 89
        Height = 33
        Caption = 'QUERY'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Edit2: TEdit
        Left = 64
        Top = 16
        Width = 97
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 1
      end
      object Edit3: TEdit
        Left = 240
        Top = 16
        Width = 145
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 2
      end
      object Edit4: TEdit
        Left = 480
        Top = 16
        Width = 49
        Height = 28
        CharCase = ecUpperCase
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 552
        Top = 24
        Width = 137
        Height = 17
        Caption = 'Including Order'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
    end
    object Panel4: TPanel
      Left = 432
      Top = 57
      Width = 429
      Height = 343
      Align = alRight
      TabOrder = 2
      object DBGrid2: TDBGrid
        Left = 1
        Top = 1
        Width = 427
        Height = 144
        Align = alTop
        DataSource = DS2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = DBGrid2ColEnter
        OnDrawColumnCell = DBGrid2DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'BWBH'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'YWSM'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Embroider'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JGYWSM'
            Width = 177
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 1
        Top = 145
        Width = 427
        Height = 8
        Align = alTop
        TabOrder = 1
      end
      object DBGrid3: TDBGrid
        Left = 1
        Top = 153
        Width = 427
        Height = 189
        Align = alClient
        DataSource = DS3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnColEnter = DBGrid3ColEnter
        OnDrawColumnCell = DBGrid3DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CC'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DXBH'
            Width = 176
            Visible = True
          end>
      end
      object DC1: TDBCheckBox
        Left = 184
        Top = 24
        Width = 81
        Height = 17
        Caption = 'Embroider'
        DataField = 'Embroider'
        DataSource = DS2
        TabOrder = 3
        ValueChecked = 'Yes'
        ValueUnchecked = 'No'
        Visible = False
      end
      object DC2: TDBComboBox
        Left = 96
        Top = 176
        Width = 137
        Height = 21
        DataField = 'DXBH'
        DataSource = DS3
        ItemHeight = 13
        TabOrder = 4
        Visible = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 862
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
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 112
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZL.XieXing,max(XXZL.Article) as Article,max(XXZL.XieMin' +
        'g) as XieMing,'
      'max(DXXX.DXBH) as DXBH,XXZL.KHDH,max(XXZL.CCGB) as CCGB'
      'from XXZL'
      'left join DXXX on DXXX.XieXing=XXZL.XieXing'
      'group by XXZL.XieXing,XXZL.KHDH'
      'order by XXZL.XieXing,XXZL.KHDH')
    UpdateObject = UpSQL1
    Left = 136
    Top = 112
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1KHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
    object Query1CCGB: TStringField
      FieldName = 'CCGB'
      FixedChar = True
      Size = 1
    end
    object Query1DXBH: TStringField
      FieldName = 'DXBH'
      FixedChar = True
      Size = 15
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update DXZL'
      'set'
      '  DXBH = :DXBH,'
      '  USPrice = :USPrice,'
      '  VNPrice = :VNPrice,'
      '  Memo = :Memo,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  DXBH = :OLD_DXBH')
    InsertSQL.Strings = (
      'insert into DXZL'
      '  (DXBH, USPrice, VNPrice, Memo, USERDATE, USERID, YN)'
      'values'
      '  (:DXBH, :USPrice, :VNPrice, :Memo, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from DXZL'
      'where'
      '  DXBH = :OLD_DXBH')
    Left = 136
    Top = 152
  end
  object DXBW: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select distinct XXZLS.XieXing,XXZLS.BWBH,BWZL.YWSM,XXZLS.JGYWSM,'
      
        '           case when DXBW.BWBH is null then '#39'No'#39' else '#39'Yes'#39' end ' +
        'as Embroider'
      'from  (select  XieXing,BWBH,max(JGYWSM) as JGYWSM'
      '             from XXZLS where XieXing=:XieXing'
      '             group by XieXing,BWBH ) XXZLS'
      'left join BWZL on BWZL.BWDH=XXZLS.BWBH'
      
        'left join DXBW on DXBW.XieXing=XXZLS.XieXing and DXBW.BWBH=XXZLS' +
        '.BWBH'
      'where  XXZLS.JGYWSM is not null or XXZLS.JGYWSM<>'#39#39)
    UpdateObject = UpdateSQL1
    Left = 624
    Top = 178
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end>
    object DXBWXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object DXBWBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object DXBWYWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 30
    end
    object DXBWEmbroider: TStringField
      FieldName = 'Embroider'
      FixedChar = True
      Size = 3
    end
    object DXBWJGYWSM: TStringField
      FieldName = 'JGYWSM'
      FixedChar = True
      Size = 100
    end
  end
  object DS2: TDataSource
    DataSet = DXBW
    Left = 656
    Top = 178
  end
  object UpdateSQL1: TUpdateSQL
    Left = 688
    Top = 178
  end
  object DXXX: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XieXing,LineNum,'#39'CCCCCC'#39' as CC,DXBH'
      'from DXXX')
    UpdateObject = UpdateSQL2
    Left = 624
    Top = 322
    object DXXXXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object DXXXLineNum: TStringField
      FieldName = 'LineNum'
      FixedChar = True
      Size = 3
    end
    object DXXXCC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 6
    end
    object DXXXDXBH: TStringField
      FieldName = 'DXBH'
      FixedChar = True
      Size = 15
    end
  end
  object DS3: TDataSource
    DataSet = DXXX
    Left = 656
    Top = 322
  end
  object UpdateSQL2: TUpdateSQL
    Left = 688
    Top = 322
  end
  object TDXXX: TTable
    DatabaseName = 'DB'
    TableName = 'dbo.DXXX'
    Left = 736
    Top = 322
  end
  object PopupMenu1: TPopupMenu
    Left = 632
    Top = 370
    object S1: TMenuItem
      Caption = 'Same'
      Enabled = False
      OnClick = S1Click
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 256
    Top = 249
  end
  object DXBW2: TQuery
    CachedUpdates = True
    AfterOpen = DXBW2AfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    RequestLive = True
    SQL.Strings = (
      'select *'
      'from DXBW'
      'where XieXing=:XieXing')
    UpdateObject = UpDXBW
    Left = 624
    Top = 226
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end>
  end
  object UpDXBW: TUpdateSQL
    ModifySQL.Strings = (
      'update DXBW'
      'set'
      '  XieXing = :XieXing,'
      '  BWBH = :BWBH,'
      '  USERDATE = :USERDATE,'
      '  USERID = :USERID,'
      '  YN = :YN'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  BWBH = :OLD_BWBH and'
      '  USERDATE = :OLD_USERDATE and'
      '  USERID = :OLD_USERID and'
      '  YN = :OLD_YN')
    InsertSQL.Strings = (
      'insert into DXBW'
      '  (XieXing, BWBH, USERDATE, USERID, YN)'
      'values'
      '  (:XieXing, :BWBH, :USERDATE, :USERID, :YN)')
    DeleteSQL.Strings = (
      'delete from DXBW'
      'where'
      '  XieXing = :OLD_XieXing and'
      '  BWBH = :OLD_BWBH and'
      '  USERDATE = :OLD_USERDATE and'
      '  USERID = :OLD_USERID and'
      '  YN = :OLD_YN')
    Left = 656
    Top = 226
  end
end

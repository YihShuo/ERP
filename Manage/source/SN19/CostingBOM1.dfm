object CostingBOM: TCostingBOM
  Left = 212
  Top = 112
  Width = 1026
  Height = 557
  Caption = 'CostingBOM'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1010
    Height = 65
    Align = alTop
    TabOrder = 0
    object ShoeImage: TImage
      Left = 704
      Top = 0
      Width = 97
      Height = 65
      PopupMenu = shoePicpopo
      Stretch = True
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
  object PC1: TPageControl
    Left = 0
    Top = 65
    Width = 1010
    Height = 453
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = PC1Change
    OnChanging = PC1Changing
    object TS1: TTabSheet
      Caption = 'ARTICLE'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1002
        Height = 89
        Align = alTop
        TabOrder = 0
        Visible = False
        object Label1: TLabel
          Left = 41
          Top = 20
          Width = 45
          Height = 20
          Caption = 'ArtNo:'
        end
        object Label2: TLabel
          Left = 200
          Top = 19
          Width = 41
          Height = 20
          Caption = 'Color:'
        end
        object Label3: TLabel
          Left = 8
          Top = 53
          Width = 73
          Height = 20
          Caption = 'Customer:'
        end
        object Label4: TLabel
          Left = 389
          Top = 56
          Width = 67
          Height = 20
          Caption = 'ArtName:'
        end
        object Label5: TLabel
          Left = 333
          Top = 19
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Label18: TLabel
          Left = 531
          Top = 16
          Width = 59
          Height = 20
          Caption = 'Season:'
        end
        object Label19: TLabel
          Left = 799
          Top = 8
          Width = 401
          Height = 20
          AutoSize = False
          Caption = #26597#35426#32080#26524#32005#33394':'#20195#34920#27794#26377#23526#38555#29992#37327#33287#38651#33126#29992#37327
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label20: TLabel
          Left = 799
          Top = 32
          Width = 401
          Height = 20
          AutoSize = False
          Caption = #26597#35426#26781#20214#40643#33394':'#33267#23569#22635#23531#19968#27171
          Color = clYellow
          ParentColor = False
        end
        object Label21: TLabel
          Left = 180
          Top = 55
          Width = 64
          Height = 20
          Caption = 'DAOMH:'
        end
        object Edit1: TEdit
          Left = 88
          Top = 16
          Width = 89
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 248
          Top = 16
          Width = 57
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 88
          Top = 51
          Width = 89
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object Edit3: TEdit
          Left = 386
          Top = 16
          Width = 134
          Height = 28
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 456
          Top = 52
          Width = 195
          Height = 28
          CharCase = ecUpperCase
          TabOrder = 4
        end
        object Button1: TButton
          Left = 696
          Top = 14
          Width = 74
          Height = 33
          Caption = 'QUERY'
          TabOrder = 5
          OnClick = Button1Click
        end
        object CheckBox1: TCheckBox
          Left = 693
          Top = 58
          Width = 113
          Height = 17
          Caption = 'Have Order'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
        object SeasonEdit: TEdit
          Left = 595
          Top = 14
          Width = 57
          Height = 28
          CharCase = ecUpperCase
          Color = clYellow
          TabOrder = 7
        end
        object Edit6: TEdit
          Left = 247
          Top = 52
          Width = 130
          Height = 28
          TabOrder = 8
        end
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 89
        Width = 1002
        Height = 329
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
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnDblClick = DBGrid1DblClick
        OnGetCellParams = DBGrid1GetCellParams
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'XieXing'
            Footers = <
              item
                FieldName = 'XieXing'
                ValueType = fvtCount
              end>
            Title.Caption = 'ArtNo|'#38795#22411
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 94
          end
          item
            EditButtons = <>
            FieldName = 'SheHao'
            Footers = <>
            Title.Caption = 'Color|'#33394#34399
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 43
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article|SKU'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            Title.Caption = 'ArtName|'#38795#21517
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Title.Caption = 'Color Name|'#38991#33394
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 157
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'BZCC'
            Footers = <>
            Title.Caption = 'StdSize|'#27161#28310#23610#23544
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'KFJC'
            Footers = <>
            Title.Caption = 'Customer|'#23458#25142
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 109
          end
          item
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            Title.Caption = 'Season|'#23395#31680
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'DAOMH'
            Footers = <>
            Title.Caption = 'DAOMH|'#26028#20992
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end>
      end
    end
    object TS2: TTabSheet
      Caption = 'BOM'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1002
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText1: TDBText
          Left = 59
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 206
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 340
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText4: TDBText
          Left = 502
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 45
          Height = 20
          Caption = 'ArtNo:'
        end
        object Label7: TLabel
          Left = 160
          Top = 16
          Width = 41
          Height = 20
          Caption = 'Color:'
        end
        object Label8: TLabel
          Left = 288
          Top = 16
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Label9: TLabel
          Left = 432
          Top = 16
          Width = 67
          Height = 20
          Caption = 'ArtName:'
        end
        object Label22: TLabel
          Left = 852
          Top = 16
          Width = 78
          Height = 20
          AutoSize = False
          Caption = #21295#29575'Exc:'
        end
        object ExchangLabel: TLabel
          Left = 932
          Top = 16
          Width = 45
          Height = 20
          Caption = '21036'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SizeLabel: TLabel
          Left = 724
          Top = 16
          Width = 81
          Height = 20
          AutoSize = False
          Caption = #27161#28310'Size:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 676
          Top = 8
          Width = 41
          Height = 33
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000FDFDFCFFFFFF
            B3A89E947459916D50906E52916E52916E52906D52916E52916E52916E52916E
            52906E52906E52906E52916F52906E52916E52916E52906E52906E52916E5290
            6E52906E52906F52916F538E6C50957961CCC6BFFFFFFFFDFDFCFFFFFF7C6048
            995C3298582B9555289655299656299455289656299656299655289655299655
            2995552895552896562995552896552996562994552896552996562996552896
            55299D5B2E9455289656299555289B592D884D23A49587FFFFFFCEC9C28C5228
            985C31F7F2EFFFFEFBF9F4F1F5F0EDF9F4F1FFFEFAF5EEEAF5F0EDFFFAF7FCF7
            F3F5F0ECF7F1EEFFFEF9F5F0EDF5F0EDFDF8F5FFF9F6F5F1EEF5EEE9FDF9F6FF
            FFFFC4C1BEFFFFFCF5F0EDF7F1EDF2EBE69B5C31713B12FDFFFFAA9B8DA4683E
            985B32FFFFFF868787E8E9E9FFFFFFEEF0F0808182FFFFFFFFFFFFA7A8A9CCCD
            CEFFFFFFFFFFFF676869FFFFFFFFFFFFC0C1C2B2B3B3FFFFFFFFFFFFBFC0C064
            6566141516A9AAAAFFFFFFFFFFFFFFFFFF935328975D34C5BDB5AC9D8EA3673E
            965B31FFFFFF0000007D7D7EFFFFFF878787000000FFFFFFFFFFFF0000004545
            45FFFFFFC1C1C2000000E0E0E0FFFFFF252524000000FFFFFF747474181818FF
            FFFF797979969696212121FFFFFFFFFFFF925327975E35C5BEB6AD9D8FA3673E
            975B31FFFFFFFFFFFFFFFFFFEDEDECFCFBFAFFFFFFEAE9E8E9E9E8FFFFFFFFFF
            FFF3F2F1FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFF5E5E5EFFFFFFFF
            FFFF5C5C5BFFFFFF000000D5D6D4FFFFFF925227985D35C5BFB7AD9D8FA3673E
            995E33EDF7FCE3E3E1E2E2E1E3E3E2E4E5E4E4E4E3E3E3E2E4E5E4E4E4E3E3E3
            E2E3E3E2E1E1E0E0DFDFE5E5E5EDEDECF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF676766FFFFFF000000C9C9C9FFFFFF925327995D35C5BFB7AD9D8FA3673E
            995C33F6FEFFE8E7E7E8E8E7E9E9E8E8E8E7E9E9E8E9E9E8E8E8E7E8E8E7E8E8
            E7E9E9E8E7E7E8E8E8E8E8E8E7E7E7E7E6E6E5E3E4E4E8E8E7F0F0EFF4F4F5FF
            FFFF444445000000161615FFFFFFFFFFFF935427985D35C5C0B7AD9D8FA3673E
            995C32F8FFFFEBEAEAEBEBEBECECECEBEBEBECECECEBEBEBEAEAEAEDECEDEBEB
            EBEBEBEBECECECEDECECEBEBEBEBEBEBECECECEBEBEBEAEAEBEAEAEAFFFFFF56
            5656000000454545FFFFFFECEBEBF6FFFF955529985D35C5BEB6AD9D8FA3673F
            985B31FDFFFFEEEEEEEFEEEEEEEFEEEEEEEFEFEFEFEEEEEFEEEFEFEFEFEFEEEE
            EFEFEFEEEEEEEFEDEEEFF0F1EFEDEEEFEFF0EEEEEFEFEFEFEEFFFFFF12101000
            00006D6D6EFFFFFFF1F1F1EDEDEDFAFFFF955429985D35C5BFB7AD9D8FA3673E
            985B30FFFFFFF2F2F1F2F2F2F3F2F1F3F3F2F3F3F2F3F3F1F3F3F2F3F3F1F4F3
            F1F2F2F2F3F3F2F3F3F1F2F2F1F2F3F1F2F3F2F3F2F1FCFCFBA4A4A4000000FF
            FFFF626261FFFFFFD8D8D8F9FAF9FDFFFF955429985D34C5BFB7AD9D8FA3673E
            985C32FFFFFFF5F4F3F5F5F5F6F5F5F6F4F3F6F5F5F4F4F4F6F5F4F6F5F4F5F6
            F5F6F5F5F4F4F4F4F4F4F5F5F5F6F5F5F5F5F4F6F5F4FFFFFF959596303030FF
            FFFF5C5C5BFFFFFF535353FFFFFFFFFFFF945428975D35C5BFB7AD9D8FA3673E
            975B31FFFFFFF7F8F8F8F8F8F9F9F8F9F7F7F8F8F8F9F8F8F8F8F8F9F7F7F8F8
            F8F8F8F7F8F7F7F8F8F8F8F8F7F8F7F7F8F8F8F8F8F8F8F7F6FFFFFF000000B3
            B3B36464648F8F8F000000FFFFFFFFFFFF925327985D35C5BFB7AD9D8FA3673E
            975B31FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1
            C4C71C2123D7DBDDFFFFFFFFFFFFFFFFFF935327995D35C5BFB7AD9D8FA3683F
            995E35C9AB95CEB09BCFB39FD0B5A0D2B7A6D2B7A5D4B8A7D2B7A6D1B5A3CFB4
            9FCCAF9ACCAE9ACDAF9BCEAF9CCEB19CCEB09CCFB19DCDB09BCEB19CCEB19DD7
            B9A4E4C7B3D5B8A3CDB09CCFB29FC6A48C9B6139985D34C5BFB7AD9D8FA2663C
            A87452A7704EA8704FA76E4EA76E4CA76E4DA66E4BA66D4CA76F4BA76E4DA76F
            4FA8704FA56D49A069429C633B9860369B61399C623A9B62399B62399B62399B
            62399B62399C623A9B62399B62399D643CA26C47975E34C5BFB7AD9D8FA1643B
            AD7957AE7857AC7856AE7957AD7957AD7856AD7857AE7958AE7856AE7958AD79
            56AD7856AE7958AD7859B07C5AAD7956A66F4B9F6942A06A43A16B45A26C46A2
            6C46A26C46A16B45A26C46A16B45A06A44A26C46975C34C5BFB6AD9D8FA1653C
            AF7C59AE7B58AE7957AF7B58AF7A57AF7B58AE7A58AF7A57AE7957AE7958AE7A
            57B07B58AE7A57B17C58AE7957AF7A57AF7B59B07C5BAA7552A26C469F6943A1
            6A44A16B45A16B45A26C46A16B45A26C47A36D47985D34C5BFB7AD9D8F9F6339
            A56B43A66B41AE7B56AF7C58B07C59AD7953A2673CA8704AB07B57AE7B57A266
            3BA9714BAD7953A1653AAA734BAF7C58AF7B56A3683FAE7A55B07E5AA87049AA
            7551A46D4695572A95582E985E35975B32975A30975F35C5BEB6AC9B8DA56C44
            F1EAE3F5F0EDB4845FB07C57AE7954BA8C6CFFFFFFDBC4B2AD7954AD7850FFFF
            FFCDAC93BA8E6EFFFFFFD1B49EAC7650AB754EFFFFFFDEC9BAD5B9A5DFCCBBAE
            7853B88C69FFFFFFE9DBD0D6BBA6DCC6B2F5EFEB8B4A1CC6BFB8AD9D8F9A5B30
            D5BBA6DAC1B0AD764DB17F5BB28059A4693CFAF6F4B58662A06234FFFFFFB687
            65AD784FA16537FFFFFFAB7249A4683BFFFFFFBD9271A97147AE7851A66D41CE
            AF97A4693CEEE3DBBD9375AB754CAA7349C29A7D975C35C5BEB6AD9D8F9B5D31
            D7BFABDAC0ADA66C3EA86F42B38059A87042FCFAF9AB7448E9DBD1D6BCA6AC74
            49B3815BA76B3DFFFFFFAD754ABB906EFFFFFFA36536B4815AB38158B3815BB0
            7C53AA7246F1E7DFC09676AA7347BA8C69AB774E955B30C5BFB7AD9D8F9B5D31
            D6BCA7EDE0D6D2B49DFFFFFFB5835BA86D3FF8F4F1D6BBA6F7F1ECCFAF97AA71
            43B3825AA66A3CFFFFFFAE7548C7A387FFFFFFA76D3EB58159B4825AB3825AB3
            8158AA7346EFE3D9E3D3C3D6BBA5FFFFFFA66C40955A31C5BFB7AD9D8F9C5D31
            D8C0ACDCC5AFA86D3CD3B69FF2EAE2A1632FFDFAF9B8885FA1622EF5F0EAD9BD
            A7B17D50A86E3CFFFFFFAE794EB48255FFFFFFA56834B5835AB48259B48157B8
            8962AB7343F1E8E2BF946FA97041C19774AD774F955B33C5BEB7AD9D8F9A5B2F
            D7BDA7DBC3B1A56632E2CFBDEBE0D6A3642EFAF8F7B88860A56731F0E7DFDEC7
            B7B17D50A76B39FFFFFFAF7848AB7343F4ECE5CAA78AAE7748B37E53AB713FE3
            D2C1A86B39F0E7DEC29A77B07A4DAC7441C29A7C92562BC5C0B7AC9B8DA86E48
            EBDDD2F0E6DEE1CEBEEDE1D6AD7441C09771FEFFFEE2CFBEE5D5C8E9DACDAD75
            44B48053C6A07FFFFFFFD4B9A2B58154AA713DECDED3E0CCBAD6BCA6E1CDB9D7
            BDA8BB8C61F9F6F4E2CFBEDAC2ACDDC6B3DECBBC915127C5BFB7AD9D8F9D6036
            AE7645AD7742AF7946B07C4CB7865BB48252AC7442AE7846B07947B17B4BB888
            5BB8875BB38050AB723FB07B4BB8885AB7855BB27D4DAF7847B27D4BB17C4DB1
            7D4FB68354AD7542AF7847B07A4AB17B49AC7447955A32C5BFB6AA9B8C9F6139
            C09369B78657B88759B78758B78758B78758B88759B88759B78759B78758B787
            58B78758B78759B88759B88759B78758B78658B78758B88759B78759B78658B7
            8758B78758B88759B88759B88759B78657B98B62965A32C1BBB3BDB4AB96592F
            B48662C9A279C2986FC2996FC2986FC2996FC3996FC39A70C3996FC2986FC399
            6FC39970C39A6FC2996FC39970C29970C39970C3996FC29970C39970C39870C3
            9B71C3986FC39970C39970C1986ECCA880AC77517B4319ECECECFFFFFF674020
            A4643AAB764FB38058B27F56B07F58B17F59B28057B17E56B07F58B27F57B07E
            58B17F57B07E58B28057B17E57B27F56B17F58B17E59B17F57B17E56B17F58B1
            7E57B07F58B17F57B17E58B28257A66E499C5E33826952FFFFFFFFFFFFFFFFFF
            826952713C1576421B75411A76421B75411A76421B75411A76421B75411A7642
            1B75411A76421B75411A76421B75411A76421B75411A76411A76421A76421B75
            411A76421B75411A75411A76411A6F3C1793806EFFFFFFFEFEFDFEFEFDFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDFEFEFD}
          OnClick = SpeedButton1Click
        end
        object SizeEdit: TEdit
          Left = 804
          Top = 12
          Width = 41
          Height = 28
          TabOrder = 0
          Text = '0'
        end
      end
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 49
        Width = 1002
        Height = 370
        Align = alClient
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
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 4
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Popumenu
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnEditButtonClick = DBGrid2EditButtonClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'FLBH'
            Footers = <
              item
                FieldName = 'FLBH'
                ValueType = fvtCount
              end>
            Title.Caption = 'Class|'#20998#39006'ID'
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'XFL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Class|'#22823#20998#39006
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'BWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Part|'#37096#20301#32232#34399
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'BWMC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PartName|'#37096#20301#21517#31281
            Width = 117
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Material|'#26448#26009#32232#34399
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'CLMC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'MaterialN|'#26448#26009#21517#31281
            Width = 467
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Unit|'#21934#20301
            Width = 51
          end
          item
            EditButtons = <>
            FieldName = 'BWZW'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Part|'#37096#20301
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'CLSL'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Usage|'#29992#37327
            Width = 45
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'VN_Mat'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20729'Price|VN'#26448#26009
            Width = 57
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'TW_Mat'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20729'Price|TW'#26448#26009
            Width = 59
          end
          item
            ButtonStyle = cbsEllipsis
            EditButtons = <>
            FieldName = 'GC_Mat'
            Footers = <>
            ReadOnly = True
            Title.Caption = #21934#20729'Price|'#21152#24037
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'VN_Mat_P'
            Footers = <
              item
                FieldName = 'VN_Mat_P'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Title.Caption = #21934#20301#25104#26412'|VN'#26448#26009
          end
          item
            EditButtons = <>
            FieldName = 'TW_Mat_P'
            Footers = <
              item
                FieldName = 'TW_Mat_P'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Title.Caption = #21934#20301#25104#26412'|TW'#26448#26009
          end
          item
            EditButtons = <>
            FieldName = 'GC_Mat_P'
            Footers = <
              item
                FieldName = 'GC_Mat_P'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Title.Caption = #21934#20301#25104#26412'|'#21152#24037
          end
          item
            EditButtons = <>
            FieldName = 'Total_P'
            Footers = <
              item
                FieldName = 'Total_P'
                ValueType = fvtSum
              end>
            ReadOnly = True
            Title.Caption = 'Total|'#21512#35336
          end>
      end
    end
    object TS3: TTabSheet
      Caption = 'ACTION'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1002
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText5: TDBText
          Left = 56
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText6: TDBText
          Left = 185
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText7: TDBText
          Left = 294
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText8: TDBText
          Left = 470
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 16
          Width = 45
          Height = 20
          Caption = 'ArtNo:'
        end
        object Label11: TLabel
          Left = 141
          Top = 16
          Width = 41
          Height = 20
          Caption = 'Color:'
        end
        object Label12: TLabel
          Left = 246
          Top = 16
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Label13: TLabel
          Left = 398
          Top = 16
          Width = 67
          Height = 20
          Caption = 'ArtName:'
        end
        object Excel: TButton
          Left = 744
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Excel'
          TabOrder = 0
          OnClick = ExcelClick
        end
        object Print: TButton
          Left = 632
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Print'
          Enabled = False
          TabOrder = 1
        end
      end
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 49
        Width = 1002
        Height = 369
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
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TS4: TTabSheet
      Caption = 'COMPUTER'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1002
        Height = 49
        Align = alTop
        TabOrder = 0
        object DBText9: TDBText
          Left = 56
          Top = 16
          Width = 62
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieXing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText10: TDBText
          Left = 184
          Top = 16
          Width = 71
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'SheHao'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText11: TDBText
          Left = 272
          Top = 16
          Width = 71
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'ARTICLE'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText12: TDBText
          Left = 440
          Top = 16
          Width = 71
          Height = 20
          AutoSize = True
          Color = clBtnFace
          DataField = 'XieMing'
          DataSource = DS1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 16
          Width = 45
          Height = 20
          Caption = 'ArtNo:'
        end
        object Label15: TLabel
          Left = 136
          Top = 16
          Width = 41
          Height = 20
          Caption = 'Color:'
        end
        object Label16: TLabel
          Left = 224
          Top = 16
          Width = 48
          Height = 20
          Caption = 'Article:'
        end
        object Label17: TLabel
          Left = 368
          Top = 16
          Width = 67
          Height = 20
          Caption = 'ArtName:'
        end
        object Print2: TButton
          Left = 632
          Top = 8
          Width = 89
          Height = 33
          Caption = 'Print'
          Enabled = False
          TabOrder = 0
        end
        object Excel2: TButton
          Left = 744
          Top = 8
          Width = 81
          Height = 33
          Caption = 'Excel'
          TabOrder = 1
          OnClick = Excel2Click
        end
      end
      object DBGrid4: TDBGridEh
        Left = 0
        Top = 49
        Width = 1002
        Height = 370
        Align = alClient
        DataSource = DS4
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -16
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FrozenCols = 2
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object XXZL: TQuery
    AfterScroll = XXZLAfterScroll
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XXZL.XieXing,XXZL.SheHao,XXZL.Article,'
      
        'XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,xt.xiexing as Xx,xt.S' +
        'hehao as Ss,XXZL.IMGName,KFXXZL.JiJie,XXZL.DAOMH from XXZL '
      'left join KFZL on KFZL.KFDH=XXZL.KHDH '
      
        'left join KFXXZL on KFXXZL.SheHao=XXZL.SheHao and  KFXXZL.XieXin' +
        'g=XXZL.XieXing'
      
        'left join (select xiexing,shehao from xtbwyl1 group by xiexing,s' +
        'hehao) as xt'
      '  on xt.xiexing=xxzl.xiexing and xt.shehao=xxzl.shehao '
      'where XXZL.XieXing like '#39'3J235(USA)%'#39
      ' and XXZL.SheHao like '#39'%'#39
      ' and XXZL.ARTICLE like '#39'%'#39
      ' and KFZL.KFJC like '#39'%%'#39
      ' and XXZL.XieMing like '#39'%'#39
      ' and XXZL.YN='#39'1'#39
      ' order by KFJC,XXZL.XieXing,XXZL.Shehao')
    Left = 53
    Top = 263
    object XXZLXieXing: TStringField
      DisplayWidth = 10
      FieldName = 'XieXing'
      Origin = 'DB.XXZL.XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSheHao: TStringField
      DisplayWidth = 6
      FieldName = 'SheHao'
      Origin = 'DB.XXZL.SheHao'
      FixedChar = True
      Size = 5
    end
    object XXZLARTICLE: TStringField
      DisplayWidth = 10
      FieldName = 'ARTICLE'
      Origin = 'DB.XXZL.ARTICLE'
      FixedChar = True
    end
    object XXZLXieMing: TStringField
      DisplayWidth = 34
      FieldName = 'XieMing'
      Origin = 'DB.XXZL.XieMing'
      FixedChar = True
      Size = 50
    end
    object XXZLYSSM: TStringField
      DisplayWidth = 27
      FieldName = 'YSSM'
      Origin = 'DB.XXZL.YSSM'
      FixedChar = True
      Size = 40
    end
    object XXZLBZCC: TStringField
      DisplayWidth = 7
      FieldName = 'BZCC'
      Origin = 'DB.XXZL.BZCC'
      FixedChar = True
      Size = 6
    end
    object XXZLKFJC: TStringField
      FieldName = 'KFJC'
      FixedChar = True
    end
    object XXZLXx: TStringField
      FieldName = 'Xx'
      FixedChar = True
      Size = 15
    end
    object XXZLSs: TStringField
      FieldName = 'Ss'
      FixedChar = True
      Size = 5
    end
    object XXZLIMGName: TStringField
      FieldName = 'IMGName'
      FixedChar = True
      Size = 60
    end
    object XXZLJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object XXZLDAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
  end
  object DS1: TDataSource
    DataSet = XXZL
    Left = 54
    Top = 297
  end
  object XXZLS: TQuery
    AfterOpen = XXZLSAfterOpen
    OnCalcFields = XXZLSCalcFields
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select XXBWFL_K.FLBH,XXBWFLS_K.XFL,XXBWFL_K.USERID,XXBWFL_K.USER' +
        'DATE,XXBWFL_K.YN,XXZLS.* from ( '
      'SELECT '
      
        #9#9'MT.XieXing,MT.Shehao,MT.XH,MT.BWBH,MT.BWMC,MT.CLBH,MT.CLMC,MT.' +
        'DWBH,MT.BWZW,MT.CLSL, '
      
        #9#9'case when (CH1.BWBH is null and MT.CQDH='#39'VN'#39')  then max(MT.GC)' +
        ' '
      #9#9#9#9'when CH1.BWBH is not null then sum(CH1.VN) end as '#39'VN_Mat'#39', '
      #9#9'case when (CH1.BWBH is null and MT.CQDH='#39'TW'#39') then max(MT.GC) '
      
        #9#9#9#9'when CH1.BWBH is not null then sum(CH1.TW) end as '#39'TW_Mat'#39','#9 +
        #9
      
        #9#9'case when CH1.BWBH is not null then max(MT.GC) end as '#39'GC_Mat'#39 +
        ' '
      
        'FROM (select  XXZLS.XieXing,XXZLS.Shehao,XXZLS.XH,XXZLS.BWBH,BWZ' +
        'L.ywsm BWMC,XXZLS.CLBH,CLZL.YWPM as CLMC ,BWZL.zwsm  as BWZW,XTB' +
        'WYL1.CLSL,CLZL.DWBH,CQDH, '
      
        #9#9#9#9'case when sum(CGBJS.USPRICE) is not null then sum(CGBJS.USPR' +
        'ICE) else round(sum(CGBJS.VNPrice/22400),3) end  as '#39'GC'#39' '
      #9#9'  FROM XXZLS'
      #9#9'  LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh'
      #9#9'  LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      
        #9#9'  LEFT JOIN XTBWYL1 ON XXZLS.XIEXING=XTBWYL1.XIEXING AND XXZLS' +
        '.SHEHAO=XTBWYL1.SHEHAO AND XXZLS.BWBH=XTBWYL1.BWBH AND XTBWYL1.X' +
        'TCC='#39'08.0'#39' '
      
        #9#9'  --LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh ' +
        'AND LBZLS.LB='#39'05'#39
      
        #9#9'  LEFT JOIN (select CLBH,case when USPrice is null then round(' +
        'VNPrice/22400,3) else USPrice end as USPrice ,VNPrice,rn  from (' +
        'select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,'
      
        #9#9#9#9#9#9#9#9#9#9'ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CG' +
        'BJ.BJNO DESC) as  rn'
      #9#9#9#9#9#9#9#9#9#9'from CGBJ'
      #9#9#9#9#9#9#9#9#9#9'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      #9#9#9#9#9#9#9#9#9#9'where CGBJ.GSBH='#39'VA12'#39' and CGBJS.CLBH is not null'
      #9#9#9#9#9#9#9#9#9#9') CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLS.CLBH'
      
        #9#9'  where XXZLS.XieXing='#39'CON15F28'#39' and XXZLS.SheHao='#39'02'#39' and lef' +
        't(XXZLS.clbh,1)<>'#39'M'#39' and XXZLS.CLTX=1 and XTBWYL1.CLSL is not NU' +
        'LL'
      
        #9#9'  GROUP BY XXZLS.XieXing,XXZLS.Shehao, XXZLS.XH, XXZLS.BWBH,BW' +
        'ZL.ywsm,XXZLS.CLBH, CLZL.YWPM,CLZL.DWBH ,BWZL.zwsm,XTBWYL1.CLSL,' +
        'CLZL.DWBH,CQDH  )MT'
      'left join ( '
      
        #9#9'select  CH.BWBH, case when CH.CQDH='#39'VN'#39' then CH.Price end as '#39 +
        'VN'#39',case when CH.CQDH='#39'TW'#39' then CH.Price end as '#39'TW'#39
      #9#9'from('
      
        #9#9'  select XXZLS.BWBH,CQDH,case when sum(CGBJS.USPRICE) is not n' +
        'ull then sum(CGBJS.USPRICE) else round(sum(CGBJS.VNPrice/22400),' +
        '3) end  as '#39'Price'#39
      #9#9'  FROM XXZLS '
      #9#9'  inner join clzhzl on clzhzl.cldh=xxzls.clbh '
      #9#9'  LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh '
      #9#9'  LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh '
      
        #9#9'  LEFT JOIN (select CLBH,case when USPrice is null then round(' +
        'VNPrice/22400,3) else USPrice end as USPrice ,VNPrice,rn  from (' +
        'select CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice, '
      
        #9#9#9#9#9#9#9#9#9#9'ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CG' +
        'BJ.BJNO DESC) as  rn '
      #9#9#9#9#9#9#9#9#9#9'from CGBJ'
      #9#9#9#9#9#9#9#9#9#9'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      #9#9#9#9#9#9#9#9#9#9'where CGBJ.GSBH='#39'VA12'#39' and CGBJS.CLBH is not null '
      #9#9#9#9#9#9#9#9#9#9') CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=clzhzl.cldh1 '
      
        #9#9'  where XXZLS.XieXing='#39'CON15F28'#39' and XXZLS.SheHao='#39'02'#39' and XXZ' +
        'LS.CLTX=1 '
      #9#9'  GROUP BY XXZLS.BWBH,CQDH ) CH'
      #9#9'  ) Ch1 on MT.bwbh=Ch1.BWBH'
      
        'group by MT.XieXing,MT.Shehao,MT.XH,MT.BWBH,MT.BWMC,MT.CLBH,MT.C' +
        'LMC,MT.DWBH,MT.BWZW,MT.CLSL,CH1.BWBH,MT.CQDH'#9'  '
      '-- VN BOM'
      'union all'
      
        'SELECT VN_BOM.XieXing,VN_BOM.SheHao,VN_BOM.XH,VN_BOM.BWBH,VN_BOM' +
        '.BWMC,VN_BOM.CLBH,VN_BOM.CLMC,VN_BOM.DWBH,VN_BOM.BWZW,VN_BOM.CLS' +
        'L, '
      #9#9'CASE WHEN CQDH='#39'VN'#39' THEN PRICE END AS '#39'VN_Mat'#39', '
      #9#9'CASE WHEN CQDH='#39'TW'#39' THEN PRICE END as '#39'TW_Mat'#39', '
      #9#9'NULL AS '#39'GC_Mat'#39
      'FROM ( '
      
        #9'select XXZLSVN.XieXing,XXZLSVN.SheHao,'#39'000'#39' as XH,XXZLSVN.BWBH,' +
        ' BWZL.YWSM as BWMC,XXZLSVN.CLBH,CLZL.YWPM AS CLMC,BWZL.ZWSM AS B' +
        'WZW,XXZLSVN.CLSL,CQDH,CLZL.DWBH,'
      
        #9#9#9'CASE WHEN SUM(USPRICE) IS NOT NULL THEN sum(CGBJS.USPRICE) el' +
        'se round(sum(CGBJS.VNPrice/22400),3) end  AS '#39'PRICE'#39#9#9#9
      #9'from XXZLSVN'
      #9'left join BWZL on BWZL.BWDH= XXZLSVN.BWBH'
      #9'left join CLZL on XXZLSVN.CLBH=CLZL.CLDH'
      
        #9'LEFT JOIN (select CLBH,case when USPrice is null then round(VNP' +
        'rice/22400,3) else USPrice end as USPrice ,VNPrice,rn  from (sel' +
        'ect CGBJS.CLBH,CGBJS.USPrice,CGBJS.VNPrice,'
      
        #9#9#9#9#9#9#9#9#9#9'ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CG' +
        'BJ.BJNO DESC) as  rn'
      #9#9#9#9#9#9#9#9#9#9'from CGBJ '
      #9#9#9#9#9#9#9#9#9#9'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      
        #9#9#9#9#9#9#9#9#9#9'where (CGBJ.GSBH='#39'VA12'#39' or CGBJ.GSBH='#39'VTX'#39')  and CGBJS' +
        '.CLBH is not null'
      #9#9#9#9#9#9#9#9#9#9') CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLSVN.CLBH'
      #9'where  XXZLSVN.XieXing='#39'CON15F28'#39' and  XXZLSVN.SheHao='#39'02'#39' '
      
        #9'GROUP BY  XXZLSVN.XieXing,XXZLSVN.SheHao, XXZLSVN.BWBH,BWZL.YWS' +
        'M,XXZLSVN.CLBH,CLZL.YWPM,BWZL.ZWSM,XXZLSVN.CLSL,CQDH,CLZL.DWBH )' +
        ' VN_BOM   '
      ') XXZLS '
      
        'LEFT join XXBWFL_K on XXBWFL_K.XieXing=XXZLS.XieXing and XXBWFL_' +
        'K.SheHao=XXZLS.SheHao and XXBWFL_K.BWBH=XXZLS.BWBH '
      'Left join XXBWFLS_K on XXBWFL_K.FLBH=XXBWFLS_K.FLBH '
      'Order by  XXBWFL_K.FLBH,XXBWFLS_K.XFL,XXZLS.XH')
    UpdateObject = UpdateSQL1
    Left = 92
    Top = 264
    object XXZLSFLBH: TStringField
      FieldName = 'FLBH'
      FixedChar = True
      Size = 2
    end
    object XXZLSXFL: TStringField
      FieldName = 'XFL'
      FixedChar = True
    end
    object XXZLSXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object XXZLSShehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object XXZLSBWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSBWMC: TStringField
      FieldName = 'BWMC'
      FixedChar = True
      Size = 40
    end
    object XXZLSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object XXZLSCLMC: TStringField
      FieldName = 'CLMC'
      FixedChar = True
      Size = 200
    end
    object XXZLSDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object XXZLSBWZW: TStringField
      FieldName = 'BWZW'
      FixedChar = True
      Size = 40
    end
    object XXZLSCLSL: TFloatField
      FieldName = 'CLSL'
    end
    object XXZLSVN_Mat: TFloatField
      FieldName = 'VN_Mat'
    end
    object XXZLSTW_Mat: TFloatField
      FieldName = 'TW_Mat'
    end
    object XXZLSGC_Mat: TFloatField
      FieldName = 'GC_Mat'
    end
    object XXZLSVN_Mat_P: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VN_Mat_P'
      Calculated = True
    end
    object XXZLSTW_Mat_P: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TW_Mat_P'
      Calculated = True
    end
    object XXZLSGC_Mat_P: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GC_Mat_P'
      Calculated = True
    end
    object XXZLSTotal_P: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_P'
      Calculated = True
    end
    object XXZLSUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 10
    end
    object XXZLSUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object XXZLSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object XXZLSXH: TStringField
      FieldName = 'XH'
      FixedChar = True
      Size = 3
    end
  end
  object DS2: TDataSource
    DataSet = XXZLS
    Left = 92
    Top = 296
  end
  object xtbwyl1: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 132
    Top = 296
  end
  object DS3: TDataSource
    DataSet = xtbwyl1
    Left = 174
    Top = 296
  end
  object xtbwyl: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    Left = 174
    Top = 263
  end
  object DS4: TDataSource
    DataSet = xtbwyl
    Left = 223
    Top = 269
  end
  object XXCC: TQuery
    AfterOpen = XXCCAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    Left = 132
    Top = 264
  end
  object shoePicpopo: TPopupMenu
    Left = 776
    Top = 24
    object Saveas1: TMenuItem
      Caption = 'Save as'
      OnClick = Saveas1Click
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'jpg'
    Filter = '*.JPG|*.JPG'
    Left = 752
    Top = 24
  end
  object Popumenu: TPopupMenu
    Left = 92
    Top = 330
    object N5: TMenuItem
      Caption = 'Quick Class'
      Enabled = False
      OnClick = N5Click
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE XXBWFL_K'
      '  Set'
      '  FLBH=:FLBH,'
      '  USERID=:USERID,'
      '  USERDATE=:USERDATE,'
      '  YN=:YN  '
      'Where '
      '  XieXing=:Old_XieXing  and'
      '  SheHao=:Old_SheHao  and'
      '  BWBH=:Old_BWBH  '
      '  ')
    InsertSQL.Strings = (
      'INSERT into XXBWFL_K'
      '  (XieXing, SheHao, BWBH, FLBH, USERID, USERDATE, YN)'
      'Values'
      '  (:XieXing, :SheHao, :BWBH, :FLBH, :USERID, :USERDATE, :YN)')
    DeleteSQL.Strings = (
      'Delete from XXBWFL_K'
      'Where '
      '  XieXing=:Old_XieXing  and'
      '  SheHao=:Old_SheHao  and'
      '  BWBH=:Old_BWBH  ')
    Left = 92
    Top = 363
  end
  object TempQry: TQuery
    DatabaseName = 'DB'
    Left = 91
    Top = 400
  end
end

object CGZL2CNO: TCGZL2CNO
  Left = 529
  Top = 232
  Width = 939
  Height = 694
  Caption = 'CGZL2CNO'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 65
    Align = alTop
    TabOrder = 0
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
      OnClick = BD1Click
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 65
    Width = 931
    Height = 65
    Align = alTop
    TabOrder = 1
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
  end
  object PC1: TPageControl
    Left = 0
    Top = 130
    Width = 931
    Height = 533
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
        Top = 41
        Width = 923
        Height = 461
        Align = alClient
        DataSource = DSQWHS
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
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STNO'
            Footers = <>
            Width = 90
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
        Width = 923
        Height = 41
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
          Left = 489
          Top = 12
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
          Left = 3
          Top = 10
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'STNO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 168
          Top = 10
          Width = 84
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
          Left = 604
          Top = 3
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
          Left = 394
          Top = 7
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
          Left = 515
          Top = 7
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
          Left = 341
          Top = 12
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
        object STNOEdit: TEdit
          Left = 93
          Top = 7
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
          Left = 253
          Top = 7
          Width = 79
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
          Left = 693
          Top = 11
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
        Width = 923
        Height = 502
        Align = alClient
        TabOrder = 0
        object Panel8: TPanel
          Left = 1
          Top = 1
          Width = 921
          Height = 500
          Align = alClient
          TabOrder = 0
          object LeftPanel: TPanel
            Left = 1
            Top = 1
            Width = 919
            Height = 498
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Panel5: TPanel
              Left = 1
              Top = 1
              Width = 128
              Height = 496
              Align = alLeft
              TabOrder = 0
              object DBGridEh2: TDBGridEh
                Left = 1
                Top = 1
                Width = 126
                Height = 494
                Align = alClient
                DataSource = DSQWHS
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
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'STNO'
                    Footers = <>
                    Width = 109
                  end>
              end
            end
            object Panel6: TPanel
              Left = 129
              Top = 1
              Width = 789
              Height = 496
              Align = alClient
              TabOrder = 1
              object Splitter1: TSplitter
                Left = 1
                Top = 233
                Width = 787
                Height = 8
                Cursor = crVSplit
                Align = alTop
              end
              object Panel4: TPanel
                Left = 1
                Top = 1
                Width = 787
                Height = 40
                Align = alTop
                TabOrder = 0
                object Label11: TLabel
                  Left = 0
                  Top = 11
                  Width = 78
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'STNO:'
                end
                object Label2: TLabel
                  Left = 208
                  Top = 11
                  Width = 86
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'CGDate:'
                end
                object Label3: TLabel
                  Left = 424
                  Top = 11
                  Width = 86
                  Height = 16
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'YN:'
                end
                object DBEdit5: TDBEdit
                  Left = 80
                  Top = 8
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  Color = 14803425
                  DataField = 'STNO'
                  DataSource = DSQWHS
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdit1: TDBEdit
                  Left = 296
                  Top = 8
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  Color = 14803425
                  DataField = 'CGDate'
                  DataSource = DSQWHSS
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdit2: TDBEdit
                  Left = 512
                  Top = 8
                  Width = 121
                  Height = 24
                  CharCase = ecUpperCase
                  Color = 14803425
                  DataField = 'YN'
                  DataSource = DSQWHS
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object DBGridEh1: TDBGridEh
                Left = 1
                Top = 41
                Width = 787
                Height = 192
                Align = alTop
                DataSource = DSQWHSS
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
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                OnDrawColumnCell = DBGridEh1DrawColumnCell
                OnEditButtonClick = DBGridEh1EditButtonClick
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'CGNO'
                    Footers = <>
                    ReadOnly = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'zsywjc'
                    Footers = <>
                    ReadOnly = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CGDate'
                    Footers = <>
                    ReadOnly = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UserID'
                    Footers = <>
                    ReadOnly = True
                  end
                  item
                    EditButtons = <>
                    FieldName = 'UserDate'
                    Footers = <>
                    ReadOnly = True
                    Width = 82
                  end>
              end
              object DBGridEh5: TDBGridEh
                Left = 1
                Top = 241
                Width = 787
                Height = 254
                Align = alClient
                DataSource = DSQWHS2
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
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -15
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    EditButtons = <>
                    FieldName = 'ZLBH'
                    Footers = <>
                    ReadOnly = True
                    Width = 81
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CLBH'
                    Footers = <>
                    ReadOnly = True
                    Width = 84
                  end
                  item
                    EditButtons = <>
                    FieldName = 'XXCC'
                    Footers = <>
                    ReadOnly = True
                    Width = 57
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ywpm'
                    Footers = <>
                    ReadOnly = True
                    Width = 302
                  end
                  item
                    EditButtons = <>
                    FieldName = 'dwbh'
                    Footers = <>
                    ReadOnly = True
                    Width = 40
                  end
                  item
                    EditButtons = <>
                    FieldName = 'CQDH'
                    Footers = <>
                    ReadOnly = True
                  end
                  item
                    DisplayFormat = '#0.00'
                    EditButtons = <>
                    FieldName = 'Qty'
                    Footers = <>
                  end
                  item
                    EditButtons = <>
                    FieldName = 'VNPrice'
                    Footers = <>
                    ReadOnly = True
                    Width = 69
                  end
                  item
                    EditButtons = <>
                    FieldName = 'USPrice'
                    Footers = <>
                    ReadOnly = True
                    Width = 61
                  end
                  item
                    EditButtons = <>
                    FieldName = 'YQDate'
                    Footers = <>
                    ReadOnly = True
                    Width = 74
                  end
                  item
                    EditButtons = <>
                    FieldName = 'ETADate'
                    Footers = <>
                    ReadOnly = True
                    Width = 79
                  end>
              end
            end
          end
        end
      end
    end
  end
  object qryQWHS: TQuery
    AfterOpen = qryQWHSAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select  * from BY_QWHS')
    UpdateObject = UpQWHS
    Left = 168
    Top = 252
    object qryQWHSSTNO: TStringField
      FieldName = 'STNO'
      Origin = 'DB.BY_QWHS.STNO'
      FixedChar = True
      Size = 11
    end
    object qryQWHSGSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.BY_QWHS.GSBH'
      FixedChar = True
      Size = 4
    end
    object qryQWHSMemo: TStringField
      FieldName = 'Memo'
      Origin = 'DB.BY_QWHS.Memo'
      FixedChar = True
    end
    object qryQWHSUserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.BY_QWHS.UserID'
      FixedChar = True
      Size = 15
    end
    object qryQWHSUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.BY_QWHS.UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryQWHSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.BY_QWHS.YN'
      FixedChar = True
      Size = 1
    end
  end
  object DSQWHS: TDataSource
    DataSet = qryQWHS
    Left = 168
    Top = 284
  end
  object UpQWHS: TUpdateSQL
    ModifySQL.Strings = (
      'Update BY_QWHS'
      'Set'
      '  Memo=:Memo,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where STNO=:OLD_STNO')
    InsertSQL.Strings = (
      'Insert into BY_QWHS'
      '    (STNO, GSBH, Memo, UserID, UserDate, YN)'
      'values'
      '    (:STNO, :GSBH, :Memo, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete '
      'from BY_QWHS'
      'where STNO=:OLD_STNO')
    Left = 168
    Top = 316
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'Select * from KCZKP')
    Left = 131
    Top = 252
  end
  object qryQWHSS: TQuery
    AfterOpen = qryQWHSSAfterOpen
    DatabaseName = 'DB'
    DataSource = DSQWHS
    SQL.Strings = (
      'Select  BY_QWHSS.*,ZSZL.zsywjc,CGZL.CGDate'
      'from BY_QWHSS'
      'left join CGZL on BY_QWHSS.CGNO=CGZL.CGNO'
      'left join ZSZL on ZSZL.ZSDH=CGZL.ZSBH'
      'where BY_QWHSS.STNO=:STNO')
    UpdateObject = UpQWHSS
    Left = 208
    Top = 252
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'STNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object qryQWHSSSTNO: TStringField
      FieldName = 'STNO'
      FixedChar = True
      Size = 11
    end
    object qryQWHSSCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object qryQWHSSzsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qryQWHSSCGDate: TDateTimeField
      FieldName = 'CGDate'
    end
    object qryQWHSSUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object qryQWHSSUserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryQWHSSYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DSQWHSS: TDataSource
    DataSet = qryQWHSS
    Left = 208
    Top = 284
  end
  object UpQWHSS: TUpdateSQL
    ModifySQL.Strings = (
      'update BY_QWHSS'
      'Set'
      '  CGNO =:CGNO,'
      '  UserID=:UserID,'
      '  UserDate=:UserDate'
      'where'
      '  STNO =:OLD_STNO'
      '  and CGNO =:OLD_CGNO'
      '')
    InsertSQL.Strings = (
      'Insert into BY_QWHSS'
      '   (STNO, CGNO , UserID, UserDate, YN)'
      'values'
      '   (:STNO, :CGNO, :UserID, :UserDate, :YN)')
    DeleteSQL.Strings = (
      'Delete from BY_QWHSS'
      'where'
      '  STNO =:OLD_STNO'
      '  and CGNO =:OLD_CGNO')
    Left = 208
    Top = 316
  end
  object qryQWHS2: TQuery
    AfterOpen = qryQWHSSAfterOpen
    DatabaseName = 'DB'
    DataSource = DSQWHSS
    SQL.Strings = (
      
        'Select  BY_QWHS2.*,ZSZL.zsywjc,CLZL.ywpm,CLZL.dwbh,CGZLSS.Qty,CL' +
        'ZL.CQDH,CGZLS.VNPrice,CGZLS.USPrice,CGZLS.YQDate,CGZLS.CFMDate  ' +
        'as ETADate'
      'from BY_QWHS2'
      
        'Left join CGZLS with (nolock)  on CGZLS.CGNO=BY_QWHS2.CGNO and C' +
        'GZLS.CLBH=BY_QWHS2.CLBH'
      
        'Left join CGZLSS with (nolock)  on CGZLSS.CGNO=BY_QWHS2.CGNO and' +
        ' CGZLSS.CLBH=BY_QWHS2.CLBH and CGZLSS.ZLBH=BY_QWHS2.ZLBH and CGZ' +
        'LSS.XXCC=BY_QWHS2.XXCC and CGZLSS.Stage=BY_QWHS2.Stage'
      'left join CGZL with (nolock)  on BY_QWHS2.CGNO=CGZL.CGNO'
      'left join CLZL with (nolock)  on CLZL.CLDH=BY_QWHS2.CLBH'
      'left join ZSZL with (nolock)  on ZSZL.ZSDH=CGZL.ZSBH'
      'where BY_QWHS2.STNO=:STNO  and BY_QWHS2.CGNO=:CGNO')
    Left = 256
    Top = 252
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'STNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end>
    object qryQWHS2STNO: TStringField
      FieldName = 'STNO'
      FixedChar = True
      Size = 11
    end
    object qryQWHS2CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object qryQWHS2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object qryQWHS2ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
    end
    object qryQWHS2XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object qryQWHS2Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 5
    end
    object qryQWHS2zsywjc: TStringField
      FieldName = 'zsywjc'
      FixedChar = True
    end
    object qryQWHS2ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object qryQWHS2dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object qryQWHS2CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object qryQWHS2Qty: TCurrencyField
      FieldName = 'Qty'
    end
    object qryQWHS2VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '#,##0.00'
    end
    object qryQWHS2USPrice: TFloatField
      FieldName = 'USPrice'
      DisplayFormat = '#0.00'
    end
    object qryQWHS2YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryQWHS2ETADate: TDateTimeField
      FieldName = 'ETADate'
    end
    object qryQWHS2UserDate: TDateTimeField
      FieldName = 'UserDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object qryQWHS2UserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object qryQWHS2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object DSQWHS2: TDataSource
    DataSet = qryQWHS2
    Left = 256
    Top = 284
  end
end

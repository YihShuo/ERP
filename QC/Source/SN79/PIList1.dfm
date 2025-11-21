object PIList: TPIList
  Left = 238
  Top = 317
  Width = 1555
  Height = 675
  Caption = 'PIList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 130
    Width = 1539
    Height = 48
    Align = alTop
    TabOrder = 0
    Visible = False
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 12
      Height = 16
      Caption = 'PI'
    end
    object ED_PI: TEdit
      Left = 41
      Top = 12
      Width = 80
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 160
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 235
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1539
    Height = 65
    Align = alTop
    TabOrder = 1
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
      TabOrder = 6
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
      TabOrder = 5
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
      TabOrder = 4
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
      TabOrder = 2
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
      TabOrder = 1
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
      TabOrder = 0
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
    object BB8: TBitBtn
      Left = 376
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Import'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BB8Click
      Glyph.Data = {
        36050000424D360500000000000036040000280000000E000000100000000100
        08000000000000010000120B0000120B00000001000000000000FFFFFF000000
        00002B2B2B00B5B5B500D2D2D2009D9D9D0007070700808080009B9B9B008989
        8900BEBEBE006A6A6A007A7A7A00CFCFCF007979790090909000D4D4D4003939
        39003A3A3A0010101000B6B6B6003E3E3E0025252500DADADA00C0C0C000E4E4
        E40096969600ACACAC0078787800C2C2C200EAEAEA007B7B7B00C8C8C8009C9C
        9C00D7D7D700929292005050500076767600EDEDED00D9D9D900E6E6E6008686
        8600FEFEFE00E1E1E1003535350097979700A9A9A90036363600C7C7C7006F6F
        6F006464640051515100191919007777770041414100FAFAFA00FBFBFB00F8F8
        F800949494006565650000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000101010101
        01010101000000000000011D373838383838393A3B0000000000011E00000000
        0000000D360000000000011E0000303132323233343235000000011E002B2C2D
        2E2E2E2E2E2E092F0000011E000529000000000000002A010000011E001A0F00
        26272800000000010000011E001A0F0023242500000000010000011E001A0F00
        20212121212200010000011E001A0F001B1F1F1F1F1D000100000104001A0F00
        1B1C1C1C1C1D00010000140115160F001718181818190001000000000D0E0F00
        00000000101112130000000000080900000000000A0B010C0000000000000203
        0404040405060700000000000000000101010101010000000000}
      Layout = blGlyphTop
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 178
    Width = 1539
    Height = 458
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    OnChange = PC1Change
    object TabSheet1: TTabSheet
      Caption = 'PI'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1531
        Height = 427
        Align = alClient
        DataSource = DS1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PI'
            Footers = <>
            Width = 50
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'OpenDate'
            Footers = <>
            Title.Caption = 'Open Date'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'IssueDescription'
            Footers = <>
            Title.Caption = 'Issue Description'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'IssueCategory'
            Footers = <>
            Title.Caption = 'Issue Category'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ClaimedUnits'
            Footers = <>
            Title.Caption = 'Claimed Units'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'PO_Qty'
            Footers = <>
            Title.Caption = 'PO Qty'
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'GAC'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'SAP_PO'
            Footers = <>
            Title.Caption = 'SAP PO'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'Material'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'PO_ShortText'
            Footers = <>
            Title.Caption = 'PO Short Text'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'Responsibility'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'ClaimIssueDate'
            Footers = <>
            Title.Caption = 'Claim Issue Date'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = 'RY'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ClaimAmount'
            Footers = <>
            Title.Caption = 'Claim Amount'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CloseDate'
            Footers = <>
            Title.Caption = 'Close Date'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'ProductionLine'
            Footers = <>
            Title.Caption = 'Production Line'
            Width = 110
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Width = 70
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Width = 100
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Solution'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1531
        Height = 427
        Align = alClient
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Category'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'Solution'
            Footers = <>
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'ClaimAmount'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Claim Amount'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Width = 70
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Width = 100
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1539
    Height = 65
    Align = alTop
    TabOrder = 3
    Visible = False
    object BD2: TBitBtn
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
      TabOrder = 5
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
      TabOrder = 4
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
      TabOrder = 2
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
      TabOrder = 1
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
      TabOrder = 0
      OnClick = BD7Click
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
  end
  object DS1: TDataSource
    DataSet = QPI
    Left = 24
    Top = 264
  end
  object QPI: TQuery
    AfterOpen = QPIAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT * FROM PI_List'
      'where 1=0')
    UpdateObject = UP_PI
    Left = 24
    Top = 296
    object QPIPI: TStringField
      FieldName = 'PI'
      Origin = 'LIY_ERP.QC_PIList.PI'
      FixedChar = True
      Size = 5
    end
    object QPIGSBH: TStringField
      FieldName = 'GSBH'
      Size = 5
    end
    object QPIOpenDate: TDateTimeField
      FieldName = 'OpenDate'
      Origin = 'LIY_ERP.QC_PIList.OpenDate'
    end
    object QPIIssueDescription: TStringField
      FieldName = 'IssueDescription'
      Origin = 'LIY_ERP.QC_PIList.IssueDescription'
      FixedChar = True
      Size = 50
    end
    object QPIIssueCategory: TStringField
      FieldName = 'IssueCategory'
      Origin = 'LIY_ERP.QC_PIList.IssueCategory'
      FixedChar = True
    end
    object QPIClaimedUnits: TIntegerField
      FieldName = 'ClaimedUnits'
      Origin = 'LIY_ERP.QC_PIList.ClaimedUnits'
    end
    object QPIPO_Qty: TIntegerField
      FieldName = 'PO_Qty'
      Origin = 'LIY_ERP.QC_PIList.PO_Qty'
    end
    object QPIGAC: TDateTimeField
      FieldName = 'GAC'
      Origin = 'LIY_ERP.QC_PIList.GAC'
    end
    object QPISAP_PO: TStringField
      FieldName = 'SAP_PO'
      Origin = 'LIY_ERP.QC_PIList.SAP_PO'
      FixedChar = True
      Size = 15
    end
    object QPIMaterial: TStringField
      FieldName = 'Material'
      Origin = 'LIY_ERP.QC_PIList.Material'
      FixedChar = True
    end
    object QPIPO_ShortText: TStringField
      FieldName = 'PO_ShortText'
      Origin = 'LIY_ERP.QC_PIList.PO_ShortText'
      FixedChar = True
      Size = 50
    end
    object QPIResponsibility: TStringField
      FieldName = 'Responsibility'
      Origin = 'LIY_ERP.QC_PIList.Responsibility'
      FixedChar = True
      Size = 50
    end
    object QPIClaimIssueDate: TDateTimeField
      FieldName = 'ClaimIssueDate'
      Origin = 'LIY_ERP.PI_List.ClaimIssueDate'
    end
    object QPIDDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'LIY_ERP.PI_List.DDBH'
      FixedChar = True
      Size = 15
    end
    object QPICountry: TStringField
      FieldName = 'Country'
      Origin = 'LIY_ERP.PI_List.Country'
      FixedChar = True
    end
    object QPICloseDate: TDateTimeField
      FieldName = 'CloseDate'
      Origin = 'LIY_ERP.PI_List.CloseDate'
    end
    object QPIProductionLine: TStringField
      FieldName = 'ProductionLine'
      Origin = 'LIY_ERP.PI_List.ProductionLine'
      FixedChar = True
    end
    object QPIClaimAmount: TFloatField
      FieldName = 'ClaimAmount'
    end
    object QPIUserID: TStringField
      FieldName = 'UserID'
      Origin = 'LIY_ERP.QC_PIList.UserID'
      FixedChar = True
      Size = 10
    end
    object QPIUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'LIY_ERP.QC_PIList.UserDate'
    end
    object QPIYN: TStringField
      FieldName = 'YN'
      Origin = 'LIY_ERP.QC_PIList.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UP_PI: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  PI_List'
      'SET'
      '  PI = :PI,'
      '  OpenDate = :OpenDate,'
      '  IssueDescription = :IssueDescription,'
      '  IssueCategory = :IssueCategory,'
      '  ClaimedUnits = :ClaimedUnits,'
      '  PO_Qty = :PO_Qty,'
      '  GAC = :GAC,'
      '  SAP_PO = :SAP_PO,'
      '  Material = :Material,'
      '  PO_ShortText = :PO_ShortText,'
      '  Responsibility = :Responsibility,'
      '  ClaimIssueDate = :ClaimIssueDate,'
      '  DDBH = :DDBH,'
      '  Country = :Country,'
      '  CloseDate = :CloseDate,'
      '  ProductionLine = :ProductionLine,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  PI = :OLD_PI AND'
      '  GSBH = :OLD_GSBH')
    InsertSQL.Strings = (
      'INSERT INTO PI_List'
      
        '  (PI, GSBH, OpenDate, IssueDescription, IssueCategory, ClaimedU' +
        'nits, PO_Qty, GAC, SAP_PO, Material, PO_ShortText, Responsibilit' +
        'y, ClaimIssueDate, DDBH, Country, CloseDate, ProductionLine, Use' +
        'rID, UserDate, YN)'
      'VALUES'
      
        '  (:PI, :GSBH, :OpenDate, :IssueDescription, :IssueCategory, :Cl' +
        'aimedUnits, :PO_Qty, :GAC, :SAP_PO, :Material, :PO_ShortText, :R' +
        'esponsibility, :ClaimIssueDate, :DDBH, :Country, :CloseDate, :Pr' +
        'oductionLine, :UserID, GetDate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM PI_List'
      'WHERE '
      '  PI = :OLD_PI AND'
      '  GSBH = :OLD_GSBH')
    Left = 24
    Top = 328
  end
  object OpenDialog1: TOpenDialog
    Left = 88
    Top = 264
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 88
    Top = 296
  end
  object UP_PIS: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  PI_ListS'
      'SET'
      '  Category = :Category,'
      '  Solution = :Solution,'
      '  ClaimAmount = :ClaimAmount,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE'
      '  PI = :OLD_PI AND'
      '  GSBH = :OLD_GSBH AND'
      '  Category = :OLD_Category')
    InsertSQL.Strings = (
      'INSERT INTO PI_ListS'
      
        '  (PI, GSBH, Category, Solution, ClaimAmount, UserID, UserDate, ' +
        'YN)'
      'VALUES'
      
        '  (:PI, :GSBH, :Category, :Solution, :ClaimAmount, :UserID, GetD' +
        'ate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM PI_ListS'
      'WHERE '
      '  PI = :OLD_PI AND'
      '  GSBH = :OLD_GSBH AND'
      '  Category = :OLD_Category')
    Left = 56
    Top = 328
  end
  object QPIS: TQuery
    AfterOpen = QPISAfterOpen
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT PI, GSBH, Category, Solution, ClaimAmount, UserID, UserDa' +
        'te, YN FROM PI_ListS'
      'WHERE PI = :PI AND GSBH = :GSBH'
      'ORDER BY Category')
    UpdateObject = UP_PIS
    Left = 56
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldName = 'PI'
      Origin = 'LIY_ERP.QC_PIList.PI'
      FixedChar = True
      Size = 5
    end
    object QPISGSBH: TStringField
      FieldName = 'GSBH'
      Size = 5
    end
    object QPISCategory: TStringField
      FieldName = 'Category'
    end
    object QPISSolution: TStringField
      FieldName = 'Solution'
      Size = 100
    end
    object FloatField1: TFloatField
      FieldName = 'ClaimAmount'
    end
    object QPISUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object QPISUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QPISYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = QPIS
    Left = 56
    Top = 264
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 88
    Top = 328
  end
end

object StockOut_BC: TStockOut_BC
  Left = 151
  Top = 210
  Width = 1675
  Height = 627
  Caption = 'StockOut_BC'
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1667
    Height = 65
    Align = alTop
    TabOrder = 0
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
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Export'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BB8Click
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
      Left = 432
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
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
    Top = 189
    Width = 1667
    Height = 407
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PC1Change
    OnChanging = PC1Changing
    object TabSheet1: TTabSheet
      Caption = 'Master'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1659
        Height = 376
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
        OnDblClick = DBGridEh1DblClick
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'LLNO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#24235#21934#34399'|List No'
            Width = 120
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'B'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'B'#21697#25976#37327'|Grade B'
            Width = 60
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'C'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'C'#21697#25976#37327'|Grade C'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Purpose'
            Footers = <>
            PickList.Strings = (
              'Sale'
              'Scrap')
            ReadOnly = True
            Title.Caption = #29992#36884'|Purpose'
          end
          item
            EditButtons = <>
            FieldName = 'ZLBH'
            Footers = <>
            Title.Caption = 'B'#21697#35330#21934#32232#34399'|B-Grade Order'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20351#29992#32773'|User ID'
            Width = 80
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #30064#21205#26085#26399'|User Date'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            ReadOnly = True
            Title.Caption = #29376#24907'|Status'
            Width = 100
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #30906#35469#20986#24235#26085'|CFMDate'
            Width = 100
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Detail'
      ImageIndex = 1
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 1659
        Height = 376
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
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'LLNO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = #20986#24235#21934#34399'|List No'
            Width = 120
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Grade'
            Footers = <>
            Title.Caption = #31561#32026'|Grade'
            Width = 50
            OnEditButtonClick = DBGridEh2Columns1EditButtonClick
            OnUpdateData = DBGridEh2Columns1UpdateData
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = #35330#21934#32232#34399'|Order'
            Width = 80
            OnEditButtonClick = DBGridEh2Columns2EditButtonClick
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22411#39636'|SKU'
            Width = 80
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38795#21517'|Shoe Name'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = #38991#33394'|Color'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            ReadOnly = True
            Title.Caption = #23395#24230'|Season'
            Width = 55
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'DDMH'
            Footers = <>
            ReadOnly = True
            Title.Caption = #22823#24213'|Outsole'
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Size'
            Footers = <>
            KeyList.Strings = (
              'N/A'
              '01.0'
              '01.5'
              '02.0'
              '02.5'
              '03.0'
              '03.5'
              '04.0'
              '04.5'
              '05.0'
              '05.5'
              '06.0'
              '06.5'
              '07.0'
              '07.5'
              '08.0'
              '08.5'
              '09.0'
              '09.5'
              '10.0'
              '10.5'
              '11.0'
              '11.5'
              '12.0'
              '12.5'
              '13.0'
              '13.5'
              '14.0'
              '14.5'
              '15.0'
              '15.5'
              '16.0'
              '16.5'
              '17.0')
            NotInKeyListIndex = 0
            PickList.Strings = (
              'N/A'
              '01.0'
              '01.5'
              '02.0'
              '02.5'
              '03.0'
              '03.5'
              '04.0'
              '04.5'
              '05.0'
              '05.5'
              '06.0'
              '06.5'
              '07.0'
              '07.5'
              '08.0'
              '08.5'
              '09.0'
              '09.5'
              '10.0'
              '10.5'
              '11.0'
              '11.5'
              '12.0'
              '12.5'
              '13.0'
              '13.5'
              '14.0'
              '14.5'
              '15.0'
              '15.5'
              '16.0'
              '16.5'
              '17.0')
            Title.Caption = #23610#30908'|Size'
            Width = 50
          end
          item
            DisplayFormat = '#0.0'
            EditButtons = <>
            FieldName = 'Qty'
            Footer.DisplayFormat = '#0.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = #38617#25976'|Qty'
            Width = 70
            OnUpdateData = DBGridEh2Columns13UpdateData
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = #20351#29992#32773'|UserID'
            Width = 70
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = #30064#21205#26085#26399'|User Date'
            Width = 100
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1667
    Height = 65
    Align = alTop
    TabOrder = 2
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
    object BD8: TBitBtn
      Left = 368
      Top = 8
      Width = 49
      Height = 49
      Caption = 'Export'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = BD8Click
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
    object BitBtn1: TBitBtn
      Left = 432
      Top = 8
      Width = 49
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Excel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 536
      Top = 8
      Width = 105
      Height = 49
      Hint = 'Modify Current'
      Caption = 'Grade B -> C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn2Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000000000000FFFFFF00EBEB
        EB004848480007070700101010006C6C6C00FBFBFB003E3E3E007D7D7D00F4F4
        F400E6E6E6004343430084848400DCDCDC00B2B2B200EAEAEA00ECECEC001111
        1100FAFAFA00D9D9D9001E1E1E004B4B4B00121212007F7F7F00F0F0F0000D0D
        0D00F8F8F800D0D0D00023232300E7E7E7002C2C2C008F8F8F002D2D2D00FEFE
        FE004A4A4A0060606000EEEEEE003131310094949400AFAFAF00828282000505
        050058585800C7C7C7000606060000000000DFDFDF009C9C9C00353535000202
        0200A0A0A000CECECE00141414009D9D9D00E8E8E800E4E4E40019191900DDDD
        DD00EDEDED00F3F3F3003D3D3D00A6A6A6005B5B5B0049494900F5F5F500EFEF
        EF000C0C0C0044444400D1D1D10009090900E5E5E500DADADA00464646007B7B
        7B007E7E7E00414141003838380052525200040404006E6E6E0015151500FDFD
        FD0057575700A7A7A70054545400000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000005433
        000003400000000041420000512B522953003C3D000000000C3E00364C1E4D4E
        4F0033503536371F3839004849214A4B1200002B032D2D162E0000453B00463A
        00000022232447252600002100000000000018421A0000441C00000000000000
        000010111200001314000340000000004142000708090A430C003C3D00000000
        0C3E00013F030405060033343536371F3839000000003A3B0000002B2C2D2D16
        2E0000002F3031320000002223241325260000002728292A000018191A00001B
        1C0000001D1E1F20210010111200001314000B15161700000000000708090A0B
        0C000D0E0F000000000000010203040506000000000000000000}
      Layout = blGlyphTop
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 130
    Width = 1667
    Height = 59
    Align = alTop
    TabOrder = 3
    Visible = False
    object Label3: TLabel
      Left = 18
      Top = 8
      Width = 41
      Height = 16
      Caption = 'List No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 22
      Top = 35
      Width = 37
      Height = 16
      Caption = 'Status'
    end
    object Label1: TLabel
      Left = 194
      Top = 8
      Width = 51
      Height = 16
      Caption = 'Purpose'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 344
      Top = 9
      Width = 61
      Height = 16
      Caption = 'User Date'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 504
      Top = 12
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 506
      Top = 34
      Width = 55
      Height = 16
      Caption = 'Order No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 674
      Top = 32
      Width = 27
      Height = 16
      Caption = 'SKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 808
      Top = 18
      Width = 75
      Height = 29
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ED_LLNO: TEdit
      Left = 63
      Top = 4
      Width = 106
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GB1: TGroupBox
      Left = 63
      Top = 24
      Width = 430
      Height = 31
      TabOrder = 2
      object CB1: TCheckBox
        Left = 8
        Top = 11
        Width = 105
        Height = 17
        Caption = 'Not Submitted'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CB2: TCheckBox
        Left = 128
        Top = 11
        Width = 105
        Height = 17
        Caption = 'Under Review'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 1
      end
      object CB3: TCheckBox
        Left = 248
        Top = 11
        Width = 81
        Height = 17
        Caption = 'Stock-Out'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 54528
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 2
      end
      object CB4: TCheckBox
        Left = 344
        Top = 11
        Width = 84
        Height = 17
        Caption = 'Cancelled'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clFuchsia
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        State = cbChecked
        TabOrder = 3
      end
    end
    object CBox1: TComboBox
      Left = 250
      Top = 4
      Width = 71
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL'
        'Sale'
        'Scrap')
    end
    object DTP1: TDateTimePicker
      Left = 408
      Top = 4
      Width = 94
      Height = 24
      Date = 44908.454956006940000000
      Format = 'yyyy/MM/dd'
      Time = 44908.454956006940000000
      TabOrder = 4
    end
    object DTP2: TDateTimePicker
      Left = 518
      Top = 4
      Width = 97
      Height = 24
      Date = 44908.454956006940000000
      Format = 'yyyy/MM/dd'
      Time = 44908.454956006940000000
      TabOrder = 5
    end
    object EdOrder_No: TEdit
      Left = 567
      Top = 30
      Width = 98
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object EdSKU: TEdit
      Left = 704
      Top = 28
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
  end
  object DS1: TDataSource
    DataSet = QKCLL
    Left = 24
    Top = 296
  end
  object QKCLL: TQuery
    AfterOpen = QKCLLAfterOpen
    OnNewRecord = QKCLLNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT RKNO, flowflag, UserID, UserDate, YN,'
      'CASE WHEN flowflag IS NULL THEN '#39'Not Submitted'#39' ELSE '
      
        'CASE WHEN flowflag <> '#39#39' AND flowflag <> '#39'X'#39' THEN '#39'Under Review'#39 +
        ' ELSE'
      'CASE WHEN flowflag = '#39'Z'#39' THEN '#39'In Stock'#39' ELSE'
      
        'CASE WHEN flowflag = '#39'X'#39' THEN '#39'Cancelled'#39' END END END END AS Sta' +
        'tus FROM KCRK_BC')
    UpdateObject = UP_KCLL
    Left = 24
    Top = 328
    object QKCLLLLNO: TStringField
      FieldName = 'LLNO'
      Size = 15
    end
    object QKCLLB: TFloatField
      FieldName = 'B'
    end
    object QKCLLC: TFloatField
      FieldName = 'C'
    end
    object QKCLLPurpose: TStringField
      FieldName = 'Purpose'
      Size = 10
    end
    object QKCLLStatus: TStringField
      FieldName = 'Status'
    end
    object QKCLLUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object QKCLLUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QKCLLYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QKCLLZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 10
    end
    object QKCLLCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object QKCLLGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
    object QKCLLflowflag: TStringField
      FieldName = 'flowflag'
      FixedChar = True
      Size = 1
    end
  end
  object UP_KCLL: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  KCLL_BC'
      'SET'
      '  Purpose = :Purpose,'
      '  ZLBH = :ZLBH,'
      '  UserID = :UserID,'
      '  UserDate = GetDate(),'
      '  flowflag = :flowflag'
      'WHERE '
      '  LLNO = :OLD_LLNO')
    InsertSQL.Strings = (
      'INSERT INTO KCLL_BC'
      '  (LLNO, Purpose, GSBH, ZLBH, flowflag, UserID, UserDate, YN)'
      'VALUES'
      '  (:LLNO, :Purpose, :GSBH, :ZLBH, NULL, :UserID, GetDate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM KCLL_BC'
      'WHERE'
      '  LLNO = :OLD_LLNO')
    Left = 24
    Top = 360
  end
  object QKCLLS: TQuery
    OnNewRecord = QKCLLSNewRecord
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT KCLLS_BC.LLNO, KCLLS_BC.Grade, KCLLS_BC.DDBH, DDZL.ARTICL' +
        'E, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, '
      
        'KCLLS_BC.Size, KCLLS_BC.Qty, KCLLS_BC.UserID, KCLLS_BC.UserDate,' +
        ' KCLLS_BC.YN FROM KCLLS_BC'
      'LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      'WHERE KCLLS_BC.LLNO = :LLNO'
      'ORDER BY KCLLS_BC.DDBH, KCLLS_BC.Size')
    UpdateObject = UP_KCLLS
    Left = 57
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LLNO'
        ParamType = ptUnknown
      end>
    object QKCLLSLLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 15
    end
    object QKCLLSGrade: TStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 1
    end
    object QKCLLSDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object QKCLLSArticle: TStringField
      FieldName = 'Article'
    end
    object QKCLLSXieMing: TStringField
      FieldName = 'XieMing'
      Size = 50
    end
    object QKCLLSYSSM: TStringField
      FieldName = 'YSSM'
      Size = 50
    end
    object QKCLLSJiJie: TStringField
      FieldName = 'JiJie'
    end
    object QKCLLSDDMH: TStringField
      FieldName = 'DDMH'
      Size = 30
    end
    object QKCLLSSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object QKCLLSQty: TFloatField
      FieldName = 'Qty'
    end
    object QKCLLSUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object QKCLLSUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QKCLLSYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object DS2: TDataSource
    DataSet = QKCLLS
    Left = 57
    Top = 296
  end
  object UP_KCLLS: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  KCLLS_BC'
      'SET'
      '  Grade = :Grade,'
      '  DDBH = :DDBH,'
      '  Size = :Size,'
      '  Qty = :Qty,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE '
      '  LLNO = :OLD_LLNO AND'
      '  Grade = :OLD_Grade AND'
      '  DDBH = :OLD_DDBH AND'
      '  Size = :OLD_Size')
    InsertSQL.Strings = (
      'INSERT INTO KCLLS_BC'
      '  (LLNO, Grade, DDBH, Size, Qty, UserID, UserDate, YN)'
      'VALUES'
      '  (:LLNO, :Grade, :DDBH, :Size, :Qty, :UserID, GetDate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM KCLLS_BC'
      'WHERE'
      '  LLNO = :OLD_LLNO AND'
      '  Grade = :OLD_Grade AND'
      '  DDBH = :OLD_DDBH AND'
      '  Size = :OLD_Size')
    Left = 57
    Top = 360
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 90
    Top = 328
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 90
    Top = 360
  end
end

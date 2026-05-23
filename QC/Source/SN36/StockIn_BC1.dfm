object StockIn_BC: TStockIn_BC
  Left = 364
  Top = 139
  Width = 1537
  Height = 569
  Caption = 'StockIn_BC'
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
    Width = 1521
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
    Top = 193
    Width = 1521
    Height = 337
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 1
    OnChange = PC1Change
    OnChanging = PC1Changing
    object TabSheet1: TTabSheet
      Caption = 'Master'
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1513
        Height = 306
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
            FieldName = 'RKNO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|List No'
            Width = 120
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Building'
            Footers = <>
            Title.Caption = '??|Building'
            Width = 55
            OnEditButtonClick = DBGridEh1Columns1EditButtonClick
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Title.Caption = '??????|Dep ID'
            Width = 80
            OnEditButtonClick = DBGridEh1Columns2EditButtonClick
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??????|Dep Name'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'DepMemo'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??????|Dep Memo'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'B'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'B???|Grade B'
            Width = 60
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'C'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'C???|Grade C'
            Width = 60
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = '???|User ID'
            Width = 80
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|User Date'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Status'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|Status'
            Width = 100
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = '?????|CFM Date'
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
        Width = 1513
        Height = 306
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
            FieldName = 'RKNO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|List No'
            Width = 120
          end
          item
            ButtonStyle = cbsNone
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'Grade'
            Footers = <>
            PickList.Strings = (
              'B'
              'C')
            Title.Caption = '??|Grade'
            Width = 50
            OnUpdateData = DBGridEh2Columns1UpdateData
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
            Title.Caption = '????|Order'
            Width = 80
            OnEditButtonClick = DBGridEh2Columns6EditButtonClick
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'KHPO'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??PO|PO'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Article'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|SKU'
            Width = 80
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'XieMing'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|Shoe Name'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|Color'
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'JiJie'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|Season'
            Width = 55
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'DDMH'
            Footers = <>
            ReadOnly = True
            Title.Caption = '??|Outsole'
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'Size'
            Footers = <>
            KeyList.Strings = (
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
              '17.0'
              '17.5'
              '18.0'
              '18.5'
              '19.0'
              '19.5'
              '20.0'
              '20.5'
              '21.0'
              '21.5'
              '22.0'
              '22.5'
              '23.0'
              '23.5'
              '24.0'
              '24.5'
              '25.0'
              '25.5'
              '26.0'
              '26.5'
              '27.0'
              '27.5'
              '28.0')
            PickList.Strings = (
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
              '17.0'
              '17.5'
              '18.0'
              '18.5'
              '19.0'
              '19.5'
              '20.0'
              '20.5'
              '21.0'
              '21.5'
              '22.0'
              '22.5'
              '23.0'
              '23.5'
              '24.0'
              '24.5'
              '25.0'
              '25.5'
              '26.0'
              '26.5'
              '27.0'
              '27.5'
              '28.0'
              '')
            Title.Caption = '??|Size'
            Width = 50
          end
          item
            DisplayFormat = '#0.0'
            EditButtons = <>
            FieldName = 'Qty'
            Footer.DisplayFormat = '#0.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = '??|Qty'
            Width = 70
            OnUpdateData = DBGridEh2Columns13UpdateData
          end
          item
            ButtonStyle = cbsNone
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'DefectID'
            Footers = <>
            NotInKeyListIndex = 0
            Title.Caption = '??|Defect'
            Width = 175
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CheckDate'
            Footers = <>
            Title.Caption = '????|Check Date'
            Width = 100
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'Carton_No'
            Footers = <>
            Title.Caption = '???|Carton_No'
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            ReadOnly = True
            Title.Caption = '???|UserID'
            Width = 70
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = '????|User Date'
            Width = 100
          end
          item
            Color = clInfoBk
            EditButtons = <>
            FieldName = 'RorL'
            Footers = <>
            PickList.Strings = (
              'L+R'
              'R'
              'L')
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Pending'
      ImageIndex = 2
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 65
        Width = 1513
        Height = 241
        Align = alClient
        DataSource = ds3
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
        OnDblClick = DBGridEh3DblClick
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'DepID'
            Footers = <>
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'DepName'
            Footers = <>
            Width = 122
          end
          item
            EditButtons = <>
            FieldName = 'SCBH'
            Footers = <>
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'GSBH'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'DefectID'
            Footers = <>
            Width = 54
          end
          item
            EditButtons = <>
            FieldName = 'Grade'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Size'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'RorL'
            Footers = <>
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'RemainQty'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'YN'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VNSM'
            Footers = <>
            Width = 300
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1513
        Height = 65
        Align = alTop
        TabOrder = 1
        object lbl1: TLabel
          Left = 8
          Top = 12
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
        object lbl2: TLabel
          Left = 168
          Top = 16
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
        object Label10: TLabel
          Left = 730
          Top = 16
          Width = 29
          Height = 16
          Caption = 'SIZE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 826
          Top = 16
          Width = 20
          Height = 16
          Caption = 'Qty'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 490
          Top = 16
          Width = 45
          Height = 16
          Caption = 'DDBH: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dtp3: TDateTimePicker
          Left = 72
          Top = 8
          Width = 94
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 0
        end
        object dtp4: TDateTimePicker
          Left = 182
          Top = 8
          Width = 97
          Height = 24
          Date = 44908.454956006940000000
          Format = 'yyyy/MM/dd'
          Time = 44908.454956006940000000
          TabOrder = 1
        end
        object btn1: TButton
          Left = 399
          Top = 7
          Width = 75
          Height = 30
          Caption = 'Query'
          TabOrder = 2
          OnClick = btn1Click
        end
        object chk1: TCheckBox
          Left = 288
          Top = 11
          Width = 105
          Height = 17
          Caption = 'Not Submitted'
          Checked = True
          State = cbChecked
          TabOrder = 3
        end
        object btn2: TButton
          Left = 919
          Top = 7
          Width = 75
          Height = 30
          Caption = 'Return'
          TabOrder = 4
          OnClick = btn2Click
        end
        object Edit1: TEdit
          Left = 768
          Top = 12
          Width = 49
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object btn3: TButton
          Left = 999
          Top = 7
          Width = 75
          Height = 30
          Caption = 'Insert'
          TabOrder = 6
          Visible = False
          OnClick = btn3Click
        end
        object Edit2: TEdit
          Left = 856
          Top = 12
          Width = 49
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object ddbh: TEdit
          Left = 536
          Top = 12
          Width = 137
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
        end
      end
    end
    object tsReset: TTabSheet
      Caption = 'tsReset'
      ImageIndex = 3
      TabVisible = False
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1513
        Height = 65
        Align = alTop
        TabOrder = 0
        object BReset: TButton
          Left = 408
          Top = 7
          Width = 74
          Height = 30
          Caption = 'Query'
          TabOrder = 0
          OnClick = BResetClick
        end
        object Button3: TButton
          Left = 679
          Top = 7
          Width = 75
          Height = 30
          Caption = 'Reset'
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 759
          Top = 7
          Width = 75
          Height = 30
          Caption = 'RunAll'
          TabOrder = 2
          OnClick = Button4Click
        end
      end
      object dbgrdh1: TDBGridEh
        Left = 0
        Top = 65
        Width = 417
        Height = 241
        Align = alLeft
        DataSource = ds4
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'Grade'
            Footers = <>
            Width = 31
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <
              item
                ValueType = fvtCount
              end>
          end
          item
            EditButtons = <>
            FieldName = 'Size'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Carton_No'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
          end>
      end
      object dbgrdh2: TDBGridEh
        Left = 417
        Top = 65
        Width = 1096
        Height = 241
        Align = alClient
        DataSource = DataSource1
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        Columns = <
          item
            EditButtons = <>
            FieldName = 'RKNO'
            Footers = <>
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'Grade'
            Footers = <>
            Width = 22
          end
          item
            EditButtons = <>
            FieldName = 'DDBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Size'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'DefectID'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'KCBH'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Carton_No'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <
              item
                ValueType = fvtSum
              end>
          end
          item
            EditButtons = <>
            FieldName = 'RemainQty'
            Footers = <
              item
                ValueType = fvtSum
              end>
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Width = 148
          end>
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1521
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 130
    Width = 1521
    Height = 63
    Align = alTop
    TabOrder = 3
    Visible = False
    object Label3: TLabel
      Left = 27
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
      Left = 310
      Top = 36
      Width = 37
      Height = 16
      Caption = 'Status'
    end
    object Label1: TLabel
      Left = 195
      Top = 8
      Width = 48
      Height = 16
      Caption = 'Building'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 318
      Top = 8
      Width = 42
      Height = 16
      Caption = 'Dep ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 434
      Top = 8
      Width = 66
      Height = 16
      Caption = 'Dep Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 36
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
      Left = 168
      Top = 40
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
    object Label8: TLabel
      Left = 626
      Top = 8
      Width = 52
      Height = 16
      Caption = 'OrderNo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 778
      Top = 8
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
    object GB1: TGroupBox
      Left = 351
      Top = 25
      Width = 420
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
        Width = 65
        Height = 17
        Caption = 'Stock-In'
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
        Left = 333
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
    object Button1: TButton
      Left = 815
      Top = 31
      Width = 75
      Height = 30
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ED_RKNO: TEdit
      Left = 72
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
    object CB_Building: TComboBox
      Left = 247
      Top = 4
      Width = 67
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object ED_DepID: TEdit
      Left = 364
      Top = 4
      Width = 69
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object ED_DepName: TEdit
      Left = 504
      Top = 4
      Width = 118
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object DTP1: TDateTimePicker
      Left = 72
      Top = 32
      Width = 94
      Height = 24
      Date = 44908.454956006940000000
      Format = 'yyyy/MM/dd'
      Time = 44908.454956006940000000
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 182
      Top = 32
      Width = 97
      Height = 24
      Date = 44908.454956006940000000
      Format = 'yyyy/MM/dd'
      Time = 44908.454956006940000000
      TabOrder = 7
    end
    object Ed_OrderNo: TEdit
      Left = 680
      Top = 4
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object EdSKU: TEdit
      Left = 808
      Top = 4
      Width = 89
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
  end
  object DS1: TDataSource
    DataSet = QKCRK
    Left = 120
    Top = 360
  end
  object QKCRK: TQuery
    AfterOpen = QKCRKAfterOpen
    OnNewRecord = QKCRKNewRecord
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT RKNO, ISNULL(SUM(B), 0) AS B, ISNULL(SUM(C), 0) AS C, Bui' +
        'lding, DepID, DepName, DepMemo, CFMDate, UserID, UserDate, YN, S' +
        'tatus, GSBH FROM ('
      
        '  SELECT KCRK_BC.RKNO, KCRK_BC.GSBH, KCRK_BC.Building, KCRK_BC.D' +
        'epID, BDepartment.DepName, BDepartment.DepMemo, KCRK_BC.CFMDate,' +
        ' KCRK_BC.UserID, KCRK_BC.UserDate, KCRK_BC.YN,'
      '  CASE WHEN KCRKS_BC.Grade = '#39'B'#39' THEN Qty END AS B,'
      '  CASE WHEN KCRKS_BC.Grade = '#39'C'#39' THEN Qty END AS C,'
      '  CASE WHEN KCRK_BC.flowflag IS NULL THEN '#39'Not Submitted'#39' ELSE'
      
        '  CASE WHEN KCRK_BC.flowflag NOT IN ('#39#39', '#39'X'#39', '#39'Z'#39') THEN '#39'Under R' +
        'eview'#39' ELSE'
      '  CASE WHEN KCRK_BC.flowflag = '#39'Z'#39' THEN '#39'Stock-In'#39' ELSE'
      
        '  CASE WHEN KCRK_BC.flowflag = '#39'X'#39' THEN '#39'Cancelled'#39' END END END ' +
        'END AS Status FROM KCRK_BC'
      '  LEFT JOIN KCRKS_BC ON KCRKS_BC.RKNO = KCRK_BC.RKNO'
      '  LEFT JOIN BDepartment ON BDepartment.ID = KCRK_BC.DepID'
      '  LEFT JOIN ddzl ON ddzl.DDBH = KCRKS_BC.DDBH'
      
        '  WHERE KCRK_BC.GSBH = '#39'TBA'#39' and isnull(KCRK_BC.flowflag,'#39#39') <> ' +
        #39'X'#39
      
        '  AND CONVERT(VARCHAR, KCRK_BC.UserDate, 111) BETWEEN '#39'2025/11/2' +
        '9'#39' AND '#39'2025/12/02'#39
      ') AS KCRK_BC'
      'WHERE 1 = 1'
      
        'AND (Status = '#39'Not Submitted'#39' OR Status = '#39'Under Review'#39' OR Stat' +
        'us = '#39'Stock-In'#39' OR Status = '#39'Cancelled'#39')'
      
        'GROUP BY RKNO, Building, DepID, DepName, DepMemo, CFMDate, UserI' +
        'D, UserDate, YN, Status, GSBH'
      'ORDER BY RKNO DESC')
    UpdateObject = UP_KCRK
    Left = 120
    Top = 392
    object QKCRKRKNO: TStringField
      DisplayWidth = 15
      FieldName = 'RKNO'
      FixedChar = True
      Size = 15
    end
    object QKCRKB: TFloatField
      FieldName = 'B'
    end
    object QKCRKC: TFloatField
      FieldName = 'C'
    end
    object QKCRKDepID: TStringField
      FieldName = 'DepID'
      Size = 10
    end
    object QKCRKStatus: TStringField
      FieldName = 'Status'
    end
    object QKCRKUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
      Size = 15
    end
    object QKCRKUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QKCRKYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object QKCRKDepName: TStringField
      FieldName = 'DepName'
      Size = 50
    end
    object QKCRKDepMemo: TStringField
      FieldName = 'DepMemo'
      Size = 50
    end
    object QKCRKBuilding: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object QKCRKCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object QKCRKGSBH: TStringField
      FieldName = 'GSBH'
      Size = 4
    end
  end
  object UP_KCRK: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  KCRK_BC'
      'SET'
      '  Building = :Building,'
      '  DepID = :DepID,'
      '  UserID = :UserID,'
      '  UserDate = GetDate()'
      'WHERE '
      '  RKNO = :OLD_RKNO')
    InsertSQL.Strings = (
      'INSERT INTO KCRK_BC'
      
        '  (RKNO, GSBH, Building, DepID, flowflag, UserID, UserDate, CFMD' +
        'ate , YN)'
      'VALUES'
      
        '  (:RKNO, :GSBH, :Building, :DepID, NULL, :UserID, GetDate(), Ge' +
        'tDate(), '#39'1'#39')')
    DeleteSQL.Strings = (
      'DELETE FROM KCRK_BC'
      'WHERE'
      '  RKNO = :OLD_RKNO')
    Left = 120
    Top = 424
  end
  object QKCRKS: TQuery
    OnNewRecord = QKCRKSNewRecord
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT KCRKS_BC.RKNO, KCRKS_BC.Carton_No, KCRKS_BC.Grade, KCRKS_' +
        'BC.DDBH, DDZL.KHPO, DDZL.ARTICLE, '
      
        'XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, KCRKS_BC.Size, K' +
        'CRKS_BC.Qty,'
      
        'KCRKS_BC.DefectID, KCRKS_BC.CheckDate, KCRKS_BC.UserID, KCRKS_BC' +
        '.UserDate, KCRKS_BC.YN '
      ',KCRKS_BC.RemainQty,KCRKS_BC.RorL,KCRKS_BC.KCBH'
      'FROM KCRKS_BC'
      'LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      'WHERE KCRKS_BC.RKNO =:RKNO'
      
        'ORDER BY KCRKS_BC.Grade, DDZL.ARTICLE, KCRKS_BC.Size, KCRKS_BC.D' +
        'efectID')
    UpdateObject = UP_KCRKS
    Left = 153
    Top = 392
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'RKNO'
        ParamType = ptUnknown
        Size = 16
      end>
    object QKCRKSRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 15
    end
    object QKCRKSGrade: TStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 1
    end
    object QKCRKSDDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object QKCRKSArticle: TStringField
      FieldName = 'Article'
    end
    object QKCRKSXieMing: TStringField
      FieldName = 'XieMing'
      Size = 50
    end
    object QKCRKSYSSM: TStringField
      FieldName = 'YSSM'
      Size = 50
    end
    object QKCRKSJiJie: TStringField
      FieldName = 'JiJie'
    end
    object QKCRKSDDMH: TStringField
      FieldName = 'DDMH'
      Size = 30
    end
    object QKCRKSSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object QKCRKSQty: TFloatField
      FieldName = 'Qty'
    end
    object QKCRKSDefectID: TStringField
      FieldName = 'DefectID'
      FixedChar = True
      Size = 4
    end
    object QKCRKSUserID: TStringField
      FieldName = 'UserID'
      Size = 10
    end
    object QKCRKSUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object QKCRKSYN: TStringField
      FieldName = 'YN'
      Size = 1
    end
    object QKCRKSCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object QKCRKSKHPO: TStringField
      FieldName = 'KHPO'
      Size = 30
    end
    object QKCRKSKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 5
    end
    object QKCRKSCarton_No: TIntegerField
      FieldName = 'Carton_No'
    end
    object QKCRKSRemainQty: TFloatField
      FieldName = 'RemainQty'
    end
    object QKCRKSRorL: TStringField
      FieldName = 'RorL'
      FixedChar = True
      Size = 5
    end
  end
  object DS2: TDataSource
    DataSet = QKCRKS
    Left = 153
    Top = 360
  end
  object UP_KCRKS: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRKS_BC'
      'set'
      '  RKNO = :RKNO,'
      '  Carton_No = :Carton_No,'
      '  Grade = :Grade,'
      '  DDBH = :DDBH,'
      '  Size = :Size,'
      '  Qty = :Qty,'
      '  DefectID = :DefectID,'
      '  CheckDate = :CheckDate,'
      '  UserID = :UserID,'
      '  UserDate =  GetDate(),'
      '  YN = :YN,'
      '  RemainQty = :RemainQty,'
      '  RorL = :RorL,'
      '  KCBH = :KCBH'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  Carton_No = :OLD_Carton_No and'
      '  Grade = :OLD_Grade and'
      '  DDBH = :OLD_DDBH and'
      '  Size = :OLD_Size and'
      '  DefectID = :OLD_DefectID and'
      '  KCBH = :OLD_KCBH')
    InsertSQL.Strings = (
      'insert into KCRKS_BC'
      
        '  (RKNO, Carton_No, Grade, DDBH, Size, Qty, DefectID, CheckDate,' +
        ' UserID, '
      '   UserDate, YN, RemainQty, RorL, KCBH)'
      'values'
      
        '  (:RKNO, :Carton_No, :Grade, :DDBH, :Size, :Qty, :DefectID, :Ch' +
        'eckDate, '
      '   :UserID,  GetDate(), :YN, :RemainQty, :RorL, :KCBH)')
    DeleteSQL.Strings = (
      'delete from KCRKS_BC'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  Carton_No = :OLD_Carton_No and'
      '  Grade = :OLD_Grade and'
      '  DDBH = :OLD_DDBH and'
      '  Size = :OLD_Size and'
      '  DefectID = :OLD_DefectID and'
      '  KCBH = :OLD_KCBH')
    Left = 153
    Top = 424
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 82
    Top = 392
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    Left = 82
    Top = 424
  end
  object QryPending: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT qcr.SCBH,'
      '    qcr.DepNO as DepID,'
      '    qcr.GSBH,'
      '     LEFT(qcrd.YYBH,4) as DefectID,right(qcrd.YYBH,1) as Grade'
      
        '    ,BDepartment.DepName, case when charindex('#39'.'#39',qcrd.CC) = 0 t' +
        'hen qcrd.CC+'#39'.0'#39' else qcrd.CC end as Size,'
      
        #9'case when right(qcrd.YYBH,1) = '#39'B'#39' then '#39'L+R'#39' when is_right = 1' +
        ' then '#39'R'#39' else '#39'L'#39' end as RorL'
      
        '    ,case when right(qcrd.YYBH,1) = '#39'C'#39' then (SUM(CONVERT(numeri' +
        'c(18,1),qcrd.Qty))/2) else (SUM(CONVERT(numeric(18,1),qcrd.Qty))' +
        ') end AS Qty'
      #9'--,SUM(qcrd.Qty) AS Qty'
      '    ,SUM(qcrd.Qty)-ISNULL(RK_BC.Qty,0) as RemainQty'
      
        #9'   , case when SUM(qcrd.Qty)-ISNULL(RK_BC.Qty,0)>0 then 0 else ' +
        '1 end as YN, QCBLYY.VNSM '
      'FROM (select DISTINCT SCBH,GSBH from qcr where 1=1'
      '    AND qcr.GSBH = '#39'VDH'#39
      '    AND qcr.USERDATE >= '#39'2026-05-14'#39
      '    AND qcr.USERDATE < '#39'2026-05-22'#39
      '    AND qcr.SCBH IS NOT NULL'
      'and GXLB='#39'A'#39
      ') A'
      
        'left join qcr on A.SCBH=qcr.SCBH and  A.GSBH=qcr.GSBH --full ord' +
        'er'
      'LEFT JOIN BDepartment  ON BDepartment.ID = qcr.DepNo'
      
        'inner JOIN qcrd ON qcr.ProNo = qcrd.ProNo and  qcrd.YYBH LIKE '#39'%' +
        '[B-C]'#39' '
      
        'left join (select DDBH,DepID,GSBH,DefectID,Grade,sum(Qty)as Qty ' +
        'from KCRKS_BC '
      
        #9#9'left join KCRK_BC on KCRKS_BC.RKNO=KCRK_BC.RKNO group by  DDBH' +
        ',DepID,GSBH,DefectID,Grade'
      
        '   )RK_BC on RK_BC.DDBH=qcr.SCBH and RK_BC.DepID=qcr.DepNO and R' +
        'K_BC.GSBH=qcr.GSBH '
      
        '             and RK_BC.DefectID=LEFT(qcrd.YYBH,4) and RK_BC.Grad' +
        'e=right(qcrd.YYBH,1) '
      'inner join QCBLYY on QCBLYY.YYBH=QCRD.YYBH '
      'WHERE 1=1 and qcr.SCBH like'#39'%%'#39
      'GROUP BY '
      '    qcr.SCBH'
      '    ,qcr.DepNO,BDepartment.DepName '
      '    ,qcr.GSBH'
      '    ,qcrd.YYBH,RK_BC.Qty,QCBLYY.VNSM, qcrd.CC, is_right'
      'Order by DepNO')
    UpdateObject = updtsql1
    Left = 193
    Top = 392
    object QryPendingDepID: TStringField
      FieldName = 'DepID'
      FixedChar = True
      Size = 15
    end
    object QryPendingDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object QryPendingSCBH: TStringField
      FieldName = 'SCBH'
      FixedChar = True
      Size = 15
    end
    object QryPendingGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object QryPendingDefectID: TStringField
      FieldName = 'DefectID'
      FixedChar = True
      Size = 4
    end
    object QryPendingGrade: TStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 2
    end
    object QryPendingRemainQty: TFloatField
      FieldName = 'RemainQty'
    end
    object QryPendingYN: TIntegerField
      FieldName = 'YN'
    end
    object QryPendingVNSM: TStringField
      FieldName = 'VNSM'
      FixedChar = True
      Size = 1
    end
    object QryPendingSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object QryPendingRorL: TStringField
      FieldName = 'RorL'
      FixedChar = True
      Size = 1
    end
    object QryPendingQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object ds3: TDataSource
    DataSet = QryPending
    Left = 193
    Top = 360
  end
  object updtsql1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE  KCRKS_BC'
      'SET'
      '  Grade = :Grade,'
      '  DDBH = :DDBH,'
      '  Size = :Size,'
      '  Qty = :Qty,'
      '  DefectID = :DefectID,'
      '  CheckDate = :CheckDate,'
      '  UserID = :UserID,'
      '  UserDate = GetDate(),'
      'Carton_No=:Carton_No,'
      'Left_Right_Shoe=:Left_Right_Shoe'
      'WHERE '
      '  RKNO = :OLD_RKNO AND'
      '  Grade = :OLD_Grade AND'
      '  DDBH = :OLD_DDBH AND'
      '  Size = :OLD_Size AND'
      '  DefectID = :OLD_DefectID')
    InsertSQL.Strings = (
      'INSERT INTO KCRKS_BC'
      
        '  (RKNO, Grade, DDBH, Size, Qty, DefectID, CheckDate, UserID, Us' +
        'erDate, YN,Carton_No,Left_Right_Shoe)'
      'VALUES'
      
        '  (:RKNO, :Grade, :DDBH, :Size, :Qty, :DefectID, :CheckDate, :Us' +
        'erID, GetDate(), '#39'1'#39',:Carton_No,:Left_Right_Shoe)')
    DeleteSQL.Strings = (
      'DELETE FROM KCRKS_BC'
      'WHERE'
      '  RKNO = :OLD_RKNO AND'
      '  Grade = :OLD_Grade AND'
      '  DDBH = :OLD_DDBH AND'
      '  Size = :OLD_Size AND'
      '  DefectID = :OLD_DefectID')
    Left = 193
    Top = 424
  end
  object QryReset: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '---------------------------'
      
        'SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size,KCBH,Carton_' +
        'No'
      '       , SUM(KCRKS_BC.Qty) AS Qty FROM ('
      '  SELECT Grade, DDBH, Size, Qty,KCBH,Carton_No FROM BCShoeMonth'
      '  WHERE KCYear = '#39'2025'#39' AND KCMonth = '#39'12'#39
      '  UNION ALL'
      
        '  SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size, KCRKS_BC.' +
        'Qty,KCBH,Carton_No FROM KCRKS_BC'
      '  LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'
      
        '  AND CONVERT(VARCHAR, KCRK_BC.CFMDate, 111) BETWEEN '#39'2026/01/01' +
        #39' AND '#39'2026/01/19'#39
      '  UNION ALL'
      
        '  SELECT KCLLS_BC.Grade, KCLLS_BC.DDBH, KCLLS_BC.Size, KCLLS_BC.' +
        'Qty*-1 AS Qty,KCBH,Carton_No FROM KCLLS_BC'
      '  LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO'
      
        '  AND CONVERT(VARCHAR, KCLL_BC.CFMDate, 111) BETWEEN '#39'2026/01/01' +
        #39' AND '#39'2026/01/19'#39
      ') AS KCRKS_BC'
      'LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      'WHERE 1 = 1'
      
        'GROUP BY KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size,KCBH,Carto' +
        'n_No'
      'HAVING SUM(KCRKS_BC.Qty) > 0')
    Left = 242
    Top = 392
    object QryResetGrade: TStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 1
    end
    object QryResetDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object QryResetSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object QryResetKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 5
    end
    object QryResetCarton_No: TIntegerField
      FieldName = 'Carton_No'
    end
    object QryResetQty: TFloatField
      FieldName = 'Qty'
    end
  end
  object ds4: TDataSource
    DataSet = QryReset
    Left = 241
    Top = 360
  end
  object Qry_rupdate: TQuery
    DatabaseName = 'DB'
    DataSource = ds4
    SQL.Strings = (
      'select KCRKS_BC.RKNO,Grade,DDBH,Size,DefectID,KCBH,Carton_No'
      ',Qty,RemainQty,KCRK_BC.CFMDate'
      'from KCRKS_BC'
      'left join KCRK_BC on KCRK_BC.RKNO=KCRKS_BC.RKNO'
      'where KCRK_BC.CFMDate is not null'
      
        'and (KCRK_BC.flowflag not in ('#39'X'#39') or (KCRK_BC.flowflag is null)' +
        ')'
      'and Qty>0'
      'and Grade=:Grade'
      'and DDBH=:DDBH'
      'and Size=:Size'
      'and KCBH=:KCBH '
      'and Carton_No=:Carton_No'
      'order by KCRK_BC.CFMDate desc')
    UpdateObject = updtsql2
    Left = 282
    Top = 392
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Grade'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftFixedChar
        Name = 'DDBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'Size'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'KCBH'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftInteger
        Name = 'Carton_No'
        ParamType = ptUnknown
        Size = 4
      end>
    object Qry_rupdateRKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 15
    end
    object Qry_rupdateGrade: TStringField
      FieldName = 'Grade'
      FixedChar = True
      Size = 1
    end
    object Qry_rupdateDDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Qry_rupdateSize: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object Qry_rupdateDefectID: TStringField
      FieldName = 'DefectID'
      FixedChar = True
      Size = 4
    end
    object Qry_rupdateKCBH: TStringField
      FieldName = 'KCBH'
      FixedChar = True
      Size = 5
    end
    object Qry_rupdateCarton_No: TIntegerField
      FieldName = 'Carton_No'
    end
    object Qry_rupdateQty: TFloatField
      FieldName = 'Qty'
    end
    object Qry_rupdateRemainQty: TFloatField
      FieldName = 'RemainQty'
    end
    object Qry_rupdateCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
  end
  object DataSource1: TDataSource
    DataSet = Qry_rupdate
    Left = 281
    Top = 360
  end
  object updtsql2: TUpdateSQL
    ModifySQL.Strings = (
      'update KCRKS_BC'
      'set'
      '  RemainQty = :RemainQty'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  Grade = :OLD_Grade and'
      '  DDBH = :OLD_DDBH and'
      '  Size = :OLD_Size and'
      '  DefectID = :OLD_DefectID and'
      '  KCBH = :OLD_KCBH and'
      '  Carton_No = :OLD_Carton_No')
    InsertSQL.Strings = (
      'insert into KCRKS_BC'
      '  (RemainQty)'
      'values'
      '  (:RemainQty)')
    DeleteSQL.Strings = (
      'delete from KCRKS_BC'
      'where'
      '  RKNO = :OLD_RKNO and'
      '  Grade = :OLD_Grade and'
      '  DDBH = :OLD_DDBH and'
      '  Size = :OLD_Size and'
      '  DefectID = :OLD_DefectID and'
      '  KCBH = :OLD_KCBH and'
      '  Carton_No = :OLD_Carton_No')
    Left = 281
    Top = 424
  end
end

object DozcBill: TDozcBill
  Left = 291
  Top = 204
  Width = 1522
  Height = 834
  Caption = 'DozcBill'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 117
    Width = 1514
    Height = 686
    ActivePage = All
    Align = alClient
    TabOrder = 0
    OnChange = PC1Change
    object All: TTabSheet
      Caption = 'All'
      object Splitter1: TSplitter
        Left = 0
        Top = 432
        Width = 1506
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 48
        Width = 1506
        Height = 384
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 4
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Bill
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'INV_NO'
            Footer.FieldName = 'INV_NO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Invoice No.'
            Title.TitleButton = True
            Width = 92
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'INV_DATE'
            Footers = <>
            Title.Caption = 'Invoice Date'
            Title.TitleButton = True
            Width = 0
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ExFty_Date'
            Footers = <>
            Title.Caption = 'ExFty Date'
            Title.Color = 9109386
            Title.TitleButton = True
            Width = 75
          end
          item
            ButtonStyle = cbsNone
            Color = 16777156
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Bill_FCR_Date'
            Footers = <>
            Title.Caption = 'FCR/Bill Date'
            Title.TitleButton = True
            Width = 88
          end
          item
            Color = 16777156
            EditButtons = <>
            FieldName = 'Bill_FCR_No'
            Footers = <>
            Title.Caption = 'FCR/Bill No.'
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Sailing_Date'
            Footers = <>
            Title.Caption = 'Sailing Date'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CO_Vessel'
            Footers = <>
            Title.Caption = 'Vessel Voyage'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'CO_Voyage'
            Footers = <>
            Title.Caption = 'Voyage'
            Title.TitleButton = True
            Visible = False
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Bill_RCVD_Draf'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Draft FCR/Bill'
            Title.TitleButton = True
            Width = 100
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Bill_RCV_From'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Form FCR/Bill'
            Title.TitleButton = True
            Width = 90
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Bill_Provide_From'
            Footers = <>
            Title.Caption = 'Date Provide Form  FCR/Bill'
            Title.TitleButton = True
            Width = 90
          end
          item
            ButtonStyle = cbsNone
            Color = 16766975
            EditButtons = <>
            FieldName = 'Bill_RCV_Org_CO'
            Footers = <>
            PickList.Strings = (
              'No Need')
            Title.Caption = 'Date RC'#39'V Org CO'
            Title.TitleButton = True
            Width = 70
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Bill_Submit_Dox'
            Footers = <>
            Title.Caption = 'Date Submit Dox'
            Title.TitleButton = True
            Width = 75
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Bill_RCV_Org'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Org FCR/Bill'
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Bill_RCV_Org_File'
            Footers = <>
            Title.Caption = 'File RC'#39'V Org FCR/Bill'
            Width = 108
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CUSTID'
            Footers = <>
            Title.Caption = 'Cust ID'
            Title.TitleButton = True
            Visible = False
            Width = 58
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'COUNTRYEN'
            Footers = <>
            Title.Caption = 'Country'
            Title.TitleButton = True
            Width = 83
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            Title.Caption = 'Kind Loading'
            Title.TitleButton = True
            Width = 82
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            Title.TitleButton = True
            Width = 118
          end
          item
            EditButtons = <>
            FieldName = 'Bill_Remark'
            Footers = <>
            Title.Caption = 'Remark'
            Width = 100
          end
          item
            ButtonStyle = cbsNone
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Bill_CFMDate'
            Footers = <>
            Title.Caption = 'CFM Date'
            Width = 70
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Bill_CFMID'
            Footers = <>
            Title.Caption = 'CFMID'
            Width = 50
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Bill_UserDate'
            Footers = <>
            Title.Caption = 'User Date'
            Width = 145
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Bill_UserID'
            Footers = <>
            Title.Caption = 'UserID'
            Width = 50
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1506
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object btnInsert: TBitBtn
          Left = 0
          Top = 0
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
        object btndelete: TBitBtn
          Left = 48
          Top = 0
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
          OnClick = btndeleteClick
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
        object btnModify: TBitBtn
          Left = 96
          Top = 0
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
          OnClick = btnModifyClick
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
        object btnSave: TBitBtn
          Left = 144
          Top = 0
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
          OnClick = btnSaveClick
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
        object btnCancel: TBitBtn
          Left = 192
          Top = 0
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
          OnClick = btnCancelClick
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
        object btnexit: TBitBtn
          Left = 240
          Top = 0
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
          TabOrder = 5
          OnClick = btnexitClick
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
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 435
        Width = 1506
        Height = 220
        Align = alBottom
        DataSource = DS2
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 2
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        OnGetCellParams = DBGridEh2GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'PACK_NO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'No.'
            Width = 30
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footer.DisplayFormat = '#,###'
            Footer.FieldName = 'RYNO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY'
            Width = 80
          end
          item
            Color = 16777151
            EditButtons = <>
            FieldName = 'CO_HSCode'
            Footers = <>
            Title.Caption = 'HS Code'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'PO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PO#'
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'MCUSTMER'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CustID#'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRYEN'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cust Name'
            Width = 87
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footer.DisplayFormat = '#,###.###'
            Footer.FieldName = 'CTS'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CNTS'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.DisplayFormat = '#,###.###'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Q'#39'ty'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NW'
            Footer.DisplayFormat = '#,###.###'
            Footer.FieldName = 'NW'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'GW'
            Footer.DisplayFormat = '#,###.###'
            Footer.FieldName = 'GW'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CBM'
            Footer.DisplayFormat = '#,###.###'
            Footer.FieldName = 'CBM'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            Title.Caption = 'Article'
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'CUSTORDNO'
            Footers = <>
            Title.Caption = 'Custord No.'
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'STYLE_NAME'
            Footers = <>
            Title.Caption = 'Style Name'
            Width = 165
          end>
      end
    end
    object Excel: TTabSheet
      Caption = 'Excel'
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1498
        Height = 647
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 5
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Excel
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnGetCellParams = DBGridEh3GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STT'
            Footers = <>
            Title.Caption = 'No.'
            Width = 35
          end
          item
            EditButtons = <>
            FieldName = 'INV_NO'
            Footer.FieldName = 'INV_NO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice No.'
            Title.TitleButton = True
            Width = 92
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'INV_DATE'
            Footers = <>
            Title.Caption = 'Invoice Date'
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ExFty_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ExFty Date'
            Title.Color = 9109386
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            Title.Caption = 'RY'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'PO'
            Footers = <>
            Title.TitleButton = True
            Width = 81
          end
          item
            EditButtons = <>
            FieldName = 'MCUSTMER'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cust ID'
            Title.TitleButton = True
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRYEN'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Country'
            Title.TitleButton = True
            Width = 83
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footer.FieldName = 'CTS'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Q'#39'ty'
            Title.TitleButton = True
            Width = 50
          end
          item
            DisplayFormat = '##0.00'
            EditButtons = <>
            FieldName = 'NW'
            Footer.DisplayFormat = '##0.00'
            Footer.FieldName = 'NW'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 40
          end
          item
            DisplayFormat = '#,##0.000'
            EditButtons = <>
            FieldName = 'GW'
            Footer.FieldName = 'GW'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            DisplayFormat = '##0.000'
            EditButtons = <>
            FieldName = 'CBM'
            Footer.DisplayFormat = '##0.000'
            Footer.FieldName = 'CBM'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Shipmode'
            Footers = <>
            Title.TitleButton = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kind Loading'
            Title.TitleButton = True
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 100
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Sailing_Date'
            Footers = <>
            Title.Caption = 'Sailing Date'
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Bill_RCVD_Draf'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Draft FCR/Bill'
            Title.TitleButton = True
            Width = 100
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Bill_RCV_From'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Form FCR/Bill'
            Title.TitleButton = True
            Width = 90
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Bill_Provide_From'
            Footers = <>
            Title.Caption = 'Date Provide Form  FCR/Bill'
            Title.TitleButton = True
            Width = 90
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Bill_RCV_Org_CO'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Org CO'
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Bill_Submit_Dox'
            Footers = <>
            Title.Caption = 'Date Submit Dox'
            Title.TitleButton = True
            Width = 75
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Bill_RCV_Org'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Org FCR/Bill'
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = 16777156
            EditButtons = <>
            FieldName = 'Bill_FCR_No'
            Footers = <>
            Title.Caption = 'FCR/Bill No.'
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            Color = 16757759
            EditButtons = <>
            FieldName = 'Bill_FCR_Date'
            Footers = <>
            Title.Caption = 'FCR Date'
            Title.TitleButton = True
            Width = 70
          end
          item
            Color = 16777156
            EditButtons = <>
            FieldName = 'CO_HSCode'
            Footers = <>
            Title.Caption = 'HS Code'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Bill_Remark'
            Footers = <>
            Title.Caption = 'Remark'
            Width = 100
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1514
    Height = 117
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 549
      Top = 39
      Width = 19
      Height = 16
      Caption = 'RY'
    end
    object Label2: TLabel
      Left = 203
      Top = 16
      Width = 11
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 308
      Top = 12
      Width = 67
      Height = 16
      Caption = 'Invoice No.'
    end
    object Label4: TLabel
      Left = 524
      Top = 12
      Width = 45
      Height = 16
      Caption = 'Country'
    end
    object Label5: TLabel
      Left = 203
      Top = 39
      Width = 11
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 968
      Top = 8
      Width = 118
      Height = 32
      Caption = 'Dozc Bill'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 308
      Top = 39
      Width = 73
      Height = 16
      Caption = 'FCR/Bill No.'
    end
    object Label8: TLabel
      Left = 203
      Top = 70
      Width = 11
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 204
      Top = 97
      Width = 11
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 344
      Top = 67
      Width = 26
      Height = 16
      Caption = 'PO#'
    end
    object Label12: TLabel
      Left = 512
      Top = 67
      Width = 61
      Height = 16
      Caption = 'Forwarder'
    end
    object chkInv: TCheckBox
      Left = 8
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Invoice Date'
      TabOrder = 0
    end
    object DTP3: TDateTimePicker
      Left = 112
      Top = 8
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 1
    end
    object DTP4: TDateTimePicker
      Left = 216
      Top = 8
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 577
      Top = 36
      Width = 121
      Height = 24
      Color = cl3DLight
      TabOrder = 3
    end
    object Button1: TButton
      Left = 901
      Top = 32
      Width = 75
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 383
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 577
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 6
    end
    object chk1: TCheckBox
      Left = 8
      Top = 39
      Width = 89
      Height = 17
      Caption = 'ExFty Date'
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 112
      Top = 35
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 216
      Top = 35
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 9
    end
    object chkmass: TCheckBox
      Left = 742
      Top = 29
      Width = 121
      Height = 17
      Caption = 'Mass Production'
      TabOrder = 10
    end
    object chksample: TCheckBox
      Left = 742
      Top = 10
      Width = 105
      Height = 17
      Caption = 'Sample Shoe'
      TabOrder = 11
    end
    object chkNoCFM: TCheckBox
      Left = 742
      Top = 51
      Width = 89
      Height = 17
      Caption = 'No Confirm'
      TabOrder = 12
    end
    object chkCFM: TCheckBox
      Left = 742
      Top = 71
      Width = 81
      Height = 17
      Caption = 'Confirmed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object Edit4: TEdit
      Left = 383
      Top = 36
      Width = 121
      Height = 24
      Color = 16777156
      TabOrder = 14
    end
    object chkSubmit: TCheckBox
      Left = 8
      Top = 67
      Width = 89
      Height = 17
      Caption = 'Submit Dox'
      TabOrder = 15
    end
    object DTP5: TDateTimePicker
      Left = 112
      Top = 62
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 16
    end
    object DTP6: TDateTimePicker
      Left = 216
      Top = 62
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 17
    end
    object FCR2: TDateTimePicker
      Left = 217
      Top = 89
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 18
    end
    object FCR1: TDateTimePicker
      Left = 113
      Top = 89
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 19
    end
    object FCR_BillDate: TCheckBox
      Left = 9
      Top = 92
      Width = 100
      Height = 17
      Caption = 'FCR/Bill Date'
      Checked = True
      State = cbChecked
      TabOrder = 20
    end
    object Edit5: TEdit
      Left = 384
      Top = 64
      Width = 121
      Height = 24
      TabOrder = 21
    end
    object Edit6: TEdit
      Left = 577
      Top = 64
      Width = 121
      Height = 24
      TabOrder = 22
    end
  end
  object ShowProgress: TPanel
    Left = 268
    Top = 280
    Width = 420
    Height = 34
    Color = clMenuBar
    TabOrder = 2
    Visible = False
    object Label11: TLabel
      Left = 85
      Top = 0
      Width = 207
      Height = 16
      Caption = 'Loading data, please wait ......'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ProgressBar: TProgressBar
      Left = 2
      Top = 16
      Width = 417
      Height = 17
      TabOrder = 0
    end
  end
  object qry_bill: TQuery
    AfterOpen = qry_billAfterOpen
    BeforeClose = qry_billBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT Ship_Booking.INV_NO,im.INV_DATE,Kind_Loading,Forwarder,Pl' +
        'ace_Delivery,ETD,ExFty_Date'
      
        '      ,Bill_FCR_No,Bill_FCR_Date,Sailing_Date,Bill_RCVD_Draf,Bil' +
        'l_RCV_From,Bill_Provide_From,Bill_RCV_Org_CO,Bill_Submit_Dox'
      
        '      ,Bill_RCV_Org,Bill_Remark,Bill_UserID,Bill_UserDate,im.CUS' +
        'TID,im.TO_WHERE as COUNTRYEN,Bill_YN, CO_Vessel,CO_Voyage,Bill_C' +
        'FMID, Bill_CFMDate,CO_Provide_Org'
      '      ,Bill_RCV_Org_File'
      'FROM Ship_Booking '
      'LEFT JOIN INVOICE_M im ON im.INV_NO=Ship_Booking.Inv_No'
      'LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID'
      'WHERE 1=2 and Ship_Booking.CFMID IS NOT NULL'
      
        'GROUP BY Ship_Booking.INV_NO,im.INV_DATE,Kind_Loading,Forwarder,' +
        'Place_Delivery,ETD,ExFty_Date'
      
        '      ,Bill_FCR_No,Bill_FCR_Date,Sailing_Date,Bill_RCVD_Draf,Bil' +
        'l_RCV_From,Bill_Provide_From,Bill_RCV_Org_CO,Bill_Submit_Dox'
      
        '      ,Bill_RCV_Org,Bill_Remark,Bill_UserID,Bill_UserDate,im.CUS' +
        'TID,im.TO_WHERE,Bill_YN, CO_Vessel,CO_Voyage,Bill_CFMID'
      '      , Bill_CFMDate,CO_Provide_Org,Bill_RCV_Org_File')
    UpdateObject = UpdateSQL1
    Left = 188
    Top = 254
    object qry_billKind_Loading: TStringField
      FieldName = 'Kind_Loading'
      FixedChar = True
      Size = 50
    end
    object qry_billForwarder: TStringField
      FieldName = 'Forwarder'
      FixedChar = True
      Size = 50
    end
    object qry_billPlace_Delivery: TStringField
      FieldName = 'Place_Delivery'
      FixedChar = True
      Size = 50
    end
    object qry_billETD: TDateTimeField
      FieldName = 'ETD'
    end
    object qry_billExFty_Date: TDateTimeField
      FieldName = 'ExFty_Date'
    end
    object qry_billBill_FCR_Date: TDateTimeField
      FieldName = 'Bill_FCR_Date'
    end
    object qry_billSailing_Date: TDateTimeField
      FieldName = 'Sailing_Date'
    end
    object qry_billBill_RCVD_Draf: TDateTimeField
      FieldName = 'Bill_RCVD_Draf'
    end
    object qry_billBill_RCV_From: TDateTimeField
      FieldName = 'Bill_RCV_From'
    end
    object qry_billBill_Provide_From: TDateTimeField
      FieldName = 'Bill_Provide_From'
    end
    object qry_billBill_Submit_Dox: TDateTimeField
      FieldName = 'Bill_Submit_Dox'
    end
    object qry_billBill_RCV_Org: TDateTimeField
      FieldName = 'Bill_RCV_Org'
    end
    object qry_billBill_Remark: TStringField
      FieldName = 'Bill_Remark'
      FixedChar = True
      Size = 200
    end
    object qry_billBill_UserID: TStringField
      FieldName = 'Bill_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_billBill_UserDate: TDateTimeField
      FieldName = 'Bill_UserDate'
    end
    object qry_billCUSTID: TStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 10
    end
    object qry_billCOUNTRYEN: TStringField
      FieldName = 'COUNTRYEN'
      FixedChar = True
      Size = 50
    end
    object qry_billBill_YN: TStringField
      FieldName = 'Bill_YN'
      FixedChar = True
      Size = 1
    end
    object qry_billINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object qry_billCO_Vessel: TStringField
      FieldName = 'CO_Vessel'
      FixedChar = True
      Size = 150
    end
    object qry_billCO_Voyage: TStringField
      FieldName = 'CO_Voyage'
      FixedChar = True
      Size = 50
    end
    object qry_billBill_CFMID: TStringField
      FieldName = 'Bill_CFMID'
      FixedChar = True
      Size = 10
    end
    object qry_billBill_CFMDate: TDateTimeField
      FieldName = 'Bill_CFMDate'
    end
    object qry_billBill_FCR_No: TStringField
      FieldName = 'Bill_FCR_No'
      FixedChar = True
    end
    object qry_billBill_RCV_Org_CO: TStringField
      FieldName = 'Bill_RCV_Org_CO'
      FixedChar = True
      Size = 50
    end
    object qry_billCO_Provide_Org: TStringField
      FieldName = 'CO_Provide_Org'
      FixedChar = True
      Size = 50
    end
    object qry_billINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_billBill_RCV_Org_File: TStringField
      FieldName = 'Bill_RCV_Org_File'
      FixedChar = True
      Size = 200
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE Ship_Booking'
      '   SET Bill_FCR_No =:Bill_FCR_No '
      '      ,Bill_FCR_Date = :Bill_FCR_Date'
      '      ,Sailing_Date = :Sailing_Date'
      '      ,Bill_RCVD_Draf = :Bill_RCVD_Draf'
      '      ,Bill_RCV_From = :Bill_RCV_From'
      '      ,Bill_Provide_From =:Bill_Provide_From '
      '      ,Bill_RCV_Org_CO = :Bill_RCV_Org_CO'
      '      ,Bill_Submit_Dox = :Bill_Submit_Dox'
      '      ,Bill_RCV_Org =:Bill_RCV_Org '
      '      ,Bill_Remark = :Bill_Remark'
      '      ,Bill_UserID = :Bill_UserID'
      '      ,Bill_UserDate = GETDATE()'
      '      ,CO_Provide_Org=:CO_Provide_Org'
      '      ,Bill_YN=:Bill_YN'
      '      ,CO_Vessel = :CO_Vessel'
      '      ,CO_Voyage = :CO_Voyage'
      '      ,UserDate=GETDATE() '
      ' WHERE INV_NO =:INV_NO ')
    Left = 188
    Top = 286
  end
  object DS1: TDataSource
    DataSet = qry_bill
    Left = 188
    Top = 318
  end
  object qry_Ry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT inv.INV_NO, inv.PACK_NO, inv.RYNO, inv.PO,inv.STYLE_NAME,' +
        ' inv.CUSTORDNO,inv.ARTICLE       '
      
        #9',im.CUSTID AS MCUSTMER,de.COUNTRYEN, pd.CTS, pd.Pairs, pd.NW,pd' +
        '.GW, pd.CBM'
      #9','#39#39' AS Shipmode,do.ddzt as STATUS,'#39#39' as SPECID,inv.CO_HSCode'
      
        'FROM INVOICE_D inv LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV' +
        '_NO AND pd.RYNO = inv.RYNO'
      'LEFT JOIN YWDD y ON y.DDBH=inv.RYNO'
      'LEFT JOIN DDZL do ON do.DDBH=y.YSBH'
      'LEFT JOIN INVOICE_M im ON im.INV_NO=inv.INV_NO'
      'LEFT JOIN DE_CUST de ON im.CUSTID=de.CUSTID'
      'where inv.INV_NO=:INV_NO')
    Left = 180
    Top = 420
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end>
    object qry_RyPACK_NO: TStringField
      FieldName = 'PACK_NO'
      FixedChar = True
      Size = 10
    end
    object qry_RyPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 15
    end
    object qry_RySTYLE_NAME: TStringField
      FieldName = 'STYLE_NAME'
      FixedChar = True
      Size = 15
    end
    object qry_RyCUSTORDNO: TStringField
      FieldName = 'CUSTORDNO'
      FixedChar = True
      Size = 15
    end
    object qry_RyARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 15
    end
    object qry_RyMCUSTMER: TStringField
      FieldName = 'MCUSTMER'
      FixedChar = True
      Size = 6
    end
    object qry_RyCOUNTRYEN: TStringField
      FieldName = 'COUNTRYEN'
      FixedChar = True
      Size = 50
    end
    object qry_RyCTS: TIntegerField
      FieldName = 'CTS'
    end
    object qry_RyPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object qry_RyNW: TFloatField
      FieldName = 'NW'
    end
    object qry_RyGW: TFloatField
      FieldName = 'GW'
    end
    object qry_RyCBM: TFloatField
      FieldName = 'CBM'
    end
    object qry_RyShipmode: TStringField
      FieldName = 'Shipmode'
      FixedChar = True
      Size = 4
    end
    object qry_RyStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object qry_RyINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_RyRYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
    object qry_RySPECID: TStringField
      FieldName = 'SPECID'
      FixedChar = True
      Size = 2
    end
    object qry_RyCO_HSCode: TStringField
      FieldName = 'CO_HSCode'
      FixedChar = True
      Size = 50
    end
  end
  object DS2: TDataSource
    DataSet = qry_Ry
    Left = 180
    Top = 449
  end
  object qry_excel: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT ROW_NUMBER() OVER (ORDER BY a.Inv_no) STT,a.* FROM ('
      
        'SELECT inv.INV_NO,im.INV_DATE,sb.ExFty_Date,sb.Kind_Loading, sb.' +
        'Forwarder,'
      
        '       sb.Place_Delivery,sb.Sailing_Date, sb.Bill_RCVD_Draf, sb.' +
        'Bill_RCV_From,inv.CO_HSCode,'
      
        '       sb.Bill_Provide_From, sb.Bill_RCV_Org_CO, sb.Bill_Submit_' +
        'Dox,Bill_FCR_No,Bill_FCR_Date,'
      
        '       sb.Bill_RCV_Org, sb.Bill_Remark,sb.Bill_UserID, sb.Bill_U' +
        'serDate'
      
        #9#9',inv.PO,im.CustID as MCUSTMER,upper(im.TO_WHERE) as COUNTRYEN,' +
        ' inv.RYNO, pd.CTS, pd.Pairs, pd.NW,pd.GW, pd.CBM'
      
        #9#9',isnull(case when do.shipmode ='#39'Ocean'#39' and do.shipmode_1 is NU' +
        'LL then '#39'SC'#39
      
        '           when do.shipmode ='#39'Air'#39' and do.shipmode_1 is null the' +
        'n '#39'AC'#39
      
        '           when do.shipmode ='#39'Air Expres'#39' and do.shipmode_1 is n' +
        'ull then '#39'CC'#39
      
        '           else do.shipmode_1 end,YWDD.ShipMode) AS Shipmode,im.' +
        'Inv_Type,Bill_CFMID, Bill_CFMDate,ISNULL(do.SPECID,bg.SPECID) SP' +
        'ECID'
      'FROM INVOICE_D inv '
      
        'LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV_NO AND pd.RYNO = i' +
        'nv.RYNO'
      'INNER JOIN Ship_Booking sb ON sb.INV_NO = inv.INV_NO'
      'INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO'
      'LEFT JOIN YWDD ON inv.RYNO=YWDD.DDBH'
      'left join DE_ORDERM do on do.ORDERNO=YWDD.YSBH'
      'left join B_GradeOrder bg on bg.ORDER_B=YWDD.YSBH'
      'WHERE 1=2'
      'and Bill_CFMID is null'
      ')a')
    Left = 404
    Top = 254
    object qry_excelINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object qry_excelExFty_Date: TDateTimeField
      FieldName = 'ExFty_Date'
    end
    object qry_excelKind_Loading: TStringField
      FieldName = 'Kind_Loading'
      FixedChar = True
      Size = 50
    end
    object qry_excelForwarder: TStringField
      FieldName = 'Forwarder'
      FixedChar = True
      Size = 50
    end
    object qry_excelPlace_Delivery: TStringField
      FieldName = 'Place_Delivery'
      FixedChar = True
      Size = 50
    end
    object qry_excelSailing_Date: TDateTimeField
      FieldName = 'Sailing_Date'
    end
    object qry_excelBill_RCVD_Draf: TDateTimeField
      FieldName = 'Bill_RCVD_Draf'
    end
    object qry_excelBill_RCV_From: TDateTimeField
      FieldName = 'Bill_RCV_From'
    end
    object qry_excelBill_Provide_From: TDateTimeField
      FieldName = 'Bill_Provide_From'
    end
    object qry_excelBill_Submit_Dox: TDateTimeField
      FieldName = 'Bill_Submit_Dox'
    end
    object qry_excelBill_RCV_Org: TDateTimeField
      FieldName = 'Bill_RCV_Org'
    end
    object qry_excelBill_Remark: TStringField
      FieldName = 'Bill_Remark'
      FixedChar = True
      Size = 50
    end
    object qry_excelBill_UserID: TStringField
      FieldName = 'Bill_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_excelBill_UserDate: TDateTimeField
      FieldName = 'Bill_UserDate'
    end
    object qry_excelPO: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 50
    end
    object qry_excelMCUSTMER: TStringField
      FieldName = 'MCUSTMER'
      FixedChar = True
      Size = 6
    end
    object qry_excelCOUNTRYEN: TStringField
      FieldName = 'COUNTRYEN'
      FixedChar = True
      Size = 50
    end
    object qry_excelRYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 15
    end
    object qry_excelCTS: TIntegerField
      FieldName = 'CTS'
    end
    object qry_excelPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object qry_excelNW: TCurrencyField
      FieldName = 'NW'
    end
    object qry_excelGW: TCurrencyField
      FieldName = 'GW'
    end
    object qry_excelCBM: TCurrencyField
      FieldName = 'CBM'
    end
    object qry_excelSTT: TFloatField
      FieldName = 'STT'
    end
    object qry_excelBill_FCR_No: TStringField
      FieldName = 'Bill_FCR_No'
      FixedChar = True
      Size = 10
    end
    object qry_excelBill_FCR_Date: TDateTimeField
      FieldName = 'Bill_FCR_Date'
    end
    object qry_excelBill_CFMID: TStringField
      FieldName = 'Bill_CFMID'
      FixedChar = True
      Size = 10
    end
    object qry_excelBill_CFMDate: TDateTimeField
      FieldName = 'Bill_CFMDate'
    end
    object qry_excelBill_RCV_Org_CO: TStringField
      FieldName = 'Bill_RCV_Org_CO'
      FixedChar = True
      Size = 50
    end
    object qry_excelINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_excelSPECID: TStringField
      FieldName = 'SPECID'
      FixedChar = True
      Size = 2
    end
    object qry_excelCO_HSCode: TStringField
      FieldName = 'CO_HSCode'
      FixedChar = True
      Size = 50
    end
    object qry_excelShipmode: TStringField
      FieldName = 'Shipmode'
      FixedChar = True
      Size = 50
    end
  end
  object DS3: TDataSource
    DataSet = qry_excel
    Left = 404
    Top = 286
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel Files|*.xls'
    Left = 468
    Top = 258
  end
  object Pop_Excel: TPopupMenu
    Left = 404
    Top = 321
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 308
    Top = 318
  end
  object Pop_Bill: TPopupMenu
    OnPopup = Pop_BillPopup
    Left = 189
    Top = 348
    object MultiSelect1: TMenuItem
      Caption = 'Multi Select'
      OnClick = MultiSelect1Click
    end
    object Confirm1: TMenuItem
      Caption = 'Confirm'
      OnClick = Confirm1Click
    end
    object ConfirmAll1: TMenuItem
      Caption = 'Confirm All'
      OnClick = ConfirmAll1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Unconfirm1: TMenuItem
      Caption = 'UnConfirm'
      OnClick = Unconfirm1Click
    end
    object btnUpload_PDF: TMenuItem
      Caption = 'Upload PDF'
      OnClick = btnUpload_PDFClick
    end
    object btnDownload_PDF: TMenuItem
      Caption = 'DownLoad PDF'
      OnClick = btnDownload_PDFClick
    end
    object btnDelete_PDF: TMenuItem
      Caption = 'Delete PDF'
      OnClick = btnDelete_PDFClick
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 340
    Top = 318
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 308
    Top = 360
  end
  object OpenDialog1: TOpenDialog
    Filter = 'PDF File|*.PDF'
    Left = 132
    Top = 264
  end
  object SaveDialog2: TSaveDialog
    Filter = 'PDF File|*.PDF'
    Left = 132
    Top = 296
  end
end

object ColorSwatchScan: TColorSwatchScan
  Left = 238
  Top = 119
  Width = 1386
  Height = 640
  Caption = 'ColorSwatchScan'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object PC1: TPageControl
    Left = 0
    Top = 0
    Width = 1370
    Height = 601
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PC1Change
    object TabSheet1: TTabSheet
      Caption = 'Scan'
      object Splitter1: TSplitter
        Left = 1192
        Top = 73
        Height = 497
        Align = alRight
        Visible = False
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 73
        Width = 1192
        Height = 497
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
        OnGetCellParams = DBGridEh1GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CINO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Invoice No'
            Width = 100
          end
          item
            DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
            EditButtons = <>
            FieldName = 'ScanDate'
            Footers = <>
            Title.Caption = 'Scan Date'
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.Caption = 'PO'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material No'
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = 'Material Name'
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Width = 35
          end
          item
            DisplayFormat = '#0.00'
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            Title.Caption = 'SR'
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'PURPOSE'
            Footers = <>
            Title.Caption = 'Stage'
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Width = 70
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 73
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 16
          Top = 20
          Width = 216
          Height = 32
          Caption = 'Scanned Barcode'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object ED_Barcode: TEdit
          Left = 239
          Top = 13
          Width = 242
          Height = 48
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -35
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = ED_BarcodeKeyPress
        end
        object B_Manual: TButton
          Left = 496
          Top = 13
          Width = 57
          Height = 47
          Caption = 'Manual Entry'
          TabOrder = 1
          WordWrap = True
          OnClick = B_ManualClick
        end
      end
      object Panel2: TPanel
        Left = 1195
        Top = 73
        Width = 167
        Height = 497
        Align = alRight
        TabOrder = 2
        Visible = False
        object Label2: TLabel
          Left = 6
          Top = 200
          Width = 40
          Height = 16
          Caption = 'Noted:'
        end
        object Label3: TLabel
          Left = 6
          Top = 152
          Width = 40
          Height = 16
          Caption = 'Status:'
        end
        object Label4: TLabel
          Left = 6
          Top = 56
          Width = 22
          Height = 16
          Caption = 'PO:'
        end
        object Label5: TLabel
          Left = 6
          Top = 104
          Width = 72
          Height = 16
          Caption = 'Material No:'
        end
        object Label6: TLabel
          Left = 6
          Top = 8
          Width = 67
          Height = 16
          Caption = 'Invoice No:'
        end
        object B_Save: TButton
          Left = 46
          Top = 256
          Width = 75
          Height = 25
          Caption = 'Save'
          Enabled = False
          TabOrder = 0
          OnClick = B_SaveClick
        end
        object ED_InvoiceNo: TDBEdit
          Left = 16
          Top = 26
          Width = 129
          Height = 24
          DataField = 'CINO'
          DataSource = DS1
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object ED_PO: TDBEdit
          Left = 16
          Top = 74
          Width = 129
          Height = 24
          DataField = 'CGNO'
          DataSource = DS1
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object ED_MaterialNo: TDBEdit
          Left = 16
          Top = 122
          Width = 129
          Height = 24
          DataField = 'CLBH'
          DataSource = DS1
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object CB_OK: TDBCheckBox
          Left = 24
          Top = 171
          Width = 41
          Height = 17
          Caption = 'OK'
          DataField = 'OK'
          DataSource = DS1
          TabOrder = 4
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnMouseUp = CB_OKMouseUp
        end
        object CB_NG: TDBCheckBox
          Left = 80
          Top = 171
          Width = 41
          Height = 17
          Caption = 'NG'
          DataField = 'NG'
          DataSource = DS1
          TabOrder = 5
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnMouseUp = CB_NGMouseUp
        end
        object ED_Noted: TDBEdit
          Left = 16
          Top = 218
          Width = 129
          Height = 24
          DataField = 'Noted'
          DataSource = DS1
          TabOrder = 6
          OnChange = ED_NotedChange
          OnExit = ED_NotedExit
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Report'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 65
        Width = 1362
        Height = 49
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 15
          Top = 16
          Width = 63
          Height = 16
          Caption = 'Scan Date'
        end
        object Label8: TLabel
          Left = 929
          Top = 16
          Width = 37
          Height = 16
          Caption = 'Status'
        end
        object Label9: TLabel
          Left = 295
          Top = 16
          Width = 46
          Height = 16
          Caption = 'Mat. No'
        end
        object Label10: TLabel
          Left = 487
          Top = 16
          Width = 19
          Height = 16
          Caption = 'SR'
        end
        object Label11: TLabel
          Left = 687
          Top = 16
          Width = 36
          Height = 16
          Caption = 'Stage'
        end
        object Label12: TLabel
          Left = 807
          Top = 16
          Width = 18
          Height = 16
          Caption = 'FD'
        end
        object Label13: TLabel
          Left = 173
          Top = 21
          Width = 9
          Height = 16
          Caption = '~'
        end
        object DTP1: TDateTimePicker
          Left = 80
          Top = 13
          Width = 92
          Height = 24
          Date = 44803.566148217590000000
          Format = 'yyyy/MM/dd'
          Time = 44803.566148217590000000
          TabOrder = 0
        end
        object CB1: TComboBox
          Left = 968
          Top = 13
          Width = 145
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 1
          Text = 'ALL'
          Items.Strings = (
            'ALL'
            'OK'
            'NG'
            'User For This Stage'
            'Not Assigned')
        end
        object B_Query: TButton
          Left = 1136
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Query'
          TabOrder = 2
          OnClick = B_QueryClick
        end
        object B_Excel: TButton
          Left = 1211
          Top = 12
          Width = 75
          Height = 25
          Caption = 'Excel'
          TabOrder = 3
          OnClick = B_ExcelClick
        end
        object ED_MatNo: TEdit
          Left = 343
          Top = 13
          Width = 121
          Height = 24
          TabOrder = 4
        end
        object ED_SR: TEdit
          Left = 508
          Top = 13
          Width = 157
          Height = 24
          TabOrder = 5
        end
        object ED_Stage: TEdit
          Left = 725
          Top = 13
          Width = 60
          Height = 24
          TabOrder = 6
        end
        object ED_FD: TEdit
          Left = 827
          Top = 13
          Width = 81
          Height = 24
          TabOrder = 7
        end
        object DTP2: TDateTimePicker
          Left = 184
          Top = 13
          Width = 92
          Height = 24
          Date = 44803.566148217590000000
          Format = 'yyyy/MM/dd'
          Time = 44803.566148217590000000
          TabOrder = 8
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 114
        Width = 1362
        Height = 456
        Align = alClient
        DataSource = DS2
        EvenRowColor = clWindow
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        PopupMenu = PopupMenu1
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'CINO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice No'
            Title.TitleButton = True
            Width = 100
          end
          item
            DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
            EditButtons = <>
            FieldName = 'ScanDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Scan Date'
            Title.TitleButton = True
            Width = 120
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PO'
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Material No'
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Material Name'
            Title.TitleButton = True
            Width = 300
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Unit'
            Title.TitleButton = True
            Width = 35
          end
          item
            DisplayFormat = '#0.00'
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'DEVCODE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'SR'
            Title.TitleButton = True
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'PURPOSE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Stage'
            Title.TitleButton = True
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'OK'
            Footers = <>
            Title.TitleButton = True
            Width = 30
            OnUpdateData = DBGridEh2Columns10UpdateData
          end
          item
            EditButtons = <>
            FieldName = 'NG'
            Footers = <>
            Title.TitleButton = True
            Width = 30
            OnUpdateData = DBGridEh2Columns11UpdateData
          end
          item
            EditButtons = <>
            FieldName = 'ForThisStage'
            Footers = <>
            Title.Caption = 'Use For This Stage'
            Title.TitleButton = True
            Width = 125
            OnUpdateData = DBGridEh2Columns12UpdateData
          end
          item
            EditButtons = <>
            FieldName = 'Noted'
            Footers = <>
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'CheckID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Check ID'
            Title.TitleButton = True
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CheckDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Check Date'
            Title.TitleButton = True
            Width = 80
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 65
        Align = alTop
        TabOrder = 2
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
          TabOrder = 5
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
          TabOrder = 4
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
          TabOrder = 3
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
          TabOrder = 1
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
          TabOrder = 0
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
      end
    end
  end
  object QScan: TQuery
    CachedUpdates = True
    AfterOpen = QScanAfterOpen
    AfterScroll = QScanAfterScroll
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      
        'SELECT CGZLInvoiceS.CINO, CGZLInvoiceS.PurReceiveDate, CGZLInvoi' +
        'ceS.CGNO, CGZLInvoiceS.CLBH, '
      
        'CLZL.YWPM, CLZL.DWBH, CGZLInvoiceS.Qty, KFXXZL.DEVCODE, CGZL.PUR' +
        'POSE, YPZL.FD, '
      'CASE WHEN CGZLInvoiceS.CheckResult = 1 THEN 1 ELSE 0 END AS OK,'
      
        'CASE WHEN CGZLInvoiceS.CheckResult = 0 THEN 1 ELSE 0 END AS NG, ' +
        'CGZLInvoiceS.MEMO1 AS Noted FROM CGZLInvoiceS'
      'LEFT JOIN CLZL ON CLZL.CLDH = CGZLInvoiceS.CLBH'
      'LEFT JOIN CGZL ON CGZL.CGNO = CGZLInvoiceS.CGNO'
      
        'LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.C' +
        'LBH = CGZLInvoiceS.CLBH'
      'LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH'
      
        'LEFT JOIN KFXXZL ON KFXXZL.XieXing = YPZL.XieXing AND KFXXZL.She' +
        'Hao = YPZL.SheHao'
      'WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) = GETDATE()')
    UpdateObject = UP_Scan
    Left = 24
    Top = 224
    object QScanCINO: TStringField
      FieldName = 'CINO'
      FixedChar = True
      Size = 30
    end
    object QScanCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object QScanCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object QScanYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object QScanDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object QScanQty: TCurrencyField
      FieldName = 'Qty'
    end
    object QScanDEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object QScanPURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object QScanFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object QScanNoted: TStringField
      FieldName = 'Noted'
      FixedChar = True
      Size = 30
    end
    object QScanOK: TBooleanField
      FieldName = 'OK'
    end
    object QScanNG: TBooleanField
      FieldName = 'NG'
    end
    object QScanSeq: TFloatField
      FieldName = 'Seq'
    end
    object QScanScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
  end
  object DS1: TDataSource
    DataSet = QScan
    Left = 24
    Top = 192
  end
  object QUpdate: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT image FROM CBY_Orders'
      'WHERE 1 = 0')
    Left = 88
    Top = 192
  end
  object UP_Scan: TUpdateSQL
    Left = 24
    Top = 256
  end
  object DS2: TDataSource
    DataSet = QReport
    Left = 56
    Top = 192
  end
  object QReport: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CGZLInvoiceS.CINO, CGZLInvoiceS.PurReceiveDate, CGZLInvoi' +
        'ceS.CGNO, CGZLInvoiceS.CLBH, '
      
        'CLZL.YWPM, CLZL.DWBH, CGZLInvoiceS.Qty, KFXXZL.DEVCODE, CGZL.PUR' +
        'POSE, YPZL.FD, '
      'CASE WHEN CGZLInvoiceS.CheckResult = 1 THEN 1 ELSE 0 END AS OK,'
      
        'CASE WHEN CGZLInvoiceS.CheckResult = 0 THEN 1 ELSE 0 END AS NG, ' +
        'CGZLInvoiceS.MEMO1 AS Noted FROM CGZLInvoiceS'
      'LEFT JOIN CLZL ON CLZL.CLDH = CGZLInvoiceS.CLBH'
      'LEFT JOIN CGZL ON CGZL.CGNO = CGZLInvoiceS.CGNO'
      
        'LEFT JOIN CGZLSS ON CGZLSS.CGNO = CGZLInvoiceS.CGNO AND CGZLSS.C' +
        'LBH = CGZLInvoiceS.CLBH'
      'LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH'
      
        'LEFT JOIN KFXXZL ON KFXXZL.XieXing = YPZL.XieXing AND KFXXZL.She' +
        'Hao = YPZL.SheHao'
      'WHERE CONVERT(VARCHAR, CGZLInvoiceS.ScanDate, 111) = GETDATE()')
    UpdateObject = UP_Report
    Left = 56
    Top = 224
    object StringField1: TStringField
      FieldName = 'CINO'
      FixedChar = True
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField3: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField5: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Qty'
    end
    object StringField6: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object StringField7: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object StringField8: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object StringField9: TStringField
      FieldName = 'Noted'
      FixedChar = True
      Size = 30
    end
    object BooleanField1: TBooleanField
      FieldName = 'OK'
    end
    object BooleanField2: TBooleanField
      FieldName = 'NG'
    end
    object QReportScanDate: TDateTimeField
      FieldName = 'ScanDate'
    end
    object QReportForThisStage: TBooleanField
      FieldName = 'ForThisStage'
    end
    object QReportCheckDate: TDateTimeField
      FieldName = 'CheckDate'
    end
    object QReportCheckID: TStringField
      FieldName = 'CheckID'
      Size = 10
    end
  end
  object UP_Report: TUpdateSQL
    Left = 56
    Top = 256
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 164
    Top = 193
  end
  object PopupMenu1: TPopupMenu
    Left = 196
    Top = 195
    object Detail1: TMenuItem
      Caption = 'Detail'
      OnClick = Detail1Click
    end
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT image FROM CBY_Orders'
      'WHERE 1 = 0')
    Left = 164
    Top = 227
  end
end

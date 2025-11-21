object DoczCO: TDoczCO
  Left = 398
  Top = 91
  Width = 1403
  Height = 779
  Caption = 'DoczCO'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1387
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 520
      Top = 12
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
      Left = 312
      Top = 12
      Width = 67
      Height = 16
      Caption = 'Invoice No.'
    end
    object Label4: TLabel
      Left = 312
      Top = 40
      Width = 45
      Height = 16
      Caption = 'Country'
    end
    object Label5: TLabel
      Left = 203
      Top = 40
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
      Left = 960
      Top = 32
      Width = 115
      Height = 32
      Caption = 'Docz CO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 312
      Top = 67
      Width = 60
      Height = 16
      Caption = 'Kind Form'
    end
    object Label9: TLabel
      Left = 21
      Top = 67
      Width = 26
      Height = 16
      Caption = 'PO#'
    end
    object Label10: TLabel
      Left = 161
      Top = 67
      Width = 46
      Height = 16
      Caption = 'CustID#'
    end
    object chkInv: TCheckBox
      Left = 16
      Top = 10
      Width = 97
      Height = 17
      Caption = 'Invoice Date'
      Checked = True
      State = cbChecked
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
      Left = 552
      Top = 8
      Width = 105
      Height = 24
      Color = cl3DLight
      TabOrder = 3
    end
    object Button1: TButton
      Left = 848
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
      Left = 384
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 384
      Top = 36
      Width = 121
      Height = 24
      TabOrder = 6
    end
    object chk1: TCheckBox
      Left = 16
      Top = 38
      Width = 89
      Height = 17
      Caption = 'ExFty Date'
      TabOrder = 7
    end
    object DTP1: TDateTimePicker
      Left = 112
      Top = 36
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 216
      Top = 36
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 9
    end
    object chkmass: TCheckBox
      Left = 704
      Top = 30
      Width = 121
      Height = 17
      Caption = 'Mass Production'
      TabOrder = 10
    end
    object chksample: TCheckBox
      Left = 704
      Top = 8
      Width = 105
      Height = 17
      Caption = 'Sample Shoe'
      TabOrder = 11
    end
    object chkMine: TCheckBox
      Left = 704
      Top = 67
      Width = 49
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object chk2: TCheckBox
      Left = 520
      Top = 40
      Width = 89
      Height = 17
      Caption = 'No Confirm'
      TabOrder = 13
    end
    object chk3: TCheckBox
      Left = 608
      Top = 40
      Width = 81
      Height = 17
      Caption = 'Confirmed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
    end
    object cboKindForm: TComboBox
      Left = 384
      Top = 64
      Width = 73
      Height = 24
      ItemHeight = 16
      TabOrder = 15
    end
    object Edit4: TEdit
      Left = 58
      Top = 64
      Width = 97
      Height = 24
      TabOrder = 16
    end
    object Edit5: TEdit
      Left = 216
      Top = 64
      Width = 89
      Height = 24
      TabOrder = 17
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 97
    Width = 1387
    Height = 643
    ActivePage = All
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object All: TTabSheet
      Caption = 'All'
      object Splitter1: TSplitter
        Left = 0
        Top = 374
        Width = 1379
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 48
        Width = 1379
        Height = 326
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
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Co
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
        OnTitleBtnClick = DBGridEh1TitleBtnClick
        Columns = <
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'INV_NO'
            Footer.FieldName = 'INV_NO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice No.'
            Title.TitleButton = True
            Width = 88
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Inv_Date'
            Footers = <>
            Title.Caption = 'Invoice Date'
            Title.TitleButton = True
            Width = 82
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
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
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CUSTID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cust ID'
            Title.TitleButton = True
            Width = 58
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'COUNTRYEN'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Country'
            Title.TitleButton = True
            Width = 77
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kind Loading'
            Title.TitleButton = True
            Width = 82
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 122
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Sailing_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sailing Date'
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CO_Vessel'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Vessel Voyage'
            Title.TitleButton = True
            Width = 67
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CO_Voyage'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Voyage'
            Title.TitleButton = True
            Visible = False
            Width = 65
          end
          item
            Color = 16757759
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'TC_PL_Date'
            Footers = <>
            Title.Caption = 'TC Packing List Submission Date'
          end
          item
            Color = 16757759
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            Title.Caption = 'Customs No.'
            Title.TitleButton = True
            Width = 92
          end
          item
            ButtonStyle = cbsNone
            Color = 16757759
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Customs_Date'
            Footers = <>
            Title.Caption = 'Customs Date'
            Title.TitleButton = True
            Width = 90
          end
          item
            Color = 16757759
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'VND_USD'
            Footers = <>
            Title.Caption = 'Rate'
            Title.TitleButton = True
            Width = 50
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_RCV_OriDocz'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Ori Docz Customs'
            Title.TitleButton = True
            Width = 90
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_RCV_From'
            Footers = <>
            Title.Caption = 'Date RC'#39'V From FCR/Bill'
            Title.TitleButton = True
            Width = 90
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_Apply_Date'
            Footers = <>
            Title.Caption = 'Date Apply C/O'
            Title.TitleButton = True
            Width = 74
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_Return_Org'
            Footers = <>
            Title.Caption = 'Date Return Org C/O'
            Title.TitleButton = True
            Width = 77
          end
          item
            ButtonStyle = cbsNone
            Color = 16777156
            EditButtons = <>
            FieldName = 'CO_Provide_Org'
            Footers = <>
            Title.Caption = 'Date Provide Org C/O'
            Title.TitleButton = True
            Width = 85
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Kind_Form'
            Footers = <>
            Title.Caption = 'Kind Form C/O'
            Title.TitleButton = True
            Width = 66
          end
          item
            Color = 8978312
            EditButtons = <>
            FieldName = 'CO_No'
            Footers = <>
            Title.Caption = 'C/O No.'
            Title.TitleButton = True
            Width = 63
          end
          item
            ButtonStyle = cbsNone
            Color = 8978312
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_Date'
            Footers = <>
            Title.Caption = 'CO Date'
            Title.TitleButton = True
            Width = 70
          end
          item
            Color = clScrollBar
            DropDownSpecRow.Color = clGray
            EditButtons = <>
            FieldName = 'Bill_RCV_Org_CO_File'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'File RC'#39'V Org C/O'
            Width = 124
          end
          item
            ButtonStyle = cbsNone
            Color = clFuchsia
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_Inv_Date'
            Footers = <>
            Title.Caption = 'Invoice Date for C/O'
            Title.TitleButton = True
            Width = 81
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_Send_Draf'
            Footers = <>
            Title.Caption = 'Date Send Draf'
            Title.TitleButton = True
            Width = 74
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_Cust_CFM'
            Footers = <>
            Title.Caption = 'Date Cust CFM'
            Title.TitleButton = True
            Width = 78
          end
          item
            ButtonStyle = cbsNone
            Color = clScrollBar
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_CreateDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Date Create'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CO_ReferenceNo'
            Footers = <>
            Title.Caption = 'Reference No.'
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'CO_Origin'
            Footers = <>
            Title.Caption = 'Origin Criterion'
            Title.TitleButton = True
            Width = 55
          end
          item
            ButtonStyle = cbsNone
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'CO_CFMDate'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CFMDate'
            Title.TitleButton = True
            Width = 70
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'CO_CFMID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CFMID'
            Title.TitleButton = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CO_Remark'
            Footers = <>
            Title.Caption = 'Remark'
            Title.TitleButton = True
            Width = 100
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CO_UserDate'
            Footers = <>
            Title.Caption = 'User Date'
            Title.TitleButton = True
            Width = 145
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CO_UserID'
            Footers = <>
            Title.Caption = 'UserID'
            Title.TitleButton = True
            Width = 50
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1379
        Height = 48
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label7: TLabel
          Left = 646
          Top = 3
          Width = 57
          Height = 16
          Caption = 'Signature'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblError: TLabel
          Left = 646
          Top = 24
          Width = 293
          Height = 19
          Caption = 'Invoice Still Pending, Pls CFM Invoice .'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Visible = False
        end
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
        object btnImport_Cus: TBitBtn
          Left = 442
          Top = 0
          Width = 100
          Height = 48
          Hint = 'Modify Current'
          Caption = 'Import Customs'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btnImport_CusClick
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
        object btnImport_HS: TBitBtn
          Left = 542
          Top = 0
          Width = 100
          Height = 48
          Hint = 'Modify Current'
          Caption = 'Import HS Code'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = btnImport_HSClick
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
        object btnPrint: TBitBtn
          Left = 320
          Top = 0
          Width = 69
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Print Form'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btnPrintClick
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
        object btnPrintInv: TBitBtn
          Left = 389
          Top = -1
          Width = 53
          Height = 49
          Hint = 'Modify Current'
          Caption = 'Print Inv'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = btnPrintInvClick
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
        object cboSign: TEdit
          Left = 706
          Top = 0
          Width = 201
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
          Text = 'Vice General Director'
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 377
        Width = 1379
        Height = 235
        Align = alBottom
        DataSource = DS2
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
        FrozenCols = 2
        ParentFont = False
        PopupMenu = Pop_RY
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        OnEditButtonClick = DBGridEh2EditButtonClick
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
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NW'
            Footer.DisplayFormat = '#,###.###'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'GW'
            Footer.DisplayFormat = '#,###.###'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CBM'
            Footer.DisplayFormat = '#,###.###'
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
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'STYLE_NAME'
            Footers = <>
            Title.Caption = 'Style Name'
            Width = 176
          end
          item
            EditButtons = <>
            FieldName = 'UNIT_PRICE'
            Footers = <>
            Title.Caption = 'Unit Price'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'AMOUNT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Amount'
            Width = 73
          end
          item
            Color = 16757759
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'MasterOrder'
            Footers = <>
            Width = 120
          end>
      end
    end
    object Excel: TTabSheet
      Caption = 'Excel'
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1387
        Height = 620
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
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'INV_NO'
            Footer.FieldName = 'INV_NO'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice No.'
            Width = 88
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'INV_DATE'
            Footers = <>
            Title.Caption = 'Invoice Date'
            Width = 82
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
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            Title.Caption = 'RY'
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'PO'
            Footers = <>
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'MCUSTMER'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Cust ID'
            Width = 58
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRYEN'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Country'
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
            Footer.FieldName = 'CTS'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Pairs'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 50
          end
          item
            DisplayFormat = '##0.00'
            EditButtons = <>
            FieldName = 'NW'
            Footer.DisplayFormat = '##0.000'
            Footer.FieldName = 'NW'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 50
          end
          item
            DisplayFormat = '#,##0.000'
            EditButtons = <>
            FieldName = 'GW'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 50
          end
          item
            DisplayFormat = '#00.000'
            EditButtons = <>
            FieldName = 'CBM'
            Footer.DisplayFormat = '#00.000'
            Footer.FieldName = 'CBM'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Shipmode'
            Footers = <>
            Title.Caption = 'Ship Mode'
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kind Loading'
            Width = 82
          end
          item
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            ReadOnly = True
            Width = 122
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Sailing_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sailing Date'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CO_Vessel'
            Footers = <>
            Title.Caption = 'Vessel'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'CO_Voyage'
            Footers = <>
            Title.Caption = 'Voyage'
            Width = 65
          end
          item
            Color = 16757759
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            Title.Caption = 'Customs No.'
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            Color = 16757759
            EditButtons = <>
            FieldName = 'Customs_Date'
            Footers = <>
            Title.Caption = 'Customs Date'
            Width = 90
          end
          item
            EditButtons = <>
            FieldName = 'CO_HSCode'
            Footers = <>
            Title.Caption = 'HS Code'
            Width = 70
          end
          item
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'VND_USD'
            Footers = <>
            Title.Caption = 'Rate'
            Width = 50
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_RCV_OriDocz'
            Footers = <>
            Title.Caption = 'Date RC'#39'V Ori Docz Customs'
            Width = 94
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_RCV_From'
            Footers = <>
            Title.Caption = 'Date RC'#39'V From FCR/Bill'
            Width = 90
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Apply_Date'
            Footers = <>
            Title.Caption = 'Date Apply C/O'
            Width = 74
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Return_Org'
            Footers = <>
            Title.Caption = 'Date Return Org C/O'
            Width = 77
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Provide_Org'
            Footers = <>
            Title.Caption = 'Date Provide Org C/O'
            Width = 85
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Kind_Form'
            Footers = <>
            Title.Caption = 'Kind Form C/O'
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'CO_No'
            Footers = <>
            Title.Caption = 'C/O No.'
            Width = 63
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Date'
            Footers = <>
            Title.Caption = 'CO Date'
            Width = 70
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Send_Draf'
            Footers = <>
            Title.Caption = 'Date Send Draf'
            Width = 74
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Cust_CFM'
            Footers = <>
            Title.Caption = 'Date Cust CFM'
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'CO_Remark'
            Footers = <>
            Title.Caption = 'Remark'
            Width = 100
          end>
      end
      object ShowProgress: TPanel
        Left = 268
        Top = 280
        Width = 420
        Height = 34
        Color = clMenuBar
        TabOrder = 1
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
        object ProgressBar1: TProgressBar
          Left = 2
          Top = 16
          Width = 417
          Height = 17
          TabOrder = 0
        end
      end
    end
    object INVNot: TTabSheet
      Caption = 'Not CFM Invoice Yet'
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 0
        Top = 382
        Width = 1387
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object pnl_INV: TPanel
        Left = 0
        Top = 0
        Width = 1387
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object btn_QryINV: TButton
          Left = 261
          Top = 7
          Width = 75
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btn_QryINVClick
        end
      end
      object DBG_INV: TDBGridEh
        Left = 0
        Top = 49
        Width = 1387
        Height = 333
        Align = alClient
        DataSource = DS_INV
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
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        ReadOnly = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        Columns = <
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'INV_NO'
            Footer.FieldName = 'INV_NO'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Invoice No.'
            Title.TitleButton = True
            Width = 88
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
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            Title.Caption = 'Kind Loading'
            Title.TitleButton = True
            Width = 82
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            Title.TitleButton = True
            Width = 122
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Sailing_Date'
            Footers = <>
            Title.Caption = 'Sailing Date'
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            Color = 16757759
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            Title.Caption = 'Customs No.'
            Title.TitleButton = True
            Width = 92
          end
          item
            ButtonStyle = cbsNone
            Color = 16757759
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Customs_Date'
            Footers = <>
            Title.Caption = 'Customs Date'
            Title.TitleButton = True
            Width = 90
          end
          item
            ButtonStyle = cbsNone
            Color = 16777156
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'CO_Provide_Org'
            Footers = <>
            Title.Caption = 'Date Provide Org C/O'
            Title.TitleButton = True
            Width = 85
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'CO_Kind_Form'
            Footers = <>
            Title.Caption = 'Kind Form C/O'
            Width = 66
          end
          item
            ButtonStyle = cbsNone
            Color = 8978312
            EditButtons = <>
            FieldName = 'CO_No'
            Footers = <>
            Title.Caption = 'C/O No.'
            Width = 63
          end
          item
            ButtonStyle = cbsNone
            Color = 8978312
            EditButtons = <>
            FieldName = 'CO_Date'
            Footers = <>
            Title.Caption = 'CO Date'
            Width = 70
          end>
      end
      object DBG_INVRy: TDBGridEh
        Left = 0
        Top = 385
        Width = 1387
        Height = 235
        Align = alBottom
        DataSource = DS_INVRy
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
        FrozenCols = 2
        ParentFont = False
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        OnGetCellParams = DBG_INVRyGetCellParams
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
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'NW'
            Footer.DisplayFormat = '#,###.###'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'GW'
            Footer.DisplayFormat = '#,###.###'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'CBM'
            Footer.DisplayFormat = '#,###.###'
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
            Width = 103
          end
          item
            EditButtons = <>
            FieldName = 'STYLE_NAME'
            Footers = <>
            Title.Caption = 'Style Name'
            Width = 176
          end
          item
            EditButtons = <>
            FieldName = 'UNIT_PRICE'
            Footers = <>
            Title.Caption = 'Unit Price'
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'AMOUNT'
            Footers = <>
            Title.Caption = 'Amount'
            Width = 73
          end>
      end
    end
    object Liquidate: TTabSheet
      Caption = 'Liquidate'#39's Customs'
      ImageIndex = 3
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1379
        Height = 50
        Align = alTop
        Alignment = taRightJustify
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label22: TLabel
          Left = 160
          Top = 4
          Width = 66
          Height = 16
          Caption = 'Custom No'
        end
        object btnModify_Liqui: TBitBtn
          Left = 2
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
          TabOrder = 0
          OnClick = btnModify_LiquiClick
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
        object btnSave_Liqui: TBitBtn
          Left = 51
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
          TabOrder = 1
          OnClick = btnSave_LiquiClick
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
        object btnCancel_Liqui: TBitBtn
          Left = 100
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
          TabOrder = 2
          OnClick = btnCancel_LiquiClick
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
        object cboLiquiDate: TComboBox
          Left = 160
          Top = 25
          Width = 121
          Height = 24
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 3
          Items.Strings = (
            ''
            'Sailing Date'
            'Date Received'
            'Date Release')
        end
        object dtpLiqui1: TDateTimePicker
          Left = 283
          Top = 25
          Width = 89
          Height = 24
          Date = 43789.327956631950000000
          Format = 'yyyy/MM/dd'
          Time = 43789.327956631950000000
          TabOrder = 4
        end
        object dtpLiqui2: TDateTimePicker
          Left = 374
          Top = 25
          Width = 89
          Height = 24
          Date = 43789.327956631950000000
          Format = 'yyyy/MM/dd'
          Time = 43789.327956631950000000
          TabOrder = 5
        end
        object btnQryLiqui: TButton
          Left = 475
          Top = 7
          Width = 73
          Height = 33
          Caption = 'Query'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnClick = btnQryLiquiClick
        end
        object edt_CustomNo: TEdit
          Left = 232
          Top = 0
          Width = 138
          Height = 24
          TabOrder = 7
        end
      end
      object pnl_ImpTK: TPanel
        Left = 344
        Top = 224
        Width = 249
        Height = 129
        TabOrder = 1
        Visible = False
        object Label23: TLabel
          Left = 13
          Top = 45
          Width = 122
          Height = 16
          Caption = 'Invoice No   :   D3'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label24: TLabel
          Left = 38
          Top = 74
          Width = 96
          Height = 16
          Caption = 'C/O TK   :   E3'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object ProgressBar2: TProgressBar
          Left = 1
          Top = 111
          Width = 247
          Height = 17
          Align = alBottom
          TabOrder = 0
        end
        object btn_StartTK: TButton
          Left = 145
          Top = 33
          Width = 89
          Height = 33
          Caption = 'Select File'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object btn_SampFileTK: TButton
          Left = 145
          Top = 72
          Width = 89
          Height = 33
          Caption = 'Sample File'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 247
          Height = 27
          Align = alTop
          Caption = 'Import C/O TK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object Panel7: TPanel
            Left = 216
            Top = 1
            Width = 30
            Height = 25
            Align = alRight
            Caption = 'X'
            Color = clHotLight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = cl3DLight
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      object DBG_Liqui: TDBGridEh
        Left = 0
        Top = 50
        Width = 1139
        Height = 562
        Align = alClient
        DataSource = DS_Liqui
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Liqui
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnTitleBtnClick = DBG_LiquiTitleBtnClick
        Columns = <
          item
            Alignment = taCenter
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'STT'
            Footer.Color = cl3DLight
            Footers = <>
            ReadOnly = True
            Title.Caption = 'No.'
            Title.TitleButton = True
            Width = 35
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'INV_NO'
            Footer.Color = cl3DLight
            Footer.FieldName = 'Inv_No'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice No.'
            Title.TitleButton = True
            Width = 87
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CountryID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Country Code'
            Title.TitleButton = True
            Width = 51
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'TO_WHERE'
            Footer.Color = cl3DLight
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Country'
            Title.TitleButton = True
            Width = 98
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = '#,###'
            EditButtons = <>
            FieldName = 'PAIRS'
            Footer.Color = cl3DLight
            Footer.DisplayFormat = '#,###'
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Pairs'
            Title.TitleButton = True
            Width = 48
          end
          item
            ButtonStyle = cbsEllipsis
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'HSCode'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 120
            OnEditButtonClick = DBG_LiquiColumns5EditButtonClick
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Custom No.'
            Title.TitleButton = True
            Width = 82
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Sailing_Date'
            Footer.Color = cl3DLight
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sailing Date'
            Title.TitleButton = True
            Width = 75
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CO_Provide_Org'
            Footer.Color = cl3DLight
            Footers = <>
            ReadOnly = True
            Title.Caption = 'C/O No.'
            Title.TitleButton = True
            Width = 95
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CO_Kind_Form'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kind Form C/O'
            Title.TitleButton = True
            Width = 66
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ReceivedDate'
            Footers = <>
            Title.Caption = 'Date Received Org Customs'
            Title.TitleButton = True
            Width = 100
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ReleaseDate'
            Footers = <>
            Title.Caption = 'Date Release Org Customs (To Accounting)'
            Title.TitleButton = True
            Width = 100
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Liqui_Remark'
            Footers = <>
            Title.Caption = 'Remark'
            Title.TitleButton = True
            Width = 146
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Liqui_UserID'
            Footer.Color = cl3DLight
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User ID'
            Title.TitleButton = True
            Width = 55
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Liqui_UserDate'
            Footer.Color = cl3DLight
            Footers = <>
            ReadOnly = True
            Title.Caption = 'User Date'
            Title.TitleButton = True
            Width = 75
          end>
      end
      object pnl_LiquiS: TPanel
        Left = 1139
        Top = 50
        Width = 240
        Height = 562
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        Visible = False
        object Splitter3: TSplitter
          Left = 0
          Top = 33
          Height = 537
          Color = clSkyBlue
          ParentColor = False
        end
        object pnl_LiquiSHide: TPanel
          Left = 0
          Top = 0
          Width = 240
          Height = 33
          Align = alTop
          Caption = 'Hide'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = pnl_LiquiSHideClick
        end
        object DBG_LiquiS: TDBGridEh
          Left = 3
          Top = 33
          Width = 237
          Height = 537
          Align = alClient
          DataSource = DS_LiquiS
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -13
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          ReadOnly = True
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
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'RYNO'
              Footer.ValueType = fvtCount
              Footers = <>
              Title.Caption = 'RY'
              Width = 80
            end
            item
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'CO_HSCode'
              Footers = <>
              Title.Caption = 'HS Code'
              Width = 60
            end
            item
              ButtonStyle = cbsNone
              EditButtons = <>
              FieldName = 'PAIRS'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Pairs'
              Width = 50
            end>
        end
      end
    end
  end
  object qry_Ry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT inv.INV_NO, inv.PACK_NO, inv.RYNO, inv.PO,inv.STYLE_NAME,' +
        ' inv.CUSTORDNO,inv.ARTICLE'
      
        #9',im.CUSTID AS MCUSTMER,de.COUNTRYEN, pd.CTS, pd.Pairs, pd.NW,pd' +
        '.GW, pd.CBM,inv.CO_HSCode'
      
        #9','#39#39' AS Shipmode,inv.SIZE_RUN,inv.UNIT_PRICE, inv.AMOUNT,'#39#39' as S' +
        'PECID,inv.Customs_No,im.Inv_Type,CBY_Orders.MasterOrder'
      
        'FROM INVOICE_D inv LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV' +
        '_NO AND pd.RYNO = inv.RYNO'
      'LEFT JOIN YWDD y ON y.DDBH=inv.RYNO'
      'LEFT JOIN DDZL do ON do.DDBH=y.YSBH'
      'LEFT JOIN CBY_Orders on inv.RYNO=CBY_Orders.workOrderId'
      'LEFT JOIN INVOICE_M im ON im.INV_NO=inv.INV_NO'
      'LEFT JOIN DE_CUST de ON im.CUSTID=de.CUSTID'
      'where inv.INV_NO=:INV_NO'
      'order by inv.RYNO')
    UpdateObject = Up_RY
    Left = 168
    Top = 616
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INV_NO'
        ParamType = ptUnknown
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
    object qry_RySIZE_RUN: TStringField
      FieldName = 'SIZE_RUN'
      FixedChar = True
      Size = 50
    end
    object qry_RyUNIT_PRICE: TFloatField
      FieldName = 'UNIT_PRICE'
    end
    object qry_RyAMOUNT: TFloatField
      FieldName = 'AMOUNT'
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
    object qry_RyCustoms_No: TStringField
      FieldName = 'Customs_No'
      FixedChar = True
      Size = 50
    end
    object qry_RyInv_Type: TStringField
      FieldName = 'Inv_Type'
    end
    object qry_RyMasterOrder: TStringField
      FieldName = 'MasterOrder'
      Size = 15
    end
  end
  object DS2: TDataSource
    DataSet = qry_Ry
    Left = 168
    Top = 584
  end
  object qry_Co: TQuery
    AfterOpen = qry_CoAfterOpen
    BeforeClose = qry_CoBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT sb.INV_NO,im.CUSTID,de.COUNTRYEN, sb.Kind_Loading, sb.For' +
        'warder, sb.Sailing_Date,sb.ExFty_Date, sb.CO_Vessel,'
      
        '       sb.CO_Voyage, sb.Customs_No, sb.Customs_Date, sb.CO_RCV_F' +
        'rom,'
      
        '       sb.CO_Apply_Date, sb.CO_Return_Org, sb.CO_Provide_Org, sb' +
        '.CO_Kind_Form,'
      
        '       sb.CO_No, sb.CO_Date, sb.CO_Send_Draf, sb.CO_Cust_CFM, sb' +
        '.CO_Remark,'
      
        '       sb.CO_UserID, sb.CO_UserDate,sb.CO_YN,im.Inv_Date,sb.CO_R' +
        'CV_OriDocz,sb.Bill_UserID, sb.Bill_CFMDate,sb.Bill_FCR_No'
      '       ,sb.Bill_FCR_Date,sb.Bill_RCV_Org_CO_File'
      
        #9#9',sb.CO_CreateDate,sb.CO_ReferenceNo,sb.CO_Origin,sb.CO_CFMID,s' +
        'b.CO_CFMDate,sb.CO_Inv_Date'
      
        #9#9',im.RISK,im.SHIP_BY,im.FROM_WHERE, im.TO_WHERE, im.TOTAL_PAIRS' +
        ','
      
        #9#9'im.TOTAL_AMOUNT, im.TOTAL_AMOUNT_WORD,id.HS_Code,sb.VND_USD,sb' +
        '.TC_PL_Date     '
      'FROM Ship_Booking sb '
      'LEFT JOIN INVOICE_M im ON im.INV_NO=sb.Inv_No'
      'LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID'
      
        'LEFT JOIN(SELECT INV_NO,COUNT(INV_NO)HS_Code FROM INVOICE_D WHER' +
        'E ISNULL(CO_HSCode,'#39#39')='#39#39' '
      '          GROUP BY INV_NO'
      #9#9'UNION '
      
        #9#9'  SELECT Inv_No,COUNT(Inv_No)HS_Code FROM INVOICE_SAMPLE WHERE' +
        ' ISNULL(CO_HSCode,'#39#39')='#39#39
      #9#9'  GROUP BY Inv_No)id ON id.INV_NO=im.INV_NO'#9#9#9#9#9
      'WHERE 1=2 AND sb.CFMID IS NOT NULL'#9
      
        'GROUP BY sb.INV_NO,im.CUSTID,de.COUNTRYEN, sb.Kind_Loading, sb.F' +
        'orwarder, sb.Sailing_Date,sb.ExFty_Date, sb.CO_Vessel,'
      
        '    sb.CO_Voyage, sb.Customs_No, sb.Customs_Date, sb.CO_RCV_From' +
        ','
      
        '    sb.CO_Apply_Date, sb.CO_Return_Org, sb.CO_Provide_Org, sb.CO' +
        '_Kind_Form,'
      
        '    sb.CO_No, sb.CO_Date, sb.CO_Send_Draf, sb.CO_Cust_CFM, sb.CO' +
        '_Remark,'
      
        '    sb.CO_UserID, sb.CO_UserDate,sb.CO_YN,im.Inv_Date,sb.CO_RCV_' +
        'OriDocz,sb.Bill_UserID, sb.Bill_CFMDate,sb.Bill_FCR_No,sb.Bill_F' +
        'CR_Date'
      
        #9',sb.CO_CreateDate,sb.CO_ReferenceNo,sb.CO_Origin,sb.CO_CFMID,sb' +
        '.CO_CFMDate,sb.CO_Inv_Date,sb.Bill_RCV_Org_CO_File'
      #9',im.RISK,im.SHIP_BY,im.FROM_WHERE, im.TO_WHERE, im.TOTAL_PAIRS,'
      
        #9'im.TOTAL_AMOUNT, im.TOTAL_AMOUNT_WORD,id.HS_Code,sb.VND_USD,sb.' +
        'TC_PL_Date')
    UpdateObject = UpdateSQL1
    Left = 120
    Top = 280
    object qry_CoCUSTID: TStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 10
    end
    object qry_CoCOUNTRYEN: TStringField
      FieldName = 'COUNTRYEN'
      FixedChar = True
      Size = 50
    end
    object qry_CoKind_Loading: TStringField
      FieldName = 'Kind_Loading'
      FixedChar = True
      Size = 50
    end
    object qry_CoForwarder: TStringField
      FieldName = 'Forwarder'
      FixedChar = True
      Size = 50
    end
    object qry_CoSailing_Date: TDateTimeField
      FieldName = 'Sailing_Date'
    end
    object qry_CoExFty_Date: TDateTimeField
      FieldName = 'ExFty_Date'
    end
    object qry_CoCO_Vessel: TStringField
      FieldName = 'CO_Vessel'
      FixedChar = True
      Size = 150
    end
    object qry_CoCO_Voyage: TStringField
      FieldName = 'CO_Voyage'
      FixedChar = True
      Size = 50
    end
    object qry_CoCustoms_No: TStringField
      FieldName = 'Customs_No'
      FixedChar = True
      Size = 50
    end
    object qry_CoCustoms_Date: TDateTimeField
      FieldName = 'Customs_Date'
    end
    object qry_CoCO_RCV_From: TDateTimeField
      FieldName = 'CO_RCV_From'
    end
    object qry_CoCO_Apply_Date: TDateTimeField
      FieldName = 'CO_Apply_Date'
    end
    object qry_CoCO_Return_Org: TDateTimeField
      FieldName = 'CO_Return_Org'
    end
    object qry_CoCO_Kind_Form: TStringField
      FieldName = 'CO_Kind_Form'
      FixedChar = True
      Size = 50
    end
    object qry_CoCO_No: TStringField
      FieldName = 'CO_No'
      FixedChar = True
      Size = 50
    end
    object qry_CoCO_Date: TDateTimeField
      FieldName = 'CO_Date'
    end
    object qry_CoCO_Send_Draf: TDateTimeField
      FieldName = 'CO_Send_Draf'
    end
    object qry_CoCO_Cust_CFM: TDateTimeField
      FieldName = 'CO_Cust_CFM'
    end
    object qry_CoCO_Remark: TStringField
      FieldName = 'CO_Remark'
      FixedChar = True
      Size = 50
    end
    object qry_CoCO_UserID: TStringField
      FieldName = 'CO_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_CoCO_UserDate: TDateTimeField
      FieldName = 'CO_UserDate'
    end
    object qry_CoCO_YN: TStringField
      FieldName = 'CO_YN'
      FixedChar = True
      Size = 1
    end
    object qry_CoInv_Date: TDateTimeField
      FieldName = 'Inv_Date'
    end
    object qry_CoCO_RCV_OriDocz: TDateTimeField
      FieldName = 'CO_RCV_OriDocz'
    end
    object qry_CoBill_UserID: TStringField
      FieldName = 'Bill_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_CoBill_CFMDate: TDateTimeField
      FieldName = 'Bill_CFMDate'
    end
    object qry_CoBill_FCR_No: TStringField
      FieldName = 'Bill_FCR_No'
      FixedChar = True
      Size = 10
    end
    object qry_CoBill_FCR_Date: TDateTimeField
      FieldName = 'Bill_FCR_Date'
    end
    object qry_CoCO_CreateDate: TDateTimeField
      FieldName = 'CO_CreateDate'
    end
    object qry_CoCO_ReferenceNo: TStringField
      FieldName = 'CO_ReferenceNo'
      FixedChar = True
      Size = 10
    end
    object qry_CoCO_Origin: TStringField
      FieldName = 'CO_Origin'
      FixedChar = True
      Size = 10
    end
    object qry_CoCO_CFMID: TStringField
      FieldName = 'CO_CFMID'
      FixedChar = True
      Size = 50
    end
    object qry_CoCO_CFMDate: TDateTimeField
      FieldName = 'CO_CFMDate'
    end
    object qry_CoCO_Inv_Date: TDateTimeField
      FieldName = 'CO_Inv_Date'
    end
    object qry_CoRISK: TStringField
      FieldName = 'RISK'
      FixedChar = True
      Size = 50
    end
    object qry_CoSHIP_BY: TStringField
      FieldName = 'SHIP_BY'
      FixedChar = True
      Size = 50
    end
    object qry_CoFROM_WHERE: TStringField
      FieldName = 'FROM_WHERE'
      FixedChar = True
      Size = 50
    end
    object qry_CoTO_WHERE: TStringField
      FieldName = 'TO_WHERE'
      FixedChar = True
      Size = 50
    end
    object qry_CoTOTAL_PAIRS: TIntegerField
      FieldName = 'TOTAL_PAIRS'
    end
    object qry_CoTOTAL_AMOUNT: TCurrencyField
      FieldName = 'TOTAL_AMOUNT'
    end
    object qry_CoTOTAL_AMOUNT_WORD: TStringField
      FieldName = 'TOTAL_AMOUNT_WORD'
      FixedChar = True
      Size = 200
    end
    object qry_CoCO_Provide_Org: TStringField
      FieldName = 'CO_Provide_Org'
      FixedChar = True
      Size = 50
    end
    object qry_CoINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_CoHS_Code: TIntegerField
      FieldName = 'HS_Code'
    end
    object qry_CoVND_USD: TFloatField
      FieldName = 'VND_USD'
    end
    object qry_CoBill_RCV_Org_CO_File: TStringField
      FieldName = 'Bill_RCV_Org_CO_File'
      FixedChar = True
      Size = 200
    end
    object qry_CoTC_PL_Date: TDateTimeField
      FieldName = 'TC_PL_Date'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE Ship_Booking'
      '   SET       '
      '      CO_Vessel = :CO_Vessel'
      '      ,CO_Voyage = :CO_Voyage'
      '      ,Customs_No = :Customs_No'
      '      ,Customs_Date = :Customs_Date'
      '      ,CO_RCV_From = :CO_RCV_From'
      '      ,CO_Apply_Date = :CO_Apply_Date'
      '      ,CO_Return_Org = :CO_Return_Org'
      '      ,CO_Provide_Org = :CO_Provide_Org'
      '      ,CO_Kind_Form = :CO_Kind_Form'
      '      ,CO_No = :CO_No'
      '      ,CO_Date = :CO_Date'
      '      ,CO_Send_Draf = :CO_Send_Draf'
      '      ,CO_Cust_CFM = :CO_Cust_CFM'
      '      ,CO_Remark = :CO_Remark'
      '      ,CO_YN = :CO_YN'
      '      ,CO_UserID = :CO_UserID'
      '      ,CO_UserDate = GETDATE()     '
      '      ,CO_RCV_OriDocz=:CO_RCV_OriDocz'
      '      ,CO_CreateDate=:CO_CreateDate'
      '      ,CO_ReferenceNo=:CO_ReferenceNo'
      '      ,CO_Origin=:CO_Origin'
      '      ,CO_Inv_Date=:CO_Inv_Date'
      '      ,VND_USD =:VND_USD'
      '      ,TC_PL_Date=:TC_PL_Date'
      ' WHERE INV_NO=:INV_NO')
    Left = 120
    Top = 320
  end
  object DS1: TDataSource
    DataSet = qry_Co
    Left = 120
    Top = 248
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 52
    Top = 278
  end
  object qry_excel: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT ROW_NUMBER() OVER (ORDER BY Inv_no) STT,a.* '
      'FROM ('
      'SELECT inv.INV_NO,im.INV_DATE'
      #9#9',sb.ExFty_Date,sb.Kind_Loading, sb.Forwarder,sb.Sailing_Date'
      
        #9#9',sb.CO_Vessel, sb.CO_Voyage, sb.Customs_No, sb.Customs_Date, s' +
        'b.CO_RCV_From'
      
        #9#9',sb.CO_Apply_Date, sb.CO_Return_Org, sb.CO_Provide_Org, sb.CO_' +
        'Kind_Form, sb.CO_No'
      
        #9#9',sb.CO_Date, sb.CO_Send_Draf, sb.CO_Cust_CFM, sb.CO_Remark ,in' +
        'v.CO_HSCode,sb.CO_RCV_OriDocz          '
      
        #9#9',inv.PO,'#39#39' MCUSTMER,de.COUNTRYEN, inv.RYNO, pd.CTS, pd.Pairs, ' +
        'pd.NW,pd.GW, pd.CBM'
      
        #9#9','#39#39' AS Shipmode,sb.CO_Inv_Date,CO_CFMID,ISNULL(do.Status,bg.St' +
        'atus_1) Status,'#39#39' SPECID,sb.VND_USD'
      
        'FROM INVOICE_D inv LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV' +
        '_NO AND pd.RYNO = inv.RYNO '
      'INNER JOIN Ship_Booking sb ON sb.INV_NO = inv.INV_NO'
      'INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO'
      'LEFT JOIN DDZL do ON do.DDBH=inv.RYNO'
      'WHERE 1=2'
      'UNION'#9#9#9#9#9
      'SELECT  im.Inv_No,im.INV_DATE'
      #9#9',sb.ExFty_Date,sb.Kind_Loading, sb.Forwarder,sb.Sailing_Date'
      
        #9#9',sb.CO_Vessel, sb.CO_Voyage, sb.Customs_No, sb.Customs_Date, s' +
        'b.CO_RCV_From'
      
        #9#9',sb.CO_Apply_Date, sb.CO_Return_Org, sb.CO_Provide_Org, sb.CO_' +
        'Kind_Form, sb.CO_No'
      
        #9#9',sb.CO_Date, sb.CO_Send_Draf, sb.CO_Cust_CFM, sb.CO_Remark,is1' +
        '.CO_HSCode,sb.CO_RCV_OriDocz '
      
        #9#9',NULL AS PO,is1.CustID,is1.Country,NULL AS RY,is1.CTS,is1.Qty,' +
        ' is1.NW, is1.GW, is1.CBM, is1.S_BY'
      
        #9#9',sb.CO_Inv_Date,null as CO_CFMID,null as Status ,'#39#39'SPECID,sb.V' +
        'ND_USD       '
      
        'FROM INVOICE_SAMPLE is1 inner JOIN Ship_Booking sb ON sb.INV_NO ' +
        '= is1.INV_NO '
      'INNER JOIN INVOICE_M im ON is1.INV_NO = im.INV_NO'
      'WHERE 1=2'#9#9#9#9#9
      ')a')
    Left = 194
    Top = 280
    object qry_excelSTT: TFloatField
      FieldName = 'STT'
    end
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
    object qry_excelSailing_Date: TDateTimeField
      FieldName = 'Sailing_Date'
    end
    object qry_excelCO_Vessel: TStringField
      FieldName = 'CO_Vessel'
      FixedChar = True
      Size = 50
    end
    object qry_excelCO_Voyage: TStringField
      FieldName = 'CO_Voyage'
      FixedChar = True
      Size = 50
    end
    object qry_excelCustoms_No: TStringField
      FieldName = 'Customs_No'
      FixedChar = True
      Size = 50
    end
    object qry_excelCustoms_Date: TDateTimeField
      FieldName = 'Customs_Date'
    end
    object qry_excelCO_RCV_From: TDateTimeField
      FieldName = 'CO_RCV_From'
    end
    object qry_excelCO_Apply_Date: TDateTimeField
      FieldName = 'CO_Apply_Date'
    end
    object qry_excelCO_Return_Org: TDateTimeField
      FieldName = 'CO_Return_Org'
    end
    object qry_excelCO_Kind_Form: TStringField
      FieldName = 'CO_Kind_Form'
      FixedChar = True
      Size = 50
    end
    object qry_excelCO_No: TStringField
      FieldName = 'CO_No'
      FixedChar = True
      Size = 50
    end
    object qry_excelCO_Date: TDateTimeField
      FieldName = 'CO_Date'
    end
    object qry_excelCO_Send_Draf: TDateTimeField
      FieldName = 'CO_Send_Draf'
    end
    object qry_excelCO_Cust_CFM: TDateTimeField
      FieldName = 'CO_Cust_CFM'
    end
    object qry_excelCO_Remark: TStringField
      FieldName = 'CO_Remark'
      FixedChar = True
      Size = 50
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
      Size = 50
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
    object qry_excelShipmode: TStringField
      FieldName = 'Shipmode'
      FixedChar = True
      Size = 4
    end
    object qry_excelCO_HSCode: TStringField
      FieldName = 'CO_HSCode'
      FixedChar = True
      Size = 50
    end
    object qry_excelCO_RCV_OriDocz: TDateTimeField
      FieldName = 'CO_RCV_OriDocz'
    end
    object qry_excelCO_Inv_Date: TDateTimeField
      FieldName = 'CO_Inv_Date'
    end
    object qry_excelCO_Provide_Org: TStringField
      FieldName = 'CO_Provide_Org'
      FixedChar = True
      Size = 50
    end
    object qry_excelCO_CFMID: TStringField
      FieldName = 'CO_CFMID'
      FixedChar = True
      Size = 10
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
    object qry_excelVND_USD: TFloatField
      FieldName = 'VND_USD'
    end
  end
  object DS3: TDataSource
    DataSet = qry_excel
    Left = 194
    Top = 248
  end
  object Pop_Excel: TPopupMenu
    Left = 194
    Top = 313
    object Excel1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel Files|*.xls'
    Left = 52
    Top = 250
  end
  object Pop_Co: TPopupMenu
    OnPopup = Pop_CoPopup
    Left = 120
    Top = 345
    object MultiSelect1: TMenuItem
      Caption = 'Multi Select'
      OnClick = MultiSelect1Click
    end
    object Confirm1: TMenuItem
      Caption = 'Confirm'
      OnClick = Confirm1Click
    end
    object Unconfirm1: TMenuItem
      Caption = 'UnConfirm'
      OnClick = Unconfirm1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object UpLoadPDF1: TMenuItem
      Caption = 'UpLoad PDF'
      OnClick = UpLoadPDF1Click
    end
    object DownLoadPDF1: TMenuItem
      Caption = 'DownLoad PDF'
      OnClick = DownLoadPDF1Click
    end
    object DeletePDF1: TMenuItem
      Caption = 'Delete PDF'
      OnClick = DeletePDF1Click
    end
  end
  object DS_INV: TDataSource
    DataSet = Qry_INV
    Left = 239
    Top = 248
  end
  object Qry_INV: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT sb.INV_NO,sb.ExFty_Date,sb.Kind_Loading,sb.Forwarder,sb.S' +
        'ailing_Date'
      
        '       ,sb.Customs_No,sb.Customs_Date,sb.CO_Provide_Org,sb.CO_Ki' +
        'nd_Form,sb.CO_No,sb.CO_Date'
      'FROM Ship_Booking sb'
      'WHERE 1=2')
    Left = 239
    Top = 280
    object Qry_INVINV_NO: TStringField
      FieldName = 'INV_NO'
      Origin = 'MYDB.Ship_Booking.INV_NO'
      FixedChar = True
      Size = 30
    end
    object Qry_INVExFty_Date: TDateTimeField
      FieldName = 'ExFty_Date'
      Origin = 'MYDB.Ship_Booking.ExFty_Date'
    end
    object Qry_INVKind_Loading: TStringField
      FieldName = 'Kind_Loading'
      Origin = 'MYDB.Ship_Booking.Kind_Loading'
      FixedChar = True
      Size = 50
    end
    object Qry_INVForwarder: TStringField
      FieldName = 'Forwarder'
      Origin = 'MYDB.Ship_Booking.Forwarder'
      FixedChar = True
      Size = 50
    end
    object Qry_INVSailing_Date: TDateTimeField
      FieldName = 'Sailing_Date'
      Origin = 'MYDB.Ship_Booking.Sailing_Date'
    end
    object Qry_INVCustoms_No: TStringField
      FieldName = 'Customs_No'
      Origin = 'MYDB.Ship_Booking.Customs_No'
      FixedChar = True
      Size = 50
    end
    object Qry_INVCustoms_Date: TDateTimeField
      FieldName = 'Customs_Date'
      Origin = 'MYDB.Ship_Booking.Customs_Date'
    end
    object Qry_INVCO_Provide_Org: TStringField
      FieldName = 'CO_Provide_Org'
      Origin = 'MYDB.Ship_Booking.CO_Provide_Org'
      FixedChar = True
      Size = 50
    end
    object Qry_INVCO_Kind_Form: TStringField
      FieldName = 'CO_Kind_Form'
      Origin = 'MYDB.Ship_Booking.CO_Kind_Form'
      FixedChar = True
      Size = 50
    end
    object Qry_INVCO_No: TStringField
      FieldName = 'CO_No'
      Origin = 'MYDB.Ship_Booking.CO_No'
      FixedChar = True
      Size = 50
    end
    object Qry_INVCO_Date: TDateTimeField
      FieldName = 'CO_Date'
      Origin = 'MYDB.Ship_Booking.CO_Date'
    end
  end
  object Qry_Message: TQuery
    AfterOpen = Qry_MessageAfterOpen
    BeforeClose = Qry_MessageBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT Top 1 1'
      'FROM Ship_Booking sb'
      
        'WHERE sb.CFMID IS NOT NULL AND sb.CO_CFMID IS NULL AND (GetDate(' +
        ') - sb.Sailing_Date)>7')
    Left = 20
    Top = 278
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 19
    Top = 310
  end
  object DS_INVRy: TDataSource
    DataSet = Qry_INVRy
    Left = 272
    Top = 248
  end
  object Qry_INVRy: TQuery
    DatabaseName = 'DB'
    DataSource = DS_INV
    SQL.Strings = (
      
        'SELECT inv.INV_NO, inv.PACK_NO, inv.RYNO, inv.PO,inv.STYLE_NAME,' +
        ' inv.CUSTORDNO,inv.ARTICLE       '
      
        #9',im.CUSTID AS MCUSTMER,de.COUNTRYEN, pd.CTS, pd.Pairs, pd.NW,pd' +
        '.GW, pd.CBM,inv.CO_HSCode'
      
        #9','#39#39' AS Shipmode,inv.SIZE_RUN,inv.UNIT_PRICE, inv.AMOUNT,'#39#39' SPEC' +
        'ID'
      
        'FROM INVOICE_D inv LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV' +
        '_NO AND pd.RYNO = inv.RYNO'
      'LEFT JOIN YWDD y ON y.DDBH=inv.RYNO'
      'LEFT JOIN DDZL do ON do.DDBH=y.YSBH'
      'LEFT JOIN INVOICE_M im ON im.INV_NO=inv.INV_NO'
      'LEFT JOIN DE_CUST de ON im.CUSTID=de.CUSTID'
      'where inv.INV_NO=:INV_NO')
    Left = 272
    Top = 280
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'INV_NO'
        ParamType = ptUnknown
        Size = 31
      end>
    object StringField1: TStringField
      FieldName = 'PACK_NO'
      FixedChar = True
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'PO'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'STYLE_NAME'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'CUSTORDNO'
      FixedChar = True
      Size = 15
    end
    object StringField5: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'MCUSTMER'
      FixedChar = True
      Size = 6
    end
    object StringField7: TStringField
      FieldName = 'COUNTRYEN'
      FixedChar = True
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'CTS'
    end
    object IntegerField2: TIntegerField
      FieldName = 'Pairs'
    end
    object FloatField1: TFloatField
      FieldName = 'NW'
    end
    object FloatField2: TFloatField
      FieldName = 'GW'
    end
    object FloatField3: TFloatField
      FieldName = 'CBM'
    end
    object StringField8: TStringField
      FieldName = 'Shipmode'
      FixedChar = True
      Size = 4
    end
    object StringField9: TStringField
      FieldName = 'SIZE_RUN'
      FixedChar = True
      Size = 50
    end
    object FloatField4: TFloatField
      FieldName = 'UNIT_PRICE'
    end
    object FloatField5: TFloatField
      FieldName = 'AMOUNT'
    end
    object StringField10: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object StringField11: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'SPECID'
      FixedChar = True
      Size = 2
    end
    object StringField13: TStringField
      FieldName = 'CO_HSCode'
      FixedChar = True
      Size = 50
    end
  end
  object DS_Liqui: TDataSource
    DataSet = Qry_Liqui
    Left = 324
    Top = 249
  end
  object Qry_Liqui: TQuery
    AfterOpen = Qry_LiquiAfterOpen
    BeforeClose = Qry_LiquiBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ROW_NUMBER() OVER (ORDER BY sb.INV_NO) STT,sb.INV_NO,sc.C' +
        'ountryID,im.TO_WHERE,HS.PAIRS,sb.Customs_No,'#39#39' HSCode'
      
        '    ,sb.Sailing_Date,CASE WHEN sb.CO_Provide_Org='#39'No Need'#39' THEN ' +
        'sb.CO_Provide_Org ELSE NULL END CO_Provide_Org'
      
        '    ,sb.CO_Kind_Form,sb.ReceivedDate,sb.ReleaseDate,sb.Liqui_Rem' +
        'ark,sb.Liqui_UserID,sb.Liqui_UserDate'
      'FROM Ship_Booking sb'
      'LEFT JOIN INVOICE_M im ON im.INV_NO=sb.INV_NO'
      'LEFT JOIN ShipCountry sc ON sc.Memo=im.TO_WHERE'
      'LEFT JOIN ('
      '    SELECT INV_NO,SUM(PAIRS) PAIRS FROM ('
      
        '        Select INV_NO,Sum(PAIRS) PAIRS From INVOICE_D WHERE 1=2 ' +
        'Group by INV_NO'
      '        Union All'
      
        '        Select INV_NO,Sum(Qty) PAIRS From INVOICE_SAMPLE WHERE 1' +
        '=2 Group by INV_NO'
      '      )A GROUP BY INV_NO'
      '    )HS ON HS.INV_NO=sb.INV_NO'
      'WHERE 1=2')
    UpdateObject = Up_Liqui
    Left = 324
    Top = 281
    object Qry_LiquiSTT: TFloatField
      FieldName = 'STT'
    end
    object Qry_LiquiINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object Qry_LiquiCountryID: TStringField
      FieldName = 'CountryID'
      FixedChar = True
      Size = 2
    end
    object Qry_LiquiTO_WHERE: TStringField
      FieldName = 'TO_WHERE'
      FixedChar = True
      Size = 50
    end
    object Qry_LiquiPAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
    object Qry_LiquiCustoms_No: TStringField
      FieldName = 'Customs_No'
      FixedChar = True
      Size = 50
    end
    object Qry_LiquiHSCode: TStringField
      FieldName = 'HSCode'
      FixedChar = True
      Size = 1
    end
    object Qry_LiquiSailing_Date: TDateTimeField
      FieldName = 'Sailing_Date'
    end
    object Qry_LiquiCO_Provide_Org: TStringField
      FieldName = 'CO_Provide_Org'
      FixedChar = True
      Size = 50
    end
    object Qry_LiquiCO_Kind_Form: TStringField
      FieldName = 'CO_Kind_Form'
      FixedChar = True
      Size = 50
    end
    object Qry_LiquiReceivedDate: TDateTimeField
      FieldName = 'ReceivedDate'
    end
    object Qry_LiquiReleaseDate: TDateTimeField
      FieldName = 'ReleaseDate'
    end
    object Qry_LiquiLiqui_Remark: TStringField
      FieldName = 'Liqui_Remark'
      FixedChar = True
      Size = 50
    end
    object Qry_LiquiLiqui_UserID: TStringField
      FieldName = 'Liqui_UserID'
      FixedChar = True
      Size = 10
    end
    object Qry_LiquiLiqui_UserDate: TDateTimeField
      FieldName = 'Liqui_UserDate'
    end
  end
  object Up_Liqui: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE Ship_Booking'
      'SET'
      '  ReceivedDate = :ReceivedDate,'
      '  ReleaseDate = :ReleaseDate,'
      '  Liqui_Remark = :Liqui_Remark,'
      '  Liqui_UserID = :Liqui_UserID,'
      '  Liqui_UserDate = GETDATE()'
      'WHERE'
      '  Inv_No = :OLD_Inv_No')
    Left = 324
    Top = 313
  end
  object Pop_Liqui: TPopupMenu
    OnPopup = Pop_LiquiPopup
    Left = 324
    Top = 346
    object btn_Excel_Lidui: TMenuItem
      Caption = 'Excel'
      OnClick = btn_Excel_LiduiClick
    end
  end
  object DS_LiquiS: TDataSource
    DataSet = Qry_LiquiS
    Left = 356
    Top = 249
  end
  object Qry_LiquiS: TQuery
    DatabaseName = 'DB'
    DataSource = DS_Liqui
    SQL.Strings = (
      'SELECT '#39#39'INV_NO,'#39#39'RYNO,'#39#39'CO_HSCode,NULL PAIRS'
      'FROM  Ship_Booking '
      'WHERE 1=2')
    Left = 356
    Top = 281
    object Qry_LiquiSINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 1
    end
    object Qry_LiquiSRYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 1
    end
    object Qry_LiquiSCO_HSCode: TStringField
      FieldName = 'CO_HSCode'
      FixedChar = True
      Size = 1
    end
    object Qry_LiquiSPAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'PDF File|*.PDF'
    Left = 119
    Top = 377
  end
  object SaveDialog2: TSaveDialog
    Filter = 'PDF File|*.PDF'
    Left = 412
    Top = 256
  end
  object Pop_RY: TPopupMenu
    Left = 164
    Top = 652
    object mniMod_RY: TMenuItem
      Caption = 'Modify'
      OnClick = mniMod_RYClick
    end
    object mniSav_RY: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = mniSav_RYClick
    end
    object mniCan_RY: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = mniCan_RYClick
    end
    object mniImport_HSCode: TMenuItem
      Caption = 'Import CBY HS Code'
      Enabled = False
      OnClick = mniImport_HSCodeClick
    end
  end
  object Up_RY: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE INVOICE_D'
      'SET'
      '  CO_HSCode=:CO_HSCode,'
      '  Customs_No=:Customs_No'
      'WHERE INV_NO=:Old_Inv_No AND RYNO=:Old_RYNO')
    Left = 204
    Top = 620
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 136
    Top = 616
  end
end

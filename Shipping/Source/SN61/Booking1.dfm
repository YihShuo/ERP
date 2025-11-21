object Booking: TBooking
  Left = 293
  Top = 247
  Width = 1375
  Height = 633
  Caption = 'Booking'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1367
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 514
      Top = 10
      Width = 19
      Height = 16
      Caption = 'RY'
    end
    object Label2: TLabel
      Left = 195
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
      Left = 306
      Top = 10
      Width = 67
      Height = 16
      Caption = 'Invoice No.'
    end
    object Label4: TLabel
      Left = 498
      Top = 36
      Width = 45
      Height = 16
      Caption = 'Country'
    end
    object Label5: TLabel
      Left = 195
      Top = 42
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
      Left = 299
      Top = 36
      Width = 74
      Height = 16
      Caption = 'Booking No.'
    end
    object Label7: TLabel
      Left = 904
      Top = 24
      Width = 111
      Height = 32
      Caption = 'Booking'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clFuchsia
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 195
      Top = 68
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
      Left = 328
      Top = 64
      Width = 26
      Height = 16
      Caption = 'PO#'
    end
    object Label10: TLabel
      Left = 498
      Top = 64
      Width = 46
      Height = 16
      Caption = 'CustID#'
    end
    object chkInv: TCheckBox
      Left = 8
      Top = 10
      Width = 97
      Height = 17
      Caption = 'Invoice Date'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object DTP3: TDateTimePicker
      Left = 104
      Top = 8
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 1
    end
    object DTP4: TDateTimePicker
      Left = 208
      Top = 8
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 548
      Top = 8
      Width = 100
      Height = 24
      Color = cl3DLight
      TabOrder = 3
    end
    object Button1: TButton
      Left = 807
      Top = 24
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
      Left = 375
      Top = 8
      Width = 115
      Height = 24
      TabOrder = 5
    end
    object chk2: TCheckBox
      Left = 658
      Top = 4
      Width = 89
      Height = 17
      Caption = 'No Confirm'
      TabOrder = 6
    end
    object chk3: TCheckBox
      Left = 658
      Top = 24
      Width = 81
      Height = 17
      Caption = 'Confirmed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Edit3: TEdit
      Left = 548
      Top = 34
      Width = 100
      Height = 24
      TabOrder = 8
    end
    object chk1: TCheckBox
      Left = 8
      Top = 36
      Width = 97
      Height = 17
      Caption = 'Sub Booking'
      TabOrder = 9
    end
    object DTP1: TDateTimePicker
      Left = 104
      Top = 34
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 10
    end
    object DTP2: TDateTimePicker
      Left = 208
      Top = 34
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 11
    end
    object Edit4: TEdit
      Left = 375
      Top = 34
      Width = 115
      Height = 24
      TabOrder = 12
    end
    object chkEx: TCheckBox
      Left = 8
      Top = 62
      Width = 97
      Height = 17
      Caption = 'ExFty Date'
      TabOrder = 13
    end
    object DTP5: TDateTimePicker
      Left = 104
      Top = 60
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 14
    end
    object DTP6: TDateTimePicker
      Left = 208
      Top = 60
      Width = 89
      Height = 24
      Date = 41926.482097430550000000
      Format = 'yyyy/MM/dd'
      Time = 41926.482097430550000000
      TabOrder = 15
    end
    object chksample: TCheckBox
      Left = 658
      Top = 63
      Width = 105
      Height = 17
      Caption = 'Sample Shoe'
      TabOrder = 16
    end
    object chkmass: TCheckBox
      Left = 658
      Top = 42
      Width = 121
      Height = 17
      Caption = 'Mass Production'
      TabOrder = 17
    end
    object Edit5: TEdit
      Left = 375
      Top = 60
      Width = 115
      Height = 24
      TabOrder = 18
    end
    object Edit6: TEdit
      Left = 548
      Top = 60
      Width = 100
      Height = 24
      TabOrder = 19
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 89
    Width = 1367
    Height = 513
    ActivePage = All
    Align = alClient
    TabOrder = 1
    OnChange = PC1Change
    object All: TTabSheet
      Caption = 'All'
      object Splitter1: TSplitter
        Left = 0
        Top = 259
        Width = 1359
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 48
        Width = 1359
        Height = 211
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Book
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
            Color = cl3DLight
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
            EditButtons = <>
            FieldName = 'Booking_No'
            Footers = <>
            Title.Caption = 'Booking No.'
            Title.Color = 16777156
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Book_Date'
            Footers = <>
            Title.Caption = 'Submit Booking'
            Title.TitleButton = True
            Width = 99
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'ExFty_Date'
            Footers = <>
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
            Width = 50
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'COUNTRYEN'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Country'
            Title.TitleButton = True
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            Title.Caption = 'Kind Loading'
            Title.TitleButton = True
            Width = 84
            OnEditButtonClick = DBGridEh1Columns4EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            Title.TitleButton = True
            Width = 123
            OnEditButtonClick = DBGridEh1Columns5EditButtonClick
          end
          item
            EditButtons = <>
            FieldName = 'Place_Delivery'
            Footers = <>
            Title.Caption = 'Place Delivery'
            Title.TitleButton = True
            Width = 131
            OnEditButtonClick = DBGridEh1Columns6EditButtonClick
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Cut_off_time'
            Footers = <>
            Title.Caption = 'Cut off time'
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Cut_off_Date'
            Footers = <>
            Title.Caption = 'Cut off Date'
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'ETD'
            Footers = <>
            Width = 75
          end
          item
            ButtonStyle = cbsNone
            Color = 16758783
            EditButtons = <>
            FieldName = 'ES_FCR_Date'
            Footers = <>
            Title.Caption = 'Delivery Date (ES FCR Date)'
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'Book_Remark'
            Footers = <>
            Title.Caption = 'Remark'
            Width = 96
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
            Width = 45
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'UserDate'
            Footers = <>
            Width = 145
          end
          item
            EditButtons = <>
            FieldName = 'UserID'
            Footers = <>
            Width = 50
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1359
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
        Top = 262
        Width = 1359
        Height = 220
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
            Width = 70
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
            Title.Caption = 'Q'#39'ty'
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
            ReadOnly = True
            Title.Caption = 'Article'
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'CUSTORDNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Custord No.'
          end
          item
            EditButtons = <>
            FieldName = 'STYLE_NAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Style Name'
            Width = 128
          end
          item
            ButtonStyle = cbsNone
            Color = 8978312
            EditButtons = <>
            FieldName = 'DRCode'
            Footers = <>
            Width = 60
            OnEditButtonClick = DBGridEh2Columns14EditButtonClick
          end
          item
            Color = 8978312
            EditButtons = <>
            FieldName = 'DRNAME'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'DRC/ERC'
            Width = 200
          end
          item
            EditButtons = <>
            FieldName = 'Remark'
            Footers = <>
            ReadOnly = True
            Width = 177
          end>
      end
    end
    object Excel: TTabSheet
      Caption = 'Excel'
      ImageIndex = 2
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 0
        Width = 1359
        Height = 482
        Align = alClient
        DataSource = DS4
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
        PopupMenu = Pop_Excel
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh4GetCellParams
        Columns = <
          item
            EditButtons = <>
            FieldName = 'STT'
            Footers = <>
            Title.Caption = 'No.'
            Width = 30
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ExFty_Date'
            Footers = <>
            Title.Caption = 'ExFty Date'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'INV_NO'
            Footers = <>
            Title.Caption = 'Invoice No.'
            Title.TitleButton = True
            Width = 93
          end
          item
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY'
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'PO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'PO#'
            Title.TitleButton = True
            Width = 84
          end
          item
            EditButtons = <>
            FieldName = 'MCUSTMER'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CustID#'
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
            Width = 92
          end
          item
            EditButtons = <>
            FieldName = 'CTS'
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
            Footer.FieldName = 'Pairs'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Q'#39'ty'
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
            ReadOnly = True
            Width = 50
          end
          item
            DisplayFormat = '#,##0.000'
            EditButtons = <>
            FieldName = 'GW'
            Footer.FieldName = 'GW'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
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
            ReadOnly = True
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'Booking_No'
            Footers = <>
            Title.Caption = 'Booking No.'
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'Book_Date'
            Footers = <>
            Title.Caption = 'Submit Booking'
            Title.TitleButton = True
            Width = 101
          end
          item
            EditButtons = <>
            FieldName = 'Shipmode'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Ship Mode'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            Title.Caption = 'Kind Loading'
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Place_Delivery'
            Footers = <>
            Title.Caption = 'Place Delivery'
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'Cut_off_time'
            Footers = <>
            Title.Caption = 'Cut off time'
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'Cut_off_Date'
            Footers = <>
            Title.Caption = 'Cut off Date (Loading Date)'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'Book_Remark'
            Footers = <>
            Title.Caption = 'Remark'
            Width = 150
          end>
      end
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
  object DS2: TDataSource
    DataSet = qry_Ry
    Left = 108
    Top = 417
  end
  object DS1: TDataSource
    DataSet = qry_book
    Left = 102
    Top = 191
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Excel Files|*.xls'
    Left = 404
    Top = 258
  end
  object Pop_Book: TPopupMenu
    OnPopup = Pop_BookPopup
    Left = 102
    Top = 286
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
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 220
  end
  object qry_book: TQuery
    AfterOpen = qry_bookAfterOpen
    BeforeClose = qry_bookBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'SELECT im.INV_NO, im.CUSTID,im.TO_WHERE as COUNTRYEN,sb.INV_NO,s' +
        'b.Book_Date,sb.Kind_Loading,sb.Forwarder,sb.Place_Delivery,sb.Bo' +
        'ok_Remark,sb.CFMID,sb.CFMDate,sb.ETD,sb.YN,sb.UserID,sb.UserDate'
      
        '      ,sb.ExFty_Date,sb.Cut_off_time,sb.Cut_off_Date,sb.Booking_' +
        'No,sb.Bill_FCR_Date,sb.ES_FCR_Date,sb.Bill_UserID,sb.CO_UserID,i' +
        'm.Inv_Type,im.PRINT_LOCK,sb.Pay_UserID'
      
        'FROM INVOICE_M im LEFT JOIN Ship_Booking sb ON sb.INV_NO = im.IN' +
        'V_NO'
      #9#9#9#9'  LEFT JOIN INVOICE_D id ON id.INV_NO=im.INV_NO'
      #9#9#9#9'  LEFT JOIN DDZL do ON do.DDBH=id.RYNO'
      'WHERE 1=2 AND im.PRINT_LOCK='#39'Y'#39' AND do.DDZT <> '#39'C'#39
      
        'GROUP BY im.INV_NO, im.CUSTID,im.TO_WHERE,sb.INV_NO,sb.Book_Date' +
        ',sb.Kind_Loading,sb.Forwarder,sb.Place_Delivery,sb.Book_Remark,s' +
        'b.CFMID,sb.CFMDate,sb.ETD,sb.YN,sb.UserID,sb.UserDate'
      
        '      ,sb.ExFty_Date,sb.Cut_off_time,sb.Cut_off_Date,sb.Booking_' +
        'No,sb.Bill_FCR_Date,sb.ES_FCR_Date,sb.Bill_UserID,sb.CO_UserID,i' +
        'm.Inv_Type,im.PRINT_LOCK,sb.Pay_UserID')
    UpdateObject = UpdateSQL1
    Left = 102
    Top = 221
    object qry_bookCUSTID: TStringField
      FieldName = 'CUSTID'
      Origin = 'MYDB.Ship_Booking.Book_Date'
      FixedChar = True
      Size = 10
    end
    object qry_bookBook_Date: TDateTimeField
      FieldName = 'Book_Date'
      Origin = 'MYDB.Ship_Booking.CFMDate'
    end
    object qry_bookKind_Loading: TStringField
      FieldName = 'Kind_Loading'
      Origin = 'MYDB.Ship_Booking.YN'
      FixedChar = True
      Size = 50
    end
    object qry_bookForwarder: TStringField
      FieldName = 'Forwarder'
      Origin = 'MYDB.Ship_Booking.UserID'
      FixedChar = True
      Size = 50
    end
    object qry_bookPlace_Delivery: TStringField
      FieldName = 'Place_Delivery'
      Origin = 'MYDB.Ship_Booking.UserDate'
      FixedChar = True
      Size = 50
    end
    object qry_bookBook_Remark: TStringField
      FieldName = 'Book_Remark'
      Origin = 'MYDB.INVOICE_M.INV_NO'
      FixedChar = True
      Size = 500
    end
    object qry_bookCFMID: TStringField
      FieldName = 'CFMID'
      Origin = 'MYDB.INVOICE_M.CUSTID'
      FixedChar = True
      Size = 10
    end
    object qry_bookCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'MYDB.INVOICE_M.INV_DATE'
    end
    object qry_bookYN: TStringField
      FieldName = 'YN'
      Origin = 'MYDB.INVOICE_M.TO_WHERE'
      FixedChar = True
      Size = 1
    end
    object qry_bookUserID: TStringField
      FieldName = 'UserID'
      Origin = 'MYDB.INVOICE_M.TOTAL_PAIRS'
      FixedChar = True
      Size = 10
    end
    object qry_bookUserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'MYDB.INVOICE_M.TOTAL_AMOUNT'
    end
    object qry_bookCOUNTRYEN: TStringField
      FieldName = 'COUNTRYEN'
      FixedChar = True
      Size = 50
    end
    object qry_bookCut_off_Date: TDateTimeField
      FieldName = 'Cut_off_Date'
    end
    object qry_bookExFty_Date: TDateTimeField
      FieldName = 'ExFty_Date'
      OnChange = qry_bookExFty_DateChange
    end
    object qry_bookETD: TDateTimeField
      FieldName = 'ETD'
    end
    object qry_bookCut_off_time: TStringField
      FieldName = 'Cut_off_time'
      FixedChar = True
      Size = 11
    end
    object qry_bookBooking_No: TStringField
      FieldName = 'Booking_No'
      FixedChar = True
    end
    object qry_bookBill_FCR_Date: TDateTimeField
      FieldName = 'Bill_FCR_Date'
    end
    object qry_bookES_FCR_Date: TDateTimeField
      FieldName = 'ES_FCR_Date'
      OnChange = qry_bookES_FCR_DateChange
    end
    object qry_bookBill_UserID: TStringField
      FieldName = 'Bill_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_bookCO_UserID: TStringField
      FieldName = 'CO_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_bookInv_Type: TStringField
      FieldName = 'Inv_Type'
      FixedChar = True
      Size = 50
    end
    object qry_bookPRINT_LOCK: TStringField
      FieldName = 'PRINT_LOCK'
      FixedChar = True
      Size = 2
    end
    object qry_bookPay_UserID: TStringField
      FieldName = 'Pay_UserID'
      FixedChar = True
      Size = 10
    end
    object qry_bookINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
  end
  object qry_Ry: TQuery
    BeforeClose = qry_RyBeforeClose
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT inv.INV_NO, inv.PACK_NO, inv.RYNO, inv.PO,inv.STYLE_NAME,' +
        ' inv.CUSTORDNO,inv.ARTICLE'
      
        #9',im.CUSTID AS MCUSTMER,de.COUNTRYEN, pd.CTS, pd.Pairs, pd.NW,pd' +
        '.GW, pd.CBM'
      '  ,'#39#39' as shipmode'
      
        '   ,do.DDZT as Status,DELAYREASON.DRCODE+'#39' '#39'+DELAYREASON.DRNAME ' +
        'Remark,'#39#39' as SPECID'
      '   ,inv.DRCode,dr.DRNAME,inv.UserID, inv.UserDate'
      
        'FROM INVOICE_D inv LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV' +
        '_NO AND pd.RYNO = inv.RYNO'
      'LEFT JOIN YWDD y ON y.DDBH=inv.RYNO'
      'LEFT JOIN KPI_DeReason on KPI_DeReason.RYNO=y.DDBH'
      'LEFT JOIN DELAYREASON on DELAYREASON.DRCODE=KPI_DeReason.RE_SDP'
      'LEFT JOIN DELAYREASON dr ON dr.DRCODE=inv.DRCode'
      'LEFT JOIN DDZL do ON do.DDBH=y.YSBH'
      'LEFT JOIN INVOICE_M im ON im.INV_NO=inv.INV_NO'
      'LEFT JOIN DE_CUST de ON im.CUSTID=de.CUSTID'
      'WHERE inv.INV_NO=:INV_NO'
      ' ')
    UpdateObject = Up_RY
    Left = 108
    Top = 452
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
    object qry_RySTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qry_RyRemark: TStringField
      FieldName = 'Remark'
      FixedChar = True
      Size = 105
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
    object qry_RyDRCode: TStringField
      FieldName = 'DRCode'
      FixedChar = True
      Size = 4
    end
    object qry_RyDRNAME: TStringField
      FieldName = 'DRNAME'
      FixedChar = True
      Size = 100
    end
    object qry_RyUserID: TStringField
      FieldName = 'UserID'
      FixedChar = True
    end
    object qry_RyUserDate: TDateTimeField
      FieldName = 'UserDate'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE Ship_Booking SET'
      'Book_Date=:Book_Date'
      ',Kind_Loading=:Kind_Loading'
      ',Forwarder=:Forwarder'
      ',Place_Delivery=:Place_Delivery'
      ',Book_Remark=:Book_Remark'
      ',UserID=:UserID'
      ',UserDate=GETDATE()'
      ',ExFty_Date=:ExFty_Date'
      ',ETD=:ETD'
      ',Cut_off_time=:Cut_off_time'
      ',Cut_off_Date=:Cut_off_Date'
      ',Booking_No=:Booking_No'
      ',Bill_FCR_Date=:Bill_FCR_Date'
      ',ES_FCR_Date=:ES_FCR_Date'
      'WHERE INV_NO=:INV_NO  ')
    InsertSQL.Strings = (
      
        'INSERT INTO Ship_Booking (INV_NO,Book_Date,Kind_Loading,Forwarde' +
        'r,Place_Delivery,Book_Remark,CFMID,CFMDate,YN,UserID,UserDate,Ex' +
        'Fty_Date,ETD,Cut_off_time,Cut_off_Date,Booking_No,Bill_FCR_Date,' +
        'ES_FCR_Date)'
      
        '     VALUES (:INV_NO,:Book_Date,:Kind_Loading,:Forwarder,:Place_' +
        'Delivery,:Book_Remark,:CFMID,:CFMDate,:YN,:UserID,GETDATE(),:ExF' +
        'ty_Date,:ETD,:Cut_off_time,:Cut_off_Date,:Booking_No,:Bill_FCR_D' +
        'ate,:ES_FCR_Date)')
    DeleteSQL.Strings = (
      'DELETE FROM Ship_Booking '
      'WHERE Inv_No=:old_Inv_No')
    Left = 102
    Top = 252
  end
  object qry_excel: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT ROW_NUMBER() OVER (ORDER BY a.Booking_No) STT,a.* '
      'FROM ('
      
        'SELECT inv.INV_NO, inv.PO,'#39#39' as MCUSTMER,INVOICE_M.TO_WHERE as C' +
        'OUNTRYEN, inv.RYNO, pd.CTS, pd.Pairs, pd.NW,pd.GW, pd.CBM'
      
        #9#9',sb.Booking_No,sb.Book_Date,sb.Kind_Loading,sb.Forwarder,sb.Pl' +
        'ace_Delivery,sb.Book_Remark,sb.ETD,sb.ExFty_Date,sb.Cut_off_time' +
        ',sb.Cut_off_Date,sb.CFMID'
      #9#9','#39#39' AS Shipmode,do.ddzt as STATUS,'#39#39' SPECID'
      
        'FROM INVOICE_D inv LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV' +
        '_NO AND pd.RYNO = inv.RYNO'
      'inner JOIN Ship_Booking sb ON sb.INV_NO = inv.INV_NO'
      'LEFT JOIN DDZL do ON do.DDBH=inv.RYNO'
      'left join INVOICE_M on INVOICE_M.inv_no=inv.Inv_no'
      'WHERE 1=2 AND INVOICE_M.PRINT_LOCK='#39'Y'#39
      ')a')
    Left = 556
    Top = 222
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
    object qry_excelExFty_Date: TDateTimeField
      FieldName = 'ExFty_Date'
    end
    object qry_excelBooking_No: TStringField
      FieldName = 'Booking_No'
      FixedChar = True
      Size = 10
    end
    object qry_excelBook_Date: TDateTimeField
      FieldName = 'Book_Date'
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
    object qry_excelBook_Remark: TStringField
      FieldName = 'Book_Remark'
      FixedChar = True
      Size = 50
    end
    object qry_excelETD: TDateTimeField
      FieldName = 'ETD'
    end
    object qry_excelCut_off_time: TStringField
      FieldName = 'Cut_off_time'
      FixedChar = True
      Size = 11
    end
    object qry_excelCut_off_Date: TDateTimeField
      FieldName = 'Cut_off_Date'
    end
    object qry_excelShipmode: TStringField
      FieldName = 'Shipmode'
      FixedChar = True
      Size = 4
    end
    object qry_excelSTT: TFloatField
      FieldName = 'STT'
    end
    object qry_excelCFMID: TStringField
      FieldName = 'CFMID'
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
  end
  object DS4: TDataSource
    DataSet = qry_excel
    Left = 556
    Top = 254
  end
  object Pop_Excel: TPopupMenu
    Left = 556
    Top = 289
    object MenuItem1: TMenuItem
      Caption = 'Excel'
      OnClick = Excel1Click
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 232
    Top = 252
  end
  object Up_RY: TUpdateSQL
    ModifySQL.Strings = (
      'UPDATE INVOICE_D'
      'SET'
      '  DRCode=:DRCode'
      ' ,UserID=:UserID'
      ' ,UserDate=GETDATE()'
      'WHERE INV_NO=:Old_Inv_No AND RYNO=:Old_RYNO')
    Left = 108
    Top = 484
  end
  object Pop_RY: TPopupMenu
    OnPopup = Pop_RYPopup
    Left = 108
    Top = 516
    object mniMod_RY: TMenuItem
      Caption = 'Modify'
      OnClick = mniMod_RYClick
    end
    object mniSav_RY: TMenuItem
      Caption = 'Save'
      OnClick = mniSav_RYClick
    end
    object mniCan_RY: TMenuItem
      Caption = 'Cancel'
      OnClick = mniCan_RYClick
    end
  end
end

object PurSampleInvoice: TPurSampleInvoice
  Left = 235
  Top = 27
  Width = 1386
  Height = 711
  Caption = 'PurSampleInvoice'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 51
    Align = alTop
    TabOrder = 0
    object Lbl_Warnning: TLabel
      Left = 1088
      Top = 27
      Width = 199
      Height = 20
      Caption = 'Warning:Problem Invoice'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 446
      Top = 7
      Width = 35
      Height = 13
      Caption = 'Invoice'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 297
      Top = 7
      Width = 53
      Height = 13
      Caption = 'SuppName'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 315
      Top = 31
      Width = 35
      Height = 13
      Caption = 'Pur NO'
    end
    object Label10: TLabel
      Left = 449
      Top = 31
      Width = 32
      Height = 13
      Caption = 'Mat ID'
    end
    object Label3: TLabel
      Left = 785
      Top = 7
      Width = 23
      Height = 13
      Caption = 'From'
    end
    object Label4: TLabel
      Left = 902
      Top = 7
      Width = 7
      Height = 13
      Caption = '~'
    end
    object Invoive_Cust: TLabel
      Left = 622
      Top = 30
      Width = 62
      Height = 13
      Caption = 'Invoive_Cust'
    end
    object Label2: TLabel
      Left = 655
      Top = 8
      Width = 29
      Height = 13
      Caption = 'BillNO'
    end
    object Label30: TLabel
      Left = 907
      Top = 31
      Width = 28
      Height = 13
      Caption = 'Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label7: TLabel
      Left = 784
      Top = 31
      Width = 45
      Height = 13
      Caption = 'Transport'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BB2: TBitBtn
      Left = 3
      Top = 2
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
      Left = 51
      Top = 2
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
      Left = 99
      Top = 2
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
      Left = 147
      Top = 2
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
      Left = 195
      Top = 2
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
      Left = 243
      Top = 2
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
    object BBTT1: TBitBtn
      Left = 295
      Top = 24
      Width = 19
      Height = 25
      Caption = '...'
      TabOrder = 12
      Visible = False
      OnClick = BBTT1Click
    end
    object Edit1: TEdit
      Left = 482
      Top = 3
      Width = 131
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 350
      Top = 3
      Width = 87
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      OnKeyPress = Edit3KeyPress
    end
    object Edit2: TEdit
      Left = 350
      Top = 27
      Width = 87
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 13
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 482
      Top = 27
      Width = 131
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 14
      OnKeyPress = Edit3KeyPress
    end
    object DTP1: TDateTimePicker
      Left = 814
      Top = 3
      Width = 86
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 8
    end
    object DTP2: TDateTimePicker
      Left = 913
      Top = 3
      Width = 88
      Height = 21
      Date = 39255.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39255.000000000000000000
      TabOrder = 9
    end
    object Check: TCheckBox
      Left = 1008
      Top = 31
      Width = 48
      Height = 17
      Caption = 'Mine'
      Checked = True
      State = cbChecked
      TabOrder = 11
    end
    object Button1: TButton
      Left = 1009
      Top = 2
      Width = 70
      Height = 23
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 691
      Top = 27
      Width = 84
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 15
      OnKeyPress = Edit3KeyPress
    end
    object Edit6: TEdit
      Left = 691
      Top = 4
      Width = 84
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 16
      OnKeyPress = Edit3KeyPress
    end
    object ComboBox14: TComboBox
      Left = 940
      Top = 27
      Width = 61
      Height = 21
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 17
      Visible = False
      Items.Strings = (
        ''
        'SKX'
        'SRL')
    end
    object ComboBox1: TComboBox
      Left = 833
      Top = 27
      Width = 67
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 18
      Items.Strings = (
        ''
        'Air'
        'Sea'
        'DHL'
        'H/C'
        'Truck')
    end
    object Button2: TButton
      Left = 1083
      Top = 2
      Width = 70
      Height = 23
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = Button2Click
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 102
    Width = 1370
    Height = 570
    ActivePage = TS3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = PC1Change
    object TS3: TTabSheet
      Caption = 'Invoice'
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 0
        Top = 140
        Width = 1362
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1362
        Height = 140
        Align = alClient
        DataSource = DS3
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnDblClick = DBGrid3DblClick
        OnDrawColumnCell = DBGrid3DrawColumnCell
        OnEditButtonClick = DBGrid3EditButtonClick
        OnKeyPress = DBGrid3KeyPress
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'CINO'
            Footers = <>
            Title.TitleButton = True
            Width = 80
          end
          item
            ButtonStyle = cbsNone
            Color = 8454143
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'ID'
            Title.TitleButton = True
            Width = 47
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier'
            Title.TitleButton = True
            Width = 119
          end
          item
            Color = 8454143
            EditButtons = <>
            FieldName = 'Invoice'
            Footers = <>
            Title.Caption = 'Invoice NO'
            Title.TitleButton = True
            Width = 128
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Invoice_Customs'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice Customs'
            Width = 48
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Title.Caption = 'Delivery date'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'BillNO'
            Footers = <>
            Title.TitleButton = True
            Width = 112
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'transport'
            Footers = <>
            PickList.Strings = (
              'Air'
              'Sea'
              'DHL'
              'H/C'
              'Truck')
            Title.TitleButton = True
            Width = 53
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Custom'
            Footers = <>
            PickList.Strings = (
              ''
              'NK'
              'KD'
              'XT'
              'HD'
              'GC'
              'NO'
              'KDSXXK')
            Title.TitleButton = True
            Width = 45
          end
          item
            EditButtons = <>
            FieldName = 'InvoiceToWarehouseDate'
            Footers = <>
            Width = 169
          end
          item
            EditButtons = <>
            FieldName = 'Freight_fee_VND'
            Footers = <>
            Width = 113
          end
          item
            EditButtons = <>
            FieldName = 'Freight_fee_USD'
            Footers = <>
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'TotalAmount'
            Footers = <>
            Title.Caption = 'Total Amount / Tax'
            Width = 85
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'CIDate'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 65
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 65
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 143
        Width = 1362
        Height = 396
        Align = alBottom
        TabOrder = 1
        object Panel5: TPanel
          Left = 1
          Top = 52
          Width = 1360
          Height = 343
          Align = alClient
          TabOrder = 1
          object Splitter1: TSplitter
            Left = 1018
            Top = 1
            Height = 341
            Align = alRight
            Color = clSkyBlue
            ParentColor = False
          end
          object DBGridEh7: TDBGridEh
            Left = 1021
            Top = 1
            Width = 338
            Height = 341
            Align = alRight
            Color = clScrollBar
            DataSource = DS5
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'Article'
                Footers = <>
                Title.Caption = 'SR#'
                Width = 109
              end
              item
                EditButtons = <>
                FieldName = 'YSSM'
                Footers = <>
                Title.Caption = 'Color Way'
                Width = 107
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
                Width = 38
              end
              item
                EditButtons = <>
                FieldName = 'Stage'
                Footers = <>
                Width = 39
              end
              item
                EditButtons = <>
                FieldName = 'FD'
                Footers = <>
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'XIEMING'
                Footers = <>
                Width = 121
              end
              item
                EditButtons = <>
                FieldName = 'OSsize'
                Footers = <>
              end
              item
                EditButtons = <>
                FieldName = 'ProductionLocation'
                Footers = <>
                Width = 76
              end
              item
                EditButtons = <>
                FieldName = 'LAI'
                Footers = <>
                Width = 48
              end>
          end
          object DBGrid4: TDBGridEh
            Left = 1
            Top = 1
            Width = 1017
            Height = 341
            Align = alClient
            DataSource = DS4
            Flat = False
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -15
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            FooterRowCount = 1
            SumList.Active = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid4DrawColumnCell
            Columns = <
              item
                EditButtons = <>
                FieldName = 'CGNO'
                Footer.FieldName = 'CGNO'
                Footer.ValueType = fvtCount
                Footers = <>
                Width = 84
              end
              item
                EditButtons = <>
                FieldName = 'CLBH'
                Footers = <>
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'YWPM'
                Footers = <>
                ReadOnly = True
                Width = 211
              end
              item
                EditButtons = <>
                FieldName = 'FlexCode'
                Footers = <>
                Width = 93
              end
              item
                EditButtons = <>
                FieldName = 'MatRemark'
                Footers = <>
                Title.Caption = 'Mat.Remark'
                Width = 120
              end
              item
                DisplayFormat = 'yyyy/MM/dd'
                EditButtons = <>
                FieldName = 'RKdate'
                Footers = <>
                Title.Caption = 'In-stock Date'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'PurReceiveDate'
                Footers = <>
                Width = 106
              end
              item
                EditButtons = <>
                FieldName = 'DTMReceivedDate'
                Footers = <>
                Title.Caption = 'DTM ReceivedDate'
              end
              item
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <
                  item
                    FieldName = 'Qty'
                    ValueType = fvtSum
                  end>
                MRUList.Active = True
                Width = 39
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'DWBH'
                Footers = <>
                ReadOnly = True
                Width = 31
              end
              item
                EditButtons = <>
                FieldName = 'MOQ'
                Footers = <>
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Deyeing_fee'
                Footers = <>
                Title.Caption = 'DYEING FEE'
                Width = 100
              end
              item
                EditButtons = <>
                FieldName = 'Other_fee_VND'
                Footers = <>
                Title.Caption = 'Freight_fee_VND'
                Width = 101
              end
              item
                EditButtons = <>
                FieldName = 'Other_fee_USD'
                Footers = <>
                Title.Caption = 'Freight_fee_USD'
                Width = 99
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'PMARK'
                Footers = <>
                ReadOnly = True
                Width = 28
              end
              item
                EditButtons = <>
                FieldName = 'Memo'
                Footers = <>
                Width = 69
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'USERDate'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'UserDate'
                Width = 50
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'UserID'
                Width = 38
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'hgbh'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Customs No'
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'hgpm'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Customs Name'
                Width = 244
              end
              item
                Color = clMoneyGreen
                EditButtons = <>
                FieldName = 'Invoice_Customs'
                Footers = <>
                ReadOnly = True
                Title.Caption = 'Invoice Customs'
                Width = 86
              end>
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 1
          Width = 1360
          Height = 51
          Align = alTop
          TabOrder = 0
          object Label19: TLabel
            Left = 586
            Top = 6
            Width = 44
            Height = 16
            Caption = 'Mat. ID:'
          end
          object Label20: TLabel
            Left = 588
            Top = 27
            Width = 62
            Height = 16
            Caption = 'MatName:'
          end
          object Label6: TLabel
            Left = 802
            Top = 6
            Width = 103
            Height = 16
            Caption = 'PurReceiveDate:'
          end
          object BDT6: TBitBtn
            Left = 346
            Top = 2
            Width = 55
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Print-All'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnClick = BDT6Click
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
          object BD2: TBitBtn
            Left = 56
            Top = 2
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
            Left = 104
            Top = 2
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
            Left = 152
            Top = 2
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
            Left = 200
            Top = 2
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
            Left = 248
            Top = 2
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
            Left = 296
            Top = 2
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
          object BDT5: TBitBtn
            Left = 400
            Top = 2
            Width = 49
            Height = 49
            Hint = 'Modify Current'
            Caption = 'Print-1'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnClick = BDT5Click
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
            Left = 448
            Top = 2
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
          object DBEdit13: TDBEdit
            Left = 634
            Top = 2
            Width = 89
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CLBH'
            DataSource = DS4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBMemo1: TDBMemo
            Left = 652
            Top = 26
            Width = 421
            Height = 18
            DataField = 'YWPM'
            DataSource = DS4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object BBTT3: TBitBtn
            Left = 728
            Top = 3
            Width = 45
            Height = 22
            Caption = 'Import'
            TabOrder = 11
            Visible = False
            OnClick = BBTT3Click
          end
          object BitBtn2: TBitBtn
            Left = 496
            Top = 2
            Width = 75
            Height = 49
            Caption = 'Hang Tag'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = #24494#36575#27491#40657#39636
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnClick = BitBtn2Click
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
          object below: TButton
            Left = 1024
            Top = 0
            Width = 49
            Height = 25
            Caption = 'Copy'
            TabOrder = 13
            Visible = False
            OnClick = belowClick
          end
          object DTP3: TDateTimePicker
            Left = 912
            Top = 3
            Width = 105
            Height = 21
            Date = 44835.000000000000000000
            Format = 'yyyy/MM/dd'
            Time = 44835.000000000000000000
            TabOrder = 14
          end
        end
      end
    end
    object TS5: TTabSheet
      Caption = 'Query-All-Excel'
      ImageIndex = 2
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1279
        Height = 547
        Align = alClient
        DataSource = DS6
        Flat = False
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 3
        OnDblClick = DBGrid3DblClick
        OnDrawColumnCell = DBGrid3DrawColumnCell
        OnEditButtonClick = DBGrid3EditButtonClick
        OnKeyPress = DBGrid3KeyPress
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'CINO'
            Footers = <>
            Title.TitleButton = True
            Width = 68
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'Supplier|ID'
            Title.TitleButton = True
            Width = 47
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|Name'
            Title.TitleButton = True
            Width = 119
          end
          item
            EditButtons = <>
            FieldName = 'Invoice'
            Footers = <>
            Title.Caption = 'Invoice|NO'
            Title.TitleButton = True
            Width = 128
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Title.Caption = 'Invoice|ETA'
            Title.TitleButton = True
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'BillNO'
            Footers = <>
            Title.TitleButton = True
            Width = 112
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'transport'
            Footers = <>
            PickList.Strings = (
              'Air'
              'Sea'
              'DHL'
              'H/C'
              'Truck')
            Title.TitleButton = True
            Width = 54
          end
          item
            ButtonStyle = cbsNone
            EditButtons = <>
            FieldName = 'Custom'
            Footers = <>
            PickList.Strings = (
              'Yes'
              'No')
            Title.TitleButton = True
            Width = 44
          end
          item
            EditButtons = <>
            FieldName = 'MEMO'
            Footers = <>
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <>
            Title.Caption = 'Pur. NO'
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Material ID'
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Caption = 'Mat. Name'
            Title.TitleButton = True
            Width = 172
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'hgbh'
            Footers = <>
            Title.Caption = 'Customs No'
            Width = 107
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'hgpm'
            Footers = <>
            Title.Caption = 'Customs Name'
            Width = 244
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.TitleButton = True
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'Qty_1'
            Footers = <>
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Caption = 'Unit'
            Title.TitleButton = True
            Width = 29
          end
          item
            EditButtons = <>
            FieldName = 'PMARK'
            Footers = <>
            Title.Caption = 'Print'
            Title.TitleButton = True
            Width = 25
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'CIDate'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 66
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'kfjd'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'article'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'fd'
            Footers = <>
            Width = 108
          end
          item
            EditButtons = <>
            FieldName = 'YSSM'
            Footers = <>
            Width = 185
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Problem Invoice'
      ImageIndex = 3
      object Panel9: TPanel
        Left = 455
        Top = 0
        Width = 455
        Height = 547
        Align = alLeft
        TabOrder = 1
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 453
          Height = 24
          Align = alTop
          TabOrder = 0
          object Label15: TLabel
            Left = 7
            Top = 3
            Width = 46
            Height = 16
            Caption = 'Call IT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBGridEh2: TDBGridEh
          Left = 1
          Top = 25
          Width = 453
          Height = 521
          Align = alClient
          DataSource = DS_Check2
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'CINO'
              Footers = <>
              Width = 223
            end>
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 455
        Height = 547
        Align = alLeft
        TabOrder = 0
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 453
          Height = 24
          Align = alTop
          TabOrder = 0
          object Label16: TLabel
            Left = 7
            Top = 3
            Width = 174
            Height = 16
            Caption = 'Invoice number duplicate'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBGridEh3: TDBGridEh
          Left = 1
          Top = 25
          Width = 453
          Height = 521
          Align = alClient
          DataSource = DS_Check
          Flat = False
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'Invoice'
              Footers = <>
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'CINO'
              Footers = <>
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Width = 86
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              Width = 113
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'MeMo'
      ImageIndex = 3
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1362
        Height = 539
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object Memo1: TMemo
          Left = 1
          Top = 1
          Width = 1360
          Height = 537
          Align = alClient
          Color = clMenuBar
          Font.Charset = ANSI_CHARSET
          Font.Color = 14822282
          Font.Height = -16
          Font.Name = #24494#36575#27491#40657#39636
          Font.Style = []
          Lines.Strings = (
            '-------------------------------------------------------'
            #31243#24335#20027#35201#21151#33021#35498#26126
            ''
            #25505#36092#27171#21697#30332#31080#20358#28304#33287#21040#36008#26085#30340#26597#35426
            #20358#28304#30001'N74 '#27171#21697#21934#36861#36452#65292#20986#36008#26085#33287'NG'#30906#35469
            ''
            '-------------------------------------------------------'
            #20171#38754#20998#21029#21151#33021#35498#26126
            ''
            'Invoice:'#30332#31080#20839#23481
            'Query-All-Excel:'#30332#31080'Excel'#36039#26009
            'Problem Invoice:'#30332#31080#21839#38988
            ''
            '-------------------------------------------------------'
            #36039#26009#31721#36984#25805#20316#35498#26126
            ''
            'SuppName: '#20379#25033#21830#21517#31281
            'Invoice: '#30332#31080
            'PurNo: '#25505#36092#21934#34399
            'MatID: '#26448#26009#32232#34399
            'Invoice_Cust: '#28023#38364#24115
            ''
            '-------------------------------------------------------'
            #37325#40670#27396#20301#35498#26126
            ''
            'Cino: '#25505#36092#21934#34399
            'ID: '#26448#26009#32232#34399
            'Supplier: '#20379#25033#21830#21517#31281
            'Invoice No: '#30332#26009#21934#34399
            'Invoice Customs: '#28023#38364#24115
            'Delivery Date: '#20132#36008#26085
            'BillNo: '#24288#21830#20986#36008#21934#34399
            'Transport: '#36008#36939#26041#24335
            'Custom: '#28023#38364
            'MeMo: '#35498#26126
            ''
            '-------------------------------------------------------')
          ParentFont = False
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 51
    Width = 1370
    Height = 51
    Align = alTop
    TabOrder = 1
    Visible = False
    object BitBtn13: TBitBtn
      Left = 665
      Top = 1
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
      TabOrder = 0
      OnClick = BitBtn13Click
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
    object ckbsel: TCheckBox
      Left = 729
      Top = 8
      Width = 97
      Height = 17
      Caption = 'ckbsel'
      TabOrder = 1
      Visible = False
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 120
    Top = 496
  end
  object CGMas: TQuery
    AfterOpen = CGMasAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGZLInvoice.*'
      '      ,ZSZL.ZSYWJC'
      
        '      ,(select max(CGZLInvoiceS.Invoice_Customs)  from CGZLInvoi' +
        'ceS where CGZLInvoiceS.CINO=CGZLInvoice.CINO GROUP BY CINO)  as ' +
        'Invoice_Customs'
      'from CGZLInvoice'
      'left join ZSZL on CGZLInvoice.ZSBH=ZSZL.ZSDH'
      ''
      ''
      '')
    UpdateObject = UpMas
    Left = 244
    Top = 524
    object CGMasZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object CGMasZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object CGMasUSERDATE: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object CGMasUSERID: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGMasYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object CGMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object CGMasMEMO: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object CGMasCINO: TStringField
      FieldName = 'CINO'
      FixedChar = True
      Size = 11
    end
    object CGMasCIDate: TDateTimeField
      DisplayLabel = 'Insert Date'
      FieldName = 'CIDate'
    end
    object CGMasCILX: TStringField
      FieldName = 'CILX'
      FixedChar = True
      Size = 1
    end
    object CGMasInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
    end
    object CGMasBillNO: TStringField
      FieldName = 'BillNO'
      FixedChar = True
      Size = 30
    end
    object CGMastransport: TStringField
      DisplayLabel = 'Transport'
      FieldName = 'transport'
      FixedChar = True
      Size = 10
    end
    object CGMasCustom: TStringField
      FieldName = 'Custom'
      FixedChar = True
      Size = 10
    end
    object CGMasETA: TDateTimeField
      FieldName = 'ETA'
    end
    object CGMasInvoice_Customs: TStringField
      FieldName = 'Invoice_Customs'
      FixedChar = True
      Size = 100
    end
    object CGMasW_ETA: TDateTimeField
      FieldName = 'W_ETA'
    end
    object CGMasW_USERDate: TDateTimeField
      FieldName = 'W_USERDate'
    end
    object CGMasW_USERID: TStringField
      FieldName = 'W_USERID'
      FixedChar = True
      Size = 15
    end
    object CGMasShipmentPort: TStringField
      FieldName = 'ShipmentPort'
      FixedChar = True
      Size = 15
    end
    object CGMasArrivePort: TDateTimeField
      FieldName = 'ArrivePort'
    end
    object CGMasFreight_fee_VND: TCurrencyField
      FieldName = 'Freight_fee_VND'
      DisplayFormat = '#,##0.00000'
    end
    object CGMasFreight_fee_USD: TCurrencyField
      FieldName = 'Freight_fee_USD'
      DisplayFormat = '#,##0.00000'
    end
    object CGMasTotalAmount: TCurrencyField
      FieldName = 'TotalAmount'
      DisplayFormat = '#,##0.00000'
    end
    object CGMasInvoiceToWarehouseDate: TDateTimeField
      FieldName = 'InvoiceToWarehouseDate'
    end
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZLInvoice'
      'set'
      '  CINO = :CINO,'
      '  GSBH = :GSBH,'
      '  ZSBH = :ZSBH,'
      '  CIDate = :CIDate,'
      '  ETA =:ETA,'
      '  BillNO =:BillNO,'
      '  transport =:transport,'
      '  Custom =:Custom,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  CILX = :CILX,'
      '  YN = :YN,'
      '  Invoice = :Invoice,'
      '  MEMO = :MEMO,'
      '  Freight_fee_VND = :Freight_fee_VND,'
      '  Freight_fee_USD = :Freight_fee_USD,'
      '  TotalAmount = :TotalAmount'
      'where'
      '  CINO = :OLD_CINO ')
    InsertSQL.Strings = (
      'insert into CGZLInvoice'
      
        '  (CINO, GSBH, ZSBH, CIDate, ETA, BillNO, transport, USERDate, U' +
        'SERID, CILX,custom ,YN, Invoice, MEMO,Freight_fee_VND,Freight_fe' +
        'e_USD,TotalAmount)'
      'values'
      
        '  (:CINO, :GSBH, :ZSBH, :CIDate, :ETA, :BillNO, :transport, :USE' +
        'RDate, :USERID, :CILX,:custom, :YN, :Invoice,:MEMO,:Freight_fee_' +
        'VND,:Freight_fee_USD, :TotalAmount)'
      '')
    DeleteSQL.Strings = (
      'delete from CGZLInvoice'
      'where'
      '  CINO = :OLD_CINO ')
    Left = 244
    Top = 556
  end
  object DS3: TDataSource
    DataSet = CGMas
    Left = 244
    Top = 492
  end
  object CGDet: TQuery
    AfterOpen = CGDetAfterOpen
    OnCalcFields = CGDetCalcFields
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'select CGZLInvoiceS.*,CLZL.YWPM,CLZL_FLEX.CLDHFLEX AS FlexCode,C' +
        'LZL.DWBH,clzl.hgbh,clzl.hgpm,clbzzl.bz as MatRemark,MAX(KCRKS.Us' +
        'erDate) as RKdate'
      'from CGZLInvoiceS'
      'left join CLZL on CLZL.CLDH=CGZLInvoiceS.CLBH'
      'left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH'
      'left join clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb='#39'E'#39
      
        'left join KCRKS on  CGZLInvoiceS.CGNO=KCRKS.DOCNO and CGZLInvoic' +
        'eS.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKSB,'#39#39')<>'#39'NG'#39' '
      'where CGZLInvoiceS.CINO=:CINO'
      
        'group by CINO,CGZLInvoiceS.CLBH,CGZLInvoiceS.CGNO,CGZLInvoiceS.Q' +
        'ty,CGZLInvoiceS.USERDate,CGZLInvoiceS.USERID,CGZLInvoiceS.YN,CGZ' +
        'LInvoiceS.XqQty,CGZLInvoiceS.USPrice,CGZLInvoiceS.VNPrice,'
      
        'CGZLInvoiceS.Memo,CGZLInvoiceS.BJNO,CGZLInvoiceS.YQDate,CGZLInvo' +
        'iceS.CFMDate,CGZLInvoiceS.BILLNO,CGZLInvoiceS.WAY,CGZLInvoiceS.R' +
        'EMARK,CGZLInvoiceS.MEMO1,CGZLInvoiceS.DGDATE,CGZLInvoiceS.ETA,'
      
        'CGZLInvoiceS.PMARK,CGZLInvoiceS.Invoice_Customs,CGZLInvoiceS.Pur' +
        'ReceiveDate,CGZLInvoiceS.Other_fee_VND,CGZLInvoiceS.Other_fee_US' +
        'D,CGZLInvoiceS.ScanDate,CGZLInvoiceS.CheckResult,'
      
        'CGZLInvoiceS.CheckID,CGZLInvoiceS.CheckDate,CGZLInvoiceS.MOQ,CGZ' +
        'LInvoiceS.Deyeing_fee,CLZL.YWPM,CLZL_FLEX.CLDHFLEX,CLZL.DWBH,clz' +
        'l.hgbh,clzl.hgpm,clbzzl.bz,CGZLInvoiceS.DTMReceivedDate'
      'order by CGZLInvoiceS.CLBH')
    UpdateObject = UPDet
    Left = 308
    Top = 524
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CINO'
        ParamType = ptUnknown
        Size = 12
      end>
    object CGDetCGNO: TStringField
      DisplayLabel = 'Pur NO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object CGDetCLBH: TStringField
      DisplayLabel = 'Material ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CGDetYWPM: TStringField
      DisplayLabel = 'Mat. Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CGDetMatRemark: TStringField
      FieldName = 'MatRemark'
      Size = 80
    end
    object CGDetDWBH: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CGDetQty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object CGDetMemo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 100
    end
    object CGDetUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'MM/dd'
    end
    object CGDetUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object CGDetYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object CGDetREMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 30
    end
    object CGDetCINO: TStringField
      FieldName = 'CINO'
      FixedChar = True
      Size = 11
    end
    object CGDetUSPrice: TCurrencyField
      FieldName = 'USPrice'
    end
    object CGDetVNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
    object CGDetACCUS: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ACCUS'
      Calculated = True
    end
    object CGDetACCVN: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ACCVN'
      Calculated = True
    end
    object CGDetXqQty: TCurrencyField
      FieldName = 'XqQty'
    end
    object CGDetPMARK: TIntegerField
      DisplayLabel = 'Print'
      FieldName = 'PMARK'
    end
    object CGDethgbh: TStringField
      FieldName = 'hgbh'
      Size = 10
    end
    object CGDethgpm: TStringField
      FieldName = 'hgpm'
      Size = 200
    end
    object CGDetInvoice_Customs: TStringField
      FieldName = 'Invoice_Customs'
      FixedChar = True
      Size = 100
    end
    object CGDetPurReceiveDate: TDateTimeField
      FieldName = 'PurReceiveDate'
    end
    object CGDetBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object CGDetYQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object CGDetCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object CGDetBILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 30
    end
    object CGDetWAY: TStringField
      FieldName = 'WAY'
      FixedChar = True
      Size = 30
    end
    object CGDetMEMO1: TStringField
      FieldName = 'MEMO1'
      FixedChar = True
      Size = 30
    end
    object CGDetDGDATE: TDateTimeField
      FieldName = 'DGDATE'
    end
    object CGDetETA: TDateTimeField
      FieldName = 'ETA'
    end
    object CGDetOther_fee_VND: TCurrencyField
      FieldName = 'Other_fee_VND'
      DisplayFormat = '#,##0.00000'
    end
    object CGDetOther_fee_USD: TCurrencyField
      FieldName = 'Other_fee_USD'
      DisplayFormat = '#,##0.00000'
    end
    object CGDetFlexCode: TStringField
      FieldName = 'FlexCode'
      FixedChar = True
      Size = 15
    end
    object CGDetMOQ: TStringField
      FieldName = 'MOQ'
    end
    object CGDetDeyeing_fee: TStringField
      FieldName = 'Deyeing_fee'
    end
    object CGDetRKdate: TDateTimeField
      FieldName = 'RKdate'
    end
    object DTMReceivedDate: TDateTimeField
      FieldName = 'DTMReceivedDate'
    end
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update CGZLInvoiceS'
      'set'
      '  CINO = :CINO,'
      '  CLBH = :CLBH,'
      '  CGNO = :CGNO,'
      '  XqQty = :XqQty,'
      '  Qty = :Qty,'
      '  USPrice = :USPrice,'
      '  VNPrice = :VNPrice,'
      '  Memo = :Memo,'
      '  USERDate = :USERDate,'
      '  USERID = :USERID,'
      '  YN = :YN,'
      '  REMARK = :REMARK ,'
      '  purreceivedate= :purreceivedate,'
      '  PMARK = :PMARK,'
      '  Other_fee_VND = :Other_fee_VND,'
      '  Other_fee_USD = :Other_fee_USD,'
      '  MOQ=:MOQ,'
      '  Deyeing_fee=:Deyeing_fee,'
      '  DTMReceivedDate=:DTMReceivedDate'
      'where'
      '  CINO = :OLD_CINO and'
      '  CLBH = :OLD_CLBH and'
      '  CGNO = :OLD_CGNO ')
    InsertSQL.Strings = (
      'insert into CGZLInvoiceS'
      
        '  (CINO, CLBH, CGNO, XqQty, Qty, USPrice, VNPrice, Memo,MOQ,Deye' +
        'ing_fee,   '
      
        '    USERDate, USERID, YN,  REMARK,purreceivedate,Other_fee_VND,O' +
        'ther_fee_USD,DTMReceivedDate)'
      'values'
      
        '  (:CINO, :CLBH, :CGNO, :XqQty, :Qty, :USPrice, :VNPrice, :Memo,' +
        ':MOQ,:Deyeing_fee,  '
      
        '     :USERDate, :USERID, :YN,  :REMARK,:purreceivedate,:Other_fe' +
        'e_VND,:Other_fee_USD, :DTMReceivedDate)')
    DeleteSQL.Strings = (
      'delete from CGZLInvoiceS'
      'where'
      '  CINO = :OLD_CINO and'
      '  CLBH = :OLD_CLBH and'
      '  CGNO = :OLD_CGNO ')
    Left = 308
    Top = 557
  end
  object DS4: TDataSource
    DataSet = CGDet
    Left = 308
    Top = 492
  end
  object BDelRec: TQuery
    DatabaseName = 'DB'
    Left = 120
    Top = 576
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select kfdh'
      'from kfzl'
      'order by kfdh')
    Left = 120
    Top = 536
  end
  object CGS: TQuery
    DatabaseName = 'DB'
    DataSource = DS4
    SQL.Strings = (
      
        'select CGZLSS.*,IsNull(KFXXZL.devcode,'#39'ALL'#39') as Article,KFXXZL.X' +
        'IEMING,KFXXZL.FD,YPZL.ypcco as OSsize,ProductionLocation, SUBSTR' +
        'ING(ypzl.ypdh,1,4) as LAI,kfxxzl.YSSM'
      'from CGZLSS'
      'Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH'
      
        'Left join KFXXZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      'where CGZLSS.CGNO=:CGNO'
      'and CGZLSS.CLBH=:CLBH'
      'order by CGZLSS.ZLBH')
    Left = 364
    Top = 524
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object CGSCGNO: TStringField
      FieldName = 'CGNO'
      Origin = 'DB.CGZLSS.CGNO'
      FixedChar = True
      Size = 11
    end
    object CGSCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.CGZLSS.CLBH'
      FixedChar = True
      Size = 15
    end
    object CGSZLBH: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ZLBH'
      Origin = 'DB.CGZLSS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object CGSXXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.CGZLSS.XXCC'
      FixedChar = True
      Size = 6
    end
    object CGSQty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.CGZLSS.Qty'
      DisplayFormat = '#,##0.0'
    end
    object CGSCLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.CGZLSS.CLSL'
      DisplayFormat = '#,##0.0'
    end
    object CGSUSERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.CGZLSS.USERDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object CGSUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZLSS.USERID'
      FixedChar = True
      Size = 15
    end
    object CGSYN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZLSS.YN'
      FixedChar = True
      Size = 1
    end
    object CGSYQDate: TDateTimeField
      FieldName = 'YQDate'
      Origin = 'DB.CGZLSS.YQDate'
    end
    object CGSCFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.CGZLSS.CFMDate'
    end
    object strngfldCGSXIEMING: TStringField
      DisplayLabel = 'ShoeName'
      FieldName = 'XIEMING'
      FixedChar = True
      Size = 50
    end
    object strngfldCGSStage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object CGSFD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object CGSArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object CGSOSsize: TStringField
      FieldName = 'OSsize'
      FixedChar = True
      Size = 6
    end
    object CGSDelQty: TCurrencyField
      FieldName = 'DelQty'
    end
    object CGSProductionLocation: TStringField
      FieldName = 'ProductionLocation'
      FixedChar = True
      Size = 4
    end
    object CGSLAI: TStringField
      FieldName = 'LAI'
      FixedChar = True
      Size = 8
    end
    object CGSYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
  end
  object DS5: TDataSource
    DataSet = CGS
    Left = 364
    Top = 492
  end
  object Qry_All: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGZLInvoice.*,ZSZL.ZSYWJC,CGZLInvoiceS.CGNO,CGZLInvoiceS.' +
        'CLBH,CLZL.YWPM,CLZL.DWBH,CGZLInvoiceS.Qty,CGZLSS.Qty,kfxxzl.arti' +
        'cle,ypzl.kfjd,kfxxzl.fd,CGZLInvoiceS.PMARK,clzl.hgbh,clzl.hgpm,k' +
        'fxxzl.YSSM'
      'from CGZLInvoice'
      'left join ZSZL on CGZLInvoice.ZSBH=ZSZL.ZSDH'
      'left join CGZLInvoiceS on CGZLInvoiceS.CINO=CGZLInvoice.CINO'
      'left join CLZL on CLZL.CLDH=CGZLInvoiceS.CLBH'
      
        'left join CGZLSS on CGZLInvoiceS.CGNO=CGZLSS.CGNO and CGZLInvoic' +
        'eS.clbh=CGZLSS.clbh'
      'Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH'
      
        'Left join KFXXZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXi' +
        'ng=YPZL.XieXing'
      'where 1=2'
      ''
      '')
    Left = 412
    Top = 524
    object StringField1: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object StringField3: TStringField
      DisplayLabel = 'User ID'
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object StringField4: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object StringField5: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object StringField6: TStringField
      FieldName = 'MEMO'
      FixedChar = True
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'CINO'
      FixedChar = True
      Size = 11
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Insert Date'
      FieldName = 'CIDate'
    end
    object StringField8: TStringField
      FieldName = 'CILX'
      FixedChar = True
      Size = 1
    end
    object StringField9: TStringField
      FieldName = 'Invoice'
      FixedChar = True
    end
    object StringField10: TStringField
      FieldName = 'BillNO'
      FixedChar = True
      Size = 30
    end
    object StringField11: TStringField
      DisplayLabel = 'Transport'
      FieldName = 'transport'
      FixedChar = True
      Size = 10
    end
    object StringField12: TStringField
      FieldName = 'Custom'
      FixedChar = True
      Size = 10
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'ETA'
    end
    object Qry_AllCGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Qry_AllCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_AllYWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Qry_AllDWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Qry_AllQty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object Qry_AllPMARK: TIntegerField
      FieldName = 'PMARK'
    end
    object Qry_Allhgbh: TStringField
      FieldName = 'hgbh'
      Size = 10
    end
    object Qry_Allhgpm: TStringField
      FieldName = 'hgpm'
      Size = 200
    end
    object Qry_AllQty_1: TCurrencyField
      FieldName = 'Qty_1'
    end
    object Qry_Allarticle: TStringField
      FieldName = 'article'
      FixedChar = True
    end
    object Qry_Allkfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object Qry_Allfd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object Qry_AllYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
  end
  object DS6: TDataSource
    DataSet = Qry_All
    Left = 412
    Top = 492
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 155
    Top = 496
  end
  object Qry_Check: TQuery
    AfterOpen = Qry_CheckAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGZLInvoice.Invoice,CGZLInvoice.CINO,ZSZL.ZSYWJC,CGZLInvo' +
        'ice.USERID'
      'from CGZLInvoice'
      'left join ZSZL on CGZLInvoice.ZSBH=ZSZL.ZSDH'
      'left join'
      
        '    (select  Invoice,count(*) as cnt from CGZLInvoice,CGZLInvoic' +
        'eS'
      
        '     where CGZLInvoiceS.Qty>0 and CGZLInvoice.CINO=CGZLInvoiceS.' +
        'CINO GROUP BY Invoice,CGNO,CLBH'
      '     ) Invo  ON invo.Invoice=CGZLInvoice.Invoice'
      'WHERE  Invo.cnt>1  '
      'ORDER BY CGZLInvoice.Invoice,CGZLInvoice.CINO'
      ''
      ''
      ''
      '')
    Left = 460
    Top = 524
    object Qry_CheckInvoice: TStringField
      FieldName = 'Invoice'
      FixedChar = True
      Size = 30
    end
    object Qry_CheckCINO: TStringField
      FieldName = 'CINO'
      FixedChar = True
      Size = 30
    end
    object Qry_CheckZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Qry_CheckUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
  end
  object DS_Check: TDataSource
    DataSet = Qry_Check
    Left = 460
    Top = 492
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 1056
    Top = 24
  end
  object DS_Check2: TDataSource
    DataSet = Qry_Check2
    Left = 500
    Top = 492
  end
  object Qry_Check2: TQuery
    AfterOpen = Qry_Check2AfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      'select CGZLInvoiceS.CINO'
      'from CGZLInvoiceS'
      
        'WHERE  not exists (select cino from CGZLInvoice where CGZLInvoic' +
        'e.cino=CGZLInvoiceS.cino )'
      ''
      ''
      ''
      ''
      '')
    Left = 500
    Top = 524
    object Qry_Check2CINO: TStringField
      FieldName = 'CINO'
      FixedChar = True
      Size = 30
    end
  end
  object HangTag: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      ''
      
        'SELECT cast ( PO#+'#39'     '#39'+Lais AS TEXT) PO#,SR ,Developer,Materi' +
        'al_Name,Supplier_Name,Quantity,Received_Date from('
      
        ' SELECT DISTINCT PO#,SR,Developer,Material_Name,Supplier_Name,Qu' +
        'antity,Received_Date,( '
      '   SELECT '#39','#39' + maina.LAI FROM ( '
      
        '      select CGZLInvoiceS.CGNO,cgzlss.clbh ,substring(CGZLSS.zlb' +
        'h,1,4) LAI'
      '      from CGZLInvoice '
      
        '      left join CGZLInvoiceS on CGZLInvoiceS.CINO=CGZLInvoice.CI' +
        'NO'
      
        '      left join CGZLSS on CGZLInvoiceS.CGNO=CGZLSS.CGNO and CGZL' +
        'InvoiceS.clbh=CGZLSS.clbh'
      '      where CGZLInvoice.CILX='#39'6'#39'  '
      '      and CGZLInvoice.cino =:cino'
      
        '      GROUP BY  CGZLInvoiceS.CGNO,cgzlss.clbh,CONVERT(varchar(12' +
        ') ,CGZLInvoice.ETA, 104 ) ,substring(CGZLSS.zlbh,1,4)'
      '   )MAINA where maina.CGNO=mainb.cgno and maina.clbh=mainb.cldh'
      '   FOR XML PATH('#39#39') )AS LAIs  from('
      
        '   select CGZLInvoiceS.CGNO+'#39'   '#39'+CLZL.cldh+'#39'                   ' +
        '       '#39'+CGZL.purpose+'#39'        '#39'+CGZL.SEASON as PO#,cgzls.articl' +
        'e_all as SR,kfxxzl.FD as Developer,CLZL.YWPM as Material_Name,ZS' +
        'ZL.ZSYWJC as Supplier_Name,'
      
        '   convert(VARCHAR,CGZLInvoiceS.Qty)+'#39' '#39'+CLZL.DWBH as Quantity,C' +
        'ONVERT(varchar(12) ,CGZLInvoice.ETA, 104 ) as Received_Date ,sub' +
        'string(CGZLSS.zlbh,1,4) LAI,CGZLInvoiceS.CGNO,CLZL.cldh'
      '   from CGZLInvoice'
      '   left join ZSZL on CGZLInvoice.ZSBH=ZSZL.ZSDH '
      '   left join CGZLInvoiceS on CGZLInvoiceS.CINO=CGZLInvoice.CINO '
      '   left join CLZL on CLZL.CLDH=CGZLInvoiceS.CLBH '
      
        '   left join CGZLSS on CGZLInvoiceS.CGNO=CGZLSS.CGNO and CGZLInv' +
        'oiceS.clbh=CGZLSS.clbh '
      
        '   left join cgzls on cgzlss.cgno=cgzls.cgno and cgzls.clbh=cgzl' +
        'ss.clbh '
      '   Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH '
      '   Left join CGZL on CGZLS.CGNO=CGZL.CGNO '
      
        '   Left join KFXXZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.Xi' +
        'eXing=YPZL.XieXing '
      '   where CGZLInvoice.CILX='#39'6'#39'  '
      '   and CGZLInvoice.cino =:cino'
      '   GROUP BY'
      
        '   CGZLInvoiceS.CGNO+'#39'   '#39'+CLZL.cldh+'#39'                          ' +
        #39'+CGZL.purpose+'#39'        '#39'+CGZL.SEASON  ,cgzls.article_all ,kfxxz' +
        'l.FD,CLZL.YWPM ,ZSZL.ZSYWJC,'
      
        '  convert(VARCHAR,CGZLInvoiceS.Qty)+'#39' '#39'+CLZL.DWBH ,CONVERT(varch' +
        'ar(12) ,CGZLInvoice.ETA, 104 ) ,substring(CGZLSS.zlbh,1,4) ,CGZL' +
        'InvoiceS.CGNO,CLZL.cldh'
      ' )mainB)mainC ')
    Left = 549
    Top = 524
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cino'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cino'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = HangTag
    Left = 549
    Top = 492
  end
end

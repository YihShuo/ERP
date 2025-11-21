object Consumer: TConsumer
  Left = 225
  Top = 139
  Width = 1712
  Height = 521
  Caption = 'Consumer'
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
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1696
    Height = 482
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet3: TTabSheet
      Caption = 'Mass'
      ImageIndex = 2
      object DBGridEh4: TDBGridEh
        Left = 0
        Top = 94
        Width = 1688
        Height = 357
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Consumer
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnGetCellParams = DBGridEh4GetCellParams
        OnTitleBtnClick = DBGridEh4TitleBtnClick
        Columns = <
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ExFty_Date'
            Footer.FieldName = 'ExFty_Date'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ExFty Date'
            Title.TitleButton = True
            Width = 70
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY#'
            Title.TitleButton = True
            Width = 65
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'PAIRS'
            Footer.FieldName = 'PAIRS'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Q'#39'ty'
            Title.TitleButton = True
            Width = 41
          end
          item
            Color = cl3DLight
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'UNIT_PRICE'
            Footer.DisplayFormat = '0.00'
            Footer.FieldName = 'UNIT_PRICE'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Unit Price'
            Title.TitleButton = True
            Width = 70
          end
          item
            Color = cl3DLight
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'AMOUNT'
            Footer.DisplayFormat = '#,##0.00'
            Footer.FieldName = 'AMOUNT'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Amount'
            Title.TitleButton = True
            Width = 90
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'INV_NO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice No.'
            Title.TitleButton = True
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'RISK'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Company'
            Title.TitleButton = True
            Width = 150
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'REF'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 84
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'INV_DATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice Date'
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'TC_PL_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'TC Packing List Submission Date'
            Title.TitleButton = True
            Width = 109
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Booking_No'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Booking No.'
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Title.TitleButton = True
            Width = 50
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Customs No.'
            Title.TitleButton = True
            Width = 100
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
            FieldName = 'Bill_FCR_No'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'FCR No/Bill No.'
            Title.TitleButton = True
            Width = 99
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CUSTID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CustID#'
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
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kind Loading'
            Title.TitleButton = True
            Width = 76
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 44
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'IODate'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = cl3DLight
            DisplayFormat = '#,#'
            EditButtons = <>
            FieldName = 'QTY'
            Footer.DisplayFormat = '#,#'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 32
          end
          item
            Color = cl3DLight
            DisplayFormat = '#,#'
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 50
          end
          item
            DisplayFormat = '#,#'
            EditButtons = <>
            FieldName = 'AcVNACC'
            Footer.DisplayFormat = '#,#'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'YSBH'
            Footers = <>
            Title.Caption = 'MasterRY'
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'VAT_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VAT_Date'
            Footers = <>
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1688
        Height = 94
        Align = alTop
        TabOrder = 1
        object Label1: TLabel
          Left = 510
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
        object Label8: TLabel
          Left = 203
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
        object Label6: TLabel
          Left = 510
          Top = 39
          Width = 37
          Height = 16
          Caption = 'Article'
        end
        object chkInv: TCheckBox
          Left = 16
          Top = 10
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
          Left = 553
          Top = 8
          Width = 105
          Height = 24
          Color = cl3DLight
          TabOrder = 3
        end
        object Button1: TButton
          Left = 682
          Top = 13
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
          Top = 34
          Width = 121
          Height = 24
          TabOrder = 6
        end
        object chk1: TCheckBox
          Left = 16
          Top = 36
          Width = 89
          Height = 17
          Caption = 'ExFty Date'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object DTP1: TDateTimePicker
          Left = 112
          Top = 34
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 8
        end
        object DTP2: TDateTimePicker
          Left = 216
          Top = 34
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 9
        end
        object chkETD: TCheckBox
          Left = 16
          Top = 62
          Width = 92
          Height = 17
          Caption = 'Sailing Date'
          TabOrder = 10
        end
        object DTP5: TDateTimePicker
          Left = 112
          Top = 60
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 11
        end
        object DTP6: TDateTimePicker
          Left = 216
          Top = 60
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 12
        end
        object Button2: TButton
          Left = 757
          Top = 13
          Width = 75
          Height = 33
          Caption = 'Excel'
          TabOrder = 13
          OnClick = Button2Click
        end
        object Edt_Art: TEdit
          Left = 553
          Top = 34
          Width = 105
          Height = 24
          TabOrder = 14
        end
        object btnInvoiceExchange: TButton
          Left = 833
          Top = 13
          Width = 128
          Height = 33
          Caption = 'Invoice Exchange'
          TabOrder = 15
          OnClick = btnInvoiceExchangeClick
        end
        object Button9: TButton
          Left = 963
          Top = 13
          Width = 97
          Height = 33
          Caption = 'Import VATNO'
          TabOrder = 16
          OnClick = Button9Click
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'CDC'
      ImageIndex = 1
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 94
        Width = 1688
        Height = 357
        Align = alClient
        DataSource = DataSource1
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_CDC
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        TitleLines = 2
        UseMultiTitle = True
        VTitleMargin = 0
        OnGetCellParams = DBGridEh4GetCellParams
        OnTitleBtnClick = DBGridEh4TitleBtnClick
        Columns = <
          item
            EditButtons = <>
            FieldName = 'ExFtyDate'
            Footer.ValueType = fvtCount
            Footers = <>
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'YPDH'
            Footers = <>
            Title.Caption = 'RY'
            Width = 85
          end
          item
            DisplayFormat = '0.0'
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 47
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'UnitPrice'
            Footers = <>
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'Amount'
            Footer.DisplayFormat = '0.00'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'InvoiceNo'
            Footers = <>
            Width = 105
          end
          item
            EditButtons = <>
            FieldName = 'Company'
            Footers = <>
            Width = 171
          end
          item
            EditButtons = <>
            FieldName = 'REF'
            Footers = <>
            Width = 104
          end
          item
            EditButtons = <>
            FieldName = 'InvoiceDate'
            Footers = <>
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'TCPackingListSubmissionDate'
            Footers = <>
            Title.Caption = 'TCPackingList|SubmissionDate'
          end
          item
            EditButtons = <>
            FieldName = 'BookingNO'
            Footers = <>
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'SR'
            Footers = <>
            Title.Caption = 'Article'
            Width = 95
          end
          item
            EditButtons = <>
            FieldName = 'CustomsNo'
            Footers = <>
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'SailingDate'
            Footers = <>
            Width = 106
          end
          item
            EditButtons = <>
            FieldName = 'FCRNo_BillNo'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CUSTID'
            Footers = <>
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            Width = 114
          end
          item
            EditButtons = <>
            FieldName = 'KindLoading'
            Footers = <>
            Width = 79
          end
          item
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'IODate'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'QTY'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'AcVNACC'
            Footer.DisplayFormat = '0.0'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'VAT_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VAT_Date'
            Footers = <>
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1688
        Height = 94
        Align = alTop
        TabOrder = 1
        object Label7: TLabel
          Left = 510
          Top = 12
          Width = 19
          Height = 16
          Caption = 'RY'
        end
        object Label9: TLabel
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
        object Label10: TLabel
          Left = 312
          Top = 12
          Width = 67
          Height = 16
          Caption = 'Invoice No.'
        end
        object Label12: TLabel
          Left = 312
          Top = 40
          Width = 45
          Height = 16
          Caption = 'Country'
        end
        object Label13: TLabel
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
        object Label14: TLabel
          Left = 203
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
        object Label15: TLabel
          Left = 510
          Top = 39
          Width = 37
          Height = 16
          Caption = 'Article'
        end
        object Label16: TLabel
          Left = 1112
          Top = 16
          Width = 69
          Height = 37
          Caption = 'CDC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -32
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object CheckBox1: TCheckBox
          Left = 16
          Top = 10
          Width = 97
          Height = 17
          Caption = 'Invoice Date'
          TabOrder = 0
        end
        object DTP7: TDateTimePicker
          Left = 112
          Top = 8
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 1
        end
        object DTP8: TDateTimePicker
          Left = 216
          Top = 8
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 553
          Top = 8
          Width = 105
          Height = 24
          Color = cl3DLight
          TabOrder = 3
        end
        object Button3: TButton
          Left = 682
          Top = 13
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
          OnClick = Button3Click
        end
        object Edit5: TEdit
          Left = 384
          Top = 8
          Width = 121
          Height = 24
          TabOrder = 5
        end
        object Edit6: TEdit
          Left = 384
          Top = 34
          Width = 121
          Height = 24
          TabOrder = 6
        end
        object CheckBox2: TCheckBox
          Left = 16
          Top = 36
          Width = 89
          Height = 17
          Caption = 'ExFty Date'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object DTP9: TDateTimePicker
          Left = 112
          Top = 34
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 8
        end
        object DTP10: TDateTimePicker
          Left = 216
          Top = 34
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 9
        end
        object CheckBox5: TCheckBox
          Left = 16
          Top = 62
          Width = 92
          Height = 17
          Caption = 'Sailing Date'
          TabOrder = 10
        end
        object DTP11: TDateTimePicker
          Left = 112
          Top = 60
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 11
        end
        object DTP12: TDateTimePicker
          Left = 216
          Top = 60
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 12
        end
        object Button4: TButton
          Left = 757
          Top = 13
          Width = 75
          Height = 33
          Caption = 'Excel'
          TabOrder = 13
          OnClick = Button4Click
        end
        object Edit7: TEdit
          Left = 553
          Top = 34
          Width = 105
          Height = 24
          TabOrder = 14
        end
        object Button5: TButton
          Left = 833
          Top = 13
          Width = 128
          Height = 33
          Caption = 'Invoice Exchange'
          TabOrder = 15
          OnClick = Button5Click
        end
        object Button10: TButton
          Left = 963
          Top = 13
          Width = 97
          Height = 33
          Caption = 'Import VATNO'
          TabOrder = 16
          OnClick = Button10Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'CBY'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1688
        Height = 94
        Align = alTop
        TabOrder = 0
        object Label17: TLabel
          Left = 510
          Top = 12
          Width = 19
          Height = 16
          Caption = 'RY'
        end
        object Label18: TLabel
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
        object Label19: TLabel
          Left = 312
          Top = 12
          Width = 67
          Height = 16
          Caption = 'Invoice No.'
        end
        object Label20: TLabel
          Left = 312
          Top = 40
          Width = 45
          Height = 16
          Caption = 'Country'
        end
        object Label21: TLabel
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
        object Label22: TLabel
          Left = 203
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
        object Label23: TLabel
          Left = 510
          Top = 39
          Width = 37
          Height = 16
          Caption = 'Article'
        end
        object CheckBox3: TCheckBox
          Left = 16
          Top = 10
          Width = 97
          Height = 17
          Caption = 'Invoice Date'
          TabOrder = 0
        end
        object DTP13: TDateTimePicker
          Left = 112
          Top = 8
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 1
        end
        object DTP14: TDateTimePicker
          Left = 216
          Top = 8
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 2
        end
        object Edit8: TEdit
          Left = 553
          Top = 8
          Width = 105
          Height = 24
          Color = cl3DLight
          TabOrder = 3
        end
        object Button6: TButton
          Left = 682
          Top = 13
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
          OnClick = Button6Click
        end
        object Edit9: TEdit
          Left = 384
          Top = 8
          Width = 121
          Height = 24
          TabOrder = 5
        end
        object Edit10: TEdit
          Left = 384
          Top = 34
          Width = 121
          Height = 24
          TabOrder = 6
        end
        object CheckBox4: TCheckBox
          Left = 16
          Top = 36
          Width = 89
          Height = 17
          Caption = 'ExFty Date'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object DTP15: TDateTimePicker
          Left = 112
          Top = 34
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 8
        end
        object DTP16: TDateTimePicker
          Left = 216
          Top = 34
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 9
        end
        object CheckBox8: TCheckBox
          Left = 16
          Top = 62
          Width = 92
          Height = 17
          Caption = 'Sailing Date'
          TabOrder = 10
        end
        object DTP17: TDateTimePicker
          Left = 112
          Top = 60
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 11
        end
        object DTP18: TDateTimePicker
          Left = 216
          Top = 60
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 12
        end
        object Button7: TButton
          Left = 757
          Top = 13
          Width = 75
          Height = 33
          Caption = 'Excel'
          TabOrder = 13
          OnClick = Button7Click
        end
        object Edit11: TEdit
          Left = 553
          Top = 34
          Width = 105
          Height = 24
          TabOrder = 14
        end
        object Button8: TButton
          Left = 833
          Top = 13
          Width = 128
          Height = 33
          Caption = 'Invoice Exchange'
          TabOrder = 15
          OnClick = Button8Click
        end
        object Button11: TButton
          Left = 963
          Top = 13
          Width = 97
          Height = 33
          Caption = 'Import VATNO'
          TabOrder = 16
          OnClick = Button11Click
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 94
        Width = 1688
        Height = 357
        Align = alClient
        DataSource = DS_CBY
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
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 0
        OnGetCellParams = DBGridEh4GetCellParams
        OnTitleBtnClick = DBGridEh4TitleBtnClick
        Columns = <
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ExFty_Date'
            Footer.FieldName = 'ExFty_Date'
            Footer.ValueType = fvtCount
            Footers = <>
            ReadOnly = True
            Title.Caption = 'ExFty Date'
            Title.TitleButton = True
            Width = 70
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'RYNO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'RY#'
            Title.TitleButton = True
            Width = 65
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'PAIRS'
            Footer.FieldName = 'PAIRS'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Q'#39'ty'
            Title.TitleButton = True
            Width = 41
          end
          item
            Color = cl3DLight
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'UNIT_PRICE'
            Footer.DisplayFormat = '0.00'
            Footer.FieldName = 'UNIT_PRICE'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Unit Price'
            Title.TitleButton = True
            Width = 70
          end
          item
            Color = cl3DLight
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'AMOUNT'
            Footer.DisplayFormat = '#,##0.00'
            Footer.FieldName = 'AMOUNT'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Amount'
            Title.TitleButton = True
            Width = 90
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'INV_NO'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice No.'
            Title.TitleButton = True
            Width = 100
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'RISK'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Company'
            Title.TitleButton = True
            Width = 150
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'REF'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 84
          end
          item
            ButtonStyle = cbsNone
            Color = cl3DLight
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'INV_DATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Invoice Date'
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = cl3DLight
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'TC_PL_Date'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'TC Packing List Submission Date'
            Title.TitleButton = True
            Width = 109
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Booking_No'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Booking No.'
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'ARTICLE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Article'
            Title.TitleButton = True
            Width = 50
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Customs No.'
            Title.TitleButton = True
            Width = 100
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
            FieldName = 'Bill_FCR_No'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'FCR No/Bill No.'
            Title.TitleButton = True
            Width = 99
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'CUSTID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'CustID#'
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
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Kind_Loading'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kind Loading'
            Title.TitleButton = True
            Width = 76
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'Forwarder'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 44
          end
          item
            Color = cl3DLight
            EditButtons = <>
            FieldName = 'IODate'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 80
          end
          item
            Color = cl3DLight
            DisplayFormat = '#,#'
            EditButtons = <>
            FieldName = 'QTY'
            Footer.DisplayFormat = '#,#'
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 32
          end
          item
            Color = cl3DLight
            DisplayFormat = '#,#'
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 50
          end
          item
            DisplayFormat = '#,#'
            EditButtons = <>
            FieldName = 'AcVNACC'
            Footer.DisplayFormat = '#,#'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.TitleButton = True
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'VAT_NO'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'VAT_Date'
            Footers = <>
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Report'
      ImageIndex = 3
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1688
        Height = 145
        Align = alTop
        TabOrder = 0
        object Label24: TLabel
          Left = 360
          Top = 65
          Width = 19
          Height = 16
          Caption = 'RY'
        end
        object Label25: TLabel
          Left = 207
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
        object Label26: TLabel
          Left = 316
          Top = 12
          Width = 64
          Height = 16
          Caption = 'Invoice No'
        end
        object Label27: TLabel
          Left = 334
          Top = 40
          Width = 45
          Height = 16
          Caption = 'Country'
        end
        object Label28: TLabel
          Left = 207
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
        object Label29: TLabel
          Left = 207
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
        object Label30: TLabel
          Left = 343
          Top = 91
          Width = 37
          Height = 16
          Caption = 'Article'
        end
        object Label31: TLabel
          Left = 207
          Top = 89
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
        object Label32: TLabel
          Left = 207
          Top = 116
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
        object CheckBox6: TCheckBox
          Left = 14
          Top = 10
          Width = 101
          Height = 17
          Caption = 'Invoice Date'
          TabOrder = 0
        end
        object DTP19: TDateTimePicker
          Left = 116
          Top = 8
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 1
        end
        object DTP20: TDateTimePicker
          Left = 220
          Top = 8
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 2
        end
        object Edit12: TEdit
          Left = 385
          Top = 61
          Width = 122
          Height = 24
          Color = clWhite
          TabOrder = 3
        end
        object Button12: TButton
          Left = 657
          Top = 13
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
          OnClick = Button12Click
        end
        object Edit13: TEdit
          Left = 384
          Top = 8
          Width = 121
          Height = 24
          TabOrder = 5
        end
        object Edit14: TEdit
          Left = 384
          Top = 34
          Width = 121
          Height = 24
          TabOrder = 6
        end
        object CheckBox7: TCheckBox
          Left = 14
          Top = 36
          Width = 93
          Height = 17
          Caption = 'ExFty Date'
          Checked = True
          State = cbChecked
          TabOrder = 7
        end
        object DTP21: TDateTimePicker
          Left = 116
          Top = 34
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 8
        end
        object DTP22: TDateTimePicker
          Left = 220
          Top = 34
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 9
        end
        object CheckBox9: TCheckBox
          Left = 14
          Top = 62
          Width = 96
          Height = 17
          Caption = 'Sailing Date'
          TabOrder = 10
        end
        object DTP23: TDateTimePicker
          Left = 116
          Top = 60
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 11
        end
        object DTP24: TDateTimePicker
          Left = 220
          Top = 60
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 12
        end
        object Button13: TButton
          Left = 658
          Top = 51
          Width = 75
          Height = 33
          Caption = 'Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = Button13Click
        end
        object Edit15: TEdit
          Left = 385
          Top = 87
          Width = 122
          Height = 24
          TabOrder = 14
        end
        object Button14: TButton
          Left = 744
          Top = 13
          Width = 128
          Height = 33
          Caption = 'Invoice Exchange'
          TabOrder = 15
          OnClick = Button14Click
        end
        object CheckBox10: TCheckBox
          Left = 14
          Top = 86
          Width = 96
          Height = 17
          Caption = 'Confirm Date'
          TabOrder = 16
        end
        object DTP25: TDateTimePicker
          Left = 116
          Top = 84
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 17
        end
        object DTP26: TDateTimePicker
          Left = 220
          Top = 84
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 18
        end
        object chkConfirm: TCheckBox
          Left = 528
          Top = 11
          Width = 73
          Height = 17
          Caption = 'Confirm'
          TabOrder = 19
        end
        object chkUnConfirm: TCheckBox
          Left = 528
          Top = 37
          Width = 89
          Height = 17
          Caption = 'No Confirm'
          TabOrder = 20
        end
        object btnTransferWF: TButton
          Left = 745
          Top = 51
          Width = 128
          Height = 33
          Caption = 'Transfer WF'
          TabOrder = 21
          OnClick = btnTransferWFClick
        end
        object CheckBox11: TCheckBox
          Left = 14
          Top = 112
          Width = 96
          Height = 17
          Caption = 'VAT Date'
          TabOrder = 22
        end
        object DTP27: TDateTimePicker
          Left = 115
          Top = 110
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 23
        end
        object DTP28: TDateTimePicker
          Left = 220
          Top = 109
          Width = 89
          Height = 24
          Date = 41926.482097430550000000
          Format = 'yyyy/MM/dd'
          Time = 41926.482097430550000000
          TabOrder = 24
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 145
        Width = 1688
        Height = 306
        Align = alClient
        DataSource = DS_Report
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Report
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        OnGetCellParams = DBGridEh3GetCellParams
        OnTitleBtnClick = DBGridEh4TitleBtnClick
        Columns = <
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'ExFty_Date'
            Footers = <>
            Width = 87
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'INV_DATE'
            Footers = <>
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'MaKH'
            Footers = <>
            Title.Caption = 'Ma KH'
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'RISK'
            Footers = <>
            Width = 150
          end
          item
            EditButtons = <>
            FieldName = 'TienTe'
            Footers = <>
            Title.Caption = 'Unit'
            Width = 40
          end
          item
            DisplayFormat = '#,#'
            EditButtons = <>
            FieldName = 'CWHL'
            Footers = <>
            Width = 50
          end
          item
            EditButtons = <>
            FieldName = 'INV_NO'
            Footers = <>
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'MaThueSuat'
            Footers = <>
            Title.Caption = 'Ma Thue Suat'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'VAT_NO'
            Footers = <>
            Width = 100
          end
          item
            DisplayFormat = 'yyyy/MM/dd'
            EditButtons = <>
            FieldName = 'VAT_Date'
            Footers = <>
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'memo1'
            Footers = <>
            Title.Caption = 'Ghi chu ( dau don )'
            Width = 250
          end
          item
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            Title.Caption = 'Ma to khai  - don hang'
            Width = 120
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'AMOUNT'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            DisplayFormat = '#,##0'
            EditButtons = <>
            FieldName = 'AcVNACC'
            Footer.DisplayFormat = '#,##0'
            Footer.ValueType = fvtSum
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'TienThue1'
            Footers = <>
            Title.Caption = 'Tien Thue Nguyen Te'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TienThue2'
            Footers = <>
            Title.Caption = 'Tien Thue Noi Te'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'TKKT'
            Footers = <>
            Title.Caption = 'TKKT Doi ung'
          end
          item
            EditButtons = <>
            FieldName = 'BoPhan'
            Footers = <>
            Title.Caption = 'Bo Phan'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'memo2'
            Footers = <>
            Title.Caption = 'Ghi chu (than don )'
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'Customs_No'
            Footers = <>
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'CFMID'
            Footers = <>
            Width = 60
          end
          item
            DisplayFormat = 'yyyy/mm/dd'
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Width = 70
          end>
      end
      object pnlInf: TPanel
        Left = 544
        Top = 200
        Width = 361
        Height = 193
        Caption = 'pnlInf'
        TabOrder = 2
        Visible = False
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 359
          Height = 30
          Align = alTop
          Caption = 'Information'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object Panel6: TPanel
            Left = 330
            Top = 1
            Width = 28
            Height = 28
            Align = alRight
            Caption = 'X'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object mmoInf: TMemo
          Left = 1
          Top = 31
          Width = 359
          Height = 129
          Align = alClient
          TabOrder = 1
        end
        object Panel7: TPanel
          Left = 1
          Top = 160
          Width = 359
          Height = 32
          Align = alBottom
          TabOrder = 2
          object btn_Yes: TButton
            Left = 105
            Top = 3
            Width = 75
            Height = 25
            Caption = 'Yes'
            TabOrder = 0
          end
          object btn_No: TButton
            Left = 186
            Top = 3
            Width = 75
            Height = 25
            Caption = 'No'
            TabOrder = 1
          end
        end
      end
    end
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
    object ProgressBar: TProgressBar
      Left = 2
      Top = 16
      Width = 417
      Height = 17
      TabOrder = 0
    end
  end
  object qry_Consumer: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_N' +
        'ame,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,'
      
        #9'    '#9'inv.AMOUNT,case when inv.Customs_No is not null then inv.C' +
        'ustoms_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date' +
        ',sb.Bill_FCR_No,sb.Kind_Loading,'
      
        '       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im' +
        '.inv_Type,'
      
        '       '#39' '#39' AS Shipmode,'#39' '#39' as SPECID,im.REF as REF,sb.TC_PL_Date' +
        ',sb.Booking_No,'
      
        '       case when Inv_Type='#39'Mass Production'#39' then DDZLWHEX.IODate' +
        ' else CBYEX.IODate end as IODate,'
      
        '       case when Inv_Type='#39'Mass Production'#39' then DDZLWHEX.QTY el' +
        'se CBYEX.QTY end as Qty,'
      
        '       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) a' +
        's AcVNACC,YWDD.YSBH'
      #9'   '
      #9'   --INTO #N8_INVOICE_D'
      'FROM Ship_Booking sb '
      'INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO'
      'LEFT JOIN INVOICE_D inv ON inv.INV_NO = im.INV_NO'
      'LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID'
      'LEFT JOIN YWDD ON YWDD.DDBH=inv.RYNO'
      'left join DDZL do on do.DDBH=YWDD.YSBH '
      
        'LEFT JOIN ( SELECT DDBH,CONVERT(VARCHAR(7),Exedate,111) IODate, ' +
        'SUM(YWCP.QTY) QTY ,INV_NO'
      
        #9#9#9'       FROM YWCP left join  (select INV_NO,ryno,xh,ctq,ctz fr' +
        'om packing  group by INV_NO,ryno,xh,ctq,ctz)  packing'
      
        ' on ywcp.ddbh=packing.ryno and ywcp.xh =packing.XH and CARTONNO ' +
        'between packing.ctq and packing.ctz '
      
        '       '#9#9' WHERE SB='#39'3'#39' GROUP BY DDBH, CONVERT(VARCHAR(7),Exedate' +
        ',111),INV_NO) DDZLWHEX ON DDZLWHEX.DDBH=inv.RYNO AND DDZLWHEX.IO' +
        'Date=CONVERT(VARCHAR(7),sb.ExFty_Date,111) and  DDZLWHEX.INV_NO=' +
        'sb.INV_NO'
      
        'left join ( select workOrderId as DDBH, CONVERT(VARCHAR(7),Shipd' +
        'ate,111) IODate, sum (CBY_Orders.total * CBY_Orders.itemNumber) ' +
        'as Qty'
      
        #9#9#9'       from CBY_Orders where shipdate is not null  GROUP BY w' +
        'orkOrderId, CONVERT(VARCHAR(7),Shipdate,111)) CBYEX on CBYEX.DDB' +
        'H=inv.RYNO AND CBYEX.IODate=CONVERT(VARCHAR(7),sb.ExFty_Date,111' +
        ')'
      'LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date'
      'LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK'
      'WHERE ( sb.CO_CFMID IS NOT NULL'
      
        #9'       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR' +
        ',GETDATE(),111)'
      
        #9#9#9'        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NO' +
        'T NULL )'
      #9'  )'
      ' and convert(varchar,sb.ExFty_Date,111) between '
      ' '#39'2022/07/13'#39' and  '#39'2022/07/20'#39)
    UpdateObject = Up_Consumer
    Left = 132
    Top = 238
    object qry_ConsumerExFty_Date: TDateTimeField
      FieldName = 'ExFty_Date'
    end
    object qry_ConsumerINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object qry_ConsumerPAIRS: TIntegerField
      FieldName = 'PAIRS'
    end
    object qry_ConsumerUNIT_PRICE: TCurrencyField
      FieldName = 'UNIT_PRICE'
    end
    object qry_ConsumerAMOUNT: TCurrencyField
      FieldName = 'AMOUNT'
    end
    object qry_ConsumerCustoms_No: TStringField
      FieldName = 'Customs_No'
      FixedChar = True
      Size = 50
    end
    object qry_ConsumerSailing_Date: TDateTimeField
      FieldName = 'Sailing_Date'
    end
    object qry_ConsumerBill_FCR_No: TStringField
      FieldName = 'Bill_FCR_No'
      FixedChar = True
      Size = 10
    end
    object qry_ConsumerKind_Loading: TStringField
      FieldName = 'Kind_Loading'
      FixedChar = True
      Size = 50
    end
    object qry_ConsumerForwarder: TStringField
      FieldName = 'Forwarder'
      FixedChar = True
      Size = 50
    end
    object qry_ConsumerCUSTID: TStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 10
    end
    object qry_ConsumerCOUNTRYEN: TStringField
      FieldName = 'COUNTRYEN'
      FixedChar = True
      Size = 50
    end
    object qry_ConsumerINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object qry_ConsumerRYNO: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
    object qry_ConsumerSPECID: TStringField
      FieldName = 'SPECID'
      FixedChar = True
      Size = 2
    end
    object qry_ConsumerARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 50
    end
    object qry_ConsumerREF: TStringField
      FieldName = 'REF'
      FixedChar = True
      Size = 30
    end
    object qry_ConsumerTC_PL_Date: TDateTimeField
      FieldName = 'TC_PL_Date'
    end
    object qry_ConsumerBooking_No: TStringField
      FieldName = 'Booking_No'
      FixedChar = True
    end
    object qry_ConsumerIODate: TStringField
      FieldName = 'IODate'
      FixedChar = True
      Size = 7
    end
    object qry_ConsumerQTY: TIntegerField
      FieldName = 'QTY'
    end
    object qry_ConsumerCWHL: TIntegerField
      FieldName = 'CWHL'
    end
    object qry_ConsumerAcVNACC: TCurrencyField
      FieldName = 'AcVNACC'
    end
    object qry_ConsumerRISK: TStringField
      FieldName = 'RISK'
      FixedChar = True
      Size = 50
    end
    object qry_ConsumerCompany_Name: TStringField
      FieldName = 'Company_Name'
      FixedChar = True
      Size = 255
    end
    object qry_ConsumerYSBH: TStringField
      FieldName = 'YSBH'
      FixedChar = True
      Size = 15
    end
    object qry_ConsumerVAT_NO: TStringField
      FieldName = 'VAT_NO'
    end
    object qry_ConsumerVAT_Date: TDateTimeField
      FieldName = 'VAT_Date'
    end
  end
  object DS4: TDataSource
    DataSet = qry_Consumer
    Left = 132
    Top = 206
  end
  object Up_Consumer: TUpdateSQL
    Left = 132
    Top = 273
  end
  object Pop_Consumer: TPopupMenu
    Left = 132
    Top = 305
    object mniCalculate: TMenuItem
      Caption = 'Calculate'
      Visible = False
      OnClick = mniCalculateClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mniMod_Consumer: TMenuItem
      Caption = 'Modify'
      OnClick = mniMod_ConsumerClick
    end
    object mniSav_Consumer: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = mniSav_ConsumerClick
    end
    object mniCan_Consumer: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = mniCan_ConsumerClick
    end
  end
  object Qry_Temp: TQuery
    DatabaseName = 'DB'
    Left = 100
    Top = 238
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 356
    Top = 214
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT *,DevToSimis.InvoiceNo as REF from DEVTOSIMIS'
      'LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=DEVTOSIMIS.ExFtyDate'
      'WHERE 1=2'
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    UpdateObject = Up_CDC
    Left = 356
    Top = 246
    object Query1ExFtyDate: TDateTimeField
      FieldName = 'ExFtyDate'
      Origin = 'DB.DevtoSimis.ExFtyDate'
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.DevtoSimis.YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1QTY: TFloatField
      FieldName = 'QTY'
      Origin = 'DB.DevtoSimis.QTY'
      DisplayFormat = '0.0'
    end
    object Query1InvoiceNo: TStringField
      FieldName = 'InvoiceNo'
      Origin = 'DB.DevtoSimis.InvoiceNo'
      FixedChar = True
    end
    object Query1Company: TStringField
      FieldName = 'Company'
      Origin = 'DB.DevtoSimis.Company'
      FixedChar = True
      Size = 100
    end
    object Query1InvoiceDate: TDateTimeField
      FieldName = 'InvoiceDate'
      Origin = 'DB.DevtoSimis.InvoiceDate'
    end
    object Query1TCPackingListSubmissionDate: TDateTimeField
      FieldName = 'TCPackingListSubmissionDate'
      Origin = 'DB.DevtoSimis.TCPackingListSubmissionDate'
    end
    object Query1BookingNO: TStringField
      FieldName = 'BookingNO'
      Origin = 'DB.DevtoSimis.BookingNO'
      FixedChar = True
    end
    object Query1SR: TStringField
      FieldName = 'SR'
      Origin = 'DB.DevtoSimis.SR'
      FixedChar = True
    end
    object Query1CustomsNo: TStringField
      FieldName = 'CustomsNo'
      Origin = 'DB.DevtoSimis.CustomsNo'
      FixedChar = True
      Size = 15
    end
    object Query1SailingDate: TDateTimeField
      FieldName = 'SailingDate'
      Origin = 'DB.DevtoSimis.SailingDate'
    end
    object Query1FCRNo_BillNo: TStringField
      FieldName = 'FCRNo_BillNo'
      Origin = 'DB.DevtoSimis.FCRNo_BillNo'
      FixedChar = True
    end
    object Query1CUSTID: TStringField
      FieldName = 'CUSTID'
      Origin = 'DB.DevtoSimis.CUSTID'
      FixedChar = True
      Size = 10
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      Origin = 'DB.DevtoSimis.Country'
      FixedChar = True
      Size = 50
    end
    object Query1KindLoading: TStringField
      FieldName = 'KindLoading'
      Origin = 'DB.DevtoSimis.KindLoading'
      FixedChar = True
      Size = 10
    end
    object Query1Forwarder: TStringField
      FieldName = 'Forwarder'
      Origin = 'DB.DevtoSimis.Forwarder'
      FixedChar = True
    end
    object Query1IODate: TStringField
      FieldName = 'IODate'
      Origin = 'DB.DevtoSimis.IODate'
      FixedChar = True
      Size = 10
    end
    object Query1QTY1: TFloatField
      FieldName = 'QTY1'
      Origin = 'DB.DevtoSimis.QTY1'
    end
    object Query1UserID: TStringField
      FieldName = 'UserID'
      Origin = 'DB.DevtoSimis.UserID'
      FixedChar = True
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
      Origin = 'DB.DevtoSimis.UserDate'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.DevtoSimis.YN'
      FixedChar = True
      Size = 1
    end
    object Query1TestNo: TStringField
      FieldName = 'TestNo'
      Origin = 'DB.DevtoSimis.TestNo'
      FixedChar = True
      Size = 10
    end
    object Query1CWHL: TIntegerField
      FieldName = 'CWHL'
      Origin = 'DB.DevtoSimis.ExFtyDate'
    end
    object Query1AcVNACC: TFloatField
      FieldName = 'AcVNACC'
    end
    object Query1REF: TStringField
      FieldName = 'REF'
      FixedChar = True
    end
    object Query1UnitPrice: TCurrencyField
      FieldName = 'UnitPrice'
    end
    object Query1Amount: TCurrencyField
      FieldName = 'Amount'
    end
    object Query1VAT_NO: TStringField
      FieldName = 'VAT_NO'
    end
    object Query1VAT_Date: TDateTimeField
      FieldName = 'VAT_Date'
    end
  end
  object qryCBY: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_N' +
        'ame,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,'
      
        #9'    '#9'inv.AMOUNT,case when inv.Customs_No is not null then inv.C' +
        'ustoms_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date' +
        ',sb.Bill_FCR_No,sb.Kind_Loading,'
      
        '       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im' +
        '.inv_Type,'
      
        '       '#39' '#39' AS Shipmode,'#39' '#39' as SPECID,im.REF as REF,sb.TC_PL_Date' +
        ',sb.Booking_No,'
      
        '       case when Inv_Type='#39'Mass Production'#39' then DDZLWHEX.IODate' +
        ' else CBYEX.IODate end as IODate,'
      
        '       case when Inv_Type='#39'Mass Production'#39' then DDZLWHEX.QTY el' +
        'se CBYEX.QTY end as Qty,'
      
        '       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) a' +
        's AcVNACC,YWDD.YSBH'
      #9'   '
      #9'   --INTO #N8_INVOICE_D'
      'FROM Ship_Booking sb '
      'INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO'
      'LEFT JOIN INVOICE_D inv ON inv.INV_NO = im.INV_NO'
      'LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID'
      'LEFT JOIN YWDD ON YWDD.DDBH=inv.RYNO'
      'left join DDZL do on do.DDBH=YWDD.YSBH '
      
        'LEFT JOIN ( SELECT DDBH,CONVERT(VARCHAR(7),Exedate,111) IODate, ' +
        'SUM(YWCP.QTY) QTY ,INV_NO'
      
        #9#9#9'       FROM YWCP left join  (select INV_NO,ryno,xh,ctq,ctz fr' +
        'om packing  group by INV_NO,ryno,xh,ctq,ctz)  packing'
      
        ' on ywcp.ddbh=packing.ryno and ywcp.xh =packing.XH and CARTONNO ' +
        'between packing.ctq and packing.ctz '
      
        '       '#9#9' WHERE SB='#39'3'#39' GROUP BY DDBH, CONVERT(VARCHAR(7),Exedate' +
        ',111),INV_NO) DDZLWHEX ON DDZLWHEX.DDBH=inv.RYNO AND DDZLWHEX.IO' +
        'Date=CONVERT(VARCHAR(7),sb.ExFty_Date,111) and  DDZLWHEX.INV_NO=' +
        'sb.INV_NO'
      
        'left join ( select workOrderId as DDBH, CONVERT(VARCHAR(7),Shipd' +
        'ate,111) IODate, sum (CBY_Orders.total * CBY_Orders.itemNumber) ' +
        'as Qty'
      
        #9#9#9'       from CBY_Orders where shipdate is not null  GROUP BY w' +
        'orkOrderId, CONVERT(VARCHAR(7),Shipdate,111)) CBYEX on CBYEX.DDB' +
        'H=inv.RYNO AND CBYEX.IODate=CONVERT(VARCHAR(7),sb.ExFty_Date,111' +
        ')'
      'LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date'
      'LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK'
      'WHERE ( sb.CO_CFMID IS NOT NULL'
      
        #9'       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR' +
        ',GETDATE(),111)'
      
        #9#9#9'        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NO' +
        'T NULL )'
      #9'  )'
      ' and convert(varchar,sb.ExFty_Date,111) between '
      ' '#39'2022/07/13'#39' and  '#39'2022/07/20'#39)
    Left = 780
    Top = 230
    object DateTimeField10: TDateTimeField
      FieldName = 'ExFty_Date'
    end
    object DateTimeField11: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object IntegerField5: TIntegerField
      FieldName = 'PAIRS'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'UNIT_PRICE'
    end
    object CurrencyField7: TCurrencyField
      FieldName = 'AMOUNT'
    end
    object StringField33: TStringField
      FieldName = 'Customs_No'
      FixedChar = True
      Size = 50
    end
    object DateTimeField12: TDateTimeField
      FieldName = 'Sailing_Date'
    end
    object StringField34: TStringField
      FieldName = 'Bill_FCR_No'
      FixedChar = True
      Size = 10
    end
    object StringField35: TStringField
      FieldName = 'Kind_Loading'
      FixedChar = True
      Size = 50
    end
    object StringField36: TStringField
      FieldName = 'Forwarder'
      FixedChar = True
      Size = 50
    end
    object StringField37: TStringField
      FieldName = 'CUSTID'
      FixedChar = True
      Size = 10
    end
    object StringField38: TStringField
      FieldName = 'COUNTRYEN'
      FixedChar = True
      Size = 50
    end
    object StringField39: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object StringField40: TStringField
      FieldName = 'RYNO'
      FixedChar = True
      Size = 50
    end
    object StringField41: TStringField
      FieldName = 'SPECID'
      FixedChar = True
      Size = 2
    end
    object StringField42: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
      Size = 50
    end
    object StringField43: TStringField
      FieldName = 'REF'
      FixedChar = True
      Size = 30
    end
    object DateTimeField13: TDateTimeField
      FieldName = 'TC_PL_Date'
    end
    object StringField44: TStringField
      FieldName = 'Booking_No'
      FixedChar = True
    end
    object StringField45: TStringField
      FieldName = 'IODate'
      FixedChar = True
      Size = 7
    end
    object IntegerField6: TIntegerField
      FieldName = 'QTY'
    end
    object IntegerField7: TIntegerField
      FieldName = 'CWHL'
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'AcVNACC'
    end
    object StringField46: TStringField
      FieldName = 'RISK'
      FixedChar = True
      Size = 50
    end
    object StringField47: TStringField
      FieldName = 'Company_Name'
      FixedChar = True
      Size = 255
    end
    object qryCBYVAT_NO: TStringField
      FieldName = 'VAT_NO'
    end
    object qryCBYVAT_Date: TDateTimeField
      FieldName = 'VAT_Date'
    end
  end
  object DS_CBY: TDataSource
    DataSet = qryCBY
    Left = 780
    Top = 198
  end
  object Pop_CDC: TPopupMenu
    Left = 388
    Top = 249
    object MenuItem1: TMenuItem
      Caption = 'Calculate'
      Visible = False
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object mniMod_CDC: TMenuItem
      Caption = 'Modify'
      OnClick = mniMod_CDCClick
    end
    object mniSav_CDC: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = mniSav_CDCClick
    end
    object mniCan_CDC: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = mniCan_CDCClick
    end
  end
  object Up_CDC: TUpdateSQL
    Left = 324
    Top = 249
  end
  object Pop_CBY: TPopupMenu
    Left = 820
    Top = 233
    object MenuItem3: TMenuItem
      Caption = 'Calculate'
      Visible = False
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object mniMod_CBY: TMenuItem
      Caption = 'Modify'
      OnClick = mniMod_CBYClick
    end
    object mniSav_CBY: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = mniSav_CBYClick
    end
    object mniCan_CBY: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = mniCan_CBYClick
    end
  end
  object Up_CBY: TUpdateSQL
    Left = 780
    Top = 257
  end
  object Qry_Report: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ExFty_Date,INV_DATE,RISK,TienTe,CWHL,INV_NO,MaThueSuat,VA' +
        'T_NO,VAT_Date,memo1,Customs_No,sum(AMOUNT) as AMOUNT,sum(AcVNACC' +
        ') as AcVNACC'
      
        #9'   ,TienThue1,TienThue2,TKKT,BoPhan,memo2,CURRENCY,CFMID,CFMDat' +
        'e'
      'FROM ('
      
        'SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_N' +
        'ame,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,'
      
        #9'    '#9'inv.AMOUNT,case when inv.Customs_No is not null then inv.C' +
        'ustoms_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date' +
        ',sb.Bill_FCR_No,sb.Kind_Loading,'
      
        '       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im' +
        '.inv_Type,'
      
        '       '#39' '#39' AS Shipmode,'#39' '#39' as SPECID,im.REF as REF,sb.TC_PL_Date' +
        ',sb.Booking_No,'
      '       DDZLWHEX.IODate as IODate,'
      '       DDZLWHEX.QTY as Qty,'
      
        '       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) a' +
        's AcVNACC,VAT_NO,VAT_Date,im.CFMID,im.CFMDate,'
      
        #9'   '#39'USD'#39' AS TienTe,'#39#39' AS MaThueSuat, '#39'Xuat hang theo hoa don so' +
        ': '#39'+isnull(inv.VAT_NO,'#39#39')+'#39'?????..??'#39' AS memo1,'
      
        #9'   CAST(0 AS int) AS TienThue1, CAST(0 AS int) AS TienThue2, '#39'5' +
        '1111'#39' AS TKKT, CAST(NULL AS VARCHAR(50)) AS BoPhan, CAST(NULL AS' +
        ' VARCHAR(50)) AS memo2,'
      #9'   im.CURRENCY'
      
        'FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.I' +
        'NV_NO'
      'LEFT JOIN INVOICE_D inv ON inv.INV_NO = im.INV_NO'
      'LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID'
      'LEFT JOIN YWDD ON YWDD.DDBH=inv.RYNO'
      'left join DDZL do on do.DDBH=YWDD.YSBH '
      
        'LEFT JOIN ( SELECT DDBH,CONVERT(VARCHAR(7),Exedate,111) IODate, ' +
        'SUM(YWCP.QTY) QTY ,INV_NO'
      
        #9#9#9'       FROM YWCP left join  (select INV_NO,ryno,xh,ctq,ctz fr' +
        'om packing  group by INV_NO,ryno,xh,ctq,ctz)  packing'
      
        ' on ywcp.ddbh=packing.ryno and ywcp.xh =packing.XH and CARTONNO ' +
        'between packing.ctq and packing.ctz '
      
        '       '#9#9' WHERE SB='#39'3'#39' GROUP BY DDBH, CONVERT(VARCHAR(7),Exedate' +
        ',111),INV_NO) DDZLWHEX ON DDZLWHEX.DDBH=inv.RYNO AND DDZLWHEX.IO' +
        'Date=CONVERT(VARCHAR(7),sb.ExFty_Date,111) and  DDZLWHEX.INV_NO=' +
        'sb.INV_NO'
      'LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date'
      'LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK'
      'WHERE ( sb.CO_CFMID IS NOT NULL'
      
        #9'       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR' +
        ',GETDATE(),111)'
      
        #9#9#9'        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NO' +
        'T NULL )'
      #9'  )'
      '   and im.inv_Type = '#39'Mass Production'#39' '
      ' and convert(varchar,sb.ExFty_Date,111) between '
      ' '#39'2023/05/04'#39' and  '#39'2023/05/04'#39
      'UNION ALL'
      
        'SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_N' +
        'ame,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,'
      
        #9'    '#9'inv.AMOUNT,case when inv.Customs_No is not null then inv.C' +
        'ustoms_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date' +
        ',sb.Bill_FCR_No,sb.Kind_Loading,'
      
        '       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im' +
        '.inv_Type,'
      
        '       '#39' '#39' AS Shipmode,'#39' '#39' as SPECID,im.REF as REF,sb.TC_PL_Date' +
        ',sb.Booking_No,'
      '       CBYEX.IODate as IODate, CBYEX.QTY as Qty,'
      
        '       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) a' +
        's AcVNACC,VAT_NO,VAT_Date,im.CFMID,im.CFMDate,'
      
        #9'   '#39'USD'#39' AS TienTe,'#39#39' AS MaThueSuat, '#39'Xuat hang theo hoa don so' +
        ': '#39'+isnull(inv.VAT_NO,'#39#39')+'#39'?????..??'#39' AS memo1,'
      
        #9'   CAST(0 AS int) AS TienThue1, CAST(0 AS int) AS TienThue2, '#39'5' +
        '1111'#39' AS TKKT, CAST(NULL AS VARCHAR(50)) AS BoPhan, CAST(NULL AS' +
        ' VARCHAR(50)) AS memo2,'
      #9'   im.CURRENCY'
      
        'FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.I' +
        'NV_NO'
      'LEFT JOIN INVOICE_D inv ON inv.INV_NO = im.INV_NO'
      'LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID'
      
        'left join ( select workOrderId as DDBH, CONVERT(VARCHAR(7),Shipd' +
        'ate,111) IODate, sum (CBY_Orders.total * CBY_Orders.itemNumber) ' +
        'as Qty'
      
        #9#9#9'       from CBY_Orders where shipdate is not null  GROUP BY w' +
        'orkOrderId, CONVERT(VARCHAR(7),Shipdate,111)) CBYEX on CBYEX.DDB' +
        'H=inv.RYNO AND CBYEX.IODate=CONVERT(VARCHAR(7),sb.ExFty_Date,111' +
        ')'
      'LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date'
      'LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK'
      'WHERE ( sb.CO_CFMID IS NOT NULL'
      
        #9'       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR' +
        ',GETDATE(),111)'
      
        #9#9#9'        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NO' +
        'T NULL )'
      #9'  )'
      ' and convert(varchar,sb.ExFty_Date,111) between '
      ' '#39'2023/05/04'#39' and  '#39'2023/05/04'#39
      
        '  and Inv_Type='#39'CBY'#39' and convert(varchar,sb.ExFty_Date,111) <= '#39 +
        '2022/10/20'#39
      'UNION ALL'
      
        'SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_N' +
        'ame,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,'
      
        #9'    '#9'inv.AMOUNT,case when inv.Customs_No is not null then inv.C' +
        'ustoms_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date' +
        ',sb.Bill_FCR_No,sb.Kind_Loading,'
      
        '       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im' +
        '.inv_Type,'
      
        '       '#39' '#39' AS Shipmode,'#39' '#39' as SPECID,im.REF as REF,sb.TC_PL_Date' +
        ',sb.Booking_No,'
      
        '       CONVERT(VARCHAR(7),CBYEX.IODate,111) IODate, CBYEX.QTY as' +
        ' Qty,'
      
        '       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) a' +
        's AcVNACC,VAT_NO,VAT_Date,im.CFMID,im.CFMDate,'
      
        #9'   '#39'USD'#39' AS TienTe,'#39#39' AS MaThueSuat, '#39'Xuat hang theo hoa don so' +
        ': '#39'+isnull(inv.VAT_NO,'#39#39')+'#39'?????..??'#39' AS memo1,'
      
        #9'   CAST(0 AS int) AS TienThue1, CAST(0 AS int) AS TienThue2, '#39'5' +
        '1111'#39' AS TKKT, CAST(NULL AS VARCHAR(50)) AS BoPhan, CAST(NULL AS' +
        ' VARCHAR(50)) AS memo2,'
      #9'   im.CURRENCY'
      
        'FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.I' +
        'NV_NO'
      
        'LEFT JOIN (  select INVOICE_D.INV_NO,MasterOrder as RYNO, sum(CB' +
        'Y_Orders.total*CBY_Orders.itemNumber) as pairs,ARTICLE,UNIT_PRIC' +
        'E,sum(CBY_Orders.total*CBY_Orders.itemNumber*UNIT_PRICE) as Amou' +
        'nt,CO_HSCode,AcVNACC,Customs_No,VAT_NO,VAT_Date '
      
        #9#9#9'        from INVOICE_D left join INVOICE_M on INVOICE_D.INV_N' +
        'O=INVOICE_M.INV_NO'
      
        '             LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = IN' +
        'VOICE_D.RYNO'
      '       '#9#9#9'where Inv_Type='#39'CBY'#39
      
        #9#9#9'        group by INVOICE_D.INV_NO,MasterOrder,ARTICLE,UNIT_PR' +
        'ICE,CO_HSCode,AcVNACC,Customs_No,VAT_NO,VAT_Date  )inv ON inv.IN' +
        'V_NO = im.INV_NO '
      'LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID'
      
        'LEFT JOIN (  select INVOICE_D.INV_NO,MasterOrder as DDBH, Shipda' +
        'te as IODate,INVOICE_D.UNIT_PRICE, sum (CBY_Orders.total * CBY_O' +
        'rders.itemNumber) as Qty'
      #9#9#9'        from CBY_Orders'
      
        '             left join INVOICE_D on CBY_Orders.workOrderId =INVO' +
        'ICE_D.RYNO where shipdate is not null'
      
        #9#9#9'        GROUP BY INVOICE_D.INV_NO,MasterOrder, Shipdate,INVOI' +
        'CE_D.UNIT_PRICE) CBYEX on CBYEX.DDBH=inv.RYNO AND CBYEX.IODate=s' +
        'b.ExFty_Date and IODate=sb.ExFty_Date and CBYEX.INV_NO=im.INV_NO' +
        ' and CBYEX.UNIT_PRICE=inv.UNIT_PRICE '
      'LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date'
      'LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK'
      'WHERE ( sb.CO_CFMID IS NOT NULL'
      
        #9'       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR' +
        ',GETDATE(),111)'
      
        #9#9#9'        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NO' +
        'T NULL )'
      #9'  )'
      ' and convert(varchar,sb.ExFty_Date,111) between '
      ' '#39'2023/05/04'#39' and  '#39'2023/05/04'#39
      
        '  and Inv_Type='#39'CBY'#39' and convert(varchar,sb.ExFty_Date,111) > '#39'2' +
        '022/10/20'#39
      'UNION ALL'
      
        'SELECT DEVTOSIMIS.ExFtyDate,DEVTOSIMIS.InvoiceNo,DEVTOSIMIS.Invo' +
        'iceDate,DEVTOSIMIS.Company,NULL as Company_Name,DEVTOSIMIS.YPDH,' +
        'DEVTOSIMIS.SR,DEVTOSIMIS.QTY,DEVTOSIMIS.UnitPrice,DEVTOSIMIS.Amo' +
        'unt,'
      
        #9'   DEVTOSIMIS.CustomsNo,DEVTOSIMIS.SailingDate,DEVTOSIMIS.FCRNo' +
        '_BillNo,DEVTOSIMIS.KindLoading,DEVTOSIMIS.Forwarder,DEVTOSIMIS.C' +
        'USTID,DEVTOSIMIS.Country,'#39#39' as inv_Type,'#39#39' as Shipmode,'#39#39' as SPE' +
        'CID,'
      
        #9'   DevtoSimis.InvoiceNo as REF,DEVTOSIMIS.TCPackingListSubmissi' +
        'onDate,DEVTOSIMIS.BookingNO,DEVTOSIMIS.IODate,DEVTOSIMIS.QTY,CWH' +
        'L,isnull(AcVNACC,round(AMOUNT*ci.CWHL,0)) as AcVNACC,VAT_NO,VAT_' +
        'Date,'
      #9'   CFMID,CFMDate,'
      
        #9'   '#39'USD'#39' AS TienTe,'#39#39' AS MaThueSuat, '#39'Xuat hang theo hoa don so' +
        ': '#39'+isnull(VAT_NO,'#39#39')+'#39'?????..??'#39' AS memo1,'
      
        #9'   CAST(0 AS int) AS TienThue1, CAST(0 AS int) AS TienThue2, '#39'5' +
        '1111'#39' AS TKKT, CAST(NULL AS VARCHAR(50)) AS BoPhan, CAST(NULL AS' +
        ' VARCHAR(50)) AS memo2,'
      #9'   '#39'USD'#39' as CURRENCY'
      'FROM DEVTOSIMIS'
      'LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=DEVTOSIMIS.ExFtyDate'
      'WHERE 1=1 '
      ' and convert(varchar,DEVTOSIMIS.ExFtyDate,111) between '
      ' '#39'2023/05/04'#39' and  '#39'2023/05/04'#39' ) Report '
      ' where 1=2'
      
        ' GROUP BY ExFty_Date,INV_NO,INV_DATE,RISK,Customs_No,CWHL,VAT_NO' +
        ',VAT_Date,TienTe,MaThueSuat,memo1,TienThue1,TienThue2,TKKT,BoPha' +
        'n,memo2,CURRENCY,CFMID,CFMDate'
      ''
      ''
      '')
    Left = 996
    Top = 214
    object Qry_ReportExFty_Date: TDateTimeField
      FieldName = 'ExFty_Date'
    end
    object Qry_ReportINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object Qry_ReportMaKH: TStringField
      FieldName = 'MaKH'
    end
    object Qry_ReportRISK: TStringField
      FieldName = 'RISK'
      FixedChar = True
      Size = 100
    end
    object Qry_ReportTienTe: TStringField
      FieldName = 'TienTe'
      FixedChar = True
      Size = 3
    end
    object Qry_ReportCWHL: TIntegerField
      FieldName = 'CWHL'
    end
    object Qry_ReportINV_NO: TStringField
      FieldName = 'INV_NO'
      FixedChar = True
      Size = 30
    end
    object Qry_ReportMaThueSuat: TStringField
      FieldName = 'MaThueSuat'
      FixedChar = True
      Size = 1
    end
    object Qry_ReportVAT_NO: TStringField
      FieldName = 'VAT_NO'
      FixedChar = True
    end
    object Qry_ReportVAT_Date: TDateTimeField
      FieldName = 'VAT_Date'
    end
    object Qry_Reportmemo1: TStringField
      FieldName = 'memo1'
      FixedChar = True
      Size = 56
    end
    object Qry_ReportCustoms_No: TStringField
      FieldName = 'Customs_No'
      FixedChar = True
      Size = 50
    end
    object Qry_ReportAMOUNT: TFloatField
      FieldName = 'AMOUNT'
    end
    object Qry_ReportAcVNACC: TCurrencyField
      FieldName = 'AcVNACC'
    end
    object Qry_ReportTienThue1: TIntegerField
      FieldName = 'TienThue1'
    end
    object Qry_ReportTienThue2: TIntegerField
      FieldName = 'TienThue2'
    end
    object Qry_ReportTKKT: TStringField
      FieldName = 'TKKT'
      FixedChar = True
      Size = 5
    end
    object Qry_ReportBoPhan: TStringField
      FieldName = 'BoPhan'
      FixedChar = True
      Size = 50
    end
    object Qry_Reportmemo2: TStringField
      FieldName = 'memo2'
      FixedChar = True
      Size = 50
    end
    object Qry_ReportCURRENCY: TStringField
      FieldName = 'CURRENCY'
      FixedChar = True
      Size = 10
    end
    object Qry_ReportCFMID: TStringField
      FieldName = 'CFMID'
      FixedChar = True
    end
    object Qry_ReportCFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Qry_ReportInv_Type: TStringField
      FieldName = 'Inv_Type'
      Size = 50
    end
  end
  object DS_Report: TDataSource
    DataSet = Qry_Report
    Left = 996
    Top = 182
  end
  object Pop_Report: TPopupMenu
    Left = 1000
    Top = 257
    object mni_Confirm: TMenuItem
      Caption = 'Confirm'
      OnClick = mni_ConfirmClick
    end
    object mni_ConfirmAll: TMenuItem
      Caption = 'Confirm All'
      OnClick = mni_ConfirmAllClick
    end
    object mni_UnConfirm: TMenuItem
      Caption = 'UnConfirm'
      OnClick = mni_UnConfirmClick
    end
    object mni_UnConfirmAll: TMenuItem
      Caption = 'UnConfirmAll'
      OnClick = mni_UnConfirmAllClick
    end
  end
end

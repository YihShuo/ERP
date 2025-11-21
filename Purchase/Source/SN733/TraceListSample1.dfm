object TraceListSample: TTraceListSample
  Left = 191
  Top = 132
  Width = 1300
  Height = 740
  Caption = 'TraceListSample'
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
  object Label14: TLabel
    Left = 482
    Top = 57
    Width = 13
    Height = 13
    Caption = 'To'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 105
    Width = 1284
    Height = 596
    ActivePage = TS1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TS1: TTabSheet
      Caption = 'PO Status'
      object Splitter1: TSplitter
        Left = 0
        Top = 408
        Width = 1276
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 408
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGridEh
          Left = 1
          Top = 41
          Width = 1274
          Height = 366
          Align = alClient
          DataSource = DS1
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -15
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          FooterRowCount = 1
          FrozenCols = 5
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
          ParentFont = False
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          UseMultiTitle = True
          VTitleMargin = 4
          Columns = <
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'CGNO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              Footers = <
                item
                  FieldName = 'CGNO'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Purchase|NO'
              Title.TitleButton = True
              Width = 72
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'SEASON'
              Footers = <>
              Title.Caption = 'Purchase|Sea.'
              Title.TitleButton = True
              Width = 33
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'PURPOSE'
              Footers = <>
              Title.Caption = 'Purchase|Stage'
              Title.TitleButton = True
              Width = 40
            end
            item
              EditButtons = <>
              FieldName = 'sampleorder'
              Footers = <>
              Title.Caption = 'SampleOrder'
              Width = 111
            end
            item
              EditButtons = <>
              FieldName = 'Devtype'
              Footers = <>
              Width = 80
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'Mat No'
              Title.TitleButton = True
              Width = 91
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.TitleButton = True
              Width = 281
            end
            item
              EditButtons = <>
              FieldName = 'MatRemark'
              Footers = <>
              Width = 137
            end
            item
              EditButtons = <>
              FieldName = 'FlexCode'
              Footers = <>
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <
                item
                  FieldName = 'Qty'
                  ValueType = fvtSum
                end>
              Title.Caption = 'Purchase Qty'
              Title.TitleButton = True
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'RKQTY'
              Footers = <
                item
                  FieldName = 'RKQTY'
                  ValueType = fvtSum
                end>
              Title.TitleButton = True
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.TitleButton = True
              Width = 38
            end
            item
              DisplayFormat = '#,##0.00'
              EditButtons = <>
              FieldName = 'USPrice_'
              Footers = <>
              Title.Caption = 'ERP|USPrice'
              Title.TitleButton = True
              Visible = False
              Width = 59
            end
            item
              Color = clSkyBlue
              DisplayFormat = '#,##0.00'
              EditButtons = <>
              FieldName = 'USACC_'
              Footers = <
                item
                  FieldName = 'USACC_'
                  ValueType = fvtSum
                end>
              Title.Caption = 'ERP|US Amount'
              Title.TitleButton = True
              Visible = False
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'VNPrice_'
              Footers = <>
              Title.Caption = 'ERP|VNPrice'
              Title.TitleButton = True
              Visible = False
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'VNACC_'
              Footers = <>
              Title.Caption = 'ERP|VN Amount'
              Title.TitleButton = True
              Visible = False
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'CGDATE'
              Footers = <>
              Title.Caption = 'Purchase Date'
              Title.TitleButton = True
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'PurReceiveDate'
              Footers = <>
              Title.Caption = 'Pur Receive Date'
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'DTMReceivedDate'
              Footers = <>
              Title.Caption = 'DTM ReceivedDate'
              Width = 90
            end
            item
              EditButtons = <>
              FieldName = 'RKdate'
              Footers = <>
              Title.Caption = 'In-stock Date'
              Title.TitleButton = True
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'YQDate'
              Footers = <>
              Title.Caption = 'Purchase|Req. Date'
              Title.TitleButton = True
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'CFMDate'
              Footers = <>
              Title.Caption = 'Purchase|ETD'
              Title.TitleButton = True
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'memo'
              Footers = <>
              Title.Caption = 'Purchase|memo'
              Title.TitleButton = True
              Width = 85
            end
            item
              EditButtons = <>
              FieldName = 'MEMO1'
              Footers = <>
              Title.TitleButton = True
              Visible = False
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'ActualETD'
              Footers = <>
              Width = 118
            end
            item
              EditButtons = <>
              FieldName = 'NewETA'
              Footers = <>
              Title.Caption = 'New ETA'
              Width = 103
            end
            item
              EditButtons = <>
              FieldName = 'RFCDeadlineDate'
              Footers = <>
              Width = 130
            end
            item
              EditButtons = <>
              FieldName = 'Material_ETA'
              Footers = <>
              Width = 103
            end
            item
              EditButtons = <>
              FieldName = 'LateETA'
              Footers = <>
              Width = 84
            end
            item
              EditButtons = <>
              FieldName = 'LateETD'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Late ETD'
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_Reason'
              Footers = <>
              Title.Caption = 'NG|Reason'
              Title.TitleButton = True
              Width = 56
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_ETD'
              Footers = <>
              Title.Caption = 'NG|ETD'
              Title.TitleButton = True
              Width = 62
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_ETA'
              Footers = <>
              Title.Caption = 'NG|ETA'
              Title.TitleButton = True
              Width = 58
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_Result'
              Footers = <>
              Title.Caption = 'NG|Result'
              Title.TitleButton = True
              Width = 51
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_Remark'
              Footers = <>
              Title.Caption = 'NG|Remark'
              Title.TitleButton = True
              Width = 150
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'C_window'
              Footers = <>
              Title.Caption = 'NG|Color window'
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Delivery date'
              Title.TitleButton = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'ZSBH'
              Footers = <>
              Title.Caption = 'Supplier Invoice|ID'
              Title.TitleButton = True
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Name'
              Title.TitleButton = True
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'COUNTRY'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Supplier Country'
              Title.TitleButton = True
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'Location'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Prod Location'
              Title.TitleButton = True
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'BILLNO'
              Footers = <>
              Title.Caption = 'Supplier Invoice|BillNo'
              Title.TitleButton = True
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'invoice'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Invoice'
              Title.TitleButton = True
              Width = 111
            end
            item
              EditButtons = <>
              FieldName = 'WAY'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Transport'
              Title.TitleButton = True
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'Custom'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Custom'
              Title.TitleButton = True
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'BILLNO_2'
              Footers = <>
              Title.Caption = 'Supplier Invoice|BillNo_2'
              Title.TitleButton = True
              Width = 103
            end
            item
              EditButtons = <>
              FieldName = 'invoice_2'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Invoice 2'
              Title.TitleButton = True
              Width = 129
            end
            item
              EditButtons = <>
              FieldName = 'WAY_2'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Transport 2'
              Title.TitleButton = True
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'Custom_2'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Custom 2'
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'USERDate'
              Footers = <>
              Title.Caption = 'Last Update Date'
              Title.TitleButton = True
              Width = 66
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              Title.Caption = 'Place Order User'
              Title.TitleButton = True
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'All_Article'
              Footers = <>
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'SamplePurchaser_Name'
              Footers = <>
              Title.Caption = 'Sample Purchaser'
              Title.TitleButton = True
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'FreeQty_'
              Footers = <>
              Title.Caption = 'Free Qty'
              Title.TitleButton = True
              Width = 48
            end
            item
              DisplayFormat = '##%'
              EditButtons = <>
              FieldName = 'Charge_'
              Footers = <>
              Title.Caption = 'Charge%'
              Title.TitleButton = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'Q_USPrice_'
              Footers = <>
              Title.Caption = 'Quotation|USPrice'
              Title.TitleButton = True
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'Q_VNPrice_'
              Footers = <>
              Title.Caption = 'Quotation|VNPrice'
              Title.TitleButton = True
              Width = 74
            end
            item
              EditButtons = <>
              FieldName = 'Skin_Size'
              Footers = <>
              Title.Caption = 'Skin Size'
              Title.TitleButton = True
              Width = 41
            end
            item
              DisplayFormat = '##%'
              EditButtons = <>
              FieldName = 'Skin_Quality'
              Footers = <>
              Title.Caption = 'Skin Quality'
              Title.TitleButton = True
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'QC_SKIN'
              Footers = <>
              Title.Caption = 'QC Check'
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'QC_Inspection1'
              Footers = <>
              PickList.Strings = (
                ''
                'Pass'
                'Fail')
              Title.Caption = 'QC Inspection 1'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'QC_Inspection2'
              Footers = <>
              PickList.Strings = (
                ''
                'Pass'
                'Fail')
              Title.Caption = 'QC Inspection 2'
              Width = 70
            end
            item
              EditButtons = <>
              FieldName = 'area'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'DataUpdateDate'
              Footers = <>
              Title.Caption = 'Data Update Date'
            end
            item
              EditButtons = <>
              FieldName = 'Brand'
              Footers = <>
            end>
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 1274
          Height = 40
          Align = alTop
          TabOrder = 1
          object Chk_ShowERPPrice: TCheckBox
            Left = 640
            Top = 3
            Width = 129
            Height = 17
            Caption = 'Show ERP Price'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object Button3: TButton
            Left = 8
            Top = 5
            Width = 75
            Height = 30
            Caption = 'Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = Button3Click
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 411
        Width = 1276
        Height = 157
        Align = alBottom
        TabOrder = 1
        object Splitter2: TSplitter
          Left = 305
          Top = 1
          Height = 155
          Color = clSkyBlue
          ParentColor = False
        end
        object Splitter3: TSplitter
          Left = 674
          Top = 1
          Height = 155
          Color = clSkyBlue
          ParentColor = False
        end
        object DBGridEh1: TDBGridEh
          Left = 1
          Top = 1
          Width = 304
          Height = 155
          Align = alLeft
          DataSource = DS4
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
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'devcode'
              Footers = <>
              Title.Caption = 'SR#'
              Width = 128
            end
            item
              EditButtons = <>
              FieldName = 'YSSM'
              Footers = <>
              Title.Caption = 'Color Way'
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
              Title.Caption = 'SampleOrder'
            end
            item
              EditButtons = <>
              FieldName = 'Article'
              Footers = <>
              Title.Caption = 'SKU'
              Width = 147
            end
            item
              EditButtons = <>
              FieldName = 'Stage'
              Footers = <>
              Width = 32
            end
            item
              EditButtons = <>
              FieldName = 'XXCC'
              Footers = <>
              Title.Caption = 'Size'
              Width = 34
            end
            item
              EditButtons = <>
              FieldName = 'FD'
              Footers = <>
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Width = 46
            end
            item
              EditButtons = <>
              FieldName = 'XIEMING'
              Footers = <>
              Width = 97
            end>
        end
        object DBGridEh2: TDBGridEh
          Left = 308
          Top = 1
          Width = 366
          Height = 155
          Align = alLeft
          DataSource = DS5
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
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'RKNO'
              Footers = <>
              Title.Caption = 'Received NO'
              Width = 89
            end
            item
              EditButtons = <>
              FieldName = 'RKdate'
              Footers = <>
              Title.Caption = 'Rece. date'
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'RKSB'
              Footers = <>
              Title.Caption = 'TP'
              Width = 21
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Title.Caption = 'Rec. Qty'
              Width = 54
            end
            item
              EditButtons = <>
              FieldName = 'USPrice'
              Footers = <>
              Title.Caption = 'USDPrice'
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'USACC'
              Footers = <>
              Title.Caption = 'USAmount'
              Width = 69
            end
            item
              EditButtons = <>
              FieldName = 'VNPrice'
              Footers = <>
              Width = 55
            end
            item
              EditButtons = <>
              FieldName = 'VNACC'
              Footers = <>
            end
            item
              EditButtons = <>
              FieldName = 'HandCarry_USPrice'
              Footers = <>
              Title.Caption = 'HC_USPrice'
              Width = 82
            end
            item
              EditButtons = <>
              FieldName = 'HandCarry_USACC'
              Footers = <>
              Title.Caption = 'HC_USACC'
              Width = 78
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              Title.Caption = 'User ID'
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'USERDATE'
              Footers = <>
              Title.Caption = 'User Date'
              Width = 66
            end>
        end
        object DBGridEh3: TDBGridEh
          Left = 677
          Top = 1
          Width = 598
          Height = 155
          Align = alClient
          DataSource = DS6
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
          ParentFont = False
          TabOrder = 2
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
              Width = 99
            end
            item
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              Width = 63
            end
            item
              EditButtons = <>
              FieldName = 'Qty'
              Footers = <>
              Width = 45
            end
            item
              EditButtons = <>
              FieldName = 'BillNO'
              Footers = <>
              Width = 109
            end
            item
              EditButtons = <>
              FieldName = 'transport'
              Footers = <>
              Width = 76
            end
            item
              EditButtons = <>
              FieldName = 'Custom'
              Footers = <>
              Width = 41
            end
            item
              EditButtons = <>
              FieldName = 'MEMO'
              Footers = <>
              Width = 227
            end
            item
              EditButtons = <>
              FieldName = 'CIDate'
              Footers = <>
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'USERDate'
              Footers = <>
              Width = 83
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              Width = 113
            end
            item
              EditButtons = <>
              FieldName = 'CINO'
              Footers = <>
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'Pmark'
              Footers = <>
              Width = 34
            end>
        end
      end
    end
    object TS2: TTabSheet
      Caption = 'PO (Article) Status'
      ImageIndex = 1
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 22
        Width = 1276
        Height = 546
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 5
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 4
        Columns = <
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <
              item
                FieldName = 'CGNO'
                ValueType = fvtCount
              end>
            Title.Caption = 'Purchase Order|NO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 88
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SEASON'
            Footers = <>
            Title.Caption = 'Purchase Order|Sea.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 43
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PURPOSE'
            Footers = <>
            Title.Caption = 'Purchase Order|Stage'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 42
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Title.Caption = 'Inner Stage'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 44
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'ZLBH'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 131
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'XIEMING'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 120
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 281
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = 'Purchase Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 72
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 39
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Title.Caption = 'Purchase|US Price'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 57
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <>
            Title.Caption = 'Purchase|US Amount'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 72
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Title.Caption = 'Purchase|VN Price'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 60
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
            Title.Caption = 'Purchase|VN Amount'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CGDATE'
            Footers = <>
            Title.Caption = 'Purchase Date'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'RKDATE'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 68
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 74
          end
          item
            EditButtons = <>
            FieldName = 'memo'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'MEMO1'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'Supplier|ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'yjdz'
            Footers = <>
            Title.Caption = 'Supplier|Address'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY'
            Footers = <>
            Title.Caption = 'Supplier|Country'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'BILLNO'
            Footers = <>
            Title.Caption = 'Supplier|BillNo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'INVOICE'
            Footers = <>
            Title.Caption = 'Supplier|Invoice'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'WAY'
            Footers = <>
            Title.Caption = 'Supplier|Transport'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'BILLNO_2'
            Footers = <>
            Title.Caption = 'Supplier|BillNo_2'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'invoice_2'
            Footers = <>
            Title.Caption = 'Supplier|Invoice_2'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'WAY_2'
            Footers = <>
            Title.Caption = 'Supplier|Transport_2'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 58
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 22
        Align = alTop
        TabOrder = 1
        object Chk_ShowPage2: TCheckBox
          Left = 8
          Top = 3
          Width = 97
          Height = 17
          Caption = 'Show Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TS3: TTabSheet
      Caption = 'PO (Payment) Status'
      ImageIndex = 2
      object DBGrid3: TDBGridEh
        Left = 0
        Top = 22
        Width = 1276
        Height = 546
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 5
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'RKNO'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 84
          end
          item
            DisplayFormat = 'YYYY/MM/DD'
            EditButtons = <>
            FieldName = 'RKdate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 76
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'CGNO'
            Footers = <
              item
                FieldName = 'CGNO'
                ValueType = fvtCount
              end>
            Title.Caption = 'Purchase|NO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 72
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SEASON'
            Footers = <>
            Title.Caption = 'Purchase|Sea.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 50
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PURPOSE'
            Footers = <>
            Title.Caption = 'Purchase|Stage'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 54
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat No'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 70
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 281
          end
          item
            EditButtons = <>
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = 'Purchase Qty'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'RKQTY'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 71
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 31
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Title.Caption = 'Payment|US Price'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 57
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <>
            Title.Caption = 'Payment|US Amount'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 72
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Title.Caption = 'Payment|VN Price'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 60
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
            Title.Caption = 'Payment|VN Amount'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CGDATE'
            Footers = <>
            Title.Caption = 'Purchase Date'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'memo'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'MEMO1'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'Supplier|ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'yjdz'
            Footers = <>
            Title.Caption = 'Supplier|Address'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY'
            Footers = <>
            Title.Caption = 'Supplier|Country'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'BILLNO'
            Footers = <>
            Title.Caption = 'Supplier|BillNo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'WAY'
            Footers = <>
            Title.Caption = 'Supplier|Transport'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = False
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -15
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Title.TitleButton = True
            Width = 62
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1276
        Height = 22
        Align = alTop
        TabOrder = 1
        object Chk_ShowPage3: TCheckBox
          Left = 8
          Top = 3
          Width = 97
          Height = 17
          Caption = 'Show Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'PO Status MeMo'
      ImageIndex = 3
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1276
        Height = 568
        Align = alClient
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = 14822282
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        Lines.Strings = (
          
            '----------------------------------------------------------------' +
            '------------'
          #31243#24335#20027#35201#21151#33021#35498#26126
          ''
          #20027#35201#29992#26044#25505#36092#36861#36452#32317#34920#26597#35426','#26597#35426#25505#36092#29289#26009#20358#28304#25509#25910#33287#26178#38291
          ''
          
            '----------------------------------------------------------------' +
            '------------'
          #36984#21934#19978#21508#21151#33021#20171#32057
          ''
          'PO Status: '#25505#36092#29376#24907
          'PO[Article] Status: '#25505#36092'[Article]'#29376#24907
          'PO[Payment] Status:  '#25505#36092'['#20184#27454']'#29376#24907
          ''
          
            '----------------------------------------------------------------' +
            '------------'
          #36039#26009#31721#36984#25805#20316#35498#26126
          ''
          'Purchaser Date = '#25505#36092#26178#38291
          'No ETA and  ETA ='#38283#21934#24460#38928#20272#26085#26399
          'Supplier = '#20379#25033#21830
          'Supp.Style ='#20379#25033#21830#39006#22411
          'ProdLocatior = '#20379#25033#21830#22320#40670
          'Country = '#20379#25033#21830#22283#23478
          'Pur No = '#25505#36092#21934#34399
          'MatNo = '#38283#30332#21934#34399
          'Hide Temp Material = '#38577#34255#33256#26178#26448#26009
          'Mat Name = '#38283#30332#21517#31281
          ''
          
            '----------------------------------------------------------------' +
            '------------'
          #21295#20986'Excel'#37325#40670#27396#20301#35498#26126
          ''
          '(A) Purchase No: '#25505#36092#21934#34399
          #8594' '#30001'N731'#30340'Po No'#27396#20301#36664#20837
          ''
          '(B)Season: '#23395#21029
          #8594' '#30001'N731'#30340'Season'#27396#20301#36664#20837
          ''
          '(C) Stage: '#38542#27573
          #8594' '#30001'N731'#30340'Stage'#27396#20301#36664#20837
          ''
          '(D) MatName: '#26448#26009#21517#31281
          #8594' '#30001'N731'#30340'MatName'#27396#20301#36664#20837
          ''
          '(E) Pur Qty: '#25505#36092#25976#37327
          #8594' '#30001'N731'#30340'QTY'#27396#20301#36664#20837
          ''
          '(F) Unit: '#21934#20301#21029
          #8594' '#30001'BOM'#30452#25509#36664#20837
          ''
          '(G) Purchase Date: '#25505#36092#26085#26399
          #8594' '#30001'N731'#30340'Purchase Date'#27396#20301#36664#20837
          ''
          '(H) Purchase Req.Date: '#20837#24235#26085#26399
          #8594' '#30001'N731'#30340'Req Date'#27396#20301#36664#20837
          ''
          '(I)  MTRL ETD: '#20986#36008#26085#26399
          #8594' '#30001'N74'#30340'ETD'#27396#20301#36664#20837
          ''
          '(J)  Late ETD: '#26159#21542#24310#26399
          #8594' '#30001#31243#24335#21028#26039' ETD>Req= Y , ETD'#8806'Req= N'
          ''
          '(K) MTRL ETA: '#23526#38555#21040#36008#26085
          #8594' '#30001#31243#24335#21028#26039' VN= ETD+1 , NO VN= ETD+5'
          ''
          '(L) Inv receive date: '#25509#25910#26085#26399
          #8594' '#30001'N751'#30340'Invoice ETA'#27396#20301#36664#20837
          ''
          '(M) Actual Arrival Date: '#23526#38555#21040#36948#26085#26399
          #8594' '#30001'N731'#30340'UsereDate'#27396#20301#36664#20837
          ''
          '(N) Supplier Invoice Name: '#20379#25033#21830#30332#31080#21517#31281
          #8594' '#30001'N763'#30340'Naame'#27396#20301#36664#20837
          ''
          '(O) Supplier Invoice Prod Location: '#20379#25033#21830#30332#31080#22283#23478
          #8594' '#30001'N764'#30340'MOQ'#27396#20301#36664#20837
          ''
          '(P)  Last Update Date: '#26368#24460#26356#26032#26085#26399
          #8594' '#30001'Warehouse N211'#30340'UserDate'#27396#20301#36664#20837
          ''
          '(Q) All_Article: '#25152#26377#30340'Article'
          #8594' '#30001'N731'#30340'Article_All'#27396#20301#36664#20837
          ''
          '(R) Sample Purchaser:'#27171#21697#25505#36092#21729
          #8594' '#30001'N764'#30340'Sample Purchase'#27396#20301#36664#20837
          ''
          '(S) NG Reason: NG_'#23395#21029
          #8594' '#30001'N74'#30340'Confirm Status'#27396#20301#36664#20837
          ''
          '(T) NG ETD: NG '#20986#36008#26085#26399
          #8594' '#30001'N74'#30340'NG ETD'#27396#20301#36664#20837
          ''
          '(U) NG ETA: NG '#21040#36008#26085#26399
          #8594' '#30001'N74'#30340'NG ETA'#27396#20301#36664#20837
          ''
          '(V) NG Result: NG '#32080#26524
          #8594' '#30001'N74'#30340'NG Result'#27396#20301#36664#20837
          ''
          '(W) NG Color window: NG '#38991#33394
          #8594' '#30001'N74'#30340'Color window'#27396#20301#36664#20837
          ''
          '(X) SampleOrder: '#27171#21697#35330#36092
          #8594' '#30001'N731'#30340'ZLBH'#27396#20301#36664#20837
          ''
          '(Y) MateialNO: '#26448#26009#21934#34399
          #8594' '#30001'BOM'#30452#25509#36664#20837
          ''
          '(Z) RecieveQty: '#25910#21040#25976#37327
          #8594' '#30001'Warehouse N211'#30340'Qty'#27396#20301#36664#20837
          ''
          
            '----------------------------------------------------------------' +
            '------------')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object TDateTimePicker
    Left = 384
    Top = 55
    Width = 89
    Height = 24
    Date = 39846.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39846.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object TDateTimePicker
    Left = 493
    Top = 55
    Width = 88
    Height = 24
    Date = 39846.000000000000000000
    Format = 'yyyy/MM/dd'
    Time = 39846.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1284
    Height = 105
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 13
      Top = 6
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 786
      Top = 6
      Width = 43
      Height = 16
      Caption = 'Pur NO'
    end
    object Label2: TLabel
      Left = 789
      Top = 31
      Width = 40
      Height = 16
      Caption = 'MatNo'
    end
    object Label9: TLabel
      Left = 493
      Top = 6
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label4: TLabel
      Left = 3
      Top = 29
      Width = 47
      Height = 16
      Caption = 'Season'
    end
    object Label6: TLabel
      Left = 14
      Top = 56
      Width = 36
      Height = 16
      Caption = 'Stage'
    end
    object Label3: TLabel
      Left = 123
      Top = 56
      Width = 61
      Height = 16
      Caption = 'Purchaser'
    end
    object lbl1: TLabel
      Left = 638
      Top = 30
      Width = 50
      Height = 16
      Caption = 'Supplier'
    end
    object lbl2: TLabel
      Left = 493
      Top = 31
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label7: TLabel
      Left = 620
      Top = 55
      Width = 68
      Height = 16
      Caption = 'Supp. Style'
    end
    object Label8: TLabel
      Left = 784
      Top = 56
      Width = 45
      Height = 16
      Caption = 'Country'
    end
    object Label10: TLabel
      Left = 933
      Top = 31
      Width = 65
      Height = 16
      Caption = 'Mat. Name'
    end
    object Label11: TLabel
      Left = 953
      Top = 55
      Width = 45
      Height = 16
      Caption = 'Dev Tp'
    end
    object Label12: TLabel
      Left = 129
      Top = 31
      Width = 55
      Height = 16
      Caption = 'Category'
    end
    object Label13: TLabel
      Left = 818
      Top = 81
      Width = 80
      Height = 16
      Caption = 'ProdLocation'
    end
    object Label15: TLabel
      Left = 493
      Top = 56
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label16: TLabel
      Left = 170
      Top = 6
      Width = 56
      Height = 16
      Caption = 'Colorway'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 1169
      Top = 6
      Width = 36
      Height = 16
      Caption = 'Brand'
      Visible = False
    end
    object Label18: TLabel
      Left = 1128
      Top = 31
      Width = 77
      Height = 16
      Caption = 'Brand GSBH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label19: TLabel
      Left = 197
      Top = 81
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label20: TLabel
      Left = 527
      Top = 81
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label21: TLabel
      Left = 643
      Top = 6
      Width = 45
      Height = 16
      Caption = 'SuppID'
    end
    object Label22: TLabel
      Left = 1100
      Top = 57
      Width = 61
      Height = 16
      Caption = 'Flex Code'
    end
    object Button1: TButton
      Left = 1024
      Top = 77
      Width = 60
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ArticleEdit: TEdit
      Left = 52
      Top = 2
      Width = 93
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object POEdit: TEdit
      Left = 831
      Top = 2
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 2
    end
    object MatEdit: TEdit
      Left = 831
      Top = 27
      Width = 98
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 3
    end
    object Button2: TButton
      Left = 1084
      Top = 77
      Width = 60
      Height = 25
      Caption = 'Excel'
      TabOrder = 4
      Visible = False
      OnClick = Button2Click
    end
    object CheckBox2: TCheckBox
      Left = 295
      Top = 6
      Width = 106
      Height = 17
      Caption = 'Purchase Date'
      TabOrder = 5
    end
    object DTP1: TDateTimePicker
      Left = 403
      Top = 2
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 512
      Top = 2
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 7
    end
    object SeasonEdit: TEdit
      Left = 52
      Top = 27
      Width = 63
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 8
    end
    object Edit4: TEdit
      Left = 186
      Top = 52
      Width = 63
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 10
    end
    object SupEdit: TEdit
      Left = 690
      Top = 26
      Width = 90
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 11
    end
    object chk1: TCheckBox
      Left = 278
      Top = 30
      Width = 75
      Height = 17
      Caption = 'No ETA /'
      TabOrder = 12
    end
    object dtp3: TDateTimePicker
      Left = 403
      Top = 27
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 13
    end
    object dtp4: TDateTimePicker
      Left = 512
      Top = 27
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 14
    end
    object chk2: TCheckBox
      Left = 355
      Top = 30
      Width = 47
      Height = 17
      Caption = 'ETA'
      TabOrder = 15
    end
    object ckbsel: TCheckBox
      Left = 1097
      Top = 5
      Width = 62
      Height = 17
      Caption = 'ckbsel'
      TabOrder = 16
      Visible = False
    end
    object Edit6: TEdit
      Left = 690
      Top = 51
      Width = 74
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
    end
    object BBTT2: TBitBtn
      Left = 763
      Top = 51
      Width = 16
      Height = 23
      Caption = '...'
      TabOrder = 18
      OnClick = BBTT2Click
    end
    object BBTT1: TBitBtn
      Left = 249
      Top = 52
      Width = 15
      Height = 23
      Caption = '...'
      TabOrder = 19
      OnClick = BBTT1Click
    end
    object Edit8: TEdit
      Left = 831
      Top = 52
      Width = 82
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
    end
    object BBTT4: TBitBtn
      Left = 912
      Top = 52
      Width = 16
      Height = 23
      Caption = '...'
      TabOrder = 21
      OnClick = BBTT4Click
    end
    object Edit9: TEdit
      Left = 1000
      Top = 27
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 22
    end
    object Cb_DevTP: TComboBox
      Left = 1000
      Top = 51
      Width = 88
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 23
      Items.Strings = (
        ''
        'Inline'
        'Incubate'
        'CTM')
    end
    object CB_Category: TComboBox
      Left = 186
      Top = 27
      Width = 80
      Height = 24
      Style = csDropDownList
      DropDownCount = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 24
      Items.Strings = (
        ''
        'Sports'
        'Originals')
    end
    object Chk_ETD: TCheckBox
      Left = 271
      Top = 55
      Width = 82
      Height = 17
      Caption = 'No ETD /'
      TabOrder = 25
    end
    object Chk_Tool: TCheckBox
      Left = 940
      Top = 5
      Width = 157
      Height = 17
      Caption = 'Hide Temp Material'
      TabOrder = 26
    end
    object Edit7: TEdit
      Left = 900
      Top = 77
      Width = 82
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
    end
    object BitBtn1: TBitBtn
      Left = 981
      Top = 77
      Width = 16
      Height = 23
      Caption = '...'
      TabOrder = 28
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 144
      Top = 2
      Width = 17
      Height = 23
      Caption = '...'
      TabOrder = 29
      OnClick = BitBtn2Click
    end
    object StageEdit: TEdit
      Left = 52
      Top = 52
      Width = 63
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object Edit10: TEdit
      Left = 1061
      Top = 27
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 30
    end
    object Chk_ETD1: TCheckBox
      Left = 353
      Top = 55
      Width = 47
      Height = 17
      Caption = 'ETD'
      TabOrder = 31
    end
    object ColorwayEdit: TEdit
      Left = 228
      Top = 2
      Width = 61
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 32
    end
    object Edit1: TEdit
      Left = 1207
      Top = 2
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 33
      Visible = False
    end
    object ComboBox14: TComboBox
      Left = 1207
      Top = 27
      Width = 58
      Height = 24
      Style = csDropDownList
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 34
      Visible = False
      Items.Strings = (
        ''
        'SKX'
        'SRL')
    end
    object DTP5: TDateTimePicker
      Left = 402
      Top = 52
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 35
    end
    object DTP6: TDateTimePicker
      Left = 512
      Top = 52
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 36
    end
    object CB_Instock: TCheckBox
      Left = 7
      Top = 80
      Width = 98
      Height = 17
      Caption = 'In-stock Date'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 37
    end
    object DTP7: TDateTimePicker
      Left = 107
      Top = 77
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 38
    end
    object DTP8: TDateTimePicker
      Left = 216
      Top = 77
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 39
    end
    object CB_PRD: TCheckBox
      Left = 311
      Top = 80
      Width = 125
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'Pur Receive Date'
      ParentBiDiMode = False
      TabOrder = 40
    end
    object DTP9: TDateTimePicker
      Left = 437
      Top = 77
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 41
    end
    object DTP10: TDateTimePicker
      Left = 546
      Top = 77
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 42
    end
    object SupIDEdit: TEdit
      Left = 690
      Top = 2
      Width = 90
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 43
    end
    object CB_No_PRD: TCheckBox
      Left = 648
      Top = 81
      Width = 147
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = 'No Pur Receive Date'
      ParentBiDiMode = False
      TabOrder = 44
    end
    object Flexcode_edit: TEdit
      Left = 1168
      Top = 53
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 45
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      ''
      
        'select cast(cgzlssampleorder.sampleorder as VarChar(999) ) as sa' +
        'mpleorder,CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.m' +
        'emo,'
      
        '       CGZLInvoice_1.ETA,isnull(CGZLInvoice_1.BILLNO,'#39#39') as BILL' +
        'NO,isnull(CGZLInvoice_1.invoice,'#39#39') as invoice,'
      '       isnull(CGZLInvoice_1.transport,'#39#39') as WAY,'
      
        '       CGZLS.Qty,CGZLS.USERID,CGZLS.USERDate,CGZLS.CFMDate,CGZLS' +
        '.YQDate,'
      
        '       CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL_FLEX.CLDHFLEX AS ' +
        'FlexCode,CLZL.DWBH ,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,' +
        'ZSZL_DEV.COUNTRY,'
      'KCRKS.Qty as RKQTY,KCRKS.UserDate as RKdate, '
      
        '       CGZLInvoice_2.BillNO as BILLNO_2,CGZLInvoice_2.Invoice as' +
        ' invoice_2,CGZLInvoice_2.transport as WAY_2 , '
      
        '       CGZLS.article_all as All_Article,BUSERS.USERNAME as Sampl' +
        'ePurchaser_Name,isnull(CGZLInvoice_1.Custom,'#39#39') as Custom,isnull' +
        '(CGZLInvoice_2.Custom,'#39#39') as Custom_2 '
      '       ,MaterialMOQ.Location '
      '       ,MaterialMOQ.Skin_Quality,MaterialMOQ.Skin_Size  '
      
        '       ,MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG_ETA' +
        ',MaterialNG.Result as NG_Result,MaterialNG.QC_SKIN,MaterialNG.Re' +
        'mark AS NG_Remark, MaterialNG.C_window,MaterialNG.QC_Inspection1' +
        ',MaterialNG.QC_Inspection2,MaterialNG.NG_Date,'
      
        '       case when right(clzl.ywpm,3)='#39'(V)'#39' then '#39'local'#39' when righ' +
        't(clzl.ywpm,3)='#39'(T)'#39' then '#39'oversea'#39' else '#39'check'#39' end area,kfxxzl' +
        '.KHDH as Brand,CGZLS.ETA as NewETA,xxzlkf.RFCDeadlineDate,KFXXZL' +
        '.Devtype,clbzzl.bz as MatRemark,CGZLS.CommitedETD as ActualETD'
      
        ',max(case when ((left(CGZLS.Article_All,1)='#39'S'#39' or left(CGZLS.Art' +
        'icle_All,1)='#39'G'#39') and KFXXZL.Devtype = '#39'CTM'#39') then convert(smalld' +
        'atetime,R1Sample.RSD,111)-14  '
      
        #9#9'  when (left(CGZLS.Article_All,1)='#39'C'#39' and KFXXZL.Devtype = '#39'CT' +
        'M'#39') then convert(smalldatetime,R3Sample.RSD,111)-14'
      
        #9#9'  when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype = '#39'In' +
        'cubate'#39' and CGZL.PURPOSE='#39'CR1'#39') then convert(smalldatetime,R1Sam' +
        'ple.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'CR2'#39') then convert(smalldatetime' +
        ',R2Sample.RSD,111)-14'
      
        '          when (left(CGZLS.Article_All,1)='#39'G'#39' and KFXXZL.Devtype' +
        ' = '#39'Incubate'#39' and CGZL.PURPOSE='#39'SMS'#39') then convert(smalldatetime' +
        ',R3Sample.RSD,111)-14'
      '          else GamePlan.Material_ETA end ) as Material_ETA'
      'from CGZLS'
      
        'left join cgzlss on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss' +
        '.clbh'
      'left join CLZL  on CLZl.CLDH=CGZLS.CLBH'
      'left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH'
      'left join CGZL  on CGZl.CGNO=CGZLS.CGNO '
      'left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH '
      
        'left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH' +
        '='#39'CDC'#39' '
      'left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  '
      
        'left join (select CGNO,CLBH,isnull(Min(CINO),'#39'no invoice'#39') AS CI' +
        'NO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CG' +
        'ZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO '
      
        'left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLI' +
        'nvoiceS_1.CINO_1  '
      
        'left join (select CGNO,CLBH,isnull(Max(CINO),'#39'no invoice2'#39') AS C' +
        'INO_2 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_2 on C' +
        'GZLS.CLBH=CGZLInvoiceS_2.CLBH and CGZLS.CGNO=CGZLInvoiceS_2.CGNO' +
        ' and CGZLInvoiceS_2.CINO_2<>CGZLInvoiceS_1.CINO_1  '
      
        'left join CGZLInvoice CGZLInvoice_2  on CGZLInvoice_2.CINO=CGZLI' +
        'nvoiceS_2.CINO_2  '
      
        'left join MaterialMOQ on MaterialMOQ.CLBH=CGZLS.clbh and Materia' +
        'lMOQ.Season=CGZL.SEASON '
      
        'left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CG' +
        'NO=MaterialNG.CGNO '
      
        'left join KCRKS on  CGZLS.CGNO=KCRKS.DOCNO and CGZLS.CLBH=KCRKS.' +
        'CLBH  and ISNULL(KCRKS.RKSB,'#39#39')<>'#39'NG'#39' '
      'left join ( '
      
        'select cs.cgno,cs.clbh ,(select zlbh+'#39'/'#39' from CGZLSS where cgno=' +
        'cs.cgno and clbh=cs.clbh FOR XML PATH ('#39#39'))as sampleorder'
      'from CGZLSS cs group by cs.cgno,cs.clbh '
      
        ')cgzlssampleorder on cgzlssampleorder.CGNO=CGZLS.cgno and cgzlss' +
        'ampleorder.CLBH=CGZLS.CLBH '
      'left join YPZL on  YPZL.YPDH=cgzlss.ZLBH '
      
        'left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.She' +
        'Hao = YPZL.SheHao'
      
        'left join xxzlkf on kfxxzl.XieXing = xxzlkf.XieXing and kfxxzl.S' +
        'heHao = xxzlkf.SheHao'
      'left join ('
      
        '  select Season, Stage, MAX(Material_ETA) AS Material_ETA from G' +
        'amePlan'
      '  GROUP BY Season,Stage'
      
        ') AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPOSE=Ga' +
        'mePlan.Stage'
      
        'left join R1Sample on  R1Sample.Xiexing = KFXXZL.XieXing and R1S' +
        'ample.Shehao = KFXXZL.Shehao  '
      
        'left join R3Sample on  R3Sample.Xiexing = KFXXZL.XieXing and R3S' +
        'ample.Shehao = KFXXZL.Shehao '
      
        'left join R2Sample on  R2Sample.Xiexing = KFXXZL.XieXing and R2S' +
        'ample.Shehao = KFXXZL.Shehao'
      'left join clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb='#39'E'#39
      'where 1=2'
      
        'group by cast(cgzlssampleorder.sampleorder as VarChar(999) ),CGZ' +
        'L.CGNO,CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.memo' +
        ','
      
        'CGZLInvoice_1.ETA,isnull(CGZLInvoice_1.BILLNO,'#39#39') ,isnull(CGZLIn' +
        'voice_1.invoice,'#39#39'),'
      
        'isnull(CGZLInvoice_1.transport,'#39#39'),CGZLS.Qty,CGZLS.USERID,CGZLS.' +
        'USERDate,CGZLS.CFMDate,CGZLS.YQDate,'
      
        'CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL.DWBH ,CGZL.ZSBH,ZSZL.ZSY' +
        'WJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL_DEV.COUNTRY,'
      
        'KCRKS.Qty,KCRKS.UserDate,CGZLInvoice_2.BillNO ,CGZLInvoice_2.Inv' +
        'oice ,CGZLInvoice_2.transport,'
      
        'CGZLS.article_all,BUSERS.USERNAME,isnull(CGZLInvoice_1.Custom,'#39#39 +
        '),isnull(CGZLInvoice_2.Custom,'#39#39'),'
      
        'MaterialMOQ.Location,MaterialMOQ.Skin_Quality,MaterialMOQ.Skin_S' +
        'ize,MaterialNG.NG_Reason,'
      
        'MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.Result ,MaterialN' +
        'G.QC_SKIN,MaterialNG.Remark,'
      
        'MaterialNG.C_window,MaterialNG.QC_Inspection1,MaterialNG.QC_Insp' +
        'ection2,MaterialNG.NG_Date,kfxxzl.KHDH,CGZLS.ETA,CLZL_FLEX.CLDHF' +
        'LEX,xxzlkf.RFCDeadlineDate,KFXXZL.Devtype,clbzzl.bz,CGZLS.Commit' +
        'edETD')
    UpdateObject = UpdateSQL1
    Left = 176
    Top = 240
    object Query1CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1MEMO1: TStringField
      FieldName = 'MEMO1'
      FixedChar = True
      Size = 30
    end
    object Query1REMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 30
    end
    object Query1ETA: TDateTimeField
      FieldName = 'ETA'
    end
    object Query1memo: TStringField
      FieldName = 'memo'
      FixedChar = True
      Size = 250
    end
    object Query1BILLNO: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 30
    end
    object Query1invoice: TStringField
      FieldName = 'invoice'
      FixedChar = True
    end
    object Query1WAY: TStringField
      FieldName = 'WAY'
      FixedChar = True
      Size = 30
    end
    object Query1SEASON: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object Query1PURPOSE: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1CGDATE: TDateTimeField
      FieldName = 'CGDATE'
    end
    object Query1yjdz: TStringField
      FieldName = 'yjdz'
      FixedChar = True
      Size = 120
    end
    object Query1COUNTRY: TStringField
      FieldName = 'COUNTRY'
      FixedChar = True
      Size = 10
    end
    object Query1RKQTY: TCurrencyField
      DisplayLabel = 'Received QTY'
      FieldName = 'RKQTY'
      currency = False
    end
    object Query1RKdate: TDateTimeField
      FieldName = 'RKdate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query1USERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object Query1CFMDate: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'CFMDate'
    end
    object Query1BILLNO_2: TStringField
      FieldName = 'BILLNO_2'
      FixedChar = True
      Size = 30
    end
    object Query1invoice_2: TStringField
      FieldName = 'invoice_2'
      FixedChar = True
    end
    object Query1WAY_2: TStringField
      FieldName = 'WAY_2'
      FixedChar = True
      Size = 30
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1SamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object Query1Custom: TStringField
      FieldName = 'Custom'
      Size = 10
    end
    object Query1Custom_2: TStringField
      FieldName = 'Custom_2'
      Size = 10
    end
    object Query1All_Article: TStringField
      FieldName = 'All_Article'
      Size = 200
    end
    object Query1Location: TStringField
      FieldName = 'Location'
      Size = 15
    end
    object Query1NG_Reason: TStringField
      FieldName = 'NG_Reason'
      FixedChar = True
    end
    object Query1NG_ETD: TDateTimeField
      FieldName = 'NG_ETD'
    end
    object Query1NG_ETA: TDateTimeField
      FieldName = 'NG_ETA'
    end
    object Query1NG_Result: TStringField
      FieldName = 'NG_Result'
      FixedChar = True
    end
    object Query1FreeQty_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'FreeQty_'
      currency = False
      Calculated = True
    end
    object Query1Charge_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Charge_'
      currency = False
      Calculated = True
    end
    object Query1Q_USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_USPrice_'
      currency = False
      Calculated = True
    end
    object Query1Q_VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Q_VNPrice_'
      currency = False
      Calculated = True
    end
    object Query1USPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'USPrice_'
      currency = False
      Calculated = True
    end
    object Query1VNPrice_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VNPrice_'
      currency = False
      Calculated = True
    end
    object Query1USACC_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'USACC_'
      currency = False
      Calculated = True
    end
    object Query1VNACC_: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VNACC_'
      currency = False
      Calculated = True
    end
    object Query1Skin_Size: TCurrencyField
      FieldName = 'Skin_Size'
      currency = False
    end
    object Query1Skin_Quality: TCurrencyField
      FieldName = 'Skin_Quality'
      DisplayFormat = '##%'
      currency = False
    end
    object Query1QC_SKIN: TCurrencyField
      FieldName = 'QC_SKIN'
      DisplayFormat = '##%'
      currency = False
    end
    object Query1NG_Remark: TStringField
      FieldName = 'NG_Remark'
      Size = 50
    end
    object Query1C_window: TStringField
      FieldName = 'C_window'
      FixedChar = True
      Size = 50
    end
    object Query1QC_Inspection1: TStringField
      FieldName = 'QC_Inspection1'
      FixedChar = True
      Size = 10
    end
    object Query1QC_Inspection2: TStringField
      FieldName = 'QC_Inspection2'
      FixedChar = True
      Size = 10
    end
    object Query1NG_Date: TDateTimeField
      FieldName = 'NG_Date'
    end
    object Query1sampleorder: TStringField
      FieldName = 'sampleorder'
      FixedChar = True
      Size = 255
    end
    object Query1area: TStringField
      FieldName = 'area'
      FixedChar = True
      Size = 7
    end
    object Query1DataUpdateDate: TDateField
      FieldKind = fkCalculated
      FieldName = 'DataUpdateDate'
      Calculated = True
    end
    object Query1Brand: TStringField
      FieldName = 'Brand'
      FixedChar = True
      Size = 4
    end
    object Query1PurReceiveDate: TDateTimeField
      FieldName = 'PurReceiveDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1NewETA: TDateTimeField
      FieldName = 'NewETA'
    end
    object Query1LateETD: TStringField
      FieldName = 'LateETD'
      Size = 10
    end
    object Query1Material_ETA: TDateTimeField
      FieldName = 'Material_ETA'
      ReadOnly = True
    end
    object Query1LateETA: TStringField
      FieldKind = fkCalculated
      FieldName = 'LateETA'
      ReadOnly = True
      Calculated = True
    end
    object Query1FlexCode: TStringField
      FieldName = 'FlexCode'
      FixedChar = True
      Size = 15
    end
    object Query1RFCDeadlineDate: TDateTimeField
      FieldName = 'RFCDeadlineDate'
    end
    object Query1Devtype: TStringField
      FieldName = 'Devtype'
      FixedChar = True
      Size = 15
    end
    object Query1MatRemark: TStringField
      FieldName = 'MatRemark'
      FixedChar = True
      Size = 80
    end
    object Query1ActualETD: TDateTimeField
      FieldName = 'ActualETD'
    end
    object Query1DTMReceivedDate: TDateTimeField
      FieldName = 'DTMReceivedDate'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 176
    Top = 208
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 675
    Top = 208
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 224
    Top = 208
  end
  object Query2: TQuery
    OnCalcFields = Query2CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select CGZLSS.*,CGZL.SEASON,CGZL.PURPOSE,CGZLSS.CLSL,CLZL.YWPM,C' +
        'LZL.DWBH,CGZLS.memo,CGZLS.INVOICE,CGZLS.WAY,DDZL.Article,DDZL.pa' +
        'irs,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,DDZL.DDRQ,ZSZL.yjdz,ZSZL.C' +
        'OUNTRY,KFXXZL.XIEMING,'
      
        '  CGZLS.MEMO1,CGZLS.REMARK,CGZLS.ETA,KCRKS.USPrice,KCRKS.USACC,K' +
        'CRKS.VNPrice,KCRKS.VNACC,KCRKS.Qty,KCRKS.PaQty,(SELECT SUM(CLSL)' +
        ' FROM ZLZLS2 WHERE ZLZLS2.ZLBH=CGZLSS.ZLBH AND ZLZLS2.CLBH=CGZLS' +
        'S.CLBH GROUP BY ZLBH,CLBH ) AS ZLCLSL,'
      
        '  CGZLS.BILLNO as BILLNO_2,CGZLS.invoice as invoice_2,CGZLS.WAY ' +
        ' as WAY_2   '
      'from CGZLSS'
      
        'left join KCRKS on KCRKS.CLBH=CGZLSS.CLBH and KCRKS.CGBH=CGZLSS.' +
        'CGNO'
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      'left join CLZL on CLZl.CLDh=CGZLSS.CLBH'
      'left join CGZL on CGZl.CGNO=CGZLSS.CGNO'
      
        'left join CGZLS on    CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = ' +
        'CGZLSS.CLBH'
      'left join DDZL  on DDZL.ZLBH=CGZLSS.ZLBH'
      'left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH'
      'left join KFXXZL  on DDZL.Article=KFXXZL.ARTICLE '
      'where 1=2')
    Left = 224
    Top = 240
    object StringField1: TStringField
      DisplayLabel = 'Pur NO'
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField2: TStringField
      DisplayLabel = 'Mat ID'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField3: TStringField
      DisplayLabel = 'Material Name'
      DisplayWidth = 100
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField4: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object StringField5: TStringField
      DisplayLabel = 'ShoeName'
      FieldName = 'XIEMING'
      FixedChar = True
      Size = 50
    end
    object StringField6: TStringField
      FieldName = 'FD'
    end
    object CurrencyField1: TCurrencyField
      DisplayLabel = 'Pur Qty'
      FieldName = 'Qty'
      DisplayFormat = '#,##0.0'
    end
    object StringField7: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object CurrencyField2: TCurrencyField
      DisplayLabel = 'US Price'
      FieldName = 'USPrice'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'VN Price'
      FieldName = 'VNPrice'
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Receive Date'
      FieldName = 'RKDATE'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Request Date'
      FieldName = 'YQDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'CFMDate'
      DisplayFormat = 'yyyy/mm/dd'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'ETA'
    end
    object StringField8: TStringField
      DisplayLabel = 'Memo'
      FieldName = 'memo'
      FixedChar = True
      Size = 250
    end
    object StringField9: TStringField
      DisplayLabel = 'Remark'
      FieldName = 'MEMO1'
      FixedChar = True
      Size = 30
    end
    object StringField10: TStringField
      DisplayLabel = 'Transport'
      FieldName = 'REMARK'
      FixedChar = True
      Size = 30
    end
    object DateTimeField5: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDate'
    end
    object StringField11: TStringField
      DisplayLabel = 'UserID'
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object StringField12: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField13: TStringField
      DisplayLabel = 'Supplier Name'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object StringField14: TStringField
      DisplayLabel = 'Country-Addr'
      FieldName = 'yjdz'
      FixedChar = True
      Size = 120
    end
    object StringField15: TStringField
      DisplayLabel = 'Country'
      FieldName = 'COUNTRY'
      FixedChar = True
      Size = 3
    end
    object StringField16: TStringField
      DisplayLabel = 'Invoice'
      FieldName = 'INVOICE'
      FixedChar = True
    end
    object StringField17: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object StringField18: TStringField
      DisplayLabel = 'Season'
      FieldName = 'SEASON'
      FixedChar = True
    end
    object StringField19: TStringField
      FieldName = 'BILLNO'
      Size = 30
    end
    object DateTimeField6: TDateTimeField
      DisplayLabel = 'Pur DATE'
      FieldName = 'CGDATE'
    end
    object StringField20: TStringField
      DisplayLabel = 'Size'
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object StringField21: TStringField
      FieldName = 'WAY'
      FixedChar = True
      Size = 30
    end
    object Query2USACC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'USACC'
      currency = False
      Calculated = True
    end
    object Query2VNACC: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'VNACC'
      currency = False
      Calculated = True
    end
    object Query2BILLNO_2: TStringField
      FieldName = 'BILLNO_2'
      FixedChar = True
      Size = 30
    end
    object Query2invoice_2: TStringField
      FieldName = 'invoice_2'
      FixedChar = True
    end
    object Query2WAY_2: TStringField
      FieldName = 'WAY_2'
      FixedChar = True
      Size = 30
    end
    object Query2Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 272
    Top = 208
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT     CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.' +
        'ETA,CGZLS.memo,CGZLS.BILLNO,CGZLS.invoice,CGZLS.WAY,CGZLS.USPric' +
        'e,CGZLS.VNPrice, CGZLS.Qty,CGZLS.USERID,CGZLS.USERDate,CGZLS.CFM' +
        'Date,'
      
        '           CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL.DWBH ,CGZL.ZS' +
        'BH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL.COUNTRY,'
      
        '           (SELECT SUM(KCRKS.Qty) FROM KCRKS,KCRK WHERE KCRK.RKN' +
        'O=KCRKS.RKNO AND KCRKS.CGBH=CGZLS.CGNO AND KCRKS.CLBH=CGZLS.CLBH' +
        ' GROUP BY KCRKS.CGBH,KCRKS.CLBH ) AS RKQTY ,'
      
        '           (SELECT top 1 KCRK.USERDATE FROM KCRKS,KCRK WHERE KCR' +
        'K.RKNO=KCRKS.RKNO AND KCRKS.CGBH=CGZLS.CGNO AND KCRKS.CLBH=CGZLS' +
        '.CLBH  ) AS RKdate'
      '    from CGZLS'
      '    left join CLZL  on CLZl.CLDH=CGZLS.CLBH'
      '    left join CGZL  on CGZl.CGNO=CGZLS.CGNO'
      '    left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH'
      '    where 1=2'
      '')
    Left = 272
    Top = 240
    object StringField22: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object StringField23: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object StringField24: TStringField
      FieldName = 'MEMO1'
      FixedChar = True
      Size = 30
    end
    object StringField25: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 30
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'ETA'
    end
    object StringField26: TStringField
      FieldName = 'memo'
      FixedChar = True
      Size = 250
    end
    object StringField27: TStringField
      FieldName = 'BILLNO'
      FixedChar = True
      Size = 30
    end
    object StringField29: TStringField
      FieldName = 'WAY'
      FixedChar = True
      Size = 30
    end
    object CurrencyField3: TCurrencyField
      FieldName = 'USPrice'
    end
    object CurrencyField4: TCurrencyField
      FieldName = 'VNPrice'
    end
    object StringField30: TStringField
      FieldName = 'SEASON'
      FixedChar = True
    end
    object StringField31: TStringField
      FieldName = 'PURPOSE'
      FixedChar = True
      Size = 15
    end
    object StringField32: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object StringField33: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object StringField34: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object StringField35: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'CGDATE'
    end
    object StringField36: TStringField
      FieldName = 'yjdz'
      FixedChar = True
      Size = 120
    end
    object StringField37: TStringField
      FieldName = 'COUNTRY'
      FixedChar = True
      Size = 10
    end
    object CurrencyField5: TCurrencyField
      DisplayLabel = 'Received QTY'
      FieldName = 'RKQTY'
      currency = False
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'RKdate'
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object StringField38: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'USERDate'
    end
    object DateTimeField11: TDateTimeField
      DisplayLabel = 'ETD'
      FieldName = 'CFMDate'
    end
    object Query3RKNO: TStringField
      FieldName = 'RKNO'
      Size = 11
    end
    object Query3USACC: TCurrencyField
      FieldName = 'USACC'
      currency = False
    end
    object Query3VNACC: TCurrencyField
      FieldName = 'VNACC'
      currency = False
    end
  end
  object DS4: TDataSource
    DataSet = Query4
    Left = 152
    Top = 368
  end
  object Query4: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'select CGZLSS.*,KFXXZL.XIEMING  ,KFXXZL.FD ,kfxxzl.devcode ,kfxx' +
        'zl.article ,kfxxzl.YSSM'
      'from CGZLSS'
      'left join YPZL on CGZLSS.ZLBH=YPZL.YPDH'
      
        'left join KFXXZL  on KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheH' +
        'ao=YPZL.SheHao'
      'where CGZLSS.CGNO=:CGNO'
      'and CGZLSS.CLBH=:CLBH'
      'order by CGZLSS.ZLBH,CGZLSS.XXCC'
      '')
    Left = 152
    Top = 400
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
    object Query4devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
    object Query4CGNO: TStringField
      FieldName = 'CGNO'
      FixedChar = True
      Size = 11
    end
    object Query4CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query4ZLBH: TStringField
      DisplayLabel = 'Article'
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query4Article: TStringField
      FieldName = 'Article'
    end
    object Query4XXCC: TStringField
      FieldName = 'XXCC'
      FixedChar = True
      Size = 6
    end
    object Query4Stage: TStringField
      FieldName = 'Stage'
      FixedChar = True
      Size = 15
    end
    object Query4Qty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object Query4CLSL: TCurrencyField
      FieldName = 'CLSL'
      currency = False
    end
    object Query4DelQty: TCurrencyField
      FieldName = 'DelQty'
      currency = False
    end
    object Query4YQDate: TDateTimeField
      FieldName = 'YQDate'
    end
    object Query4CFMDate: TDateTimeField
      FieldName = 'CFMDate'
    end
    object Query4USERDate: TDateTimeField
      FieldName = 'USERDate'
    end
    object Query4USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query4YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query4XIEMING: TStringField
      DisplayLabel = 'ShoeName'
      FieldName = 'XIEMING'
      FixedChar = True
      Size = 50
    end
    object Query4FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object Query4YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
  end
  object DS5: TDataSource
    DataSet = Query5
    Left = 472
    Top = 360
  end
  object Query5: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select KCRKS.* ,KCRK.USERDATE as RKdate'
      'from KCRKS'
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      'where KCRKS.CGBH=:CGNO'
      'and KCRKS.CLBH=:CLBH'
      'order by KCRKS.RKNO'
      '')
    Left = 472
    Top = 392
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
    object Query5RKNO: TStringField
      FieldName = 'RKNO'
      Origin = 'DB.KCRKS.RKNO'
      FixedChar = True
      Size = 11
    end
    object Query5RKdate: TDateTimeField
      FieldName = 'RKdate'
      Origin = 'DB.KCRK.USERDATE'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query5Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.KCRKS.Qty'
      currency = False
    end
    object Query5USPrice: TCurrencyField
      FieldName = 'USPrice'
      Origin = 'DB.KCRKS.USPrice'
      currency = False
    end
    object Query5USACC: TCurrencyField
      FieldName = 'USACC'
      Origin = 'DB.KCRKS.USACC'
      currency = False
    end
    object Query5VNPrice: TCurrencyField
      FieldName = 'VNPrice'
      Origin = 'DB.KCRKS.VNPrice'
      currency = False
    end
    object Query5VNACC: TFloatField
      FieldName = 'VNACC'
      Origin = 'DB.KCRKS.VNACC'
    end
    object Query5USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.KCRKS.USERID'
      FixedChar = True
      Size = 15
    end
    object Query5USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.KCRKS.USERDATE'
    end
    object Query5RKSB: TStringField
      FieldName = 'RKSB'
      Origin = 'DB.KCRKS.RKSB'
      FixedChar = True
      Size = 2
    end
    object Query5HandCarry_USPrice: TCurrencyField
      FieldName = 'HandCarry_USPrice'
      Origin = 'DB.KCRKS.HandCarry_USPrice'
    end
    object Query5HandCarry_USACC: TCurrencyField
      FieldName = 'HandCarry_USACC'
      Origin = 'DB.KCRKS.HandCarry_USACC'
    end
  end
  object DS6: TDataSource
    DataSet = Query6
    Left = 760
    Top = 376
  end
  object Query6: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select CGZLInvoice.*,CGZLInvoiceS.Qty,  CGZLInvoiceS.Pmark'
      'from CGZLInvoice'
      'left join CGZLInvoiceS  on CGZLInvoice.CINO=CGZLInvoiceS.CINO'
      'where CGZLInvoiceS.CGNO=:CGNO'
      'and CGZLInvoiceS.CLBH=:CLBH'
      'order by CGZLInvoice.CINO'
      '')
    Left = 760
    Top = 408
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
    object Query6CINO: TStringField
      FieldName = 'CINO'
      Origin = 'DB.CGZLInvoice.CINO'
      FixedChar = True
      Size = 11
    end
    object Query6GSBH: TStringField
      FieldName = 'GSBH'
      Origin = 'DB.CGZLInvoice.GSBH'
      FixedChar = True
      Size = 4
    end
    object Query6ZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.CGZLInvoice.ZSBH'
      FixedChar = True
      Size = 6
    end
    object Query6CIDate: TDateTimeField
      FieldName = 'CIDate'
      Origin = 'DB.CGZLInvoice.CIDate'
    end
    object Query6USERDate: TDateTimeField
      FieldName = 'USERDate'
      Origin = 'DB.CGZLInvoice.USERDate'
    end
    object Query6USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.CGZLInvoice.USERID'
      FixedChar = True
      Size = 15
    end
    object Query6CILX: TStringField
      FieldName = 'CILX'
      Origin = 'DB.CGZLInvoice.CILX'
      FixedChar = True
      Size = 1
    end
    object Query6YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.CGZLInvoice.YN'
      FixedChar = True
      Size = 1
    end
    object Query6Invoice: TStringField
      FieldName = 'Invoice'
      Origin = 'DB.CGZLInvoice.Invoice'
      FixedChar = True
    end
    object Query6MEMO: TStringField
      FieldName = 'MEMO'
      Origin = 'DB.CGZLInvoice.MEMO'
      FixedChar = True
      Size = 50
    end
    object Query6BillNO: TStringField
      FieldName = 'BillNO'
      Origin = 'DB.CGZLInvoice.BillNO'
      FixedChar = True
      Size = 30
    end
    object Query6transport: TStringField
      FieldName = 'transport'
      Origin = 'DB.CGZLInvoice.transport'
      FixedChar = True
      Size = 10
    end
    object Query6Custom: TStringField
      FieldName = 'Custom'
      Origin = 'DB.CGZLInvoice.Custom'
      FixedChar = True
      Size = 10
    end
    object Query6ETA: TDateTimeField
      FieldName = 'ETA'
      Origin = 'DB.CGZLInvoice.ETA'
    end
    object Query6Qty: TCurrencyField
      FieldName = 'Qty'
      currency = False
    end
    object Query6Pmark: TIntegerField
      FieldName = 'Pmark'
    end
  end
  object UpdateSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update MaterialNG SET '
      'QC_Inspection1 = :QC_Inspection1'
      ',QC_Inspection2 =:QC_Inspection2 '
      ',USERID = :USERID'
      ',USERDATE = :USERDATE'
      'WHERE CGNO=:CGNO AND CLBH=:CLBH ')
    InsertSQL.Strings = (
      
        'INSERT INTO MaterialNG (CGNO,CLBH,NG_Date,USERDATE,USERID,QC_Ins' +
        'pection1,QC_Inspection2) '
      
        #9'VALUES (:CGNO,:CLBH,getdate(),:USERDATE,:USERID,:QC_Inspection1' +
        ',:QC_Inspection2)')
    Left = 176
    Top = 280
  end
  object PopupMenu1: TPopupMenu
    Left = 420
    Top = 222
    object mnuModify: TMenuItem
      Caption = '&Modify'
      OnClick = mnuModifyClick
    end
    object mnuSave: TMenuItem
      Caption = '&Save'
      OnClick = mnuSaveClick
    end
    object mnuCancel: TMenuItem
      Caption = '&Cancel'
      OnClick = mnuCancelClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Excel1: TMenuItem
      Caption = '&Excel'
      OnClick = Excel1Click
    end
    object mnuExcelQC: TMenuItem
      Caption = 'Excel &QC'
      OnClick = mnuExcelQCClick
    end
  end
  object Qry_zszlSamplePayment: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 216
    Top = 400
    object Qry_zszlSamplePaymentFreeQty: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object Qry_zszlSamplePaymentCharge: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
  end
  object Qry_MaterialPrice: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  SamplePrice,SamplePriceVN ,EffectiveDate'
      'from MaterialMOQ'
      'where 1=2'
      '')
    Left = 256
    Top = 400
    object Qry_MaterialPriceSamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      Origin = 'DB.MaterialMOQ.SamplePrice'
    end
    object Qry_MaterialPriceSamplePriceVN: TCurrencyField
      FieldName = 'SamplePriceVN'
      Origin = 'DB.MaterialMOQ.SamplePriceVN'
    end
    object Qry_MaterialPriceEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
      Origin = 'DB.MaterialMOQ.EffectiveDate'
    end
  end
  object Qry_SamplePayment_Unit: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  CR1_FreeQty as FreeQty, CR1_FreeQty as Charge'
      'from zszlSamplePayment'
      'where 1=2'
      '')
    Left = 288
    Top = 400
    object CurrencyField7: TCurrencyField
      FieldName = 'FreeQty'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
    object CurrencyField8: TCurrencyField
      FieldName = 'Charge'
      Origin = 'DB.zszlSamplePayment.CR1_FreeQty'
    end
  end
  object Query_tem: TQuery
    DatabaseName = 'DB'
    Left = 172
    Top = 314
  end
  object tmpQry: TQuery
    DatabaseName = 'DB'
    Left = 140
    Top = 241
  end
  object tmpQry1: TQuery
    DatabaseName = 'DB'
    Left = 84
    Top = 241
  end
end

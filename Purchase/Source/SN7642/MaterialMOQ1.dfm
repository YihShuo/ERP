object MaterialMOQ: TMaterialMOQ
  Left = 205
  Top = 143
  Width = 1300
  Height = 659
  Caption = 'MaterialMOQ'
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
    Width = 1292
    Height = 113
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 143
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Supp ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 151
      Top = 37
      Width = 40
      Height = 16
      Caption = 'MatNo'
    end
    object Label4: TLabel
      Left = 20
      Top = 8
      Width = 47
      Height = 16
      Caption = 'Season'
    end
    object lbl1: TLabel
      Left = 281
      Top = 8
      Width = 72
      Height = 16
      Caption = 'Supp Name'
    end
    object Label3: TLabel
      Left = 288
      Top = 37
      Width = 65
      Height = 16
      Caption = 'Mat. Name'
    end
    object Label7: TLabel
      Left = 6
      Top = 37
      Width = 61
      Height = 16
      Caption = 'Purchaser'
    end
    object Label6: TLabel
      Left = 6
      Top = 93
      Width = 439
      Height = 16
      Caption = 'Red: Exist in BOM but not yet place purchase order or use stock'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label8: TLabel
      Left = 446
      Top = 93
      Width = 192
      Height = 16
      Caption = '[Pls keyin Supplier ID then save]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Lbl_Warnning: TLabel
      Left = 938
      Top = 7
      Width = 181
      Height = 20
      Caption = 'Warning:Problem Data'
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
    object Label26: TLabel
      Left = 3
      Top = 61
      Width = 81
      Height = 16
      Caption = 'SmapleOrder'
    end
    object Label27: TLabel
      Left = 329
      Top = 63
      Width = 19
      Height = 16
      Caption = 'SR'
    end
    object Label28: TLabel
      Left = 487
      Top = 8
      Width = 27
      Height = 16
      Caption = 'SKU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 483
      Top = 32
      Width = 36
      Height = 16
      Caption = 'Brand'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Button1: TButton
      Left = 623
      Top = 5
      Width = 64
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit5: TEdit
      Left = 192
      Top = 4
      Width = 78
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 192
      Top = 33
      Width = 78
      Height = 24
      CharCase = ecUpperCase
      Color = 8454143
      TabOrder = 9
    end
    object Button2: TButton
      Left = 812
      Top = 5
      Width = 64
      Height = 24
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 68
      Top = 4
      Width = 60
      Height = 24
      CharCase = ecUpperCase
      Color = 8454143
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 354
      Top = 4
      Width = 122
      Height = 24
      CharCase = ecUpperCase
      Color = 8454143
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 354
      Top = 33
      Width = 123
      Height = 24
      CharCase = ecUpperCase
      Color = 8454143
      TabOrder = 10
    end
    object CKBSel: TCheckBox
      Left = 1017
      Top = 45
      Width = 105
      Height = 17
      Caption = 'Selected Only'
      TabOrder = 6
      Visible = False
    end
    object Edit8: TEdit
      Left = 68
      Top = 33
      Width = 60
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object BBTT1: TBitBtn
      Left = 111
      Top = 33
      Width = 15
      Height = 25
      Caption = '...'
      TabOrder = 8
      OnClick = BBTT1Click
    end
    object Panel2: TPanel
      Left = 616
      Top = 33
      Width = 367
      Height = 25
      Color = clSkyBlue
      TabOrder = 11
      object Chk_NoLeadTime: TCheckBox
        Left = 5
        Top = 4
        Width = 103
        Height = 17
        Caption = 'No LeadTime'
        TabOrder = 0
      end
      object Chk_NoMOQ: TCheckBox
        Left = 112
        Top = 4
        Width = 75
        Height = 17
        Caption = 'No MOQ'
        TabOrder = 1
      end
      object Chk_NoPrice: TCheckBox
        Left = 189
        Top = 4
        Width = 75
        Height = 17
        Caption = 'No Price'
        TabOrder = 2
      end
      object Chk_NewMat: TCheckBox
        Left = 402
        Top = 2
        Width = 101
        Height = 21
        Caption = 'New Material'
        Checked = True
        State = cbChecked
        TabOrder = 3
      end
    end
    object Button3: TButton
      Left = 692
      Top = 5
      Width = 113
      Height = 24
      Caption = 'Country Leadtime'
      TabOrder = 4
      OnClick = Button3Click
    end
    object Chk_OnlyA01: TCheckBox
      Left = 1011
      Top = 77
      Width = 74
      Height = 17
      Caption = 'No A01'
      Color = clSilver
      ParentColor = False
      TabOrder = 12
      Visible = False
    end
    object Edit18: TEdit
      Left = 91
      Top = 57
      Width = 179
      Height = 24
      CharCase = ecUpperCase
      Color = 8454143
      TabOrder = 13
    end
    object Edit19: TEdit
      Left = 353
      Top = 59
      Width = 204
      Height = 24
      CharCase = ecUpperCase
      Color = 8454143
      TabOrder = 14
    end
    object Edit20: TEdit
      Left = 520
      Top = 4
      Width = 89
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
    end
    object Edit21: TEdit
      Left = 520
      Top = 28
      Width = 89
      Height = 21
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      Visible = False
    end
  end
  object pgc1: TPageControl
    Left = 0
    Top = 209
    Width = 1292
    Height = 419
    ActivePage = TS1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TS1: TTabSheet
      Caption = 'Quotation'
      object Splitter1: TSplitter
        Left = 0
        Top = 232
        Width = 1284
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object DBGrid1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1284
        Height = 232
        Align = alClient
        DataSource = DS1
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Style = []
        FooterRowCount = 1
        FrozenCols = 3
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Quotation
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            EditButtons = <>
            FieldName = 'SEASON'
            Footers = <>
            Width = 43
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <
              item
                FieldName = 'ZSBH'
                ValueType = fvtCount
              end>
            ReadOnly = True
            Title.Caption = 'Supp ID'
            Title.TitleButton = True
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Purchase|Supplier'
            Title.TitleButton = True
            Width = 89
          end
          item
            Color = clHighlightText
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Purchase|Mat'
            Width = 78
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Purchase|Mat. Name'
            Title.TitleButton = True
            Width = 316
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Purchase|Unit'
            Title.TitleButton = True
            Width = 28
          end
          item
            EditButtons = <>
            FieldName = 'Brand'
            Footers = <>
            PickList.Strings = (
              '0072'
              '0073'
              '0074'
              '0076')
            ReadOnly = True
            Width = 37
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SampleLeadTime'
            Footers = <>
            Title.Caption = 'LeadTime|Sample'
            Title.TitleButton = True
            Width = 38
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'ProdLeadTime'
            Footers = <>
            Title.Caption = 'LeadTime|Prod'
            Title.TitleButton = True
            Width = 32
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'Forecast_Leadtime'
            Footers = <>
            Title.Caption = 'LeadTime|no F/C'
            Width = 44
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SampleMOQ'
            Footers = <>
            Title.Caption = 'MOQ|Sample'
            Title.TitleButton = True
            Width = 41
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'ProdMOQ'
            Footers = <>
            Title.Caption = 'MOQ|Prod'
            Title.TitleButton = True
            Width = 39
          end
          item
            Color = clSkyBlue
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'Surcharge'
            Footers = <>
            Title.Caption = 'MOQ|Surcharge'
          end
          item
            Color = clSkyBlue
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'Dyingfee'
            Footers = <>
            Title.Caption = 'MOQ|Dyingfee'
          end
          item
            Color = clSkyBlue
            DisplayFormat = '0.00'
            EditButtons = <>
            FieldName = 'ExtraPrice'
            Footers = <>
            Title.Caption = 'MOQ|ExtraPrice'
            Width = 59
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SamplePrice'
            Footers = <>
            Title.Caption = 'Sample Price|USD'
            Title.TitleButton = True
            Width = 55
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'SamplePriceVN'
            Footers = <>
            Title.Caption = 'Sample Price|VND'
            Title.TitleButton = True
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'EffectiveDate'
            Footers = <>
            Title.Caption = 'Sample Price|EffectiveDate'
            Title.TitleButton = True
            Width = 72
          end
          item
            Color = clMoneyGreen
            DropDownRows = 11
            EditButtons = <>
            FieldName = 'country'
            Footers = <>
            PickList.Strings = (
              ''
              'VN'
              'Taiwan'
              'China'
              'Korea'
              'Thailand'
              'Japan'
              'Italy'
              'Indonesia'
              'HongKong'
              'USA'
              'Brazil')
            Title.Caption = 'Prod. Location'
            Title.TitleButton = True
            Width = 47
            WordWrap = False
          end
          item
            Color = clBlack
            EditButtons = <>
            FieldName = 'FLT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Footers = <>
            Title.Caption = 'Leadtime| F/C'
            Width = 61
          end
          item
            Color = clBlack
            EditButtons = <>
            FieldName = 'TotalLT'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Leadtime|no F/C'
            Width = 57
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'REMARK'
            Footers = <>
            Title.Caption = 'Remark'
            Title.TitleButton = True
            Width = 137
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'Skin_Size'
            Footers = <>
            Title.Caption = 'Skin Size'
            Width = 38
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'Skin_Quality'
            Footers = <>
            Title.Caption = 'Skin Quality'
            Width = 37
          end
          item
            EditButtons = <>
            FieldName = 'USERDATE'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Update Date'
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Update User'
            Title.TitleButton = True
            Width = 42
          end
          item
            EditButtons = <>
            FieldName = 'SamplePurchaser_Name'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Sample Purchaser'
            Title.TitleButton = True
            Width = 57
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'MaterialID'
            Title.TitleButton = True
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'ShippedDate'
            Footers = <>
            Title.Caption = 'When DC Shipped'
            Width = 102
          end
          item
            EditButtons = <>
            FieldName = 'AWB'
            Footers = <>
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 235
        Width = 1284
        Height = 149
        Align = alBottom
        TabOrder = 1
        object Splitter4: TSplitter
          Left = 529
          Top = 1
          Height = 147
          Color = clSkyBlue
          ParentColor = False
        end
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 528
          Height = 147
          Align = alLeft
          TabOrder = 0
          object Panel4: TPanel
            Left = 1
            Top = 1
            Width = 526
            Height = 26
            Align = alTop
            TabOrder = 0
            object Label5: TLabel
              Left = 8
              Top = 5
              Width = 241
              Height = 16
              Caption = 'Price List  [Base on Effective Date]'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 27
            Width = 526
            Height = 119
            Align = alClient
            DataSource = DS_MaterialPrice
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            PopupMenu = Pop_MaterialPrice
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'Season'
                Footers = <>
                ReadOnly = True
                Width = 56
              end
              item
                EditButtons = <>
                FieldName = 'SamplePrice'
                Footers = <>
                ReadOnly = True
                Width = 69
              end
              item
                EditButtons = <>
                FieldName = 'SamplePriceVN'
                Footers = <>
                ReadOnly = True
                Width = 75
              end
              item
                EditButtons = <>
                FieldName = 'EffectiveDate'
                Footers = <>
                ReadOnly = True
                Width = 87
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                ReadOnly = True
                Width = 72
              end
              item
                Color = clScrollBar
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                ReadOnly = True
                Width = 85
              end>
          end
        end
        object Panel11: TPanel
          Left = 532
          Top = 1
          Width = 751
          Height = 147
          Align = alClient
          TabOrder = 1
          object Panel12: TPanel
            Left = 1
            Top = 1
            Width = 749
            Height = 26
            Align = alTop
            TabOrder = 0
            object Label13: TLabel
              Left = 8
              Top = 5
              Width = 183
              Height = 16
              Caption = 'LeadTime Revised history'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
          end
          object DBGridEh5: TDBGridEh
            Left = 1
            Top = 27
            Width = 749
            Height = 119
            Align = alClient
            Color = cl3DLight
            DataSource = DS_LT_Histiry
            Flat = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            FooterColor = clWindow
            FooterFont.Charset = DEFAULT_CHARSET
            FooterFont.Color = clWindowText
            FooterFont.Height = -16
            FooterFont.Name = 'MS Sans Serif'
            FooterFont.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                EditButtons = <>
                FieldName = 'SampleLeadTime'
                Footers = <>
                Title.Caption = 'Sample'
                Width = 46
              end
              item
                EditButtons = <>
                FieldName = 'ProdLeadTime'
                Footers = <>
                Title.Caption = 'Prod'
                Width = 34
              end
              item
                EditButtons = <>
                FieldName = 'Forecast_Leadtime'
                Footers = <>
                Title.Caption = 'Forecast'
                Width = 60
              end
              item
                EditButtons = <>
                FieldName = 'USERID'
                Footers = <>
                Title.Caption = 'User ID'
                Width = 56
              end
              item
                ButtonStyle = cbsNone
                EditButtons = <>
                FieldName = 'USERDATE'
                Footers = <>
                Title.Caption = 'User Date'
                Width = 130
              end>
          end
        end
      end
    end
    object TS_Policy: TTabSheet
      Caption = 'Policy'
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 1284
        Height = 384
        Align = alClient
        DataSource = DS_Policy
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
        FooterRowCount = 1
        FrozenCols = 2
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
        ParentFont = False
        PopupMenu = Pop_Policy
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        UseMultiTitle = True
        VTitleMargin = 5
        Columns = <
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'zsbh'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|ID'
            Title.TitleButton = True
            Width = 40
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|Name'
            Title.TitleButton = True
          end
          item
            EditButtons = <>
            FieldName = 'clbh'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = 'Mat|NO'
          end
          item
            EditButtons = <>
            FieldName = 'ywpm'
            Footers = <>
            Title.Caption = 'Mat|Des.'
            Width = 361
          end
          item
            EditButtons = <>
            FieldName = 'Unit'
            Footers = <>
            Width = 34
          end
          item
            EditButtons = <>
            FieldName = 'USpriceHG'
            Footers = <>
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '##'
            EditButtons = <>
            FieldName = 'CR1_FreeQty'
            Footers = <>
            Title.Caption = 'CR1|FreeQty'
            Width = 54
          end
          item
            Color = clYellow
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'CR1_Charge'
            Footers = <>
            Title.Caption = 'CR1|Charge'
            Width = 69
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '##'
            EditButtons = <>
            FieldName = 'CR2_FreeQty'
            Footers = <>
            Title.Caption = 'CR2|FreeQty'
            Width = 62
          end
          item
            Color = clYellow
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'CR2_charge'
            Footers = <>
            Title.Caption = 'CR2|Charge'
            Width = 65
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '##'
            EditButtons = <>
            FieldName = 'SMS_FreeQty'
            Footers = <>
            Title.Caption = 'SMS|FreeQty'
            Width = 65
          end
          item
            Color = clYellow
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'SMS_Charge'
            Footers = <>
            Title.Caption = 'SMS|Charge'
            Width = 63
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '##'
            EditButtons = <>
            FieldName = 'CFM_FreeQty'
            Footers = <>
            Title.Caption = 'CFM|FreeQty'
          end
          item
            Color = clYellow
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'CFM_Charge'
            Footers = <>
            Title.Caption = 'CFM|Charge'
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '##'
            EditButtons = <>
            FieldName = 'ADT_FreeQty'
            Footers = <>
            Title.Caption = 'ADD|FreeQty'
          end
          item
            Color = clYellow
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'ADT_Charge'
            Footers = <>
            Title.Caption = 'ADD|Charge'
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '##'
            EditButtons = <>
            FieldName = 'SMU_FreeQty'
            Footers = <>
            Title.Caption = 'SMU|FreeQty'
            Width = 54
          end
          item
            Color = clYellow
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'SMU_Charge'
            Footers = <>
            Title.Caption = 'SMU|Charge'
            Width = 53
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '##'
            EditButtons = <>
            FieldName = 'OTH_FreeQty'
            Footers = <>
            Title.Caption = 'Others|FreeQty'
            Width = 56
          end
          item
            Color = clYellow
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'OTH_Charge'
            Footers = <>
            Title.Caption = 'Others|Charge'
            Width = 71
          end
          item
            Color = clSkyBlue
            EditButtons = <>
            FieldName = 'EffectiveDate'
            Footers = <>
            Title.Caption = 'Effective Date'
            Width = 72
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'SamplePurchaser_Name'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
            Width = 65
          end
          item
            DisplayFormat = '##%'
            EditButtons = <>
            FieldName = 'Average'
            Footers = <>
            Title.Caption = 'Average Charge'
            Visible = False
            Width = 47
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'Country'
            Footers = <>
            ReadOnly = True
            Title.TitleButton = True
          end
          item
            Color = clScrollBar
            EditButtons = <>
            FieldName = 'style'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Supplier|Style'
            Title.TitleButton = True
            Width = 109
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Problem'
      ImageIndex = 2
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1284
        Height = 23
        Align = alTop
        TabOrder = 0
        object Label9: TLabel
          Left = 8
          Top = 3
          Width = 129
          Height = 20
          Caption = 'Mat. ID Repetition'
        end
      end
      object DBGridEh7: TDBGridEh
        Left = 0
        Top = 23
        Width = 1284
        Height = 361
        Align = alClient
        DataSource = DS_Problem
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -15
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
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat ID'
            Width = 89
          end
          item
            EditButtons = <>
            FieldName = 'YWPM'
            Footers = <>
            Width = 490
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 56
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.Caption = 'User ID'
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'Season'
            Footers = <>
            Width = 53
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'MeMo'
      ImageIndex = 3
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 1284
        Height = 384
        Align = alClient
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = 14822282
        Font.Height = -16
        Font.Name = #24494#36575#27491#40657#39636
        Font.Style = []
        Lines.Strings = (
          '----------------------------------------------'
          #31243#24335#20027#35201#21151#33021#35498#26126
          ''
          #20027#35201#29992#26044#21508#22283#26448#26009#30340#36939#36664#26178#38291#33287#25505#36092#37327
          ''
          '----------------------------------------------'
          #36039#26009#31721#36984#25805#20316#35498#26126
          ''
          'Quotation: '#26448#26009#21508#21029#22577#20729#21934
          'Policy: '#26448#26009#20351#29992#38542#27573#33287#20351#29992#30340#26448#26009#31278#39006
          'Problem: '#30064#24120#37325#35079#26448#26009
          ''
          '----------------------------------------------'
          #37325#40670#27396#20301#35498#26126
          ''
          'LeadTime'#8594'Sample: '#38283#30332#20132#36008#26178#38291
          'LeadTime'#8594'Prod: '#37327#29986#20132#36008#26178#38291
          'LeadTime'#8594'no/F/C: '#27794#26377#20132#36008#26178#38291
          'MOQ'#8594'Sample: '#38283#30332#26368#20302#25505#36092#37327
          'MOQ'#8594'Prod: '#37327#29986#26368#20302#25505#36092#37327' '
          'MOQ'#8594'Extraprice: '#38989#22806#36092#36023#30340#37327
          'Sample Price'#8594'USD: '#38283#30332#32654#37329#20729#26684
          'Sample Price'#8594'VN: '#38283#30332#36234#30462#20729#26684
          'Sample Prcie'#8594'EffectiveDate: '#38283#30332#29983#25928#26085#26399
          'Prod Location: '#37327#29986#22283#23478
          'Lead Time'#8594'F/C: '#26377#20132#36008#26178#38291
          'LeadTime'#8594'no F/C:'#28961#20132#36008#26178#38291
          'Skin size: '#30382#30340#22823#23567
          'Skin Quality: '#30382#30340#36074#37327
          'Remark: '#20633#35387
          ''
          '----------------------------------------------')
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 113
    Width = 1292
    Height = 96
    Align = alTop
    TabOrder = 2
    Visible = False
    object Label10: TLabel
      Left = 8
      Top = 8
      Width = 47
      Height = 13
      Caption = 'LeadTime'
    end
    object Label11: TLabel
      Left = 64
      Top = 8
      Width = 35
      Height = 13
      Caption = 'Sample'
    end
    object Label12: TLabel
      Left = 112
      Top = 8
      Width = 22
      Height = 13
      Caption = 'Prod'
    end
    object Label14: TLabel
      Left = 160
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Forecast'
    end
    object Label15: TLabel
      Left = 24
      Top = 48
      Width = 25
      Height = 13
      Caption = 'MOQ'
    end
    object Label16: TLabel
      Left = 56
      Top = 48
      Width = 35
      Height = 13
      Caption = 'Sample'
    end
    object Label17: TLabel
      Left = 104
      Top = 48
      Width = 22
      Height = 13
      Caption = 'Prod'
    end
    object Label18: TLabel
      Left = 152
      Top = 48
      Width = 48
      Height = 13
      Caption = 'ExtraPrice'
    end
    object Label19: TLabel
      Left = 216
      Top = 8
      Width = 59
      Height = 13
      Caption = 'SamplePrice'
    end
    object Label20: TLabel
      Left = 280
      Top = 8
      Width = 23
      Height = 13
      Caption = 'USD'
    end
    object Label21: TLabel
      Left = 328
      Top = 8
      Width = 23
      Height = 13
      Caption = 'VND'
    end
    object Label22: TLabel
      Left = 376
      Top = 8
      Width = 65
      Height = 13
      Caption = 'EffectiveDate'
    end
    object Label23: TLabel
      Left = 496
      Top = 8
      Width = 63
      Height = 13
      Caption = 'ProdLocation'
    end
    object Label24: TLabel
      Left = 280
      Top = 48
      Width = 42
      Height = 13
      Caption = 'Dyingfee'
    end
    object Label25: TLabel
      Left = 216
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Surcharge'
    end
    object Edit2: TEdit
      Left = 64
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 0
    end
    object Button4: TButton
      Left = 600
      Top = 23
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Edit7: TEdit
      Left = 112
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 2
    end
    object Edit9: TEdit
      Left = 160
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 3
    end
    object Edit10: TEdit
      Left = 56
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 4
    end
    object Edit11: TEdit
      Left = 104
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 5
    end
    object Edit12: TEdit
      Left = 152
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 6
    end
    object Edit13: TEdit
      Left = 280
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 7
    end
    object Edit14: TEdit
      Left = 328
      Top = 24
      Width = 41
      Height = 21
      TabOrder = 8
    end
    object Edit15: TEdit
      Left = 376
      Top = 24
      Width = 89
      Height = 21
      Enabled = False
      TabOrder = 9
    end
    object DateTimePicker1: TDateTimePicker
      Left = 464
      Top = 24
      Width = 20
      Height = 21
      Date = 42611.594379270830000000
      Time = 42611.594379270830000000
      TabOrder = 10
      OnChange = DateTimePicker1Change
    end
    object ComboBox1: TComboBox
      Left = 496
      Top = 24
      Width = 97
      Height = 21
      ItemHeight = 13
      TabOrder = 11
      Items.Strings = (
        ''
        'VN'
        'Taiwan'
        'China'
        'Korea'
        'Thailand'
        'Japan'
        'Italy'
        'Indonesia'
        'HongKong'
        'USA'
        'Brazil')
    end
    object Edit16: TEdit
      Left = 280
      Top = 64
      Width = 49
      Height = 21
      TabOrder = 12
    end
    object Edit17: TEdit
      Left = 216
      Top = 64
      Width = 41
      Height = 21
      TabOrder = 13
    end
  end
  object query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select SEASON ,CLBH,ZSBH,ZSBH_Old,YWPM,DWBH,ZSYWJC,'
      ' SampleLeadTime,ProdLeadTime,SampleMOQ,ProdMOQ,'
      ' SamplePrice,SamplePriceVN,ProdPrice,SamplePurchaser_Name,'
      ' REMARK,USERDATE,USERID,EffectiveDate,EffectiveDate_Old '
      ' ,Location,Forecast_Leadtime,'
      
        'case when TotalLT is not null then TotalLT else TotalLT1 end as ' +
        'TotalLT,'
      'case when FLT is not null then FLT else FLT1 end as FLT,'
      'old_SampleLeadTime,old_ProdLeadTime'
      
        ' ,old_Forecast_Leadtime,Skin_Size,Skin_Quality,ExtraPrice,countr' +
        'y,Surcharge,Dyingfee,ShippedDate,AWB,Brand     from('
      
        'select CG.SEASON,CG.CLBH,CG.ZSBH,CG.ZSBH as ZSBH_Old,CLZL.YWPM,C' +
        'LZL.DWBH,ZSZL.ZSYWJC, '
      
        '       MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,Mater' +
        'ialMOQ.SampleMOQ,MaterialMOQ.ProdMOQ,'
      
        '       MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN,Materia' +
        'lMOQ.ProdPrice,BUSERS.USERNAME as SamplePurchaser_Name,'
      
        '       MaterialMOQ.REMARK,MaterialMOQ.USERDATE,MaterialMOQ.USERI' +
        'D,MaterialMOQ.EffectiveDate,MaterialMOQ.EffectiveDate as Effecti' +
        'veDate_Old'
      '       ,MaterialMOQ.Location,MaterialMOQ.Forecast_Leadtime '
      
        '       ,(MaterialMOQ.Forecast_Leadtime+Country.Customclearanceda' +
        'y+Country.ShippingleadtimeSEA) as TotalLT'
      
        '       ,(MaterialMOQ.ProdLeadTime+Country.Customclearanceday+Cou' +
        'ntry.ShippingleadtimeSEA) as FLT'
      
        '       ,(MaterialMOQ.Forecast_Leadtime+Country.Customclearanceda' +
        'y+Country.Shippingleadtimeair) as TotalLT1'
      
        '       ,(MaterialMOQ.ProdLeadTime+Country.Customclearanceday+Cou' +
        'ntry.Shippingleadtimeair) as FLT1'
      '       ,MaterialMOQ.SampleLeadTime as old_SampleLeadTime '
      '       ,MaterialMOQ.ProdLeadTime as old_ProdLeadTime '
      '       ,MaterialMOQ.Forecast_Leadtime as old_Forecast_Leadtime '
      '       ,MaterialMOQ.Skin_Size'
      '       ,MaterialMOQ.Skin_Quality  '
      
        '       ,MaterialMOQ.ExtraPrice,ZSZL_DEV.country,MaterialMOQ.Surc' +
        'harge,MaterialMOQ.Dyingfee,CGZL_Color2.ShippedDate,CGZL_Color2.A' +
        'WB,MaterialMOQ.Brand'
      'from ( select season,clbh,zsbh from ('
      
        'select kfxxzl.jijie as season,ypzls.clbh,ypzls.csbh as zsbh from' +
        ' ypzls'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      ' left join clzl on clzl.cldh=ypzls.CLBH'
      'where kfxxzl.khdh='#39'036'#39
      'and kfxxzl.jijie='#39'18S'#39
      'union'
      
        'select kfxxzl.jijie as season,clzhzl.cldh1 as clbh,clzhzl.zsdh  ' +
        'as zsbh from ypzls'
      'left join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      ' left join clzl on clzl.cldh=clzhzl.cldh1'
      'where kfxxzl.khdh='#39'036'#39'   and CLZHZL.SYL>0 '
      'and kfxxzl.jijie='#39'18S'#39
      'union'
      'select cgzl.season,cgzlss.clbh,cgzl.zsbh from cgzl'
      
        'left join (select cgno,clbh,zlbh,stage from cgzlss)cgzlss on cgz' +
        'lss.cgno=cgzl.cgno'
      ' left join clzl on clzl.cldh=cgzlss.clbh'
      'where 1=1 '
      'and cgzl.season='#39'18S'#39
      'group by cgzl.season,cgzlss.clbh ,cgzl.zsbh'
      'union'
      
        'select jijie as season,clzhzl.cldh1 as clbh,clzhzl.zsdh  as zsbh' +
        ' from ('
      'select kfxxzl.jijie,clzhzl.cldh from ypzls'
      'inner join clzhzl on clzhzl.cldh=ypzls.clbh'
      'left join ypzl on ypzl.ypdh=ypzls.ypdh'
      
        'left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.sheha' +
        'o=ypzl.shehao'
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh'
      'where kfxxzl.khdh='#39'036'#39' and CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39
      'and kfxxzl.jijie='#39'18S'#39
      '  )clzhzl2'
      'left join clzhzl on clzhzl.cldh=clzhzl2.cldh'
      'left JOIN clzl clzl ON clzhzl.cldh1 = clzl.cldh where 1=1'
      ')a'
      'group by season,clbh,zsbh '
      '  ) CG  '
      'left join CLZL on CLZl.CLDH=CG.CLBH '
      'left join zszl on zszl.zsdh=CG.ZSBH '
      
        'left join ZSZL_DEV on ZSZL_DEV.zsdh=zszl.zsdh and ZSZL_DEV.GSBH=' +
        #39'CDC'#39' '
      'left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  '
      
        'left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON' +
        '=MaterialMOQ.SEASON '
      'left join Country on Country.Country=ZSZL_DEV.country'
      'left join CGZL_Color2 on CGZL_Color2.clbh=CLZl.CLDH'
      'where CG.CLBH is not null '
      'union all  '
      
        'select MaterialMOQ.SEASON AS SEASON,MaterialMOQ.CLBH,MaterialMOQ' +
        '.ZSBH AS ZSBH,MaterialMOQ.ZSBH AS ZSBH_Old,CLZL.YWPM,CLZL.DWBH,Z' +
        'SZL.ZSYWJC, '
      
        '       MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,Mater' +
        'ialMOQ.SampleMOQ,MaterialMOQ.ProdMOQ,'
      
        '       MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN,Materia' +
        'lMOQ.ProdPrice,BUSERS.USERNAME as SamplePurchaser_Name,'
      
        '       MaterialMOQ.REMARK,MaterialMOQ.USERDATE,MaterialMOQ.USERI' +
        'D,MaterialMOQ.EffectiveDate,MaterialMOQ.EffectiveDate as Effecti' +
        'veDate_Old'
      '       ,MaterialMOQ.Location,MaterialMOQ.Forecast_Leadtime'
      
        '       ,(MaterialMOQ.Forecast_Leadtime+Country.Customclearanceda' +
        'y+Country.ShippingleadtimeSEA) as TotalLT'
      
        '       ,(MaterialMOQ.ProdLeadTime+Country.Customclearanceday+Cou' +
        'ntry.ShippingleadtimeSEA) as FLT'
      
        '       ,(MaterialMOQ.Forecast_Leadtime+Country.Customclearanceda' +
        'y+Country.Shippingleadtimeair) as TotalLT1'
      
        '       ,(MaterialMOQ.ProdLeadTime+Country.Customclearanceday+Cou' +
        'ntry.Shippingleadtimeair) as FLT1'
      '       ,MaterialMOQ.SampleLeadTime as old_SampleLeadTime '
      '       ,MaterialMOQ.ProdLeadTime as old_ProdLeadTime '
      '       ,MaterialMOQ.Forecast_Leadtime as old_Forecast_Leadtime '
      '       ,MaterialMOQ.Skin_Size  '
      '       ,MaterialMOQ.Skin_Quality  '
      
        '       ,MaterialMOQ.ExtraPrice,ZSZL_DEV.country,MaterialMOQ.Surc' +
        'harge,MaterialMOQ.Dyingfee,CGZL_Color2.ShippedDate,CGZL_Color2.A' +
        'WB,MaterialMOQ.Brand'
      ' from MaterialMOQ '
      ' left join clzl on clzl.cldh=MaterialMOQ.CLBH'
      ' left join zszl on zszl.zsdh=MaterialMOQ.ZSBH'
      
        ' left join ZSZL_DEV on ZSZL_DEV.zsdh=zszl.zsdh and ZSZL_DEV.GSBH' +
        '='#39'CDC'#39' '
      ' left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  '
      ' left join Country on Country.Country=ZSZL_DEV.country '
      'left join CGZL_Color2 on CGZL_Color2.clbh=CLZl.CLDH'
      'where MaterialMOQ.clbh is not null'
      'and MaterialMOQ.SEASON='#39'18S'#39
      '       and not exists ( select CGZLS.CGNO from CGZLS,CGZL '
      '                        where CGZl.CGNO=CGZLS.CGNO '
      
        '                              AND CGZL.CGLX='#39'6'#39' and CGZLS.Qty>0 ' +
        ' '
      
        '                              and CGZLS.CLBH=MaterialMOQ.CLBH an' +
        'd CGZL.SEASON=MaterialMOQ.SEASON )'
      ' )main group by SEASON ,CLBH,ZSBH,ZSBH_Old,YWPM,DWBH,ZSYWJC,'
      ' SampleLeadTime,ProdLeadTime,SampleMOQ,ProdMOQ,'
      ' SamplePrice,SamplePriceVN,ProdPrice,SamplePurchaser_Name,'
      ' REMARK,USERDATE,USERID,EffectiveDate,EffectiveDate_Old '
      
        ' ,Location,Forecast_Leadtime,TotalLT,FLT,old_SampleLeadTime,old_' +
        'ProdLeadTime'
      
        ' ,old_Forecast_Leadtime,Skin_Size,Skin_Quality,ExtraPrice ,Total' +
        'LT1,FLT1,country,Surcharge,Dyingfee,ShippedDate,AWB,Brand  '
      ' order by season,CLBH')
    UpdateObject = Update_Quotation
    Left = 104
    Top = 240
    object query1SEASON: TStringField
      DisplayLabel = 'Season'
      FieldName = 'SEASON'
      FixedChar = True
    end
    object query1CLBH: TStringField
      DisplayLabel = 'Material'
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object query1YWPM: TStringField
      DisplayLabel = 'Mat. Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object query1DWBH: TStringField
      DisplayLabel = 'Unit'
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object query1ZSYWJC: TStringField
      DisplayLabel = 'Supplier'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object query1SampleLeadTime: TIntegerField
      FieldName = 'SampleLeadTime'
    end
    object query1SampleMOQ: TCurrencyField
      FieldName = 'SampleMOQ'
      currency = False
    end
    object query1ProdMOQ: TCurrencyField
      FieldName = 'ProdMOQ'
      currency = False
    end
    object query1SamplePrice: TCurrencyField
      FieldName = 'SamplePrice'
      currency = False
    end
    object query1ProdPrice: TCurrencyField
      FieldName = 'ProdPrice'
      currency = False
    end
    object query1REMARK: TStringField
      FieldName = 'REMARK'
      FixedChar = True
      Size = 100
    end
    object query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object query1USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object query1SamplePurchaser_Name: TStringField
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object query1ZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object query1SamplePriceVN: TCurrencyField
      FieldName = 'SamplePriceVN'
      currency = False
    end
    object query1EffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object query1EffectiveDate_Old: TDateTimeField
      FieldName = 'EffectiveDate_Old'
    end
    object query1ZSBH_Old: TStringField
      FieldName = 'ZSBH_Old'
      Size = 6
    end
    object query1Location: TStringField
      FieldName = 'Location'
      FixedChar = True
      Size = 15
    end
    object query1TotalLT: TIntegerField
      FieldName = 'TotalLT'
    end
    object query1Forecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
    end
    object query1old_SampleLeadTime: TIntegerField
      FieldName = 'old_SampleLeadTime'
    end
    object query1old_ProdLeadTime: TIntegerField
      FieldName = 'old_ProdLeadTime'
    end
    object query1old_Forecast_Leadtime: TIntegerField
      FieldName = 'old_Forecast_Leadtime'
    end
    object query1FLT: TIntegerField
      FieldName = 'FLT'
    end
    object query1Skin_Quality: TCurrencyField
      FieldName = 'Skin_Quality'
      currency = False
    end
    object query1Skin_Size: TCurrencyField
      FieldName = 'Skin_Size'
      currency = False
    end
    object query1ExtraPrice: TCurrencyField
      FieldName = 'ExtraPrice'
    end
    object query1ProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
    end
    object query1country2: TStringField
      FieldName = 'country'
      FixedChar = True
      Size = 10
    end
    object query1Surcharge: TCurrencyField
      FieldName = 'Surcharge'
    end
    object query1Dyingfee: TCurrencyField
      FieldName = 'Dyingfee'
    end
    object query1ShippedDate: TDateTimeField
      FieldName = 'ShippedDate'
    end
    object query1AWB: TStringField
      FieldName = 'AWB'
      FixedChar = True
    end
    object query1Brand: TStringField
      FieldName = 'Brand'
      FixedChar = True
    end
  end
  object DS1: TDataSource
    DataSet = query1
    Left = 104
    Top = 208
  end
  object Pop_Quotation: TPopupMenu
    Left = 104
    Top = 312
    object S1: TMenuItem
      Caption = 'Modify'
      OnClick = S1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object S2: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = S2Click
    end
    object S3: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = S3Click
    end
  end
  object Update_Quotation: TUpdateSQL
    Left = 104
    Top = 272
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 524
    Top = 264
  end
  object SaveDialog1: TSaveDialog
    Filter = 
      'Excel File(*.xls)|*.xls|CSV(comma split)(*.csv)|*.csv|Web Page(*' +
      '.htm)|*.htm|RTF Format(*.rtf)|*.rtf|Text File(*.txt)|*.txt'
    InitialDir = 'c:\'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 523
    Top = 232
  end
  object tmpQry: TQuery
    DatabaseName = 'dB'
    Left = 367
    Top = 240
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.*'
    Left = 524
    Top = 298
  end
  object DS_MaterialPrice: TDataSource
    DataSet = Qry_MaterialPrice
    Left = 104
    Top = 400
  end
  object Qry_MaterialPrice: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      '    select MaterialPrice.* ,EffectiveDate  as Old_EffectiveDate '
      '    from MaterialPrice'
      '    where CLBH =:CLBH'
      '          and ZSBH=:ZSBH'
      '          and Season=:Season'
      'order by EffectiveDate desc')
    UpdateObject = Up_MaterialPrice
    Left = 104
    Top = 432
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ZSBH'
        ParamType = ptUnknown
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'SEASON'
        ParamType = ptUnknown
        Size = 21
      end>
    object Qry_MaterialPriceSeason: TStringField
      FieldName = 'Season'
      Origin = 'DB.MaterialPrice.Season'
      FixedChar = True
    end
    object Qry_MaterialPriceSamplePrice: TCurrencyField
      DisplayLabel = 'USD'
      FieldName = 'SamplePrice'
      Origin = 'DB.MaterialPrice.SamplePrice'
      currency = False
    end
    object Qry_MaterialPriceSamplePriceVN: TCurrencyField
      DisplayLabel = 'VND'
      FieldName = 'SamplePriceVN'
      Origin = 'DB.MaterialPrice.SamplePriceVN'
      currency = False
    end
    object Qry_MaterialPriceEffectiveDate: TDateTimeField
      FieldName = 'EffectiveDate'
      Origin = 'DB.MaterialPrice.EffectiveDate'
    end
    object Qry_MaterialPriceUSERID: TStringField
      DisplayLabel = 'UserID'
      FieldName = 'USERID'
      Origin = 'DB.MaterialPrice.USERID'
      FixedChar = True
    end
    object Qry_MaterialPriceUSERDATE: TDateTimeField
      DisplayLabel = 'UserDate'
      FieldName = 'USERDATE'
      Origin = 'DB.MaterialPrice.USERDATE'
    end
    object Qry_MaterialPriceZSBH: TStringField
      FieldName = 'ZSBH'
      Origin = 'DB.MaterialPrice.ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_MaterialPriceCLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.MaterialPrice.CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_MaterialPriceOld_EffectiveDate: TDateTimeField
      FieldName = 'Old_EffectiveDate'
      Origin = 'DB.MaterialPrice.EffectiveDate'
    end
  end
  object Qry_Problem: TQuery
    AfterOpen = Qry_ProblemAfterOpen
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select MaterialMOQ.CLBH,MaterialMOQ.ZSBH,MaterialMOQ.Season,Mate' +
        'rialMOQ.USERID,CLZL.YWPM,ZSZL.ZSYWJC from MaterialMOQ'
      
        'left join (select clbh,count(*) cnt from materialMOQ group by Se' +
        'ason,CLBH ) MOQ ON MOQ.clbh=MaterialMOQ.clbh'
      'left join CLZL on CLZl.CLDH=MaterialMOQ.CLBH'
      'left join zszl on zszl.zsdh=MaterialMOQ.ZSBH'
      'where MOQ.cnt >1  ORDER BY MaterialMOQ.CLBH')
    Left = 332
    Top = 240
    object Qry_ProblemCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Qry_ProblemZSBH: TStringField
      FieldName = 'ZSBH'
      FixedChar = True
      Size = 6
    end
    object Qry_ProblemSeason: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Qry_ProblemUSERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object Qry_ProblemYWPM: TStringField
      DisplayLabel = 'Mat Name'
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Qry_ProblemZSYWJC: TStringField
      DisplayLabel = 'Supplier Name'
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
  end
  object DS_Problem: TDataSource
    DataSet = Qry_Problem
    Left = 332
    Top = 208
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 976
    Top = 48
  end
  object Qry_Policy: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select materialmoq.Season,materialmoq.clbh,clzl.ywpm,clzl.dwbh'
      '      ,zszlSamplePayment.CR1  '
      '      ,zszlSamplePayment.CR1_FreeQty  '
      '      ,zszlSamplePayment.CR1_Charge  '
      '      ,zszlSamplePayment.CR2  '
      '      ,zszlSamplePayment.CR2_FreeQty  '
      '      ,zszlSamplePayment.CR2_Charge  '
      '      ,zszlSamplePayment.ADT  '
      '      ,zszlSamplePayment.ADT_FreeQty  '
      '      ,zszlSamplePayment.ADT_Charge  '
      '      ,zszlSamplePayment.SMS  '
      '      ,zszlSamplePayment.SMS_FreeQty  '
      '      ,zszlSamplePayment.SMS_Charge  '
      '      ,zszlSamplePayment.SMU  '
      '      ,zszlSamplePayment.SMU_FreeQty  '
      '      ,zszlSamplePayment.SMU_Charge  '
      '      ,zszlSamplePayment.ADT  '
      '      ,zszlSamplePayment.ADT_FreeQty  '
      '      ,zszlSamplePayment.ADT_Charge  '
      '      ,zszlSamplePayment.OTH  '
      '      ,zszlSamplePayment.OTH_FreeQty  '
      '      ,zszlSamplePayment.OTH_Charge  '
      '      ,zszlSamplePayment.CFM  '
      '      ,zszlSamplePayment.CFM_FreeQty  '
      '      ,zszlSamplePayment.CFM_Charge  '
      '      ,zszlSamplePayment.EffectiveDate  '
      '      ,zszlSamplePayment.EffectiveDate as EffectiveDate_OLD '
      '      ,zszlSamplePayment.USERID  '
      '      ,zszlSamplePayment.USERDATE  '
      '      ,zszlSamplePayment.Unit'
      '      ,zszlSamplePayment.Unit as old_Unit'
      '      ,zszlSamplePayment.Average'
      
        '      ,materialmoq.zsbh,ZSZL.ZSYWJC,ZSZL_DEV.style,BUSERS.USERNA' +
        'ME as SamplePurchaser_Name,ZSZL_DEV.Country,zszlSamplePayment.US' +
        'priceHG '
      'from MaterialMOQ '
      'left join zszl on zszl.zsdh=MaterialMOQ.zsbh'
      
        'left join ZSZL_DEV on ZSZL_DEV.zsdh=MaterialMOQ.zsbh and ZSZL_DE' +
        'V.GSBH='#39'CDC'#39' '
      'left join (select * from zszlSamplePayment '
      '           where zszlSamplePayment.Season='#39'17S'#39
      
        '           ) zszlSamplePayment on MaterialMOQ.zsbh=zszlSamplePay' +
        'ment.zsdh'
      'left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  '
      'left join clzl on zszlSamplePayment.cldh=clzl.cldh'
      'where 1=1  '
      '       and exists ( select CGZLS.CGNO from CGZLS,CGZL '
      '                        where CGZl.CGNO=CGZLS.CGNO '
      
        '                              AND CGZL.CGLX='#39'6'#39' and CGZLS.Qty>0 ' +
        ' '
      
        '                              and CGZL.ZSBH=ZSZL.zsdh and CGZl.S' +
        'eason='#39'17S'#39') '
      ' and materialmoq.season = '#39'17S'#39
      'and isnull(ZSZL_DEV.SamplePurchaser,'#39#39')<>'#39#39' '
      'and ZSZL.YN='#39'1'#39' '
      'order by ZSYWJC')
    UpdateObject = Update_Policy
    Left = 152
    Top = 240
    object StringField1: TStringField
      FieldName = 'Season'
      FixedChar = True
    end
    object Query1CR1: TStringField
      FieldName = 'CR1'
      FixedChar = True
      Size = 50
    end
    object Qry_PolicyCR1_FreeQty: TCurrencyField
      FieldName = 'CR1_FreeQty'
    end
    object Qry_PolicyCR1_Charge: TCurrencyField
      FieldName = 'CR1_Charge'
    end
    object Qry_PolicyCR2: TStringField
      FieldName = 'CR2'
      FixedChar = True
      Size = 50
    end
    object Qry_PolicyCR2_FreeQty: TCurrencyField
      FieldName = 'CR2_FreeQty'
    end
    object Qry_PolicyCR2_charge: TCurrencyField
      FieldName = 'CR2_charge'
    end
    object Qry_PolicyADT: TStringField
      FieldName = 'ADT'
      FixedChar = True
      Size = 50
    end
    object Qry_PolicyADT_FreeQty: TCurrencyField
      FieldName = 'ADT_FreeQty'
    end
    object Qry_PolicyADT_Charge: TCurrencyField
      FieldName = 'ADT_Charge'
    end
    object Qry_PolicySMS: TStringField
      FieldName = 'SMS'
      FixedChar = True
      Size = 50
    end
    object Qry_PolicySMS_FreeQty: TCurrencyField
      FieldName = 'SMS_FreeQty'
    end
    object Qry_PolicySMS_Charge: TCurrencyField
      FieldName = 'SMS_Charge'
    end
    object Qry_PolicySMU: TStringField
      FieldName = 'SMU'
      FixedChar = True
      Size = 50
    end
    object Qry_PolicySMU_FreeQty: TCurrencyField
      FieldName = 'SMU_FreeQty'
    end
    object Qry_PolicySMU_Charge: TCurrencyField
      FieldName = 'SMU_Charge'
    end
    object Qry_PolicyOTH: TStringField
      FieldName = 'OTH'
      FixedChar = True
      Size = 50
    end
    object Qry_PolicyOTH_FreeQty: TCurrencyField
      FieldName = 'OTH_FreeQty'
    end
    object Qry_PolicyOTH_Charge: TCurrencyField
      FieldName = 'OTH_Charge'
    end
    object StringField2: TStringField
      FieldName = 'USERID'
      FixedChar = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'USERDATE'
    end
    object StringField3: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1style: TStringField
      FieldName = 'style'
      FixedChar = True
    end
    object StringField4: TStringField
      DisplayLabel = 'Sample Purchaser'
      FieldName = 'SamplePurchaser_Name'
      FixedChar = True
      Size = 30
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 10
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'EffectiveDate'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'EffectiveDate_old'
    end
    object Qry_PolicyUnit: TStringField
      FieldName = 'Unit'
      FixedChar = True
      Size = 4
    end
    object Qry_Policyold_Unit: TStringField
      FieldName = 'old_Unit'
      FixedChar = True
      Size = 4
    end
    object Qry_PolicyAverage: TCurrencyField
      FieldName = 'Average'
    end
    object Qry_Policyywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 200
    end
    object Qry_PolicyCFM: TStringField
      FieldName = 'CFM'
      FixedChar = True
      Size = 50
    end
    object Qry_PolicyCFM_FreeQty: TCurrencyField
      FieldName = 'CFM_FreeQty'
    end
    object Qry_PolicyCFM_Charge: TCurrencyField
      FieldName = 'CFM_Charge'
    end
    object Qry_Policyzsbh: TStringField
      FieldName = 'zsbh'
      FixedChar = True
      Size = 6
    end
    object Qry_Policyclbh: TStringField
      FieldName = 'clbh'
      FixedChar = True
      Size = 15
    end
    object Qry_Policydwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
    object Qry_PolicyUSpriceHG: TFloatField
      FieldName = 'USpriceHG'
    end
  end
  object DS_Policy: TDataSource
    DataSet = Qry_Policy
    Left = 152
    Top = 208
  end
  object Update_Policy: TUpdateSQL
    ModifySQL.Strings = (
      'update zszl'
      'set'
      '  zsqm = :zsqm,'
      '  zsjc = :zsjc,'
      '  zsywjc = :zsywjc,'
      '  tybh = :tybh,'
      '  fpdz = :fpdz,'
      '  yjdz = :yjdz,'
      '  dh = :dh,'
      '  cz = :cz,'
      '  fzr = :fzr,'
      '  bb = :bb,'
      '  llr2 = :llr2,'
      '  llr = :llr,'
      '  dybh = :dybh,'
      '  mark = :mark,'
      '  USERID = :USERID,'
      '  USERDATE = :USERDATE,'
      '  YN = :YN,'
      '  Country = :Country ,'
      '  mzsdh = :mzsdh,'
      '  Style=:Style,'
      '   Shippingleadtime=:Shippingleadtime,'
      '   ShippingleadtimeS=:ShippingleadtimeS,'
      '   Customclearanceday=:Customclearanceday,'
      '  CR1_FreeQty2=:CR1_FreeQty2,'
      '  CR1_Charge2=:CR1_Charge2,'
      '  CR2_FreeQty2=:CR2_FreeQty2,'
      '  CR2_Charge2=:CR2_Charge2,'
      '  Presell_FreeQty2=:Presell_FreeQty2,'
      '  Presell_Charge2=:Presell_Charge2,'
      '  SMS_FreeQty2=:SMS_FreeQty2,'
      '  SMS_Charge2=:SMS_Charge2,'
      '  PT_FreeQty2=:PT_FreeQty2,'
      '  PT_Charge2=:PT_Charge2,'
      '  MCS_FreeQty2=:MCS_FreeQty2,'
      '  MCS_Charge2=:MCS_Charge2,'
      '  USpriceHG=:USpriceHG'
      ''
      'where'
      '  zsdh = :OLD_zsdh')
    InsertSQL.Strings = (
      'insert into zszl'
      
        '  (zsdh, zsqm, zsjc, zsywjc, tybh, fpdz, yjdz, dh, cz, fzr, bb, ' +
        'llr2, llr, '
      '   dybh, mark, USERID, USERDATE, '
      'YN,Style,Shippingleadtime,Customclearanceday,ShippingleadtimeS,'
      'CR1_Charge2,'
      'CR1_FreeQty2,'
      'CR2_Charge2,'
      'Presell_FreeQty2,'
      'Presell_Charge2,'
      'SMS_FreeQty2,'
      'SMS_Charge2,'
      'PT_FreeQty2,'
      'PT_Charge2,'
      'MCS_FreeQty2)'
      'values'
      
        '  (:zsdh, :zsqm, :zsjc, :zsywjc, :tybh, :fpdz, :yjdz, :dh, :cz, ' +
        ':fzr, :bb,  :llr2, :llr, :dybh, '
      
        ':mark,:USERID,:USERDATE,:YN,:Style,:Shippingleadtime,:Customclea' +
        'ranceday,'
      ':ShippingleadtimeS,:CR1_Charge2,'
      ':CR1_FreeQty2,'
      ':CR1_Charge2,'
      ':CR1_FreeQty2,'
      ':CR2_Charge2,'
      ':Presell_FreeQty2,'
      ':Presell_Charge2,'
      ':SMS_FreeQty2,'
      ':SMS_Charge2,'
      ':PT_FreeQty2,'
      ':PT_Charge2,'
      ':MCS_FreeQty2,'
      ':USpriceHG'
      ')')
    DeleteSQL.Strings = (
      'delete from zszl'
      'where'
      '  zsdh = :OLD_zsdh')
    Left = 152
    Top = 274
  end
  object Pop_Policy: TPopupMenu
    Left = 152
    Top = 320
    object MenuItem1: TMenuItem
      Caption = 'Modify'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Delete'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = MenuItem4Click
    end
    object Insert: TMenuItem
      Caption = 'Insert'
      Enabled = False
      Visible = False
      OnClick = InsertClick
    end
  end
  object Pop_MaterialPrice: TPopupMenu
    Left = 104
    Top = 504
    object P1: TMenuItem
      Caption = 'Modify'
      OnClick = P1Click
    end
    object P2: TMenuItem
      Caption = 'Delete'
      OnClick = P2Click
    end
    object P3: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = P3Click
    end
    object P4: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = P4Click
    end
  end
  object Up_MaterialPrice: TUpdateSQL
    Left = 104
    Top = 464
  end
  object DS_LT_Histiry: TDataSource
    DataSet = Qry_LT_Histiry
    Left = 596
    Top = 472
  end
  object Qry_LT_Histiry: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'SELECT *'
      'FROM    MaterialMOQ_LT_History'
      'where  Season=:Season'
      '       and CLBH=:CLBH'
      '       and ZSBH=:ZSBH')
    Left = 596
    Top = 504
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'SEASON'
        ParamType = ptUnknown
        Size = 21
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'ZSBH'
        ParamType = ptUnknown
        Size = 7
      end>
    object Qry_LT_HistirySampleLeadTime: TIntegerField
      FieldName = 'SampleLeadTime'
      Origin = 'DB.MaterialMOQ_LT_History.SampleLeadTime'
    end
    object Qry_LT_HistiryProdLeadTime: TIntegerField
      FieldName = 'ProdLeadTime'
      Origin = 'DB.MaterialMOQ_LT_History.ProdLeadTime'
    end
    object Qry_LT_HistiryForecast_Leadtime: TIntegerField
      FieldName = 'Forecast_Leadtime'
      Origin = 'DB.MaterialMOQ_LT_History.Forecast_Leadtime'
    end
    object Qry_LT_HistiryUSERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.MaterialMOQ_LT_History.USERID'
      FixedChar = True
    end
    object Qry_LT_HistiryUSERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.MaterialMOQ_LT_History.USERDATE'
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 68
    Top = 240
  end
end

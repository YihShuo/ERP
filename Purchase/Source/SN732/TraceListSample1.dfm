object TraceListSample: TTraceListSample
  Left = 224
  Top = 243
  Width = 1023
  Height = 714
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 5
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 755
      Top = 7
      Width = 43
      Height = 16
      Caption = 'Pur NO'
    end
    object Label2: TLabel
      Left = 758
      Top = 33
      Width = 40
      Height = 16
      Caption = 'MatNo'
    end
    object Label9: TLabel
      Left = 473
      Top = 7
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label4: TLabel
      Left = 4
      Top = 33
      Width = 47
      Height = 16
      Caption = 'Season'
    end
    object Label6: TLabel
      Left = 15
      Top = 59
      Width = 36
      Height = 16
      Caption = 'Stage'
    end
    object Label3: TLabel
      Left = 122
      Top = 59
      Width = 61
      Height = 16
      Caption = 'Purchaser'
    end
    object lbl1: TLabel
      Left = 606
      Top = 7
      Width = 50
      Height = 16
      Caption = 'Supplier'
    end
    object lbl2: TLabel
      Left = 474
      Top = 33
      Width = 17
      Height = 16
      Caption = 'To'
    end
    object Label7: TLabel
      Left = 588
      Top = 33
      Width = 68
      Height = 16
      Caption = 'Supp. Style'
    end
    object Label8: TLabel
      Left = 595
      Top = 59
      Width = 45
      Height = 16
      Caption = 'Country'
    end
    object Label10: TLabel
      Left = 396
      Top = 59
      Width = 65
      Height = 16
      Caption = 'Mat. Name'
    end
    object Label11: TLabel
      Left = 274
      Top = 58
      Width = 45
      Height = 16
      Caption = 'Dev Tp'
    end
    object Label12: TLabel
      Left = 128
      Top = 33
      Width = 55
      Height = 16
      Caption = 'Category'
    end
    object Label13: TLabel
      Left = 719
      Top = 59
      Width = 83
      Height = 16
      Caption = 'Prod Location'
    end
    object Button1: TButton
      Left = 994
      Top = 2
      Width = 92
      Height = 78
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ArticleEdit: TEdit
      Left = 52
      Top = 2
      Width = 197
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
      Left = 807
      Top = 3
      Width = 97
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 2
    end
    object MatEdit: TEdit
      Left = 807
      Top = 29
      Width = 98
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 3
    end
    object Button2: TButton
      Left = 1095
      Top = 27
      Width = 43
      Height = 27
      Caption = 'Excel'
      TabOrder = 4
      Visible = False
      OnClick = Button2Click
    end
    object CheckBox2: TCheckBox
      Left = 278
      Top = 7
      Width = 104
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Purchase Date'
      TabOrder = 5
    end
    object DTP1: TDateTimePicker
      Left = 383
      Top = 3
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 6
    end
    object DTP2: TDateTimePicker
      Left = 492
      Top = 3
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 7
    end
    object SeasonEdit: TEdit
      Left = 52
      Top = 29
      Width = 63
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 8
    end
    object Edit4: TEdit
      Left = 186
      Top = 55
      Width = 61
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
    end
    object SupEdit: TEdit
      Left = 658
      Top = 3
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 10
    end
    object chk1: TCheckBox
      Left = 271
      Top = 33
      Width = 65
      Height = 17
      Alignment = taLeftJustify
      Caption = 'No ETA'
      TabOrder = 11
    end
    object dtp3: TDateTimePicker
      Left = 384
      Top = 29
      Width = 89
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 12
    end
    object dtp4: TDateTimePicker
      Left = 493
      Top = 29
      Width = 88
      Height = 24
      Date = 39846.000000000000000000
      Format = 'yyyy/MM/dd'
      Time = 39846.000000000000000000
      TabOrder = 13
    end
    object chk2: TCheckBox
      Left = 335
      Top = 33
      Width = 47
      Height = 17
      Alignment = taLeftJustify
      Caption = '/ETA'
      TabOrder = 14
    end
    object ckbsel: TCheckBox
      Left = 1091
      Top = 5
      Width = 62
      Height = 17
      Caption = 'ckbsel'
      TabOrder = 15
      Visible = False
    end
    object Edit6: TEdit
      Left = 658
      Top = 29
      Width = 74
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
    end
    object BBTT2: TBitBtn
      Left = 733
      Top = 29
      Width = 16
      Height = 25
      Caption = '...'
      TabOrder = 17
      OnClick = BBTT2Click
    end
    object BBTT1: TBitBtn
      Left = 249
      Top = 55
      Width = 15
      Height = 25
      Caption = '...'
      TabOrder = 18
      OnClick = BBTT1Click
    end
    object Edit8: TEdit
      Left = 642
      Top = 55
      Width = 75
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
    end
    object BBTT4: TBitBtn
      Left = 702
      Top = 55
      Width = 16
      Height = 25
      Caption = '...'
      TabOrder = 20
      OnClick = BBTT4Click
    end
    object Chk_PDT: TCheckBox
      Left = 907
      Top = 5
      Width = 81
      Height = 17
      Caption = 'Hide PDT'
      Checked = True
      State = cbChecked
      TabOrder = 21
    end
    object Edit9: TEdit
      Left = 464
      Top = 55
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 22
    end
    object Cb_DevTP: TComboBox
      Left = 322
      Top = 55
      Width = 63
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
      TabOrder = 23
      Items.Strings = (
        ''
        'Inline'
        'SMU')
    end
    object CB_Category: TComboBox
      Left = 186
      Top = 29
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
      Left = 907
      Top = 60
      Width = 81
      Height = 17
      Caption = 'No ETD'
      TabOrder = 25
    end
    object Chk_Tool: TCheckBox
      Left = 908
      Top = 31
      Width = 81
      Height = 17
      Caption = 'Hide Tool'
      TabOrder = 26
    end
    object Edit7: TEdit
      Left = 808
      Top = 55
      Width = 81
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
      Left = 889
      Top = 55
      Width = 16
      Height = 25
      Caption = '...'
      TabOrder = 28
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 247
      Top = 3
      Width = 19
      Height = 25
      Caption = '...'
      TabOrder = 29
      OnClick = BitBtn2Click
    end
    object StageEdit: TEdit
      Left = 52
      Top = 58
      Width = 61
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
      TabOrder = 30
    end
    object Edit10: TEdit
      Left = 522
      Top = 55
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 31
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 89
    Width = 1007
    Height = 587
    ActivePage = TS1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TS1: TTabSheet
      Caption = 'PO Status'
      object Splitter1: TSplitter
        Left = 0
        Top = 399
        Width = 999
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clSkyBlue
        ParentColor = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 999
        Height = 399
        Align = alClient
        TabOrder = 0
        object DBGrid1: TDBGridEh
          Left = 1
          Top = 24
          Width = 997
          Height = 374
          Align = alClient
          DataSource = DS1
          Flat = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
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
          PopupMenu = PopupMenu1
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
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
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = []
              Footers = <
                item
                  FieldName = 'CGNO'
                  ValueType = fvtCount
                end>
              Title.Caption = 'Purchase|NO'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
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
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 33
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'PURPOSE'
              Footers = <>
              Title.Caption = 'Purchase|Stage'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 40
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'CLBH'
              Footers = <>
              Title.Caption = 'Mat No'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 91
            end
            item
              Color = clMoneyGreen
              EditButtons = <>
              FieldName = 'YWPM'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 281
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
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
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
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'DWBH'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 38
            end
            item
              DisplayFormat = '#,##0.00'
              EditButtons = <>
              FieldName = 'USPrice_'
              Footers = <>
              Title.Caption = 'ERP|USPrice'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
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
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'VNPrice_'
              Footers = <>
              Title.Caption = 'ERP|VNPrice'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Visible = False
              Width = 60
            end
            item
              EditButtons = <>
              FieldName = 'VNACC_'
              Footers = <>
              Title.Caption = 'ERP|VN Amount'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Visible = False
            end
            item
              EditButtons = <>
              FieldName = 'CGDATE'
              Footers = <>
              Title.Caption = 'Purchase Date'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'RKdate'
              Footers = <>
              Title.Caption = 'Received date'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 72
            end
            item
              EditButtons = <>
              FieldName = 'YQDate'
              Footers = <>
              Title.Caption = 'Purchase|Req. Date'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 77
            end
            item
              EditButtons = <>
              FieldName = 'CFMDate'
              Footers = <>
              Title.Caption = 'Purchase|ETD'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'memo'
              Footers = <>
              Title.Caption = 'Purchase|memo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
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
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Visible = False
              Width = 62
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_Reason'
              Footers = <>
              Title.Caption = 'NG|Reason'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 56
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_ETD'
              Footers = <>
              Title.Caption = 'NG|ETD'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 57
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_ETA'
              Footers = <>
              Title.Caption = 'NG|ETA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 58
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_Result'
              Footers = <>
              Title.Caption = 'NG|Result'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 51
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'NG_Remark'
              Footers = <>
              Title.Caption = 'NG|Remark'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 150
            end
            item
              Color = 11927551
              EditButtons = <>
              FieldName = 'C_window'
              Footers = <>
              Title.Caption = 'NG|Color window'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 150
            end
            item
              EditButtons = <>
              FieldName = 'ETA'
              Footers = <>
              Title.Caption = 'Supplier Invoice|ETA'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 61
            end
            item
              EditButtons = <>
              FieldName = 'ZSBH'
              Footers = <>
              Title.Caption = 'Supplier Invoice|ID'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 36
            end
            item
              EditButtons = <>
              FieldName = 'ZSYWJC'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Name'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 87
            end
            item
              EditButtons = <>
              FieldName = 'COUNTRY'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Supplier Country'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'Location'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Prod Location'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 56
            end
            item
              EditButtons = <>
              FieldName = 'BILLNO'
              Footers = <>
              Title.Caption = 'Supplier Invoice|BillNo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 110
            end
            item
              EditButtons = <>
              FieldName = 'invoice'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Invoice'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 111
            end
            item
              EditButtons = <>
              FieldName = 'WAY'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Transport'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 62
            end
            item
              EditButtons = <>
              FieldName = 'Custom'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Custom'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'BILLNO_2'
              Footers = <>
              Title.Caption = 'Supplier Invoice|BillNo_2'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 103
            end
            item
              EditButtons = <>
              FieldName = 'invoice_2'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Invoice 2'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 129
            end
            item
              EditButtons = <>
              FieldName = 'WAY_2'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Transport 2'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 59
            end
            item
              EditButtons = <>
              FieldName = 'Custom_2'
              Footers = <>
              Title.Caption = 'Supplier Invoice|Custom 2'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 50
            end
            item
              EditButtons = <>
              FieldName = 'USERDate'
              Footers = <>
              Title.Caption = 'Last Update Date'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 57
            end
            item
              EditButtons = <>
              FieldName = 'USERID'
              Footers = <>
              Title.Caption = 'Place Order User'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 47
            end
            item
              EditButtons = <>
              FieldName = 'All_Article'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 200
            end
            item
              EditButtons = <>
              FieldName = 'All_Size'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 100
            end
            item
              EditButtons = <>
              FieldName = 'SamplePurchaser_Name'
              Footers = <>
              Title.Caption = 'Sample Purchaser'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 67
            end
            item
              EditButtons = <>
              FieldName = 'File_Name'
              Footers = <>
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 101
            end
            item
              EditButtons = <>
              FieldName = 'FreeQty_'
              Footers = <>
              Title.Caption = 'Free Qty'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 48
            end
            item
              DisplayFormat = '##%'
              EditButtons = <>
              FieldName = 'Charge_'
              Footers = <>
              Title.Caption = 'Charge%'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 65
            end
            item
              EditButtons = <>
              FieldName = 'Q_USPrice_'
              Footers = <>
              Title.Caption = 'Quotation|USPrice'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'Q_VNPrice_'
              Footers = <>
              Title.Caption = 'Quotation|VNPrice'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
            end
            item
              EditButtons = <>
              FieldName = 'Skin_Size'
              Footers = <>
              Title.Caption = 'Skin Size'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 41
            end
            item
              DisplayFormat = '##%'
              EditButtons = <>
              FieldName = 'Skin_Quality'
              Footers = <>
              Title.Caption = 'Skin Quality'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Title.TitleButton = True
              Width = 48
            end
            item
              EditButtons = <>
              FieldName = 'QC_SKIN'
              Footers = <>
              Title.Caption = 'QC Check'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
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
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
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
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = []
              Width = 70
            end>
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 997
          Height = 23
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
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Visible = False
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 402
        Width = 999
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
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'ZLBH'
              Footers = <>
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
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
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
          Width = 321
          Height = 155
          Align = alClient
          DataSource = DS6
          Flat = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Style = []
          ParentFont = False
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
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
              Width = 52
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
              Width = 226
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
              Width = 52
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
              Width = 35
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
        Width = 999
        Height = 537
        Align = alClient
        DataSource = DS2
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
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
        TitleFont.Height = -11
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
            Title.TitleButton = True
            Width = 72
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SEASON'
            Footers = <>
            Title.Caption = 'Purchase Order|Sea.'
            Width = 36
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PURPOSE'
            Footers = <>
            Title.Caption = 'Purchase Order|Stage'
            Width = 33
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'Stage'
            Footers = <>
            Title.Caption = 'Inner Stage'
            Width = 32
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'ZLBH'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Footers = <>
            Title.TitleButton = True
            Width = 131
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'XIEMING'
            Footers = <>
            Width = 120
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
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = 'Purchase Qty'
            Title.TitleButton = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'RKQty'
            Footers = <>
            Visible = False
            Width = 59
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.TitleButton = True
            Width = 32
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Title.Caption = 'Purchase|US Price'
            Width = 57
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <>
            Title.Caption = 'Purchase|US Amount'
            Width = 72
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Title.Caption = 'Purchase|VN Price'
            Width = 60
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
            Title.Caption = 'Purchase|VN Amount'
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CGDATE'
            Footers = <>
            Title.Caption = 'Purchase Date'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'RKDATE'
            Footers = <>
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.TitleButton = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'memo'
            Footers = <>
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'MEMO1'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'Supplier|ID'
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'yjdz'
            Footers = <>
            Title.Caption = 'Supplier|Address'
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY'
            Footers = <>
            Title.Caption = 'Supplier|Country'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'BILLNO'
            Footers = <>
            Title.Caption = 'Supplier|BillNo'
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'INVOICE'
            Footers = <>
            Title.Caption = 'Supplier|Invoice'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'WAY'
            Footers = <>
            Title.Caption = 'Supplier|Transport'
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'BILLNO_2'
            Footers = <>
            Title.Caption = 'Supplier|BillNo_2'
            Width = 111
          end
          item
            EditButtons = <>
            FieldName = 'invoice_2'
            Footers = <>
            Title.Caption = 'Supplier|Invoice_2'
            Width = 99
          end
          item
            EditButtons = <>
            FieldName = 'WAY_2'
            Footers = <>
            Title.Caption = 'Supplier|Transport_2'
            Width = 77
          end
          item
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'FD'
            Footers = <>
            Width = 66
          end
          item
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat No'
            Title.TitleButton = True
            Width = 70
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.TitleButton = True
            Width = 58
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 999
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
          Font.Height = -13
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
        Width = 999
        Height = 537
        Align = alClient
        DataSource = DS3
        Flat = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
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
        TitleFont.Height = -11
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
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Footers = <>
          end
          item
            DisplayFormat = 'YYYY/MM/DD'
            EditButtons = <>
            FieldName = 'RKdate'
            Footers = <>
            Width = 63
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
            Title.TitleButton = True
            Width = 72
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'SEASON'
            Footers = <>
            Title.Caption = 'Purchase|Sea.'
            Width = 36
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'PURPOSE'
            Footers = <>
            Title.Caption = 'Purchase|Stage'
            Width = 41
          end
          item
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'CLBH'
            Footers = <>
            Title.Caption = 'Mat No'
            Title.TitleButton = True
            Width = 70
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
            FieldName = 'Qty'
            Footers = <>
            Title.Caption = 'Purchase Qty'
            Title.TitleButton = True
            Width = 60
          end
          item
            EditButtons = <>
            FieldName = 'RKQTY'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'DWBH'
            Footers = <>
            Title.TitleButton = True
            Width = 31
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'USPrice'
            Footers = <>
            Title.Caption = 'Payment|US Price'
            Width = 57
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'USACC'
            Footers = <>
            Title.Caption = 'Payment|US Amount'
            Width = 72
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'VNPrice'
            Footers = <>
            Title.Caption = 'Payment|VN Price'
            Width = 60
          end
          item
            DisplayFormat = '#,##0.00'
            EditButtons = <>
            FieldName = 'VNACC'
            Footers = <>
            Title.Caption = 'Payment|VN Amount'
            Width = 76
          end
          item
            EditButtons = <>
            FieldName = 'CGDATE'
            Footers = <>
            Title.Caption = 'Purchase Date'
            Width = 63
          end
          item
            EditButtons = <>
            FieldName = 'YQDate'
            Footers = <>
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'CFMDate'
            Footers = <>
            Title.TitleButton = True
            Width = 65
          end
          item
            EditButtons = <>
            FieldName = 'ETA'
            Footers = <>
            Title.TitleButton = True
            Width = 67
          end
          item
            EditButtons = <>
            FieldName = 'memo'
            Footers = <>
            Title.TitleButton = True
            Width = 85
          end
          item
            EditButtons = <>
            FieldName = 'MEMO1'
            Footers = <>
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'ZSBH'
            Footers = <>
            Title.Caption = 'Supplier|ID'
            Title.TitleButton = True
            Width = 41
          end
          item
            EditButtons = <>
            FieldName = 'ZSYWJC'
            Footers = <>
            Title.Caption = 'Supplier|Name'
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'yjdz'
            Footers = <>
            Title.Caption = 'Supplier|Address'
            Title.TitleButton = True
            Width = 75
          end
          item
            EditButtons = <>
            FieldName = 'COUNTRY'
            Footers = <>
            Title.Caption = 'Supplier|Country'
            Title.TitleButton = True
            Width = 61
          end
          item
            EditButtons = <>
            FieldName = 'BILLNO'
            Footers = <>
            Title.Caption = 'Supplier|BillNo'
            Visible = False
            Width = 110
          end
          item
            EditButtons = <>
            FieldName = 'WAY'
            Footers = <>
            Title.Caption = 'Supplier|Transport'
            Visible = False
            Width = 62
          end
          item
            EditButtons = <>
            FieldName = 'USERDate'
            Footers = <>
            Title.TitleButton = True
            Width = 73
          end
          item
            EditButtons = <>
            FieldName = 'USERID'
            Footers = <>
            Title.TitleButton = True
            Width = 62
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 999
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
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT     CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.' +
        'ETA,CGZLS.memo,CGZLS.BILLNO,CGZLS.invoice,CGZLS.WAY,CGZLS.USPric' +
        'e,CGZLS.VNPrice, CGZLS.Qty,CGZLS.USERID,CGZLS.USERDate,CGZLS.CFM' +
        'Date,CGZLS.YQDate,'
      
        '           CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL.DWBH ,CGZL.ZS' +
        'BH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL.COUNTRY,'
      
        '           (SELECT SUM(KCRKS.Qty) FROM KCRKS,KCRK WHERE KCRK.RKN' +
        'O=KCRKS.RKNO AND KCRKS.CGBH=CGZLS.CGNO AND KCRKS.CLBH=CGZLS.CLBH' +
        ' GROUP BY KCRKS.CGBH,KCRKS.CLBH ) AS RKQTY ,'
      
        '           (SELECT top 1 KCRK.USERDATE FROM KCRKS,KCRK WHERE KCR' +
        'K.RKNO=KCRKS.RKNO AND KCRKS.CGBH=CGZLS.CGNO AND KCRKS.CLBH=CGZLS' +
        '.CLBH  ) AS RKdate,'
      
        '           CGZLS.BILLNO as BILLNO_2,CGZLS.invoice as invoice_2,C' +
        'GZLS.WAY  as WAY_2 ,CGZLS.Article_all,BUSERS.USERNAME as SampleP' +
        'urchaser_Name'
      
        '           ,MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG' +
        '_ETA,MaterialNG.Result as NG_Result, MaterialNG.C_window,Materia' +
        'lNG.QC_Inspection1,MaterialNG.QC_Inspection2,MaterialNG.NG_Date ' +
        '          '
      '    from CGZLS'
      '    left join CLZL  on CLZl.CLDH=CGZLS.CLBH'
      '    left join CGZL  on CGZl.CGNO=CGZLS.CGNO'
      '    left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH'
      '    left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser'
      
        '    left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZL' +
        'S.CGNO=MaterialNG.CGNO'
      '    where 1=2'
      '')
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
    object Query1Article_all: TStringField
      FieldName = 'Article_all'
      FixedChar = True
      Size = 250
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
    object Query1All_Size: TStringField
      FieldName = 'All_Size'
      Size = 200
    end
    object Query1All_Article: TStringField
      FieldName = 'All_Article'
      Size = 200
    end
    object Query1Location: TStringField
      FieldName = 'Location'
      Size = 15
    end
    object Query1File_Name: TStringField
      DisplayLabel = 'A01 File NAme'
      FieldName = 'File_Name'
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
    object Query1CWHL: TCurrencyField
      FieldName = 'CWHL'
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
      'select CGZLSS.*,KFXXZL.XIEMING  ,XXZLKF.FD'
      'from CGZLSS'
      'left join KFXXZL  on KFXXZL.ARTICLE=CGZLSS.ZLBH'
      
        'left join XXZLKF  on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.Sh' +
        'eHao=KFXXZL.SheHao'
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
end

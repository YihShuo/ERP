object MaterialReleasedCofirm: TMaterialReleasedCofirm
  Left = 481
  Top = 201
  Width = 1433
  Height = 719
  Caption = 'Material Released Cofirm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 250
    Width = 1417
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object TopPanel: TPanel
    Left = 0
    Top = 41
    Width = 1417
    Height = 209
    Align = alTop
    TabOrder = 0
    object DBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1415
      Height = 207
      Align = alClient
      DataSource = DS3
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      ParentFont = False
      ReadOnly = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ListNo'
          Footer.FieldName = 'LLNO'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'List No.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 90
        end
        item
          EditButtons = <>
          FieldName = 'Section'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'Building'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'Lean'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'DemandDate'
          Footers = <>
          Title.Caption = 'Demand Date'
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'DemandTime'
          Footers = <>
          Title.Caption = 'Demand Time'
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'Remark'
          Footers = <>
          Width = 200
        end
        item
          EditButtons = <>
          FieldName = 'USERID'
          Footers = <>
          Title.Caption = 'User ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 80
        end
        item
          DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
          EditButtons = <>
          FieldName = 'USERDATE'
          Footers = <>
          Title.Caption = 'User Date'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'GSBH'
          Footers = <>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'ConfirmID'
          Footers = <>
          Title.Caption = 'Card Receive Confirmation|Confirm ID'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 80
        end
        item
          DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
          EditButtons = <>
          FieldName = 'ConfirmDate'
          Footers = <>
          Title.Caption = 'Card Receive Confirmation|Confirm Date'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'DeliveryCFMID'
          Footers = <>
          Title.Caption = 'Delivery Confirmation|Confirm ID'
          Width = 80
        end
        item
          DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
          EditButtons = <>
          FieldName = 'DeliveryCFMDate'
          Footers = <>
          Title.Caption = 'Delivery Confirmation|Confirm Date'
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'ReceiverConfirmID'
          Footers = <>
          Title.Caption = 'Receiver Confirmation|Confirm ID'
          Width = 80
        end
        item
          DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
          EditButtons = <>
          FieldName = 'ReceiverConfirmDate'
          Footers = <>
          Title.Caption = 'Receiver Confirmation|Confirm Date'
          Width = 120
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 253
    Width = 1417
    Height = 80
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 156
      Top = 15
      Width = 22
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 4
      Top = 52
      Width = 49
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'List No:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 159
      Top = 52
      Width = 25
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'RY:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 425
      Top = 52
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Building:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 596
      Top = 52
      Width = 42
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Lean:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 294
      Top = 15
      Width = 31
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SKU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 284
      Top = 52
      Width = 58
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Section:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button1: TButton
      Left = 428
      Top = 2
      Width = 64
      Height = 42
      Caption = 'Search '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object DTP1: TDateTimePicker
      Left = 55
      Top = 11
      Width = 95
      Height = 24
      Date = 42401.677295636570000000
      Format = 'yyyy/MM/dd'
      Time = 42401.677295636570000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 186
      Top = 11
      Width = 95
      Height = 24
      Date = 42794.677664201390000000
      Format = 'yyyy/MM/dd'
      Time = 42794.677664201390000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 55
      Top = 48
      Width = 95
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 756
      Top = 4
      Width = 161
      Height = 65
      Caption = ' Delivery '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object rd2: TRadioButton
        Left = 14
        Top = 18
        Width = 113
        Height = 17
        Caption = 'Confirmed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object rd1: TRadioButton
        Left = 14
        Top = 39
        Width = 137
        Height = 17
        Caption = 'Not yet confirm'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
    end
    object Edit2: TEdit
      Left = 186
      Top = 48
      Width = 95
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object CheckBox1: TCheckBox
      Left = 33
      Top = 15
      Width = 17
      Height = 17
      TabOrder = 8
    end
    object GroupBox2: TGroupBox
      Left = 924
      Top = 2
      Width = 284
      Height = 67
      TabOrder = 9
      object Label4: TLabel
        Left = 1
        Top = 14
        Width = 89
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DemandDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 1
        Top = 40
        Width = 89
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'DemandTime'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DTP3: TDateTimePicker
        Left = 95
        Top = 11
        Width = 105
        Height = 24
        Date = 42794.677664201390000000
        Format = 'yyyy/MM/dd'
        Time = 42794.677664201390000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object CBX3: TComboBox
        Left = 95
        Top = 38
        Width = 105
        Height = 24
        Style = csDropDownList
        DropDownCount = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = 'Chinese (Traditional) - New Phonetic'
        ItemHeight = 16
        ParentFont = False
        TabOrder = 1
      end
      object Button4: TButton
        Left = 208
        Top = 20
        Width = 68
        Height = 33
        Caption = 'Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = Button4Click
      end
    end
    object CBX1: TComboBox
      Left = 485
      Top = 48
      Width = 108
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = 'Chinese (Traditional) - New Phonetic'
      ItemHeight = 16
      ParentFont = False
      TabOrder = 10
      OnChange = CBX1Change
    end
    object CBX2: TComboBox
      Left = 640
      Top = 48
      Width = 110
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = 'Chinese (Traditional) - New Phonetic'
      ItemHeight = 16
      ParentFont = False
      TabOrder = 11
    end
    object Edit3: TEdit
      Left = 327
      Top = 11
      Width = 93
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object CBX4: TComboBox
      Left = 344
      Top = 48
      Width = 76
      Height = 24
      Style = csDropDownList
      DropDownCount = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImeName = 'Chinese (Traditional) - New Phonetic'
      ItemHeight = 16
      ParentFont = False
      TabOrder = 13
      Items.Strings = (
        ''
        'C'
        'S'
        'GCD'
        'A')
    end
    object Button5: TButton
      Left = 492
      Top = 2
      Width = 64
      Height = 42
      Caption = 'Receive Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      WordWrap = True
      OnClick = Button5Click
    end
    object Button2: TButton
      Left = 556
      Top = 2
      Width = 64
      Height = 42
      Caption = 'Delivery Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      WordWrap = True
      OnClick = Button2Click
    end
    object Button6: TButton
      Left = 620
      Top = 2
      Width = 64
      Height = 42
      Caption = 'Cancel Delivery Confirm'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      WordWrap = True
      OnClick = Button6Click
    end
    object Button3: TButton
      Left = 684
      Top = 2
      Width = 64
      Height = 42
      Caption = 'Cancel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button7: TButton
      Left = 1214
      Top = 8
      Width = 107
      Height = 60
      Caption = 'No Application In ERP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      WordWrap = True
      OnClick = Button7Click
    end
  end
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 333
    Width = 1417
    Height = 347
    Align = alClient
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
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    PopupMenu = PopupMenu1
    SumList.Active = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDrawColumnCell = DBGrid2DrawColumnCell
    OnEditButtonClick = DBGrid2EditButtonClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MaterialID'
        Footer.FieldName = 'MaterialID'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'RY_Begin'
        Footers = <>
        Title.Caption = 'RY'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'RY_End'
        Footers = <>
        Visible = False
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Unit'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CGQty'
        Footers = <>
        Title.Caption = 'Chua Nhap Kho|Mua Sam'
      end
      item
        EditButtons = <>
        FieldName = 'JGQty'
        Footers = <>
        Title.Caption = 'Chua Nhap Kho|Gia Cong'
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Usage'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 100
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'IssuanceUsage'
        Footers = <>
        Title.Caption = 'Issuance Usage'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 110
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'LotNO'
        Footers = <>
        Title.Caption = 'Lot No.'
        Width = 120
      end
      item
        Color = 11796479
        EditButtons = <>
        FieldName = 'Remark'
        Footers = <>
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 250
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 250
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1417
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label10: TLabel
      Left = 16
      Top = 13
      Width = 70
      Height = 16
      Caption = 'Department'
    end
    object CB_Department: TComboBox
      Left = 91
      Top = 10
      Width = 102
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 0
      Text = 'Warehouse'
      OnChange = CB_DepartmentChange
      Items.Strings = (
        'Warehouse'
        'SQ')
    end
  end
  object DelMas: TQuery
    CachedUpdates = True
    AfterScroll = DelMasAfterScroll
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'select * from MRCard'
      'where isnull(MRCard.ConfirmID,'#39'NO'#39')='#39'NO'#39
      'order by MRCard.ListNo')
    UpdateObject = UpMas
    Left = 15
    Top = 149
    object DelMasListNo: TStringField
      FieldName = 'ListNo'
    end
    object DelMasSection: TStringField
      FieldName = 'Section'
    end
    object DelMasBuilding: TStringField
      FieldName = 'Building'
    end
    object DelMasLean: TStringField
      FieldName = 'Lean'
    end
    object DelMasDemandDate: TDateTimeField
      FieldName = 'DemandDate'
    end
    object DelMasDemandTime: TStringField
      FieldName = 'DemandTime'
      Size = 30
    end
    object DelMasRemark: TStringField
      DisplayWidth = 150
      FieldName = 'Remark'
      Size = 150
    end
    object DelMasConfirmID: TStringField
      FieldName = 'ConfirmID'
    end
    object DelMasConfirmDate: TDateTimeField
      FieldName = 'ConfirmDate'
    end
    object DelMasReceiverConfirmID: TStringField
      FieldName = 'ReceiverConfirmID'
    end
    object DelMasReceiverConfirmDate: TDateTimeField
      FieldName = 'ReceiverConfirmDate'
    end
    object DelMasYN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelMasGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object DelMasUSERDATE: TDateTimeField
      DisplayWidth = 22
      FieldName = 'USERDATE'
    end
    object DelMasUSERID: TStringField
      DisplayWidth = 18
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DelMasDeliveryCFMID: TStringField
      FieldName = 'DeliveryCFMID'
      Size = 10
    end
    object DelMasDeliveryCFMDate: TDateTimeField
      FieldName = 'DeliveryCFMDate'
    end
    object DelMasSource: TStringField
      FieldName = 'Source'
      Size = 10
    end
  end
  object DS3: TDataSource
    DataSet = DelMas
    Left = 15
    Top = 119
  end
  object DelDet: TQuery
    CachedUpdates = True
    AfterOpen = DelDetAfterOpen
    OnNewRecord = DelDetNewRecord
    DatabaseName = 'DB'
    DataSource = DS3
    RequestLive = True
    SQL.Strings = (
      
        'SELECT ListNo, MaterialID, RY_Begin, RY_End, ARTICLE, CLSL, Usag' +
        'e, IssuanceUsage, okQty, LotNO, UserID, UserDate, YN, YWPM, ZWPM' +
        ', DWBH, Remark, LLNO,'
      
        'CASE WHEN ZMLB = '#39'Y'#39' THEN CASE WHEN CLSL - JGQty - KCQty >= 0 TH' +
        'EN CLSL - JGQty - KCQty ELSE 0 END ELSE 0 END AS JGQty, '
      
        'CASE WHEN ZMLB = '#39'N'#39' THEN CASE WHEN CLSL - RKQty - KCQty >= 0 TH' +
        'EN CLSL - RKQty - KCQty ELSE 0 END ELSE 0 END AS CGQty FROM ('
      
        '  SELECT ListNo, MaterialID, RY_Begin, RY_End, ARTICLE, MRCard.C' +
        'LSL, Usage, IssuanceUsage, okQty, LotNO, MRCard.UserID, MRCard.U' +
        'serDate, MRCard.YN, YWPM, ZWPM, DWBH, Remark, LLNO, ZMLB,'
      
        '  KCQty, RKQty, CASE WHEN JGZL.CFMDate1 IS NOT NULL THEN SUM(JGZ' +
        'LSS.Qty) ELSE 0 END AS JGQty FROM ('
      
        '    SELECT ListNo, MaterialID, RY_Begin, RY_End, ARTICLE, CLSL, ' +
        'Usage, IssuanceUsage, okQty, LotNO, MRCard.UserID, MRCard.UserDa' +
        'te, MRCard.YN, YWPM, ZWPM, DWBH, Remark, LLNO, ZMLB, '
      '    KCQty, ISNULL(SUM(KCRKS.Qty), 0) AS RKQty FROM ('
      
        '      SELECT MRCardS.ListNo, MRCardS.MaterialID, MRCardS.RY_Begi' +
        'n, MRCardS.RY_End, DDZL.ARTICLE, CAST(CASE WHEN MRCardS.Material' +
        'ID <> '#39'INSOLE'#39' THEN ISNULL(SUM(ZLZLS2.CLSL), 0) ELSE DDZL.Pairs ' +
        'END AS FLOAT) AS CLSL,'
      
        '      MRCardS.Usage, CAST(ISNULL(MRCardS.IssuanceUsage, MRCardS.' +
        'Usage) AS FLOAT) AS IssuanceUsage, CAST(ISNULL(KCLLS.okQty, 0) A' +
        'S FLOAT) AS okQty,'
      
        '      MRCardS.LotNO, MRCardS.UserID, MRCardS.UserDate, MRCardS.Y' +
        'N, ISNULL(CLZL.YWPM, CLZL2.YWPM) AS YWPM, ISNULL(CLZL.ZWPM, CLZL' +
        '2.ZWPM) AS ZWPM, ISNULL(CLZL.DWBH, CLZL2.DWBH) AS DWBH, MRCardS.' +
        'Remark, KCLL.LLNO, ZLZLS2.ZMLB,'
      
        '      CASE WHEN ISNULL(SUM(CGKCUSES.Qty), 0) < ISNULL(SUM(ZLZLS2' +
        '.CLSL), 0) THEN ISNULL(SUM(CGKCUSES.Qty), 0) ELSE ISNULL(SUM(ZLZ' +
        'LS2.CLSL), 0) END AS KCQty FROM MRCardS'
      '      LEFT JOIN MRCard ON MRCard.ListNo = MRCardS.ListNo'
      '      LEFT JOIN CLZL ON CLZL.CLDH = MRCardS.MaterialID'
      '      LEFT JOIN ('
      
        '        SELECT '#39'INSOLE'#39' AS CLBH, '#39'INSOLE'#39' AS YWPM, '#39#20013#24213#39' AS ZWPM,' +
        ' '#39'PRS'#39' AS DWBH'
      '      ) AS CLZL2 ON CLZL2.CLBH = MRCardS.MaterialID'
      
        '      LEFT JOIN ZLZLS2 ON ZLZLS2.ZLBH = MRCardS.RY_Begin AND ZLZ' +
        'LS2.CLBH = MRCardS.MaterialID AND (ZLZLS2.MJBH = '#39'ZZZZZZZZZZ'#39' OR' +
        ' ZLZLS2.CSBH = '#39'JNG'#39')'
      '      LEFT JOIN DDZL ON DDZL.DDBH = MRCardS.RY_Begin'
      '      LEFT JOIN ('
      
        '        SELECT MRCardS.MaterialID AS CLBH, SUM(MRCardS.IssuanceU' +
        'sage) AS okQty, MRCardS.RY_Begin AS SCBH FROM MRCardS'
      '        LEFT JOIN MRCard ON MRCard.ListNo = MRCardS.ListNo'
      '        WHERE ISNULL(MRCard.DeliveryCFMID, '#39'NO'#39') <> '#39'NO'#39
      '        GROUP BY MRCardS.MaterialID, MRCardS.RY_Begin'
      
        '      ) AS KCLLS ON KCLLS.SCBH = MRCardS.RY_Begin AND KCLLS.CLBH' +
        ' = MRCardS.MaterialID'
      '      LEFT JOIN ('
      
        '        SELECT MAX(KCLLS.LLNO) AS LLNO, KCLLS.CLBH, KCLLS.SCBH, ' +
        'KCLL.GSBH FROM KCLLS'
      '        LEFT JOIN KCLL ON KCLL.LLNO = KCLLS.LLNO'
      '        WHERE KCLL.SCBH <> '#39'JJJJJJJJJJ'#39
      '        GROUP BY KCLLS.CLBH, KCLLS.SCBH, KCLL.GSBH'
      
        '      ) AS KCLL ON KCLL.SCBH = MRCardS.RY_Begin AND KCLL.CLBH = ' +
        'MRCardS.MaterialID AND KCLL.GSBH = MRCard.GSBH'
      '      LEFT JOIN ('
      
        '        SELECT CGKCUSES.ZLBH, CGKCUSES.CLBH, SUM(CGKCUSES.Qty) A' +
        'S Qty FROM MRCardS'
      
        '        LEFT JOIN CGKCUSES ON CGKCUSES.ZLBH = MRCardS.RY_Begin A' +
        'ND CGKCUSES.CLBH = MRCardS.MaterialID'
      
        '        WHERE MRCardS.ListNo = :ListNo AND CGKCUSES.ZLBH IS NOT ' +
        'NULL'
      '        GROUP BY CGKCUSES.ZLBH, CGKCUSES.CLBH'
      
        '      ) AS CGKCUSES ON CGKCUSES.ZLBH = MRCardS.RY_Begin AND CGKC' +
        'USES.CLBH = MRCardS.MaterialID'
      
        '      WHERE MRCardS.ListNo = :ListNo AND MRCardS.Source = :Sourc' +
        'e'
      
        '      GROUP BY MRCardS.ListNo, MRCardS.MaterialID, MRCardS.RY_Be' +
        'gin, MRCardS.RY_End, DDZL.ARTICLE, DDZL.Pairs, MRCardS.Usage, MR' +
        'CardS.IssuanceUsage, KCLLS.okQty,'
      
        '      MRCardS.LotNO, MRCardS.UserID, MRCardS.UserDate, MRCardS.Y' +
        'N, ISNULL(CLZL.YWPM, CLZL2.YWPM), ISNULL(CLZL.ZWPM, CLZL2.ZWPM),' +
        ' ISNULL(CLZL.DWBH, CLZL2.DWBH), MRCardS.Remark, ZLZLS2.ZMLB, KCL' +
        'L.LLNO'
      '    ) AS MRCard'
      
        '    LEFT JOIN KCRKS ON KCRKS.CGBH = MRCard.RY_Begin AND KCRKS.CL' +
        'BH = MRCard.MaterialID'
      
        '    GROUP BY ListNo, MaterialID, RY_Begin, RY_End, ARTICLE, CLSL' +
        ', Usage, IssuanceUsage, okQty, LotNO, MRCard.UserID, MRCard.User' +
        'Date, MRCard.YN, YWPM, ZWPM, DWBH, Remark, LLNO, ZMLB, KCQty'
      '  ) AS MRCard'
      
        '  LEFT JOIN JGZLSS ON JGZLSS.ZLBH = MRCard.RY_Begin AND JGZLSS.C' +
        'LBH = MRCard.MaterialID'
      '  LEFT JOIN JGZL ON JGZL.JGNO = JGZLSS.JGNO'
      
        '  GROUP BY ListNo, MaterialID, RY_Begin, RY_End, ARTICLE, MRCard' +
        '.CLSL, Usage, IssuanceUsage, okQty, LotNO, MRCard.UserID, MRCard' +
        '.UserDate, MRCard.YN, YWPM, ZWPM, DWBH, Remark, LLNO, ZMLB, KCQt' +
        'y, RKQty, CFMDate1'
      ') AS MRCard'
      'ORDER BY MaterialID')
    UpdateObject = UPDet
    Left = 14
    Top = 443
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ListNo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ListNo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Source'
        ParamType = ptUnknown
      end>
    object DelDetListNo: TStringField
      FieldName = 'ListNo'
    end
    object DelDetMaterialID: TStringField
      FieldName = 'MaterialID'
    end
    object DelDetYWPM: TStringField
      DisplayWidth = 87
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetZWPM: TStringField
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object DelDetDWBH: TStringField
      DisplayWidth = 7
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object DelDetRY_Begin: TStringField
      FieldName = 'RY_Begin'
    end
    object DelDetRY_End: TStringField
      FieldName = 'RY_End'
    end
    object DelDetARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object DelDetCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object DelDetokQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object DelDetUsage: TCurrencyField
      FieldName = 'Usage'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object DelDetIssuanceUsage: TCurrencyField
      FieldName = 'IssuanceUsage'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object DelDetLotNO: TStringField
      FieldName = 'LotNO'
      Size = 50
    end
    object DelDetRemark: TStringField
      FieldName = 'Remark'
      Size = 200
    end
    object DelDetUSERDATE: TDateTimeField
      DisplayWidth = 22
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object DelDetUSERID: TStringField
      DisplayWidth = 18
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object DelDetYN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object DelDetLLNO: TStringField
      FieldName = 'LLNO'
    end
    object DelDetCGQty: TFloatField
      FieldName = 'CGQty'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object DelDetJGQty: TFloatField
      FieldName = 'JGQty'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
  end
  object DS4: TDataSource
    DataSet = DelDet
    Left = 14
    Top = 411
  end
  object UPDet: TUpdateSQL
    ModifySQL.Strings = (
      'update MRCardS'
      'set'
      '  IssuanceUsage= :IssuanceUsage,'
      '  LotNO = :LotNO,'
      '  Remark = :Remark'
      'where'
      '  ListNo= :OLD_ListNo and'
      '  RY_Begin= :OLD_RY_Begin and'
      '  RY_End= :OLD_RY_End and'
      '  MaterialID = :OLD_MaterialID'
      ''
      ''
      '')
    DeleteSQL.Strings = (
      '')
    Left = 14
    Top = 474
  end
  object UpMas: TUpdateSQL
    ModifySQL.Strings = (
      'update MRCard'
      'set'
      '  ConfirmDate = :ConfirmDate,'
      '  ConfirmID = :ConfirmID,'
      '  DeliveryCFMID = :DeliveryCFMID,'
      '  DeliveryCFMDate = :DeliveryCFMDate,'
      '  YN = :YN'
      'where'
      '  ListNo= :OLD_ListNo')
    Left = 15
    Top = 178
  end
  object Qtemp: TQuery
    DatabaseName = 'DB'
    Left = 46
    Top = 149
  end
  object Track: TQuery
    DatabaseName = 'DB'
    DataSource = DS3
    SQL.Strings = (
      
        'select MRCardS.ListNo, MaterialID, RY_Begin, RY_End, Usage, ISNU' +
        'LL(IssuanceUsage,Usage) IssuanceUsage, '
      
        '       LotNO, MRCardS.UserID, MRCardS.UserDate, MRCardS.YN, CLZL' +
        '.YWPM, CLZL.ZWPM, CLZL.DWBH, MRCardS.Remark'
      'from MRCardS'
      'left join MRCard on MRCard.ListNo=MRCardS.ListNo'
      'inner join CLZL on CLZL.CLDH=MRCardS.MaterialID'
      'where MRCardS.ListNo=:ListNo')
    Left = 46
    Top = 443
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ListNo'
        ParamType = ptUnknown
      end>
    object TrackListNo: TStringField
      FieldName = 'ListNo'
    end
    object TrackDep: TStringField
      FieldName = 'Dep'
      Size = 100
    end
    object TrackSection: TStringField
      FieldName = 'Section'
    end
    object TrackDemandDate: TDateTimeField
      FieldName = 'DemandDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object TrackDemandTime: TStringField
      FieldName = 'DemandTime'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'RY_Begin'
    end
    object TrackARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object StringField2: TStringField
      FieldName = 'MaterialID'
    end
    object TrackYWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object TrackCLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object TrackokQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Usage'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object StringField9: TStringField
      FieldName = 'Remark'
      Size = 50
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'IssuanceUsage'
      DisplayFormat = '##,#0.00'
      EditFormat = '##,#0.00'
    end
    object TrackRemarkS: TStringField
      FieldName = 'RemarkS'
      Size = 200
    end
  end
  object DS1: TDataSource
    DataSet = Track
    Left = 46
    Top = 411
  end
  object PopupMenu1: TPopupMenu
    Left = 14
    Top = 505
    object ToSQ1: TMenuItem
      Caption = 'Transfer to SQ'
      Visible = False
      OnClick = ToSQ1Click
    end
    object ToWH1: TMenuItem
      Caption = 'Transfer to Warehouse'
      Visible = False
      OnClick = ToWH1Click
    end
  end
end

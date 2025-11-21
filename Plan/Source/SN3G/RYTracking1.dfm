object RYTracking: TRYTracking
  Left = 341
  Top = 299
  Width = 1375
  Height = 542
  Caption = 'RY Tracking'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 813
    Top = 41
    Height = 462
  end
  object DBGridEh1: TDBGridEh
    Left = 816
    Top = 41
    Width = 543
    Height = 462
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
    HorzScrollBar.Tracking = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Cycle'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 50
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'Pairs'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Pairs|Total'
        Width = 75
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'OSPairs'
        Footer.Alignment = taRightJustify
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Pairs|Outsourced'
        Width = 75
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'RPairs'
        Footer.Alignment = taRightJustify
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Pairs|Stitching'
        Width = 75
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'Assigned'
        Footer.Alignment = taRightJustify
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Pairs|Assigned'
        Width = 75
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'APairs'
        Footer.Alignment = taRightJustify
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Pairs|Assembly'
        Width = 75
      end
      item
        Alignment = taRightJustify
        EditButtons = <>
        FieldName = 'StockIn'
        Footer.Alignment = taRightJustify
        Footer.ValueType = fvtStaticText
        Footers = <>
        HideDuplicates = True
        Title.Caption = 'Pairs|Warehouse'
        Width = 75
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1359
    Height = 41
    Align = alTop
    TabOrder = 1
    Visible = False
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Edit Materials'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 813
    Height = 462
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 0
      Top = 250
      Width = 813
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object DBGridEh2: TDBGridEh
      Left = 0
      Top = 0
      Width = 813
      Height = 250
      Align = alTop
      DataSource = DS2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      HorzScrollBar.Tracking = True
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.Tracking = True
      OnGetCellParams = DBGridEh2GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footer.Value = '###,##0'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = 'Material|ID'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'YWPM'
          Footers = <>
          Title.Caption = 'Material|Name'
          Width = 183
        end
        item
          EditButtons = <>
          FieldName = 'DWBH'
          Footers = <>
          Title.Caption = 'Material|Unit'
          Width = 40
        end
        item
          EditButtons = <>
          FieldName = 'ZSYWJC'
          Footers = <>
          Title.Caption = 'Material|Supplier'
          Width = 65
        end
        item
          DisplayFormat = '###,##0.00'
          EditButtons = <>
          FieldName = 'ZLQty'
          Footer.DisplayFormat = '###,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Usage|Total'
          Width = 70
        end
        item
          DisplayFormat = '###,##0.00'
          EditButtons = <>
          FieldName = 'CGQty'
          Footer.DisplayFormat = '###,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Usage|Purchased'
          Width = 70
        end
        item
          DisplayFormat = '###,##0.00'
          EditButtons = <>
          FieldName = 'RKQty'
          Footer.DisplayFormat = '###,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Usage|In-Stock'
          Width = 70
        end
        item
          DisplayFormat = '###,##0.00'
          EditButtons = <>
          FieldName = 'LackQty'
          Footer.DisplayFormat = '###,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Usage|Shortage'
          Width = 70
        end
        item
          DisplayFormat = '###,##0.00'
          EditButtons = <>
          FieldName = 'IQty'
          Footer.DisplayFormat = '###,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Usage|Issued'
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'Status'
          Footers = <>
          Width = 60
        end>
    end
    object DBGridEh3: TDBGridEh
      Left = 0
      Top = 253
      Width = 813
      Height = 209
      Align = alClient
      DataSource = DS3
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      HorzScrollBar.Tracking = True
      ReadOnly = True
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      UseMultiTitle = True
      VertScrollBar.Tracking = True
      OnGetCellParams = DBGridEh3GetCellParams
      OnTitleBtnClick = DBGridEh3TitleBtnClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'Part'
          Footer.ValueType = fvtCount
          Footers = <>
          KeyList.Strings = (
            'UPPER'
            'UPPER LOGO'
            'TONGUE LOGO'
            'TONGUE LINING LOGO'
            'EYESTAY LOGO'
            'COLLAR LOGO'
            'BACKSTAY LOGO'
            'HEEL LOGO'
            'BACK TAB LOGO'
            'TONGUE'
            'TONGUE LINING'
            'STAR/CHEVRN LOGO'
            'TOE CAP'
            'OUTSOLE'
            'FOXING'
            'BB FOXING'
            'INSOLE'
            'BACKSTAY'
            'STRAP'
            'WEBBING'
            'QUARTER OVERLAY BAR')
          PickList.Strings = (
            'THAN'
            'LOGO THAN'
            'LOGO LUOI GA'
            'LOGO LOT LUOI GA'
            'LOGO DEM'
            'LOGO VONG CO'
            'LOGO DAY GOT'
            'NHAN GOT'
            'LOGO HAU'
            'LUOI GA'
            'LOT LUOI GA'
            'TRANG/SAO'
            'BAO MUI'
            'DE LON'
            'DAY CCS'
            'TALON THAN'
            'DE TRUNG'
            'DAY GOT'
            'DAY QUAI'
            'DAY DET'
            'TRANG TRI THAN')
          Title.TitleButton = True
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'Process'
          Footers = <>
          KeyList.Strings = (
            'PRINTING'
            'HEAT PRESSING'
            'EMBROIDERY'
            'TRANSFER PRINTING')
          PickList.Strings = (
            'IN'
            'EP'
            'THEU'
            'CHUYEN IN')
          Title.TitleButton = True
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'Supplier'
          Footers = <>
          KeyList.Strings = (
            'JNG'
            'P154'
            'V066'
            'P213'
            'A159'
            'V133'
            'V034'
            'V194'
            'K110')
          PickList.Strings = (
            'TY XUAN'
            'TIEN HUNG'
            'BAO HE'
            'HAI AN'
            'O2 PARTNER LLC'
            'LI MAO'
            'CHEN TAI'
            'WEI SHENG'
            'COLORTECH')
          Width = 80
        end
        item
          DisplayFormat = '###,###,##0'
          EditButtons = <>
          FieldName = 'Pairs'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Total Pairs'
          Width = 57
        end
        item
          EditButtons = <>
          FieldName = 'EstLaunchDate'
          Footers = <>
          Title.Caption = 'Launch Date|Estimated'
          Width = 72
        end
        item
          DisplayFormat = 'yyyy/MM/dd'
          EditButtons = <>
          FieldName = 'ActLaunchDate'
          Footers = <>
          Title.Caption = 'Launch Date|Actual'
          Width = 72
        end
        item
          DisplayFormat = '###,###,##0'
          EditButtons = <>
          FieldName = 'InputPairs'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Input|Pairs'
          Width = 72
        end
        item
          DisplayFormat = '##0.0%'
          EditButtons = <>
          FieldName = 'InputRate'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = 'Input|Rate'
          Width = 72
        end
        item
          DisplayFormat = '###,###,##0'
          EditButtons = <>
          FieldName = 'OutputPairs'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Output|Pairs'
          Width = 72
        end
        item
          DisplayFormat = '##0.0%'
          EditButtons = <>
          FieldName = 'OutputRate'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = 'Output|Rate'
          Width = 72
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 832
    Top = 152
    object Query1RY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Query1Cycle: TStringField
      FieldName = 'Cycle'
      Size = 5
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1OSPairs: TStringField
      FieldName = 'OSPairs'
      Size = 10
    end
    object Query1RPairs: TStringField
      FieldName = 'RPairs'
      Size = 10
    end
    object Query1Assigned: TStringField
      FieldName = 'Assigned'
      Size = 10
    end
    object Query1StockIn: TStringField
      FieldName = 'StockIn'
      Size = 10
    end
    object Query1APairs: TStringField
      FieldName = 'APairs'
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 832
    Top = 120
  end
  object Query2: TQuery
    OnCalcFields = Query2CalcFields
    DatabaseName = 'DB'
    Left = 16
    Top = 152
    object Query2DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      Size = 4
    end
    object Query2ZLQty: TFloatField
      FieldName = 'ZLQty'
    end
    object Query2CGQty: TFloatField
      FieldName = 'CGQty'
    end
    object Query2RKQty: TFloatField
      FieldName = 'RKQty'
    end
    object Query2LackQty: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LackQty'
      Calculated = True
    end
    object Query2Status: TStringField
      FieldName = 'Status'
      Size = 10
    end
    object Query2ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
    end
    object Query2IQty: TFloatField
      FieldName = 'IQty'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 16
    Top = 120
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 405
    object Query3DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query3Part: TStringField
      FieldName = 'Part'
      Size = 30
    end
    object Query3Process: TStringField
      FieldName = 'Process'
      Size = 30
    end
    object Query3Supplier: TStringField
      FieldName = 'Supplier'
      Size = 6
    end
    object Query3Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query3InputPairs: TIntegerField
      FieldName = 'InputPairs'
    end
    object Query3InputRate: TFloatField
      FieldName = 'InputRate'
    end
    object Query3OutputPairs: TIntegerField
      FieldName = 'OutputPairs'
    end
    object Query3OutputRate: TFloatField
      FieldName = 'OutputRate'
    end
    object Query3EstLaunchDate: TStringField
      FieldName = 'EstLaunchDate'
      Size = 15
    end
    object Query3ActLaunchDate: TDateTimeField
      FieldName = 'ActLaunchDate'
    end
  end
  object DS3: TDataSource
    DataSet = Query3
    Left = 16
    Top = 373
  end
end

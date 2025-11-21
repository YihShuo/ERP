object MaterialOnTimeArrivalRate: TMaterialOnTimeArrivalRate
  Left = 289
  Top = 261
  Width = 1568
  Height = 675
  Caption = 'MaterialOnTimeArrivalRate'
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
  object Splitter1: TSplitter
    Left = 825
    Top = 49
    Height = 587
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1552
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 66
      Height = 16
      Caption = 'Plan Month'
    end
    object DTP1: TDateTimePicker
      Left = 95
      Top = 12
      Width = 74
      Height = 24
      Date = 45715.629086620370000000
      Format = 'yyyy/MM'
      Time = 45715.629086620370000000
      DateMode = dmUpDown
      TabOrder = 0
    end
    object Button1: TButton
      Left = 200
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 825
    Height = 587
    Align = alLeft
    DataSource = DS1
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
    SumList.VirtualRecords = True
    TabOrder = 1
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
        FieldName = 'BUY'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footer.DisplayFormat = '###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'RY'
        Width = 100
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = 'Cutting Die'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 120
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Country'
        Footers = <>
        Width = 70
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'schedule_date'
        Footer.Alignment = taRightJustify
        Footer.Value = 'Rate'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Plan Date'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DayDiff'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Lead Days'
        Width = 80
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 828
    Top = 49
    Width = 724
    Height = 587
    Align = alClient
    DataSource = DS2
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
    SumList.VirtualRecords = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    OnDrawColumnCell = DBGridEh2DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Type'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = 'Zone'
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'Supplier'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'Material ID'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Material Name'
        Width = 200
      end
      item
        DisplayFormat = '###,###,###0.0'
        EditButtons = <>
        FieldName = 'Usage'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Unit'
        Footers = <>
        Width = 35
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ArrivalDate'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DayDiff'
        Footers = <>
        Title.Caption = 'Lead Days'
        Width = 70
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 136
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1BUY: TStringField
      FieldName = 'BUY'
      Size = 10
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
    object Query1Country: TStringField
      FieldName = 'Country'
      Size = 50
    end
    object Query1schedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
    object Query1ArrivalDate: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object Query1DayDiff: TIntegerField
      FieldName = 'DayDiff'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 104
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      
        'SELECT Type, CQDH, '#39'['#39' + CSBH + '#39']'#39' + ZSYWJC AS Supplier, CLBH, ' +
        'YWPM, Usage, Unit, ArrivalDate, DATEDIFF(DAY, ArrivalDate, sched' +
        'ule_date) AS DayDiff FROM #MatAS'
      'WHERE DDBH = :DDBH'
      
        'ORDER BY CASE WHEN Type IN ('#39'Cutting'#39', '#39'Stitching'#39') THEN 0 ELSE ' +
        '1 END, CASE WHEN ArrivalDate IS NOT NULL THEN 0 ELSE 1 END, DayD' +
        'iff')
    Left = 848
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DDBH'
        ParamType = ptUnknown
      end>
    object Query2Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query2CQDH: TStringField
      FieldName = 'CQDH'
      Size = 4
    end
    object Query2Supplier: TStringField
      FieldName = 'Supplier'
      Size = 40
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      Size = 10
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Query2Usage: TFloatField
      FieldName = 'Usage'
    end
    object Query2Unit: TStringField
      FieldName = 'Unit'
      Size = 4
    end
    object Query2ArrivalDate: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object Query2DayDiff: TIntegerField
      FieldName = 'DayDiff'
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 848
    Top = 104
  end
end

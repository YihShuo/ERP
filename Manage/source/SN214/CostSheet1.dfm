object CostSheet: TCostSheet
  Left = 409
  Top = 319
  Width = 1116
  Height = 675
  Caption = 'CostSheet'
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
    Width = 1108
    Height = 57
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 18
      Top = 20
      Width = 36
      Height = 16
      Caption = #35330#21934':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 184
      Top = 20
      Width = 30
      Height = 16
      Caption = 'SKU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 338
      Top = 20
      Width = 52
      Height = 16
      Caption = #28415#31665#26085':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 491
      Top = 23
      Width = 9
      Height = 16
      Caption = '~'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DTP1: TDateTimePicker
      Left = 392
      Top = 16
      Width = 97
      Height = 24
      Date = 39453.354754224540000000
      Format = 'yyyy/MM/dd'
      Time = 39453.354754224540000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ED_Order: TEdit
      Left = 56
      Top = 16
      Width = 97
      Height = 24
      TabOrder = 0
    end
    object ED_SKU: TEdit
      Left = 216
      Top = 16
      Width = 89
      Height = 24
      TabOrder = 2
    end
    object DTP2: TDateTimePicker
      Left = 504
      Top = 16
      Width = 97
      Height = 24
      Date = 39453.355035625000000000
      Format = 'yyyy/MM/dd'
      Time = 39453.355035625000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Button1: TButton
      Left = 632
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 707
      Top = 15
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 5
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 784
      Top = 16
      Width = 75
      Height = 25
      Caption = 'CBD Import'
      TabOrder = 6
      OnClick = Button3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 1108
    Height = 587
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 19
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnColWidthsChanged = DBGridEh1ColWidthsChanged
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = #35330#21934#32232#34399
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 80
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'PlanDate'
        Footers = <>
        Title.Caption = #25104#22411#19978#32218#26085
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #29983#29986#32218#21029
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DDQty'
        Footers = <>
        Title.Caption = #35330#21934#38617#25976
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'IPrice'
        Footers = <>
        Title.Caption = #21934#20729' (VN)'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CBD_Lab'
        Footers = <>
        Title.Caption = #20154#24037#36027#29992' (CBD)'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CBD_Mat'
        Footers = <>
        Title.Caption = #26448#26009#36027#29992' (CBD)'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'OrdAcc'
        Footers = <>
        Title.Caption = #32317#25910#20837
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'BLACC'
        Footers = <>
        Title.Caption = #35036#26009#36027#29992
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'LLACC'
        Footers = <>
        Title.Caption = #26448#26009#36027#29992
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Num_Lab'
        Footers = <>
        Title.Caption = #29992#24037#20154#25976
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'HourlyCapacity'
        Footers = <>
        Title.Caption = #26178#29986#20986
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'WorkHour'
        Footers = <>
        Title.Caption = #29983#29986#24037#26178
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Wage'
        Footers = <>
        Title.Caption = #24179#22343#26178#34218
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Overhead'
        Footers = <>
        Title.Caption = #31649#37559#36027#29992
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'MatCost'
        Footers = <>
        Title.Caption = #26009
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'LabCost'
        Footers = <>
        Title.Caption = #24037
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'OhCost'
        Footers = <>
        Title.Caption = #36027
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'blank'
        Footers = <>
        Title.Caption = ' '
        Width = 0
      end>
  end
  object Query1: TQuery
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    Left = 16
    Top = 144
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
    end
    object Query1PlanDate: TDateTimeField
      FieldName = 'PlanDate'
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
    end
    object Query1DDQty: TIntegerField
      FieldName = 'DDQty'
    end
    object Query1IPrice: TFloatField
      FieldName = 'IPrice'
      DisplayFormat = '#0.00'
    end
    object Query1CBD_Lab: TFloatField
      FieldName = 'CBD_Lab'
      DisplayFormat = '#0.00'
    end
    object Query1CBD_Mat: TFloatField
      FieldName = 'CBD_Mat'
      DisplayFormat = '#0.00'
    end
    object Query1OrdAcc: TFloatField
      FieldName = 'OrdAcc'
      DisplayFormat = '#0.00'
    end
    object Query1BLACC: TFloatField
      FieldName = 'BLACC'
      DisplayFormat = '#0.0000'
    end
    object Query1LLACC: TFloatField
      FieldName = 'LLACC'
      DisplayFormat = '#0.0000'
    end
    object Query1Num_Lab: TIntegerField
      FieldName = 'Num_Lab'
    end
    object Query1HourlyCapacity: TFloatField
      FieldName = 'HourlyCapacity'
    end
    object Query1WorkHour: TFloatField
      FieldKind = fkCalculated
      FieldName = 'WorkHour'
      DisplayFormat = '#0.0'
      Calculated = True
    end
    object Query1Wage: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Wage'
      Calculated = True
    end
    object Query1Overhead: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Overhead'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object Query1MatCost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MatCost'
      DisplayFormat = '#0.0000'
      Calculated = True
    end
    object Query1LabCost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LabCost'
      DisplayFormat = '#0.0000'
      Calculated = True
    end
    object Query1OhCost: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OhCost'
      DisplayFormat = '#0.0000'
      Calculated = True
    end
    object Query1blank: TStringField
      FieldKind = fkCalculated
      FieldName = 'blank'
      Calculated = True
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 112
  end
end

object NoApplication: TNoApplication
  Left = 616
  Top = 228
  Width = 667
  Height = 560
  Caption = 'No Application'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 16
      Width = 84
      Height = 16
      Caption = 'Demand Date'
    end
    object Label2: TLabel
      Left = 204
      Top = 19
      Width = 9
      Height = 16
      Caption = '~'
    end
    object DTP1: TDateTimePicker
      Left = 104
      Top = 12
      Width = 97
      Height = 24
      Date = 45365.538011678240000000
      Format = 'yyyy/MM/dd'
      Time = 45365.538011678240000000
      TabOrder = 1
    end
    object DTP2: TDateTimePicker
      Left = 216
      Top = 12
      Width = 97
      Height = 24
      Date = 45365.538011678240000000
      Format = 'yyyy/MM/dd'
      Time = 45365.538011678240000000
      TabOrder = 2
    end
    object Button1: TButton
      Left = 336
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 411
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 651
    Height = 472
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
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RY'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'MaterialID'
        Footers = <>
        Title.Caption = 'Material ID'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 100
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'DeliveryCFMDate'
        Footers = <>
        Title.Caption = 'Confirm Date'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Usage'
        Footers = <>
        Title.Caption = 'Usage|BOM'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'LLUsage'
        Footers = <>
        Title.Caption = 'Usage|Application'
        Width = 80
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 160
    object Query1RY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Query1MaterialID: TStringField
      FieldName = 'MaterialID'
      Size = 10
    end
    object Query1IssuanceUsage: TFloatField
      FieldName = 'IssuanceUsage'
    end
    object Query1Usage: TFloatField
      FieldName = 'Usage'
    end
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      Size = 11
    end
    object Query1LLUsage: TFloatField
      FieldName = 'LLUsage'
    end
    object Query1DeliveryCFMDate: TDateTimeField
      FieldName = 'DeliveryCFMDate'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 128
  end
end

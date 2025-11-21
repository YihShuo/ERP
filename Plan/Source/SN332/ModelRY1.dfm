object ModelRY: TModelRY
  Left = 336
  Top = 221
  Width = 574
  Height = 407
  Caption = 'ModelRY'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 558
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 27
      Height = 20
      Caption = 'RY:'
    end
    object Label2: TLabel
      Left = 176
      Top = 34
      Width = 51
      Height = 20
      Caption = 'BuyNo:'
    end
    object Edit1: TEdit
      Left = 48
      Top = 24
      Width = 113
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 416
      Top = 24
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 232
      Top = 26
      Width = 113
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 558
    Height = 296
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Width = 75
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select DDBH,XieXing,SheHao,BUYNO'
      'from ddzl'
      'where BUYNO like '#39'201607%'#39
      'order by DDBH')
    Left = 424
    Top = 160
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Origin = 'DB.ddzl.DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.ddzl.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.ddzl.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      Origin = 'DB.ddzl.BUYNO'
      FixedChar = True
      Size = 10
    end
  end
end

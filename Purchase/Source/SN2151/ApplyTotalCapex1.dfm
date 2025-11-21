object ApplyTotalCapex: TApplyTotalCapex
  Left = 296
  Top = 234
  Width = 956
  Height = 459
  Caption = 'ApplyTotal Capex'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 948
    Height = 379
    Align = alClient
    DataSource = DS1
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
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'YM'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Items'
        Footers = <>
        Width = 243
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'US_Price'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'US_Total'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Need_Month'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'Need_Season'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 948
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Button1: TButton
      Left = 655
      Top = 12
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 0
      Visible = False
      OnClick = Button1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select Top 1 *'
      'from SGDH_CapexS')
    Left = 424
    Top = 160
    object Query1ID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 10
    end
    object Query1YM: TStringField
      FieldName = 'YM'
      FixedChar = True
      Size = 50
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 2
    end
    object Query1Serno: TIntegerField
      FieldName = 'Serno'
    end
    object Query1Items: TStringField
      FieldName = 'Items'
      FixedChar = True
      Size = 100
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1US_Price: TFloatField
      FieldName = 'US_Price'
    end
    object Query1US_Total: TFloatField
      FieldName = 'US_Total'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      FixedChar = True
      Size = 255
    end
    object Query1Need_Month: TStringField
      FieldName = 'Need_Month'
      FixedChar = True
      Size = 2
    end
    object Query1Need_Season: TStringField
      FieldName = 'Need_Season'
      FixedChar = True
      Size = 2
    end
    object Query1Pay_Month: TStringField
      FieldName = 'Pay_Month'
      FixedChar = True
      Size = 2
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 288
    Top = 264
  end
end

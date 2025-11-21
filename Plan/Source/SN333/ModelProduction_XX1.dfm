object ModelProduction_XX: TModelProduction_XX
  Left = 343
  Top = 158
  Width = 676
  Height = 479
  Caption = 'ModelProduction_XX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 660
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 13
      Width = 59
      Height = 20
      Caption = 'XieXing:'
    end
    object Label2: TLabel
      Left = 152
      Top = 15
      Width = 63
      Height = 20
      Caption = 'SheHao:'
    end
    object Label3: TLabel
      Left = 353
      Top = 13
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 11
      Width = 73
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'CON'
    end
    object Button1: TButton
      Left = 552
      Top = 3
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 218
      Top = 9
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 407
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 660
    Height = 391
    Align = alClient
    DataSource = DS1
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 139
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 302
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
      'select xxzl.XieXing,xxzl.SheHao,xxzl.ARTICLE, xxzl.XieMing'
      'from xxzl '
      'where article='#39'551596C'#39)
    Left = 424
    Top = 160
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.xxzl.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.xxzl.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.xxzl.ARTICLE'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.xxzl.XieMing'
      FixedChar = True
      Size = 50
    end
  end
end

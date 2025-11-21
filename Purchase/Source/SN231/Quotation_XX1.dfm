object Quotation_XX: TQuotation_XX
  Left = 425
  Top = 212
  Width = 654
  Height = 480
  Caption = 'Quotation_XX'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 638
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
      Width = 48
      Height = 16
      Caption = 'XieXing:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 152
      Top = 15
      Width = 53
      Height = 16
      Caption = 'SheHao:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 353
      Top = 13
      Width = 40
      Height = 16
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 65
      Top = 11
      Width = 80
      Height = 25
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'CON'
    end
    object Button1: TButton
      Left = 538
      Top = 3
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 207
      Top = 9
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 395
      Top = 8
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 638
    Height = 393
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'XieXing'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARTICLE'
        Width = 172
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 222
        Visible = True
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

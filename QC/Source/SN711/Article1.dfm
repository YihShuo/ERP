object Article: TArticle
  Left = 355
  Top = 160
  Width = 751
  Height = 563
  Caption = 'Select Article'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
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
      Width = 59
      Height = 20
      Caption = 'XieXing:'
    end
    object Label2: TLabel
      Left = 152
      Top = 32
      Width = 63
      Height = 20
      Caption = 'SheHao:'
    end
    object Label3: TLabel
      Left = 384
      Top = 32
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 24
      Width = 73
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
      Left = 608
      Top = 24
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 232
      Top = 24
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 440
      Top = 24
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 735
    Height = 452
    Align = alClient
    DataSource = DS1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'VNI-Times'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'XieXing'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARTICLE'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieMing'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kfjc'
        Title.Caption = 'Brand'
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
      
        'select xxzl.XieXing,xxzl.SheHao,xxzl.ARTICLE, xxzl.XieMing,kfzl.' +
        'kfjc'
      'from xxzl left join kfzl'
      'on xxzl.KHDH=kfzl.kfdh'
      'order by xxzl.xiexing')
    Left = 424
    Top = 160
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.xxzl.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.xxzl.XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.xxzl.ARTICLE'
      FixedChar = True
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.xxzl.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1kfjc: TStringField
      FieldName = 'kfjc'
      Origin = 'DB.kfzl.kfjc'
      FixedChar = True
    end
  end
end

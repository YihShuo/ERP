object SSAIC: TSSAIC
  Left = 484
  Top = 258
  Width = 554
  Height = 509
  Caption = 'Sample Shoes Article Issue Check'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 49
    Align = alTop
    TabOrder = 0
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 538
    Height = 422
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ARTICLE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'XieXing'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SheHao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xxiexing'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'xshehao'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 112
    Top = 96
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select simpleshoes.XieXing, simpleshoes.SheHao, simpleshoes.ARTI' +
        'CLE'
      ', xxzl.XieXing as xxiexing, xxzl.SheHao as xshehao '
      'from simpleshoes '
      'left join xxzl on simpleshoes.ARTICLE = xxzl.ARTICLE'
      'where simpleshoes.XieXing <> xxzl.XieXing'
      'or simpleshoes.SheHao <> xxzl.SheHao'
      'and xxzl.KHDH = '#39'036'#39)
    Left = 152
    Top = 96
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.simpleshoes.ARTICLE'
      FixedChar = True
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.simpleshoes.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.simpleshoes.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1xxiexing: TStringField
      FieldName = 'xxiexing'
      Origin = 'DB.xxzl.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1xshehao: TStringField
      FieldName = 'xshehao'
      Origin = 'DB.xxzl.SheHao'
      FixedChar = True
      Size = 5
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 152
    Top = 152
  end
end

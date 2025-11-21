object RelativeShoes: TRelativeShoes
  Left = 674
  Top = 355
  Width = 666
  Height = 386
  Caption = 'RelativeShoes'
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
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 41
    Align = alTop
    TabOrder = 0
    object LB_CLBH: TLabel
      Left = 14
      Top = 13
      Width = 109
      Height = 16
      Caption = 'Material Numbers:'
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 650
    Height = 306
    Align = alClient
    DataSource = DataSource1
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 149
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Width = 64
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 150
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = NewMaterialOfSeason.DataSource1
    SQL.Strings = (
      'SELECT * FROM ('
      
        '  SELECT KFXXZL.JiJie, KFXXZL.DEVCODE, KFXXZL.ARTICLE, KFXXZL.Xi' +
        'eXing,  KFXXZL.SheHao, KFXXZL.XieMing FROM YPZLS'
      '  LEFT JOIN CLZHZL ON CLZHZL.CLDH = YPZLS.CLBH'
      '  LEFT JOIN YPZL ON YPZL.YPDH = YPZLS.YPDH'
      
        '  LEFT JOIN KFXXZL ON KFXXZL.XieXing = YPZL.XieXing AND KFXXZL.S' +
        'heHao = YPZL.SheHao'
      
        '  WHERE KFXXZL.XieXing IS NOT NULL AND YPZLS.CLBH IS NOT NULL AN' +
        'D YPZL.KFJD = '#39'CFM'#39
      
        '  AND CASE WHEN CLZHZL.CLDH1 IS NOT NULL THEN CLZHZL.CLDH1 ELSE ' +
        'YPZLS.CLBH END = :CLBH'
      '  UNION ALL'
      
        '  SELECT XXZL.JiJie, KFXXZL.DEVCODE, KFXXZL.ARTICLE, XXZL.XieXin' +
        'g, XXZL.SheHao, XXZL.XieMing FROM XXZLS'
      
        '  LEFT JOIN XXZL ON XXZL.XieXing = XXZLS.XieXing AND XXZL.SheHao' +
        ' = XXZLS.SheHao'
      
        '  LEFT JOIN KFXXZL ON KFXXZL.XieXing = XXZL.XieXing AND KFXXZL.S' +
        'heHao = XXZL.SheHao'
      '  WHERE ISNULL(XXZLS.CLBH, '#39#39') <> '#39#39' AND XXZLS.CLBH = :CLBH'
      ') AS ShoeData'
      'GROUP BY JiJie, DEVCODE, ARTICLE, XieXing, SheHao, XieMing')
    Left = 16
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
    end
    object Query1DEVCODE: TStringField
      FieldName = 'DEVCODE'
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Size = 5
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 88
  end
end

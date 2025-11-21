object OrderList_BC: TOrderList_BC
  Left = 558
  Top = 243
  Width = 718
  Height = 411
  Caption = 'OrderList_BC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 702
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 12
      Width = 34
      Height = 16
      Caption = 'Order'
    end
    object ED_Order: TEdit
      Left = 56
      Top = 8
      Width = 129
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 200
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 702
    Height = 331
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
        Title.Caption = 'Order'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'Shoe Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = 'Color'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
        Title.Caption = 'Outsole'
        Width = 150
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 96
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT DDZL.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.Ji' +
        'Jie, XXZL.DDMH FROM DDZL'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      'WHERE DDBH = '#39#39)
    Left = 16
    Top = 128
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query1DDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
  end
end

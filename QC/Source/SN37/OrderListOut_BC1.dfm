object OrderListOut_BC: TOrderListOut_BC
  Left = 558
  Top = 243
  Width = 878
  Height = 497
  Caption = 'OrderListOut_BC'
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
    Width = 862
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
    object Label2: TLabel
      Left = 208
      Top = 12
      Width = 27
      Height = 16
      Caption = 'SKU'
    end
    object Label3: TLabel
      Left = 352
      Top = 12
      Width = 38
      Height = 16
      Caption = 'Grade'
    end
    object ED_Order: TEdit
      Left = 56
      Top = 8
      Width = 129
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 464
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object ED_SKU: TEdit
      Left = 240
      Top = 8
      Width = 89
      Height = 24
      TabOrder = 2
    end
    object CB1: TComboBox
      Left = 395
      Top = 8
      Width = 46
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 3
      Text = 'B'
      Items.Strings = (
        'B'
        'C')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 862
    Height = 376
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Selected'
        Footers = <>
        Title.Caption = ' '
        Width = 25
      end
      item
        EditButtons = <>
        FieldName = 'Grade'
        Footers = <>
        ReadOnly = True
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Order'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SKU'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Shoe Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Color'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Season'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Outsole'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        ReadOnly = True
        Width = 50
      end
      item
        DisplayFormat = '#0.0'
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 35
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 417
    Width = 862
    Height = 41
    Align = alBottom
    TabOrder = 2
    object Button2: TButton
      Left = 393
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Confirm'
      Enabled = False
      TabOrder = 0
      OnClick = Button2Click
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 96
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT CAST(0 AS BIT) AS Selected, KCRKS_BC.Grade, KCRKS_BC.DDBH' +
        ', DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, ' +
        'KCRKS_BC.Size, SUM(KCRKS_BC.Qty) AS Qty FROM ('
      '  SELECT Grade, DDBH, Size, Qty FROM BCShoeMonth'
      '  WHERE KCYear = '#39'2022'#39' AND KCMonth = '#39'10'#39
      '  UNION ALL'
      
        '  SELECT KCRKS_BC.Grade, KCRKS_BC.DDBH, KCRKS_BC.Size, KCRKS_BC.' +
        'Qty FROM KCRKS_BC'
      '  LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'
      '  WHERE KCRK_BC.flowflag = '#39'Z'#39
      '  AND KCRKS_BC.Grade = '#39'B'#39
      
        '  AND CONVERT(VARCHAR, KCRK_BC.UserDate, 111) BETWEEN '#39'2022/11/0' +
        '1'#39' AND '#39'2022/11/09'#39
      '  UNION ALL'
      
        '  SELECT KCLLS_BC.Grade, KCLLS_BC.DDBH, KCLLS_BC.Size, KCLLS_BC.' +
        'Qty*-1 AS Qty FROM KCLLS_BC'
      '  LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO'
      '  WHERE KCLL_BC.flowflag = '#39'Z'#39
      '  AND KCLLS_BC.Grade = '#39'B'#39
      
        '  AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN '#39'2022/11/0' +
        '1'#39' AND '#39'2022/11/09'#39
      ') AS KCRKS_BC'
      'LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH'
      
        'LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = ' +
        'DDZL.SheHao'
      'WHERE 1 = 1'
      
        'GROUP BY KCRKS_BC.Grade, KCRKS_BC.DDBH, DDZL.Article, XXZL.XieMi' +
        'ng, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, KCRKS_BC.Size'
      'HAVING SUM(KCRKS_BC.Qty) > 0')
    UpdateObject = UP_SQL1
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
    object Query1Grade: TStringField
      FieldName = 'Grade'
      Size = 1
    end
    object Query1Size: TStringField
      FieldName = 'Size'
      Size = 6
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1Selected: TBooleanField
      FieldName = 'Selected'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Size = 1
    end
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 128
  end
  object UP_SQL1: TUpdateSQL
    Left = 16
    Top = 160
  end
end

object BGradeOrders: TBGradeOrders
  Left = 329
  Top = 241
  Width = 1305
  Height = 675
  Caption = 'BGradeOrders'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 29
      Height = 16
      Caption = 'Date'
    end
    object Label2: TLabel
      Left = 146
      Top = 20
      Width = 9
      Height = 16
      Caption = '~'
    end
    object DTP1: TDateTimePicker
      Left = 50
      Top = 13
      Width = 95
      Height = 24
      Date = 44882.370279305560000000
      Format = 'yyyy/MM/dd'
      Time = 44882.370279305560000000
      TabOrder = 0
    end
    object DTP2: TDateTimePicker
      Left = 158
      Top = 13
      Width = 95
      Height = 24
      Date = 44882.370279305560000000
      Format = 'yyyy/MM/dd'
      Time = 44882.370279305560000000
      TabOrder = 1
    end
    object Button1: TButton
      Left = 280
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 355
      Top = 12
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
    Width = 1289
    Height = 587
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
    FooterFont.Color = clBlack
    FooterFont.Height = -13
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Seq'
        Footers = <>
        Title.Caption = 'No.'
        Width = 30
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
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU#'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = 'Color'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DevCode'
        Footers = <>
        Title.Caption = 'SR#'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Season'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'DDMH'
        Footers = <>
        Title.Caption = 'Outsole'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '01.0'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '01.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '02.0'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '02.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '03.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '03.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '04.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '04.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '05.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '05.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '06.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '06.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '07.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '07.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '08.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '08.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '09.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '09.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '10.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '10.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '11.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '11.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '12.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '12.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '13.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '13.5'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '14.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '14.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '15.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '15.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '16.0'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '16.5'
        Footers = <>
        Width = 35
      end
      item
        EditButtons = <>
        FieldName = '17.0'
        Footers = <>
        Width = 35
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 104
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ROW_NUMBER() OVER(PARTITION BY LLNO ORDER BY LLNO) AS Seq' +
        ','
      
        'LLNO, XieMing, Article, YSSM, DevCode, JiJie, DDMH, SUM(Qty) AS ' +
        'Qty'
      ', MAX(CASE WHEN Size = '#39'03.0'#39' THEN Qty END) AS '#39'03.0'#39
      ', MAX(CASE WHEN Size = '#39'03.5'#39' THEN Qty END) AS '#39'03.5'#39
      ', MAX(CASE WHEN Size = '#39'04.0'#39' THEN Qty END) AS '#39'04.0'#39
      ', MAX(CASE WHEN Size = '#39'04.5'#39' THEN Qty END) AS '#39'04.5'#39
      ', MAX(CASE WHEN Size = '#39'05.0'#39' THEN Qty END) AS '#39'05.0'#39
      ', MAX(CASE WHEN Size = '#39'05.5'#39' THEN Qty END) AS '#39'05.5'#39
      ', MAX(CASE WHEN Size = '#39'06.0'#39' THEN Qty END) AS '#39'06.0'#39
      ', MAX(CASE WHEN Size = '#39'06.5'#39' THEN Qty END) AS '#39'06.5'#39
      ', MAX(CASE WHEN Size = '#39'07.0'#39' THEN Qty END) AS '#39'07.0'#39
      ', MAX(CASE WHEN Size = '#39'07.5'#39' THEN Qty END) AS '#39'07.5'#39
      ', MAX(CASE WHEN Size = '#39'08.0'#39' THEN Qty END) AS '#39'08.0'#39
      ', MAX(CASE WHEN Size = '#39'08.5'#39' THEN Qty END) AS '#39'08.5'#39
      ', MAX(CASE WHEN Size = '#39'09.0'#39' THEN Qty END) AS '#39'09.0'#39
      ', MAX(CASE WHEN Size = '#39'09.5'#39' THEN Qty END) AS '#39'09.5'#39
      ', MAX(CASE WHEN Size = '#39'10.0'#39' THEN Qty END) AS '#39'10.0'#39
      ', MAX(CASE WHEN Size = '#39'10.5'#39' THEN Qty END) AS '#39'10.5'#39
      ', MAX(CASE WHEN Size = '#39'11.0'#39' THEN Qty END) AS '#39'11.0'#39
      ', MAX(CASE WHEN Size = '#39'11.5'#39' THEN Qty END) AS '#39'11.5'#39
      ', MAX(CASE WHEN Size = '#39'12.0'#39' THEN Qty END) AS '#39'12.0'#39
      ', MAX(CASE WHEN Size = '#39'12.5'#39' THEN Qty END) AS '#39'12.5'#39
      ', MAX(CASE WHEN Size = '#39'13.0'#39' THEN Qty END) AS '#39'13.0'#39
      ', MAX(CASE WHEN Size = '#39'13.5'#39' THEN Qty END) AS '#39'13.5'#39
      ', MAX(CASE WHEN Size = '#39'14.0'#39' THEN Qty END) AS '#39'14.0'#39
      ', MAX(CASE WHEN Size = '#39'15.0'#39' THEN Qty END) AS '#39'15.0'#39
      ', MAX(CASE WHEN Size = '#39'16.0'#39' THEN Qty END) AS '#39'16.0'#39' FROM ('
      
        '  SELECT KCLL_BC.LLNO, XXZL.XieMing, DDZL.Article, XXZL.YSSM, KF' +
        'XXZL.DevCode, XXZL.JiJie, XXZL.DDMH, KCLLS_BC.Size, KCLLS_BC.Qty' +
        ' FROM KCLLS_BC'
      '  LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO'
      '  LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH'
      
        '  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao ' +
        '= DDZL.SheHao'
      
        '  LEFT JOIN KFXXZL ON KFXXZL.XieXing = XXZL.XieXing AND KFXXZL.S' +
        'heHao = XXZL.SheHao'
      '  WHERE KCLL_BC.flowflag = '#39'Z'#39' AND KCLL_BC.Purpose = '#39'Sale'#39
      
        '  AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN '#39'2022/10/0' +
        '1'#39' AND '#39'2022/11/17'#39
      ') AS KCLLS_BC'
      'GROUP BY LLNO, XieMing, Article, YSSM, DevCode, JiJie, DDMH'
      'UNION ALL'
      'SELECT NULL AS Seq, '
      
        'LLNO, '#39#39' AS XieMing, LLNO AS Article, '#39#39' AS YSSM, '#39#39' AS DevCode,' +
        ' '#39#39' AS JiJie, '#39#39' AS DDMH, SUM(Qty) AS Qty'
      ', MAX(CASE WHEN Size = '#39'03.0'#39' THEN Qty END) AS '#39'03.0'#39
      ', MAX(CASE WHEN Size = '#39'03.5'#39' THEN Qty END) AS '#39'03.5'#39
      ', MAX(CASE WHEN Size = '#39'04.0'#39' THEN Qty END) AS '#39'04.0'#39
      ', MAX(CASE WHEN Size = '#39'04.5'#39' THEN Qty END) AS '#39'04.5'#39
      ', MAX(CASE WHEN Size = '#39'05.0'#39' THEN Qty END) AS '#39'05.0'#39
      ', MAX(CASE WHEN Size = '#39'05.5'#39' THEN Qty END) AS '#39'05.5'#39
      ', MAX(CASE WHEN Size = '#39'06.0'#39' THEN Qty END) AS '#39'06.0'#39
      ', MAX(CASE WHEN Size = '#39'06.5'#39' THEN Qty END) AS '#39'06.5'#39
      ', MAX(CASE WHEN Size = '#39'07.0'#39' THEN Qty END) AS '#39'07.0'#39
      ', MAX(CASE WHEN Size = '#39'07.5'#39' THEN Qty END) AS '#39'07.5'#39
      ', MAX(CASE WHEN Size = '#39'08.0'#39' THEN Qty END) AS '#39'08.0'#39
      ', MAX(CASE WHEN Size = '#39'08.5'#39' THEN Qty END) AS '#39'08.5'#39
      ', MAX(CASE WHEN Size = '#39'09.0'#39' THEN Qty END) AS '#39'09.0'#39
      ', MAX(CASE WHEN Size = '#39'09.5'#39' THEN Qty END) AS '#39'09.5'#39
      ', MAX(CASE WHEN Size = '#39'10.0'#39' THEN Qty END) AS '#39'10.0'#39
      ', MAX(CASE WHEN Size = '#39'10.5'#39' THEN Qty END) AS '#39'10.5'#39
      ', MAX(CASE WHEN Size = '#39'11.0'#39' THEN Qty END) AS '#39'11.0'#39
      ', MAX(CASE WHEN Size = '#39'11.5'#39' THEN Qty END) AS '#39'11.5'#39
      ', MAX(CASE WHEN Size = '#39'12.0'#39' THEN Qty END) AS '#39'12.0'#39
      ', MAX(CASE WHEN Size = '#39'12.5'#39' THEN Qty END) AS '#39'12.5'#39
      ', MAX(CASE WHEN Size = '#39'13.0'#39' THEN Qty END) AS '#39'13.0'#39
      ', MAX(CASE WHEN Size = '#39'13.5'#39' THEN Qty END) AS '#39'13.5'#39
      ', MAX(CASE WHEN Size = '#39'14.0'#39' THEN Qty END) AS '#39'14.0'#39
      ', MAX(CASE WHEN Size = '#39'15.0'#39' THEN Qty END) AS '#39'15.0'#39
      ', MAX(CASE WHEN Size = '#39'16.0'#39' THEN Qty END) AS '#39'16.0'#39' FROM ('
      '  SELECT KCLL_BC.LLNO, KCLLS_BC.Size, KCLLS_BC.Qty FROM KCLLS_BC'
      '  LEFT JOIN KCLL_BC ON KCLL_BC.LLNO = KCLLS_BC.LLNO'
      '  LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH'
      
        '  LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao ' +
        '= DDZL.SheHao'
      
        '  LEFT JOIN KFXXZL ON KFXXZL.XieXing = XXZL.XieXing AND KFXXZL.S' +
        'heHao = XXZL.SheHao'
      '  WHERE KCLL_BC.flowflag = '#39'Z'#39' AND KCLL_BC.Purpose = '#39'Sale'#39
      
        '  AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN '#39'2022/10/0' +
        '1'#39' AND '#39'2022/11/17'#39
      ') AS KCLLS_BC'
      'GROUP BY LLNO')
    Left = 16
    Top = 136
    object Query1Seq: TFloatField
      FieldName = 'Seq'
    end
    object Query1LLNO: TStringField
      FieldName = 'LLNO'
      FixedChar = True
      Size = 15
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 10
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object Query1DevCode: TStringField
      FieldName = 'DevCode'
      FixedChar = True
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
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1Field010: TFloatField
      FieldName = '01.0'
    end
    object Query1Field015: TFloatField
      FieldName = '01.5'
    end
    object Query1Field020: TFloatField
      FieldName = '02.0'
    end
    object Query1Field025: TFloatField
      FieldName = '02.5'
    end
    object Query1BDEDesigner030: TFloatField
      FieldName = '03.0'
    end
    object Query1BDEDesigner035: TFloatField
      FieldName = '03.5'
    end
    object Query1BDEDesigner040: TFloatField
      FieldName = '04.0'
    end
    object Query1BDEDesigner045: TFloatField
      FieldName = '04.5'
    end
    object Query1BDEDesigner050: TFloatField
      FieldName = '05.0'
    end
    object Query1BDEDesigner055: TFloatField
      FieldName = '05.5'
    end
    object Query1BDEDesigner060: TFloatField
      FieldName = '06.0'
    end
    object Query1BDEDesigner065: TFloatField
      FieldName = '06.5'
    end
    object Query1BDEDesigner070: TFloatField
      FieldName = '07.0'
    end
    object Query1BDEDesigner075: TFloatField
      FieldName = '07.5'
    end
    object Query1BDEDesigner080: TFloatField
      FieldName = '08.0'
    end
    object Query1BDEDesigner085: TFloatField
      FieldName = '08.5'
    end
    object Query1BDEDesigner090: TFloatField
      FieldName = '09.0'
    end
    object Query1BDEDesigner095: TFloatField
      FieldName = '09.5'
    end
    object Query1BDEDesigner100: TFloatField
      FieldName = '10.0'
    end
    object Query1BDEDesigner105: TFloatField
      FieldName = '10.5'
    end
    object Query1BDEDesigner110: TFloatField
      FieldName = '11.0'
    end
    object Query1BDEDesigner115: TFloatField
      FieldName = '11.5'
    end
    object Query1BDEDesigner120: TFloatField
      FieldName = '12.0'
    end
    object Query1BDEDesigner125: TFloatField
      FieldName = '12.5'
    end
    object Query1BDEDesigner130: TFloatField
      FieldName = '13.0'
    end
    object Query1BDEDesigner135: TFloatField
      FieldName = '13.5'
    end
    object Query1BDEDesigner140: TFloatField
      FieldName = '14.0'
    end
    object Query1Field145: TFloatField
      FieldName = '14.5'
    end
    object Query1BDEDesigner150: TFloatField
      FieldName = '15.0'
    end
    object Query1Field155: TFloatField
      FieldName = '15.5'
    end
    object Query1BDEDesigner160: TFloatField
      FieldName = '16.0'
    end
    object Query1Field165: TFloatField
      FieldName = '16.5'
    end
    object Query1Field170: TFloatField
      FieldName = '17.0'
    end
  end
end

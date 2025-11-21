object DetailReport: TDetailReport
  Left = 563
  Top = 242
  Width = 1232
  Height = 533
  Caption = 'DetailReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGH1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1216
    Height = 494
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'sku'
        Footers = <>
        Width = 112
      end
      item
        EditButtons = <>
        FieldName = 'size'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'color'
        Footers = <>
        Width = 132
      end
      item
        EditButtons = <>
        FieldName = 'TotalQty'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TotalS_OK'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'TotalDiff'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'ry'
        Footers = <>
        Width = 104
      end
      item
        EditButtons = <>
        FieldName = 'BUYNO'
        Footers = <>
        Width = 82
      end
      item
        EditButtons = <>
        FieldName = 'Scandate'
        Footers = <>
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'class_Shift'
        Footers = <>
        Width = 156
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '
      
        '    sku, [size], color, TotalQty, TotalS_OK, TotalDiff, ry, BUYN' +
        'O ,Scandate, class_Shift'
      'FROM ('
      'SELECT '
      
        '    a.sku,a.[size],a.color, (a.[qty]) AS TotalQty,(a.[s_ok]) AS ' +
        'TotalS_OK,(a.[qty]) - (a.[s_ok]) AS TotalDiff, b.ry, c.BUYNO, a.' +
        'scandate, a.class_shift'
      'FROM TB_DD.[dbo].[rubber01p] a '
      
        'INNER JOIN TB_DD.[dbo].[rubber01] b ON a.sku = b.ARTICLE AND a.i' +
        'd_code = b.id '
      
        'INNER JOIN TB_ERP.dbo.DDZL c  ON c.DDBH = b.ry AND c.ARTICLE = b' +
        '.ARTICLE'
      
        'INNER JOIN TB_DD.[dbo].[rubber01ps] d   ON a.id_code = d.id_code' +
        ' and a.id=d.id'
      'WHERE  '
      '    b.flag = '#39'P'#39' '
      
        '    AND CAST(b.[SCRQ] AS date) BETWEEN '#39'2025-08-01'#39' AND '#39'2025-09' +
        '-11'#39
      '    AND b.ARTICLE = '#39'1162030-BWHT'#39
      '    AND a.[Color] = '#39'139-18-00'#39
      '    AND c.BUYNO = '#39'2505F25'#39
      '    --AND b.ry='#39'DH2508-159'#39
      'GROUP BY '
      
        '    a.[size], a.sku, a.color, b.ry, c.BUYNO ,a.Scandate, a.class' +
        '_Shift, a.qty, a.s_ok'
      '    HAVING SUM(a.[s_ok]) > 0 AND SUM(a.[qty]) > 0'
      ') H'
      'ORDER BY ry')
    Left = 192
    Top = 88
    object Query1sku: TStringField
      FieldName = 'sku'
      FixedChar = True
      Size = 50
    end
    object Query1size: TStringField
      FieldName = 'size'
      FixedChar = True
      Size = 10
    end
    object Query1color: TStringField
      FieldName = 'color'
      FixedChar = True
      Size = 50
    end
    object Query1TotalQty: TIntegerField
      FieldName = 'TotalQty'
    end
    object Query1TotalS_OK: TIntegerField
      FieldName = 'TotalS_OK'
    end
    object Query1TotalDiff: TIntegerField
      FieldName = 'TotalDiff'
    end
    object Query1ry: TStringField
      FieldName = 'ry'
      FixedChar = True
      Size = 50
    end
    object Query1BUYNO: TStringField
      FieldName = 'BUYNO'
      FixedChar = True
      Size = 10
    end
    object Query1Scandate: TDateTimeField
      FieldName = 'Scandate'
    end
    object Query1class_Shift: TStringField
      FieldName = 'class_Shift'
      FixedChar = True
      Size = 40
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 288
    Top = 208
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 208
    Top = 200
  end
end

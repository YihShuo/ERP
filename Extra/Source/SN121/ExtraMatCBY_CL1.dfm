object ExtraMatCBY_CL: TExtraMatCBY_CL
  Left = 472
  Top = 394
  Width = 997
  Height = 407
  Caption = 'ExtraMatCBY_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 376
      Top = 18
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 536
      Top = 18
      Width = 73
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 9
      Top = 18
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Master Order:'
    end
    object Label8: TLabel
      Left = 264
      Top = 18
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupID:'
    end
    object Button1: TButton
      Left = 868
      Top = 8
      Width = 97
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object ED_MatName: TEdit
      Left = 610
      Top = 14
      Width = 125
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ED_MatNo: TEdit
      Left = 440
      Top = 14
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CB1: TCheckBox
      Left = 754
      Top = 18
      Width = 97
      Height = 17
      Caption = 'All Material'
      TabOrder = 3
    end
    object ED_MOrder: TEdit
      Left = 96
      Top = 14
      Width = 161
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = ED_MOrderKeyPress
    end
    object ED_SupID: TEdit
      Left = 322
      Top = 14
      Width = 55
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
      OnKeyPress = ED_SupIDKeyPress
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 49
    Width = 981
    Height = 319
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
    OnDblClick = DBGrid1DblClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MasterOrder'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footer.FieldName = 'CLBH'
        Footer.ValueType = fvtCount
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 395
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
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
      
        'SELECT CBY_Orders.MasterOrder, CBY_Orders.CLBH, CBY_Orders.YWPM,' +
        ' CBY_Orders.DWBH, CBY_Orders.CQDH, SUM(CLSL) AS CLSL, CBY_Orders' +
        '.okQty FROM ('
      
        '  SELECT CBY_Orders.MasterOrder, CBY_Orders.CLBH, CBY_Orders.YWP' +
        'M, CBY_Orders.DWBH, CBY_Orders.CQDH, CBY_Orders.CLSL, ISNULL(JGZ' +
        'L.okQty, 0) AS okQty, ISNULL(JGZL.oldCLSL, 0) AS oldCLSL FROM ('
      
        #9'SELECT CBY_Orders.MasterOrder, CBY_Orders.MJBH, CBY_Orders.Pare' +
        'nt, CBY_Orders.DType, CBY_Orders.CLBH, CBY_Orders.CLSL, '
      #9'CLZL.YWPM, CLZL.DWBH, CLZL.CQDH, CBY_Orders.CLZMLB FROM (  '
      
        #9'  SELECT CBY_Orders.MasterOrder, CBY_Orders.MJBH, CBY_Orders.Pa' +
        'rent, CBY_Orders.DType, CBY_Orders.CLBH, CBY_Orders.CLZMLB, Sum(' +
        'CBY_Orders.CLSL) AS CLSL FROM ('
      
        #9#9'SELECT CBY_Orders.MasterOrder, CBY_Orders_ZLZLS2.XH, CBY_Order' +
        's_ZLZLS2.CLBH AS MJBH, CBY_Orders_ZLZLS2.CLBH AS Parent, '#39'Assemb' +
        'ly'#39' AS DType, CBY_Orders_ZLZLS2.CLBH, CBY_Orders_ZLZLS2.CLSL, CL' +
        'ZL.CLZMLB FROM CBY_Orders_ZLZLS2'
      
        #9#9'LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_ZL' +
        'ZLS2.workorderId'
      #9#9'LEFT JOIN CLZL ON CLZL.CLDH = CBY_Orders_ZLZLS2.CLBH'
      #9#9'WHERE CBY_Orders.MasterOrder LIKE '#39'CBY20211200001%'#39
      #9#9'AND CLZL.CLDH LIKE '#39'%'#39' AND CBY_Orders_ZLZLS2.CSBH LIKE '#39'%'#39' '
      #9#9'UNION ALL '
      
        #9#9'SELECT CBY_Orders.MasterOrder, CBY_Orders_ZLZLS2.XH, CLZHZL.CL' +
        'DH AS MJBH, CBY_Orders_ZLZLS2.CLBH AS Parent, '#39'Gia cong'#39' AS DTyp' +
        'e, CLZHZL.CLDH1 AS CLBH, ROUND(CBY_Orders_ZLZLS2.CLSL * CLZHZL.S' +
        'YL, 2) AS CLSL, CLZL.CLZMLB FROM CBY_Orders_ZLZLS2'
      
        #9#9'LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_ZL' +
        'ZLS2.workorderId'
      #9#9'LEFT JOIN CLZHZL ON CLZHZL.CLDH = CBY_Orders_ZLZLS2.CLBH '
      #9#9'LEFT JOIN CLZL ON  CLZL.CLDH = CLZHZL.CLDH1 '
      
        #9#9'WHERE CBY_Orders.MasterOrder LIKE '#39'CBY20211200001%'#39' AND CLZHZL' +
        '.SYL > 0  '
      #9#9'AND CLZL.CLDH LIKE '#39'%'#39' AND CBY_Orders_ZLZLS2.CSBH LIKE '#39'%'#39
      #9#9'UNION ALL'
      
        #9#9'SELECT CLZHZL2.MasterOrder, CLZHZL2.XH, CLZHZL.CLDH AS MJBH, C' +
        'LZHZL2.Parent, CLZHZL2.DType, CLZHZL.CLDH1 AS CLBH, Round(CLZHZL' +
        '2.CLSL * CLZHZL.SYL, 2) AS CLSL, CLZL.CLZMLB FROM ('
      
        #9#9'  SELECT CBY_Orders.MasterOrder, CBY_Orders_ZLZLS2.XH, CBY_Ord' +
        'ers_ZLZLS2.CLBH AS Parent, '#39'Gia cong'#39' AS DType, CLZHZL.CLDH1 AS ' +
        'CLBH, ROUND(CBY_Orders_ZLZLS2.CLSL * CLZHZL.SYL, 2) AS CLSL FROM' +
        ' CBY_Orders_ZLZLS2'
      
        #9#9'  LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_' +
        'ZLZLS2.workorderId'
      #9#9'  LEFT JOIN CLZHZL ON CLZHZL.CLDH = CBY_Orders_ZLZLS2.CLBH '
      #9#9'  LEFT JOIN CLZL ON  CLZL.CLDH = CLZHZL.CLDH1 '
      
        #9#9'  WHERE CBY_Orders.MasterOrder LIKE '#39'CBY20211200001%'#39' AND CLZH' +
        'ZL.SYL > 0 AND CLZL.CLZMLB = '#39'Y'#39'  '
      #9#9'  AND CLZHZL.ZSDH LIKE '#39'%'#39
      #9#9') AS CLZHZL2'
      #9#9'INNER JOIN CLZHZL ON CLZHZL.CLDH = CLZHZL2.CLBH '
      #9#9'LEFT JOIN CLZL ON CLZL.CLDH = CLZHZL.CLDH1'
      #9#9'WHERE CLZL.CLDH LIKE '#39'%'#39
      #9'  ) AS CBY_Orders'
      
        #9'  GROUP BY CBY_Orders.MasterOrder, CBY_Orders.MJBH, CBY_Orders.' +
        'Parent, CBY_Orders.DType, CBY_Orders.CLBH, CBY_Orders.CLZMLB'
      #9') AS CBY_Orders'
      #9'Left join CLZL on CLZL.CLDH = CBY_Orders.CLBH '
      #9'where CBY_Orders.MasterOrder LIKE '#39'CBY20211200001%'#39' '
      #9'AND CBY_Orders.CLZMLB = '#39'Y'#39
      '  ) AS CBY_Orders'
      '  LEFT JOIN ('
      
        '    SELECT JGZLSS.ZLBH, JGZLSS.CLBH, SUM(JGZLSS.Qty) AS okQty, S' +
        'UM(JGZLSS.CLSL) AS oldCLSL FROM JGZLSS'
      '    LEFT JOIN CLZL ON CLZL.CLDH = JGZLSS.CLBH'
      '    WHERE JGZLSS.ZLBH LIKE '#39'CBY20211200001%'#39' '
      '    AND JGZLSS.CLBH LIKE '#39'%'#39' '
      '    AND CLZL.YWPM LIKE '#39'%%'#39
      '    GROUP BY JGZLSS.ZLBH, JGZLSS.CLBH'
      
        '  ) AS JGZL ON JGZL.CLBH = CBY_Orders.CLBH AND JGZL.ZLBH = CBY_O' +
        'rders.MasterOrder'
      ') AS CBY_Orders'
      
        'GROUP BY CBY_Orders.MasterOrder, CBY_Orders.CLBH, CBY_Orders.YWP' +
        'M, CBY_Orders.DWBH, CBY_Orders.CQDH, CBY_Orders.okQty')
    Left = 16
    Top = 128
    object Query1MasterOrder: TStringField
      FieldName = 'MasterOrder'
      FixedChar = True
      Size = 14
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
  end
end

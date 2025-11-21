object ExtraMatCBY_Ord: TExtraMatCBY_Ord
  Left = 460
  Top = 268
  Width = 947
  Height = 503
  Caption = 'ExtraMatCBY_Ord'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    Width = 931
    Height = 89
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 19
      Width = 79
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Master Order'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 15
      Top = 57
      Width = 75
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
    object Label7: TLabel
      Left = 194
      Top = 57
      Width = 93
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
    object Button1: TButton
      Left = 848
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object ED_MOrder: TEdit
      Left = 92
      Top = 16
      Width = 113
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = ED_MOrderKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 92
      Top = 54
      Width = 114
      Height = 24
      Color = 14286847
      DataField = 'CLBH'
      DataSource = ExtraMaterial.DS4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBMemo1: TDBMemo
      Left = 290
      Top = 45
      Width = 469
      Height = 41
      Color = 14286847
      DataField = 'YWPM'
      DataSource = ExtraMaterial.DS4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object CB1: TCheckBox
      Left = 767
      Top = 59
      Width = 82
      Height = 17
      Caption = 'NOT OK'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 848
      Top = 48
      Width = 73
      Height = 33
      Caption = 'Copy'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 89
    Width = 931
    Height = 375
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
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MasterOrder'
        Footers = <>
        Title.Caption = 'Master Order'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 210
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footer.FieldName = 'CLSL'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'okQty'
        Footers = <>
        Width = 39
      end
      item
        EditButtons = <>
        FieldName = 'oldCLSL'
        Footers = <>
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 136
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = ExtraMaterial.DS4
    RequestLive = True
    SQL.Strings = (
      
        'SELECT ZLZLS2.MasterOrder, ZLZLS2.CLSL, ZLZLS2.Article, ZLZLS2.X' +
        'ieMing,'
      
        'ISNULL(JGZL.okQty, 0) AS okQty, ISNULL(JGZL.oldCLSL, 0) AS oldCL' +
        'SL FROM ('
      
        '  SELECT CBY_Orders.MasterOrder, CBY_Orders.style AS Article, CB' +
        'Y_Orders.name AS XieMing, SUM(CBY_Orders_ZLZLS2.CLSL) AS CLSL FR' +
        'OM CBY_Orders_ZLZLS2'
      
        '  LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_ZL' +
        'ZLS2.workorderId'
      
        '  WHERE CBY_Orders.MasterOrder LIKE '#39'CBY20211200001%'#39' AND CBY_Or' +
        'ders_ZLZLS2.CLBH = :CLBH'
      
        '  GROUP BY CBY_Orders.MasterOrder, CBY_Orders.style, CBY_Orders.' +
        'name'
      ') AS ZLZLS2'
      'LEFT JOIN ('
      
        '  SELECT JGZLSS.CLBH, JGZLSS.ZLBH, ISNULL(SUM(JGZLSS.Qty), 0) AS' +
        ' okQty, ISNULL(MAX(JGZLSS.CLSL), 0) AS oldCLSL FROM JGZLSS'
      
        '  WHERE JGZLSS.ZLBH LIKE '#39'CBY20211200001%'#39' AND JGZLSS.CLBH = :CL' +
        'BH'
      '  GROUP BY JGZLSS.CLBH, JGZLSS.ZLBH'
      ') AS JGZL ON JGZL.ZLBH = ZLZLS2.MasterOrder'
      'WHERE ISNULL(ZLZLS2.CLSL, 0) > ISNULL(JGZL.okQty, 0)'
      'ORDER BY ZLZLS2.MasterOrder')
    UpdateObject = UpdateSQL1
    Left = 16
    Top = 168
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
    object Query1MasterOrder: TStringField
      FieldName = 'MasterOrder'
      FixedChar = True
      Size = 14
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
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1oldCLSL: TCurrencyField
      FieldName = 'oldCLSL'
      DisplayFormat = '##,#0.00'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 16
    Top = 200
  end
end

object ExtraMatKT_Ord: TExtraMatKT_Ord
  Left = 434
  Top = 444
  Width = 947
  Height = 503
  Caption = 'ExtraMatKT_Ord'
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
      Left = 0
      Top = 19
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YPDH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 184
      Top = 18
      Width = 67
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SR#:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 4
      Top = 56
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
      Top = 55
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
    object Label3: TLabel
      Left = 380
      Top = 17
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sea:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 498
      Top = 19
      Width = 55
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Stage:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 624
      Top = 19
      Width = 65
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TestNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 752
      Top = 20
      Width = 45
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pairs:'
    end
    object Button1: TButton
      Left = 852
      Top = 8
      Width = 73
      Height = 33
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object YPDHEdit: TEdit
      Left = 69
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
      OnKeyPress = YPDHEditKeyPress
    end
    object DevCodeEdit: TEdit
      Left = 253
      Top = 14
      Width = 127
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyPress = DevCodeEditKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 81
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
      TabOrder = 4
    end
    object DBMemo1: TDBMemo
      Left = 287
      Top = 43
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
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 767
      Top = 59
      Width = 82
      Height = 17
      Caption = 'NO OK'
      TabOrder = 2
    end
    object Button2: TButton
      Left = 852
      Top = 48
      Width = 73
      Height = 33
      Caption = 'Copy'
      TabOrder = 6
      OnClick = Button2Click
    end
    object JiJieEdit: TEdit
      Left = 437
      Top = 16
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnKeyPress = JiJieEditKeyPress
    end
    object KFJDEdit: TEdit
      Left = 554
      Top = 16
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnKeyPress = KFJDEditKeyPress
    end
    object TestNoEdit: TEdit
      Left = 690
      Top = 16
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnKeyPress = JiJieEditKeyPress
    end
    object PairsEdit: TEdit
      Left = 799
      Top = 17
      Width = 40
      Height = 24
      TabOrder = 10
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
    PopupMenu = PopupMenu1
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
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'YPDH'
        Width = 103
      end
      item
        EditButtons = <>
        FieldName = 'Quantity'
        Footers = <>
        Title.Caption = 'Pairs'
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = 'SR#'
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Shehao'
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
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Sea'
        Width = 37
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Title.Caption = 'Stage'
        Width = 43
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    DataSource = ExtraMaterial.DS4
    RequestLive = True
    SQL.Strings = (
      
        'Select YPZL.ZLBH,YPZL.Quantity,YPZL.XieXing,YPZL.Shehao,YPZL.Xie' +
        'Ming,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,YPZL.DEVCODE,ceilin' +
        'g(sum (YPZL.CLSL)*100)/100 as CLSL,isnull(JGZL.okQty,0) as okQty' +
        ',isnull(JGZL.oldCLSL,0) as oldCLSL,YPZL.JiJie,YPZL.KFJD from ('
      
        'select YPZLS.YPDH as ZLBH,YPZL.XieXing,YPZL.Shehao,YPZLS.MJBH,YP' +
        'ZLS.Parent,YPZLS.DType,YPZLS.CLBH,YPZLS.CLSL, '
      
        'CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,KFXXZL.Article,KFXXZL.XieMing,KFXX' +
        'ZL.DEVCODE,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as ' +
        'GSBH,YPZLS.CLZMLB,KFXXZL.JiJie,YPZL.KFJD  from ( '
      
        'Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.' +
        'CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( '
      
        'SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Par' +
        'ent ,'#39'Assembly'#39' as DType,ypzls.CLBH,ypzls.CLSL*YPZL.Quantity as ' +
        'CLSL,clzl.CLZMLB '
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh '
      'WHERE ypzls.YPDH like '#39'LAIV200600210%'#39
      '    and CLZL.CLDH='#39'A010011250'#39' '
      'union all '
      
        'SELECT ypzls.YPDH ,ypzls.xh ,clzhzl.cldh as MJBH,ypzls.clbh as P' +
        'arent,'#39'Gia cong'#39' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(Y' +
        'PZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZ' +
        'MLB '
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'WHERE ypzls.YPDH like '#39'LAIV200600210%'#39'  and CLZHZL.SYL>0  '
      '    and CLZL.CLDH='#39'A010011250'#39' '
      'union all'
      
        'Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Paren' +
        't,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,clzhzl2.CLSL*clzhzl.syl as' +
        ' CLSL,clzl.clzmlb '
      'from ('
      
        'SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,'#39'Gia cong'#39' as' +
        ' DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quant' +
        'ity*100)/100)*CLZHZL.SYL,2) as CLSL '
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        'WHERE ypzls.YPDH like '#39'LAIV200600210%'#39'  and CLZHZL.SYL>0   and c' +
        'lzl.clzmlb='#39'Y'#39'  '
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'where  CLZL.CLDH='#39'A010011250'#39' '
      
        ')  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DT' +
        'ype, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS'
      'left join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=' +
        'KFXXZL.SheHao '
      'Left join CLZL on CLZL.CLDH=YPZLS.CLBH '
      'where  YPZL.YPDH like '#39'LAIV200600210%'#39'  '
      ') YPZL  '
      'left join ('
      
        '  select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,sum(JG' +
        'ZLSS.CLSL) as oldCLSL from JGZLSS'
      '  left join CLZL on CLZL.CLDH=JGZLSS.CLBH'
      '  left join YPZL on YPZL.YPDH=JGZLSS.ZLBH'
      
        '  left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHa' +
        'o=KFXXZL.Shehao'
      '  where JGZLSS.CLBH='#39'A010011250'#39' '
      '  and JGZLSS.ZLBH like '#39'LAIV200600210%'#39
      '  and CLZL.YWPM like '#39'%%'#39
      
        '  group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=YPZL.CLB' +
        'H and JGZL.ZLBH=YPZL.ZLBH'
      
        'Group by YPZL.ZLBH,YPZL.Quantity,YPZL.XieXing,YPZL.Shehao,YPZL.X' +
        'ieMing,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,YPZL.DEVCODE,JGZL' +
        '.okQty,JGZL.oldCLSL,YPZL.JiJie,YPZL.KFJD')
    UpdateObject = UpdateSQL1
    Left = 424
    Top = 160
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Quantity: TFloatField
      FieldName = 'Quantity'
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
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
    object Query1DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '#0.00'
    end
    object Query1okQty: TCurrencyField
      FieldName = 'okQty'
      DisplayFormat = '#0.00'
    end
    object Query1oldCLSL: TCurrencyField
      FieldName = 'oldCLSL'
      DisplayFormat = '#0.00'
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1Shehao: TStringField
      FieldName = 'Shehao'
      FixedChar = True
      Size = 5
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object Query1KFJD: TStringField
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 424
    Top = 192
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 160
    object BOMDetail1: TMenuItem
      Caption = 'BOM Detail'
      OnClick = BOMDetail1Click
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 240
    Top = 152
  end
end

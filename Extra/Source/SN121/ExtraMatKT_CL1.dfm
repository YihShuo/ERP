object ExtraMatKT_CL: TExtraMatKT_CL
  Left = 214
  Top = 146
  Width = 1132
  Height = 407
  Caption = 'ExtraMatKT_CL'
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
    Width = 1116
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 272
      Top = 44
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
      Left = 456
      Top = 41
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
    object Label3: TLabel
      Left = 152
      Top = 45
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Sea:'
    end
    object Label5: TLabel
      Left = 152
      Top = 13
      Width = 84
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YPDH.:'
    end
    object Label6: TLabel
      Left = 0
      Top = 45
      Width = 87
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Stage:'
    end
    object Label7: TLabel
      Left = 368
      Top = 14
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SR#:'
    end
    object Label4: TLabel
      Left = 1
      Top = 14
      Width = 86
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TestNo:'
    end
    object Label8: TLabel
      Left = 664
      Top = 14
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupID:'
    end
    object Button1: TButton
      Left = 660
      Top = 32
      Width = 97
      Height = 33
      Caption = 'Query'
      TabOrder = 2
      OnClick = Button1Click
    end
    object YWPMEdit: TEdit
      Left = 530
      Top = 37
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
    object MatNOEdit: TEdit
      Left = 336
      Top = 40
      Width = 121
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
    object JiJieEdit: TEdit
      Left = 205
      Top = 40
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
      TabOrder = 3
      OnKeyPress = JiJieEditKeyPress
    end
    object YPDHEdit: TEdit
      Left = 237
      Top = 9
      Width = 124
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 5
    end
    object CB1: TCheckBox
      Left = 762
      Top = 40
      Width = 97
      Height = 17
      Caption = 'All Material'
      TabOrder = 6
    end
    object DevCodeEdit: TEdit
      Left = 426
      Top = 10
      Width = 223
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 7
      OnKeyPress = DevCodeEditKeyPress
    end
    object KFJDEdit: TEdit
      Left = 88
      Top = 43
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
      TabOrder = 4
      OnKeyPress = KFJDEditKeyPress
    end
    object TestNoEdit: TEdit
      Left = 88
      Top = 10
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
      OnKeyPress = JiJieEditKeyPress
    end
    object SupIDEdit: TEdit
      Left = 722
      Top = 10
      Width = 79
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 9
      OnKeyPress = DevCodeEditKeyPress
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1116
    Height = 295
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
        FieldName = 'YPDH'
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
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'BOM_Supplier'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'ZSDH_JG'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'JG_Supplier'
        Footers = <>
        Width = 82
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
      ''
      
        'select YPZL.YPDH,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,CQDH,Sum(CLSL) as' +
        ' CLSL,okQty,CSBH'
      
        ',ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as' +
        ' JG_Supplie'
      'from ('
      
        'select YPZL.YPDH,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,YPZL.DE' +
        'VCODE,YPZL.CLSL,isnull(JGZL.okQty,0) as okQty,isnull(JGZL.oldCLS' +
        'L,0) as oldCLSL,CSBH from ('
      
        'select YPZLS.YPDH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH' +
        ',YPZLS.CLSL , '
      
        'CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,KFXXZL.Article,KFXXZL.XieMing,KFXX' +
        'ZL.DEVCODE,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as ' +
        'GSBH,YPZLS.CLZMLB,CSBH  from ( '
      
        'Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.' +
        'CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL,CSBH  from ( '
      
        'SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Par' +
        'ent ,'#39'Assembly'#39' as DType,ypzls.CLBH,CEILING(ypzls.CLSL*YPZL.Quan' +
        'tity*100)/100 as CLSL,clzl.CLZMLB,YPZLS.CSBH '
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh '
      'LEFT JOIN zszl ON zszl.zsdh = ypzls.CSBH '
      'WHERE YPZL.GSDH='#39'CDC'#39' and ypzls.YPDH like '#39'%'#39
      '    and CLZL.CLDH like '#39'%'#39' '
      'union all '
      
        'SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as ' +
        'Parent,'#39'Gia cong'#39' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(' +
        'YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CL' +
        'ZMLB,'
      'YPZLS.CSBH '
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl ON zszl.zsdh = ypzls.CSBH '
      
        'WHERE YPZL.GSDH='#39'CDC'#39' and  ypzls.YPDH like '#39'%'#39'  and CLZHZL.SYL>0' +
        '  '
      '    and CLZL.CLDH like '#39'%'#39' '
      'union all'
      
        'Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Paren' +
        't,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.' +
        'syl,2) as CLSL,clzl.clzmlb,clzhzl2.CSBH '
      'from ('
      
        'SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,'#39'Gia cong'#39' as' +
        ' DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quant' +
        'ity*100)/100)*CLZHZL.SYL,2) as CLSL,YPZLS.CSBH'
      'FROM ypzls ypzls '
      'LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  '
      'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'LEFT JOIN zszl ON zszl.zsdh = ypzls.CSBH '
      
        'WHERE YPZL.GSDH='#39'CDC'#39' and   ypzls.YPDH like '#39'%'#39'  and CLZHZL.SYL>' +
        '0   and clzl.clzmlb='#39'Y'#39'  '
      ') clzhzl2'
      'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      'left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      'where  CLZL.CLDH like '#39'%'#39' '
      
        ')  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DT' +
        'ype, YPZLS.CLBH,YPZLS.CLZMLB,CSBH   ) YPZLS'
      'left join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=' +
        'KFXXZL.SheHao '
      'Left join CLZL on CLZL.CLDH=YPZLS.CLBH '
      'where YPZL.GSDH='#39'CDC'#39' and   YPZL.YPDH like '#39'%'#39' '
      ' and YPZLS.CLZMLB='#39'Y'#39' '
      
        ' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='#39'23S14' +
        '26'#39') '
      ') YPZL  '
      'left join ('
      
        '  select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,sum(JG' +
        'ZLSS.CLSL) as oldCLSL from JGZLSS'
      '  left join CLZL on CLZL.CLDH=JGZLSS.CLBH'
      '  left join YPZL on YPZL.YPDH=JGZLSS.ZLBH'
      
        '  left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHa' +
        'o=KFXXZL.Shehao'
      '  where YPZL.GSDH='#39'CDC'#39' and   JGZLSS.CLBH like '#39'%'#39' '
      '  and JGZLSS.ZLBH like '#39'%'#39' '
      '  and CLZL.YWPM like '#39'%%'#39
      
        ' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='#39'23S14' +
        '26'#39') '
      
        'group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=YPZL.CLBH ' +
        'and JGZL.ZLBH=YPZL.YPDH ) YPZL'
      ''
      'LEFT JOIN zszl ON zszl.zsdh = YPZL.CSBH '
      
        'Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as' +
        ' ZSYWJC '
      
        #9#9'        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSD' +
        'H_JG and ZSZL_DEV.GSBH='#39'CDC'#39') ZSZL_DEV '
      #9#9'        on ZSZL.ZSDH=ZSZL_DEV.ZSDH '
      ''
      'where ZSDH_JG = '#39'VC96'#39
      
        'group by  YPZL.YPDH,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,okqt' +
        'y,CSBH'
      ',ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC'
      ''
      '')
    Left = 424
    Top = 160
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      FixedChar = True
      Size = 15
    end
    object Query1CLBH: TStringField
      DisplayWidth = 12
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      DisplayWidth = 59
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      DisplayWidth = 7
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
    object Query1CQDH: TStringField
      DisplayWidth = 7
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1CLSL: TFloatField
      DisplayWidth = 7
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query1okQty: TCurrencyField
      DisplayWidth = 8
      FieldName = 'okQty'
      DisplayFormat = '##,#0.00'
    end
    object Query1CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query1BOM_Supplier: TStringField
      FieldName = 'BOM_Supplier'
      FixedChar = True
    end
    object Query1ZSDH_JG: TStringField
      FieldName = 'ZSDH_JG'
      FixedChar = True
      Size = 6
    end
    object Query1JG_Supplier: TStringField
      FieldName = 'JG_Supplier'
      FixedChar = True
    end
  end
end

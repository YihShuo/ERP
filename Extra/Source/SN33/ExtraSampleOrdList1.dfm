object ExtraSampleOrdList: TExtraSampleOrdList
  Left = 134
  Top = 114
  Width = 1156
  Height = 481
  Caption = 'ExtraSampleOrdList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1140
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
      Left = 297
      Top = 44
      Width = 48
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
      Left = 448
      Top = 44
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
      Left = 158
      Top = 44
      Width = 52
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Season:'
    end
    object Label5: TLabel
      Left = 161
      Top = 13
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YPDH:'
    end
    object Label6: TLabel
      Left = 11
      Top = 45
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Stage:'
    end
    object Label7: TLabel
      Left = 382
      Top = 14
      Width = 32
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SR#:'
    end
    object Label4: TLabel
      Left = 13
      Top = 14
      Width = 53
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TestNo:'
    end
    object Label8: TLabel
      Left = 575
      Top = 14
      Width = 56
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SupID:'
    end
    object Label9: TLabel
      Left = 662
      Top = 43
      Width = 80
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Child MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object YWPMEdit: TEdit
      Left = 525
      Top = 40
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
      Left = 352
      Top = 40
      Width = 86
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
      Left = 217
      Top = 40
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object YPDHEdit: TEdit
      Left = 216
      Top = 9
      Width = 124
      Height = 24
      CharCase = ecUpperCase
      Color = clYellow
      TabOrder = 4
    end
    object CB1: TCheckBox
      Left = 857
      Top = 32
      Width = 97
      Height = 17
      Caption = 'All Material'
      TabOrder = 5
    end
    object DevCodeEdit: TEdit
      Left = 414
      Top = 10
      Width = 143
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object KFJDEdit: TEdit
      Left = 70
      Top = 43
      Width = 65
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object TestNoEdit: TEdit
      Left = 70
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
      TabOrder = 7
    end
    object SupIDEdit: TEdit
      Left = 633
      Top = 10
      Width = 128
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 8
    end
    object ExtraCK: TCheckBox
      Left = 857
      Top = 4
      Width = 122
      Height = 25
      Caption = 'show "Gia cong"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object CB2: TCheckBox
      Left = 857
      Top = 55
      Width = 160
      Height = 17
      Caption = 'Only Show Child MatNo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Button1: TButton
      Left = 1020
      Top = 5
      Width = 80
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 1020
      Top = 40
      Width = 80
      Height = 33
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = Button2Click
    end
    object ChildMatEdit: TEdit
      Left = 749
      Top = 41
      Width = 100
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 1140
    Height = 369
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
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    Columns = <
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'DType'
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
        Width = 119
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Width = 62
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'CLSl'
        Footers = <>
        Title.Caption = 'CLSL'
      end
      item
        DisplayFormat = '##,#0.00'
        EditButtons = <>
        FieldName = 'okqty'
        Footers = <>
        Title.Caption = 'okQty'
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
      'select EXTRA.*'
      'from ('
      
        'select YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DTyp' +
        'e,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,sum(ypzl.clsl) as CLSl' +
        ',okqty,CSBH'
      
        ',ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as' +
        ' JG_Supplier from ('
      
        'select ypzl.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DTyp' +
        'e,ypzl.CLBH,ypzl.ywpm,ypzl.dwbh,ypzl.cqdh,ypzl.CLSL,ypzl.CLZMLB,' +
        'ypzl.CSBH,isnull(JGZL.okQty,0) as okQty from ('
      
        'SELECT ypzls.YPDH,KFXXZL.Article,KFXXZL.XieMing,ypzls.clbh as Pa' +
        'rent,'#39'Assembly'#39' as DType,ypzls.CLBH,clzl.ywpm,clzl.dwbh,clzl.cqd' +
        'h,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB,' +
        'YPZLS.CSBH'
      'from ypzls'
      'left join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=' +
        'KFXXZL.SheHao'
      'left join CLZL on CLZL.CLDH=YPZLS.CLBH'
      
        'where YPZL.GSDH='#39'CDC'#39' and   YPZL.YPDH like '#39'BYIK190800003%'#39' and ' +
        '  ypzls.CLBH like '#39'%'#39' '
      ' and KFXXZL.JiJie like '#39'%'#39' '
      ' and YPZL.KFJD like '#39'%'#39
      ' and KFXXZL.DEVCODE like '#39'%'#39' '
      ' and CLZL.CLZMLB='#39'Y'#39
      ' and YPZLS.CSBH like '#39'%'#39
      ')YPZL'
      'left join ('
      
        '  select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,sum(JG' +
        'ZLSS.CLSL) as oldCLSL from JGZLSS'
      '  left join CLZL on CLZL.CLDH=JGZLSS.CLBH'
      '  left join YPZL on YPZL.YPDH=JGZLSS.ZLBH'
      
        '  left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHa' +
        'o=KFXXZL.Shehao'
      '  where YPZL.GSDH='#39'CDC'#39' and  JGZLSS.CLBH like '#39'%'#39' '
      '  and JGZLSS.ZLBH like '#39'BYIK190800003%'#39' '
      '  and CLZL.YWPM like '#39'%'#39
      ' and KFXXZL.JiJie like '#39'%'#39' '
      ' and YPZL.KFJD like '#39'%'#39
      ' and KFXXZL.DEVCODE like '#39'%'#39
      
        'group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=YPZL.CLBH ' +
        'and JGZL.ZLBH=YPZL.YPDH )ypzl'
      'left join zszl ON zszl.zsdh = YPZL.CSBH'
      
        'left join( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as ' +
        'ZSYWJC'
      
        'FROM ZSZL left join ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_JG and Z' +
        'SZL_DEV.GSBH='#39'CDC'#39') ZSZL_DEV on ZSZL.ZSDH=ZSZL_DEV.ZSDH'
      
        'group by  YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.D' +
        'Type,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,okqty,CSBH,ZSZL.ZSY' +
        'WJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC'
      'union all'
      
        'select YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DTyp' +
        'e,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,Sum(YPZL.CLSL) as CLSL' +
        ',okQty,CSBH'
      
        ',ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as' +
        ' JG_Supplier from ('
      
        'select YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DTyp' +
        'e,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,YPZL.DEVCODE,YPZL.CLSL' +
        ',isnull(JGZL.okQty,0) as okQty,isnull(JGZL.oldCLSL,0) as oldCLSL' +
        ',CSBH from ('
      
        'select YPZLS.YPDH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH' +
        ',YPZLS.CLSL , '
      
        'CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,KFXXZL.Article,KFXXZL.XieMing,KFXX' +
        'ZL.DEVCODE,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as ' +
        'GSBH,YPZLS.CLZMLB,CSBH  from ('
      
        'Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.' +
        'CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL,CSBH  from ('
      
        #9'SELECT ypzls.YPDH ,ypzls.xh,clzhzl.cldh as MJBH,ypzls.clbh as P' +
        'arent,'#39'Gia cong'#39' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(Y' +
        'PZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZ' +
        'MLB,'
      #9'YPZLS.CSBH '
      #9'FROM ypzls ypzls '
      #9'left join YPZL on YPZL.YPDH=YPZLS.YPDH  '
      #9'Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      #9'left join clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        #9'WHERE YPZL.GSDH='#39'CDC'#39' and  ypzls.YPDH like '#39'BYIK190800003%'#39'  an' +
        'd CLZHZL.SYL>0  '
      '    and CLZL.CLDH like '#39'%'#39' '
      '    and YPZLS.CSBH like '#39'%'#39' '
      #9'union all'
      
        #9'Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Pare' +
        'nt,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl' +
        '.syl,2) as CLSL,clzl.clzmlb,clzhzl2.CSBH '
      #9'from ('
      
        #9#9'SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,'#39'Gia cong'#39' ' +
        'as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Qua' +
        'ntity*100)/100)*CLZHZL.SYL,2) as CLSL,YPZLS.CSBH '
      #9#9'FROM ypzls ypzls '
      #9#9'left join YPZL on YPZL.YPDH=YPZLS.YPDH  '
      #9#9'inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh '
      #9#9'left join clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      
        #9#9'WHERE YPZL.GSDH='#39'CDC'#39' and   ypzls.YPDH like '#39'BYIK190800003%'#39'  ' +
        'and CLZHZL.SYL>0   and clzl.clzmlb='#39'Y'#39'  '
      #9#9'and CLZHZL.ZSDH like '#39'%'#39' '
      #9#9') clzhzl2'
      #9'inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh '
      #9'left join clzl clzl ON CLZHZL.cldh1 = clzl.cldh '
      #9'where  CLZL.CLDH like '#39'%'#39' '
      
        #9')  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.D' +
        'Type, YPZLS.CLBH,YPZLS.CLZMLB,CSBH ) YPZLS'
      'left join YPZL on YPZL.YPDH=YPZLS.YPDH'
      
        'Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=' +
        'KFXXZL.SheHao '
      'Left join CLZL on CLZL.CLDH=YPZLS.CLBH'
      'where YPZL.GSDH='#39'CDC'#39' and   YPZL.YPDH like '#39'%'#39
      ' and KFXXZL.JiJie like '#39'%'#39' '
      ' and YPZL.KFJD like '#39'%'#39
      ' and KFXXZL.DEVCODE like '#39'%'#39' '
      ' and YPZLS.CLZMLB='#39'Y'#39
      ') YPZL  '
      'left join ('
      
        '  select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,sum(JG' +
        'ZLSS.CLSL) as oldCLSL from JGZLSS'
      '  left join CLZL on CLZL.CLDH=JGZLSS.CLBH'
      '  left join YPZL on YPZL.YPDH=JGZLSS.ZLBH'
      
        '  left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHa' +
        'o=KFXXZL.Shehao'
      '  where YPZL.GSDH='#39'CDC'#39' and  JGZLSS.CLBH like '#39'%'#39' '
      '  and JGZLSS.ZLBH like '#39'BYIK190800003%'#39' '
      '  and CLZL.YWPM like '#39'%'#39
      ' and KFXXZL.JiJie like '#39'%'#39' '
      ' and YPZL.KFJD like '#39'%'#39
      ' and KFXXZL.DEVCODE like '#39'%'#39
      
        'group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=YPZL.CLBH ' +
        'and JGZL.ZLBH=YPZL.YPDH ) YPZL'
      'left join zszl ON zszl.zsdh = YPZL.CSBH'
      
        'left join ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as' +
        ' ZSYWJC'
      
        'FROM ZSZL left join ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_JG and Z' +
        'SZL_DEV.GSBH='#39'CDC'#39') ZSZL_DEV'
      'on ZSZL.ZSDH=ZSZL_DEV.ZSDH'
      
        'group by  YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.D' +
        'Type,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,okqty,CSBH,ZSZL.ZSY' +
        'WJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC'
      ') EXTRA'
      'where 1=1'
      'order by EXTRA.YPDH,EXTRA.Parent,EXTRA.DType,EXTRA.CLBH'
      '')
    Left = 424
    Top = 160
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
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
    object Query1parent: TStringField
      FieldName = 'parent'
      FixedChar = True
      Size = 15
    end
    object Query1DType: TStringField
      FieldName = 'DType'
      FixedChar = True
      Size = 8
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
    object Query1CLSl: TFloatField
      FieldName = 'CLSl'
    end
    object Query1okqty: TCurrencyField
      FieldName = 'okqty'
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

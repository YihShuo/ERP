object DelMaterial_CL: TDelMaterial_CL
  Left = 290
  Top = 168
  Width = 846
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'DelMaterial_CL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 830
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 49
      Height = 20
      Caption = 'SCBH:'
    end
    object Label2: TLabel
      Left = 208
      Top = 24
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object Label3: TLabel
      Left = 352
      Top = 24
      Width = 67
      Height = 20
      Caption = 'ArtName:'
    end
    object Label4: TLabel
      Left = 600
      Top = 24
      Width = 39
      Height = 20
      Caption = 'Pairs:'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 16
      Width = 113
      Height = 28
      CharCase = ecUpperCase
      DataField = 'SCBH'
      DataSource = DelMaterial.DS1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 256
      Top = 16
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      DataField = 'Article'
      DataSource = DelMaterial.DS1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 424
      Top = 16
      Width = 137
      Height = 28
      CharCase = ecUpperCase
      DataField = 'XieMing'
      DataSource = DelMaterial.DS1
      ReadOnly = True
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 656
      Top = 16
      Width = 73
      Height = 28
      TabOrder = 3
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 830
    Height = 397
    Align = alClient
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CLBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YWPM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 258
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DWBH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USAGE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLSL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DFL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qty'
        Title.Caption = 'okQty'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OKPerson'
        Visible = True
      end
      item
        Color = 11579647
        Expanded = False
        FieldName = 'KCQty'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RemQty'
        Title.Caption = 'Total RemQty'
        Visible = True
      end>
  end
  object Query1: TQuery
    CachedUpdates = True
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      'declare @p decimal(18,4)'
      'set @p=(select Delperson from BasData where GSBH=:GSBH)'
      ''
      'select OrdCL1.ZLBH,OrdCL1.CLBH,sum(OrdCL1.Usage) as Usage,'
      
        '        round((sum(OrdCL1.CLSL)+0.0499),1) as CLSL,OrdCL1.DFL,Or' +
        'dCL1.YWPM,OrdCL1.DWBH,OrdCL1.LYCC,'
      
        '         isnull(KCLLS.Qty,0) as Qty,OrdCL1.Article,OrdCL1.XieMin' +
        'g,OrdCL1.XieXing,OrdCL1.SheHao,KCZLS.KCQty,ZLZLS2.RemQty'
      'from '
      
        '    ( select  ZLBH,CLBH,sum(USAGE) as USAGE,case when CLTX='#39'1'#39' a' +
        'nd LYCC<>'#39'Y'#39' then sum(CLSL)*@p/100  else sum(CLSL) end as CLSL ,' +
        'DFL,YWPM,'
      '          DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX'
      
        '     from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as U' +
        'SAGE,'
      '             sum(ZLZLS2.CLSL)   CLSL'
      ''
      
        '             --edit by billweng 2011/12/15 '#22914#26524#26159#36234#21335'BOM'#35373#23450#30340#26448#26009#21462#36234#21335'BOM'#34920#20013 +
        #30340'FLBH--'
      
        '      '#9#9#9' ,(case when substring(xxbwfl.bwbh,1,1)='#39'V'#39' then isnull' +
        '(XXzlsvn.DFL,'#39'N'#39') else isnull(XXBWFLS.DFL,'#39'N'#39') end) as DFL'
      '             --edit end--'
      ''
      
        '             ,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.Sh' +
        'eHao,XXZL.Article,XXZL.XieMing,isnull(XXZLS.CLTX,1) as CLTX'
      '             from ZLZLS2'
      '             left join CLZL on ZLZLS2.CLBH=CLZL.CLDH'
      '             left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '             left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '             left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZ' +
        'L.SheHao=DDZL.SheHao'
      
        '             left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZ' +
        'L.XieXing=XXBWFL.XieXing'
      '             left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH'
      
        '             left join XXZLS on XXZLS.XieXing=XXZL.XieXing and X' +
        'XZLS.SheHao=XXZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH'
      ''
      
        '             --edit by billweng 2011/12/15 '#22914#26524#26159#36234#21335'BOM'#35373#23450#30340#26448#26009#21462#36234#21335'BOM'#34920#20013 +
        #30340'FLBH--'
      
        '             left join (select XXZLSvn.xiexing,XXZLSvn.shehao,XX' +
        'ZLSvn.bwbh,xxbwfls.dfl from XXZLSvn'
      #9#9'            '#9#9#9#9'left join xxbwfls on xxzlsvn.flbh=xxbwfls.flbh'
      
        #9#9#9#9#9'            '#9') as XXZLSvn on XXZLSvn.XieXing=ddzl.XieXing a' +
        'nd XXZLSvn.SheHao=ddzl.SheHao and XXZLSvn.BWBH=ZLZLS2.BWBH'
      '             --edit end--'
      ''
      '            where ZLZLS2.ZLBH=:SCBH'
      '                     and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39
      '                     and XXBWFL.FLBH<>'#39'16'#39
      '            group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,'
      
        '            --edit by billweng 2011/12/15 '#22914#26524#26159#36234#21335'BOM'#35373#23450#30340#26448#26009#21462#36234#21335'BOM'#34920#20013#30340 +
        'FLBH--'
      '                 xxzlsvn.dfl,xxbwfl.bwbh,'
      '            --edit end--     '
      
        '                 CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL' +
        '.SheHao,XXZL.Article,XXZL.XieMing,XXZLS.CLTX ) as OrdCL'
      
        '      group by ZLBH,CLBH,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieX' +
        'ing,SheHao,CLTX) OrdCL1'
      
        'left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qt' +
        'y,isnull( KCLLS.DFL,'#39'N'#39') as DFL'
      
        '              from  KCLLS where  KCLLS.SCBH=:SCBH and blsb is nu' +
        'll group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL) KCLLS'
      
        '               on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL1.C' +
        'LBH and OrdCL1.DFL=KCLLS.DFL'
      'left join KCZLS on KCZLS.CLBH=OrdCL1.CLBH and KCZLS.CKBH=:CKBH'
      ''
      'left join (select ZLZLS2.CLBH,'
      '             sum(ZLZLS2.CLSL)-IsNull(KCLLS.Qty,0) as RemQty '
      '           from ZLZLS2 '
      
        '           left join (select CLBH,Sum(IsNull(KCLLS.Qty,0)) as Qt' +
        'y  from KCLLS,KCLL where KCLL.LLNO=KCLLS.LLNO and KCLL.SCBH<>'#39'JJ' +
        'JJJJJJJJ'#39' and KCLLS.SCBH=:SCBH and IsNull(BLSB,'#39#39')<>'#39'Y'#39' Group by' +
        ' CLBH) KCLLS on ZLZLS2.CLBH=KCLLS.CLBH'
      '           where  MJBH='#39'ZZZZZZZZZZ'#39' and ZLZLS2.ZLBH=:SCBH'
      
        '           group by ZLZLS2.CLBH,KCLLS.Qty ) ZLZLS2 on ZLZLS2.CLB' +
        'H=OrdCL1.CLBH '
      ''
      
        'group by OrdCL1.ZLBH,OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.D' +
        'WBH,'
      
        '              OrdCL1.LYCC,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.X' +
        'ieXing,OrdCL1.SheHao,KCLLS.Qty,KCZLS.KCQty,ZLZLS2.RemQty'
      ''
      'order by OrdCL1.ZLBH,OrdCL1.DFL,OrdCL1.CLBH'
      ''
      ''
      '')
    UpdateObject = UpdateSQL1
    Left = 296
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'GSBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CKBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SCBH'
        ParamType = ptUnknown
      end>
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
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
    object Query1USAGE: TFloatField
      FieldName = 'USAGE'
      DisplayFormat = '##,#0.0000'
    end
    object Query1DFL: TStringField
      FieldName = 'DFL'
      FixedChar = True
      Size = 1
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0'
    end
    object Query1OKPerson: TFloatField
      FieldKind = fkCalculated
      FieldName = 'OKPerson'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
    object Query1KCQty: TFloatField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
    object Query1RemQty: TFloatField
      FieldName = 'RemQty'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 192
  end
end

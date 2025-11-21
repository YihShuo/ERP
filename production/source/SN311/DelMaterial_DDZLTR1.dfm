object DelMaterial_DDZLTR: TDelMaterial_DDZLTR
  Left = 284
  Top = 221
  Width = 1013
  Height = 490
  Caption = 'DelMaterial_DDZLTR'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 106
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 625
    Top = 65
    Height = 385
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 997
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 12
      Width = 69
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Mon SCBH:'
    end
    object Label2: TLabel
      Left = 184
      Top = 9
      Width = 63
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Article:'
    end
    object Label3: TLabel
      Left = 336
      Top = 7
      Width = 78
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'ArtName:'
    end
    object Label4: TLabel
      Left = 552
      Top = 6
      Width = 51
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pairs:'
    end
    object Label5: TLabel
      Left = 0
      Top = 39
      Width = 70
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
    end
    object Label6: TLabel
      Left = 184
      Top = 39
      Width = 64
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'YWPM:'
    end
    object Label7: TLabel
      Left = 552
      Top = 36
      Width = 50
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DFL:'
    end
    object DBEdit1: TDBEdit
      Left = 71
      Top = 9
      Width = 113
      Height = 24
      CharCase = ecUpperCase
      DataField = 'SCBH'
      DataSource = DelMaterial.DS1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 246
      Top = 6
      Width = 89
      Height = 24
      CharCase = ecUpperCase
      DataField = 'Article'
      DataSource = DelMaterial.DS1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 416
      Top = 3
      Width = 137
      Height = 24
      CharCase = ecUpperCase
      DataField = 'XieMing'
      DataSource = DelMaterial.DS1
      ReadOnly = True
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 603
      Top = 2
      Width = 73
      Height = 24
      TabOrder = 3
    end
    object CLBHEdit: TEdit
      Left = 71
      Top = 37
      Width = 114
      Height = 24
      TabOrder = 4
    end
    object YWPMEdit: TEdit
      Left = 246
      Top = 35
      Width = 307
      Height = 24
      TabOrder = 5
    end
    object QueryBtn: TButton
      Left = 692
      Top = 33
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 6
      OnClick = QueryBtnClick
    end
    object DFLCombo: TComboBox
      Left = 603
      Top = 32
      Width = 73
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 7
      OnChange = DFLComboChange
      Items.Strings = (
        '')
    end
  end
  object DBGrid1: TDBGridEh
    Left = 0
    Top = 65
    Width = 625
    Height = 385
    Align = alLeft
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    OnGetCellParams = DBGrid1GetCellParams
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        ReadOnly = True
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        ReadOnly = True
        Width = 283
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        ReadOnly = True
      end
      item
        EditButtons = <>
        FieldName = 'USAGE'
        Footers = <>
        ReadOnly = True
        Width = 57
      end
      item
        EditButtons = <>
        FieldName = 'DFL'
        Footers = <>
        ReadOnly = True
        Width = 22
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        ReadOnly = True
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        ReadOnly = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'OKPerson'
        Footers = <>
        ReadOnly = True
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'KCQty'
        Footers = <>
        ReadOnly = True
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'NK'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'TC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'HD'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KD'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'GC'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'XT'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ZZZZ'
        Footers = <>
      end>
  end
  object Panel2: TPanel
    Left = 628
    Top = 65
    Width = 369
    Height = 385
    Align = alClient
    TabOrder = 2
    object DBGrid2: TDBGridEh
      Left = 1
      Top = 1
      Width = 521
      Height = 383
      Align = alLeft
      DataSource = DataSource2
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -14
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -14
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnGetCellParams = DBGrid2GetCellParams
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ZLBH'
          Footers = <>
          ReadOnly = True
        end
        item
          EditButtons = <>
          FieldName = 'CLBH'
          Footers = <>
          ReadOnly = True
        end
        item
          EditButtons = <>
          FieldName = 'CLSL'
          Footer.FieldName = 'CLSL'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Width = 81
        end
        item
          EditButtons = <>
          FieldName = 'Qty'
          Footer.FieldName = 'Qty'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
        end>
    end
  end
  object Query1: TQuery
    CachedUpdates = True
    DatabaseName = 'DB'
    RequestLive = True
    SQL.Strings = (
      ''
      'declare @p decimal(18,4)'
      'set @p=(select Delperson from BasData where GSBH='#39'VA12'#39')'
      ''
      
        'select '#39'Y2105-0006'#39' as MZLBH,CLBH,USage,DFL,YWPM,DWBH,LYCC,Artic' +
        'le,XieMing,XieXing,SheHao,KCQty,SUM(CLSL) as CLSL,SUM(Qty) as Qt' +
        'y '
      ',NK,TC,HD,KD,GC,XT,ZZZZ'
      'from ( '
      'select OrdCL1.ZLBH,OrdCL1.CLBH,sum(OrdCL1.Usage) as Usage,'
      
        '        round((sum(OrdCL1.CLSL)+0.0499),1) as CLSL,OrdCL1.DFL,Or' +
        'dCL1.YWPM,OrdCL1.DWBH,OrdCL1.LYCC,'
      
        '         isnull(KCLLS.Qty,0) as Qty,OrdCL1.Article,OrdCL1.XieMin' +
        'g,OrdCL1.XieXing,OrdCL1.SheHao,KCZLS.KCQty '
      
        '         ,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.GC,KCZLS.XT,' +
        'KCZLS.ZZZZ'
      'from '
      
        '    ( select  ZLBH,CLBH,sum(USAGE) as USAGE,case when CLTX='#39'1'#39' a' +
        'nd LYCC<>'#39'Y'#39' then sum(CLSL)*@p/100  else sum(CLSL) end as CLSL ,' +
        'DFL,YWPM,'
      '          DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX'
      
        '     from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as U' +
        'SAGE,'
      
        '             sum(ZLZLS2.CLSL)   CLSL ,(case when substring(xxbwf' +
        'l.bwbh,1,1)='#39'V'#39' then isnull(XXzlsvn.DFL,'#39'N'#39') else isnull(XXBWFLS' +
        '.DFL,'#39'N'#39') end) as DFL'
      
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
      
        '             left join (select XXZLSvn.xiexing,XXZLSvn.shehao,XX' +
        'ZLSvn.bwbh,xxbwfls.dfl from XXZLSvn'
      #9#9'            '#9#9#9#9'left join xxbwfls on xxzlsvn.flbh=xxbwfls.flbh'
      
        #9#9#9#9#9'            '#9') as XXZLSvn on XXZLSvn.XieXing=ddzl.XieXing a' +
        'nd XXZLSvn.SheHao=ddzl.SheHao and XXZLSvn.BWBH=ZLZLS2.BWBH'
      
        '            where ZLZLS2.ZLBH in  ( select DDBH1 from DDZLTR whe' +
        're DDBH='#39'Y2105-0006'#39' )  '
      '                     and ZLZLS2.MJBH='#39'ZZZZZZZZZZ'#39
      '                     and XXBWFL.FLBH<>'#39'16'#39
      '            group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,'
      
        '                 xxzlsvn.dfl,xxbwfl.bwbh,  CLZL.YWPM,CLZL.DWBH,C' +
        'LZL.LYCC,DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,XXZL' +
        'S.CLTX ) as OrdCL'
      
        '      group by ZLBH,CLBH,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieX' +
        'ing,SheHao,CLTX) OrdCL1'
      
        'left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qt' +
        'y,isnull( KCLLS.DFL,'#39'N'#39') as DFL'
      
        '              from  KCLLS where  KCLLS.SCBH in  ( select DDBH1 f' +
        'rom DDZLTR where DDBH='#39'Y2105-0006'#39' ) and blsb is null group by K' +
        'CLLS.SCBH, KCLLS.CLBH,KCLLS.DFL) KCLLS'
      
        '               on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL1.C' +
        'LBH and OrdCL1.DFL=KCLLS.DFL'
      'left join KCZLS on KCZLS.CLBH=OrdCL1.CLBH and KCZLS.CKBH='#39'VA12'#39
      
        'group by OrdCL1.ZLBH,OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.D' +
        'WBH,'
      
        '              OrdCL1.LYCC,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.X' +
        'ieXing,OrdCL1.SheHao,KCLLS.Qty,KCZLS.KCQty'
      
        '              ,KCZLS.NK,KCZLS.TC,KCZLS.HD,KCZLS.KD,KCZLS.GC,KCZL' +
        'S.XT,KCZLS.ZZZZ ) OrderCL'
      
        'Group by CLBH,USage,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieXing,S' +
        'heHao,KCQty,NK,TC,HD,KD,GC,XT,ZZZZ'
      'order by OrderCL.DFL,OrderCL.CLBH'
      ''
      '')
    UpdateObject = UpdateSQL1
    Left = 296
    Top = 160
    object Query1MZLBH: TStringField
      FieldName = 'MZLBH'
      FixedChar = True
      Size = 10
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
      DisplayFormat = '##,#0.00'
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
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
    object Query1NK: TCurrencyField
      FieldName = 'NK'
      DisplayFormat = '#0.00'
    end
    object Query1TC: TCurrencyField
      FieldName = 'TC'
      DisplayFormat = '#0.00'
    end
    object Query1HD: TCurrencyField
      FieldName = 'HD'
      DisplayFormat = '#0.00'
    end
    object Query1KD: TCurrencyField
      FieldName = 'KD'
      DisplayFormat = '#0.00'
    end
    object Query1GC: TCurrencyField
      FieldName = 'GC'
      DisplayFormat = '#0.00'
    end
    object Query1XT: TCurrencyField
      FieldName = 'XT'
      DisplayFormat = '#0.00'
    end
    object Query1ZZZZ: TCurrencyField
      FieldName = 'ZZZZ'
      DisplayFormat = '#0.00'
    end
  end
  object UpdateSQL2: TUpdateSQL
    Left = 624
    Top = 216
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DataSource1
    SQL.Strings = (
      ''
      
        'select OrdCL.*,IsNull(KCLLS.Qty,0) as Qty,OrdCL.CLSL-IsNull(KCLL' +
        'S.Qty,0) as RemQty from ('
      
        'select ZLZLS2.ZLBH,ZLZLS2.CLBH,(case when substring(xxbwfl.bwbh,' +
        '1,1)='#39'V'#39' then isnull(XXzlsvn.DFL,'#39'N'#39') else isnull(XXBWFLS.DFL,'#39'N' +
        #39') end) as DFL,SUM(ZLZLS2.CLSL) as CLSL,sum(ZLZLS2.USAGE) as USA' +
        'GE from zlzls2'
      'left join  DDZL on DDZL.DDBH=zlzls2.ZLBH'
      
        'left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL' +
        '.SheHao'
      
        'left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZL.XieXing=XXB' +
        'WFL.XieXing'
      'left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH'
      
        'left join XXZLS on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=X' +
        'XZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH'
      
        'left join (select XXZLSvn.xiexing,XXZLSvn.shehao,XXZLSvn.bwbh,xx' +
        'bwfls.dfl from XXZLSvn'
      #9#9'            '#9#9#9#9'left join xxbwfls on xxzlsvn.flbh=xxbwfls.flbh'
      
        #9#9#9#9#9'            '#9') as XXZLSvn on XXZLSvn.XieXing=ddzl.XieXing a' +
        'nd XXZLSvn.SheHao=ddzl.SheHao and XXZLSvn.BWBH=ZLZLS2.BWBH'
      
        'where ZLZLS2.ZLBH in ( select DDBH1 from DDZLTR where DDBH=:MZLB' +
        'H )'
      ' and ZLZLS2.CLBH=:CLBH'
      
        'Group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,xxzlsvn.dfl,xxbwfl.' +
        'bwbh  ) OrdCL       '
      
        'Left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qt' +
        'y'
      '           from  KCLLS '
      
        '           where  KCLLS.SCBH in ( select DDBH1 from DDZLTR where' +
        ' DDBH=:MZLBH )'
      '                  and blsb is null '
      
        '           group by KCLLS.SCBH, KCLLS.CLBH ) KCLLS on KCLLS.SCBH' +
        '=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH'
      '           where OrdCL.DFL=:DFL')
    UpdateObject = UpdateSQL2
    Left = 624
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'MZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftUnknown
        Name = 'MZLBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFL'
        ParamType = ptUnknown
      end>
    object Query2ZLBH: TStringField
      DisplayWidth = 11
      FieldName = 'ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query2CLBH: TStringField
      DisplayWidth = 11
      FieldName = 'CLBH'
      FixedChar = True
      Size = 10
    end
    object Query2CLSL: TFloatField
      DisplayWidth = 7
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.00'
    end
    object Query2Qty: TCurrencyField
      DisplayWidth = 9
      FieldName = 'Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query2RemQty: TFloatField
      FieldName = 'RemQty'
    end
    object Query2USAGE: TFloatField
      FieldName = 'USAGE'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 656
    Top = 184
  end
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 200
  end
  object Query3: TQuery
    DatabaseName = 'DB'
    Left = 248
    Top = 160
  end
end

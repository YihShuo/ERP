object CostBOM_MatPrice: TCostBOM_MatPrice
  Left = 354
  Top = 217
  Width = 811
  Height = 246
  Caption = 'CostBOM_MatPrice'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGridEh
    Left = 0
    Top = 0
    Width = 795
    Height = 208
    Align = alClient
    DataSource = DS
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    FrozenCols = 4
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = 'Loc|'#25505#21312
        Width = 34
      end
      item
        EditButtons = <>
        FieldName = 'cldh1'
        Footers = <>
        Title.Caption = 'MatNo|'#26448#26009#32232#34399
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'Material|'#26448#26009#21517#31281
        Width = 224
      end
      item
        EditButtons = <>
        FieldName = 'ZWPM'
        Footers = <>
        Title.Caption = 'Material|'#26448#26009#20013#25991
        Width = 264
      end
      item
        EditButtons = <>
        FieldName = 'USPRICE'
        Footers = <>
        Title.Caption = 'USD|'#32654#37329
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'VNPRICE'
        Footers = <>
        Title.Caption = 'VND|'#36234#30462
        Width = 43
      end>
  end
  object CLZLBJ: TQuery
    DatabaseName = 'DB'
    DataSource = CostingBOM.DS2
    SQL.Strings = (
      
        'Select CLZMLB,CQDH,clzhzl.cldh1,CLZL.YWPM,CLZL.ZWPM,case when CG' +
        'BJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.VNPr' +
        'ice/22380,3) end as USPRICE ,CGBJS.VNPRICE '
      'FROM XXZLS '
      'inner join clzhzl on clzhzl.cldh=xxzls.clbh '
      'LEFT JOIN CLZL   ON clzhzl.cldh1 = CLZL.cldh '
      
        'LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.' +
        'VNPrice, '
      
        #9#9#9#9#9#9'ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.B' +
        'JNO DESC) as  rn '
      #9#9#9#9#9#9'from CGBJ'
      #9#9#9#9#9#9'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      #9#9#9#9#9#9'where CGBJ.GSBH='#39'VA12'#39' and CGBJS.CLBH is not null '
      #9#9#9#9#9#9') CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=clzhzl.cldh1 '
      
        'where XXZLS.XieXing='#39'CON17S06B'#39' and XXZLS.SheHao='#39'02'#39' and XXZLS.' +
        'BWBH='#39'B036'#39
      'union all'
      
        'select CLZMLB,CQDH,XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM ,case when CG' +
        'BJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.VNPr' +
        'ice/22380,3) end as USPRICE ,CGBJS.VNPRICE  '
      'FROM XXZLS'
      'LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh'
      
        'LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.' +
        'VNPrice,'
      
        #9#9#9#9#9#9'ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.B' +
        'JNO DESC) as  rn'
      #9#9#9#9#9#9'from CGBJ'
      #9#9#9#9#9#9'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      #9#9#9#9#9#9'where CGBJ.GSBH='#39'VA12'#39' and CGBJS.CLBH is not null'
      #9#9#9#9#9#9') CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLS.CLBH'
      
        'where XXZLS.XieXing='#39'CON17S06B'#39' and XXZLS.SheHao='#39'02'#39'  and XXZLS' +
        '.BWBH='#39'B036'#39' and left(XXZLS.clbh,1)<>'#39'M'#39
      'union all'
      
        'select CLZMLB,CQDH, XXZLSVN.CLBH, CLZL.YWPM ,CLZL.ZWPM ,case whe' +
        'n CGBJS.USPRICE is not null then CGBJS.USPRICE else round(CGBJS.' +
        'VNPrice/22380,3) end as USPRICE ,CGBJS.VNPRICE '#9#9#9#9#9
      'from XXZLSVN'
      'LEFT join CLZL on XXZLSVN.CLBH=CLZL.CLDH'
      
        'LEFT JOIN (select * from (select CGBJS.CLBH,CGBJS.USPrice,CGBJS.' +
        'VNPrice,'
      
        #9#9#9#9#9#9'ROW_NUMBER() over (PARTITION BY CGBJS.CLBH ORDER BY CGBJ.B' +
        'JNO DESC) as  rn'
      #9#9#9#9#9#9'from CGBJ '
      #9#9#9#9#9#9'left join CGBJS on CGBJ.BJNO=CGBJS.BJNO'
      #9#9#9#9#9#9'where CGBJ.GSBH='#39'VA12'#39' and CGBJS.CLBH is not null'
      #9#9#9#9#9#9') CGBJ where rn=1 ) CGBJS ON CGBJS.CLBH=XXZLSVN.CLBH'
      
        'where  XXZLSVN.XieXing='#39'CON17S06B'#39' and  XXZLSVN.SheHao='#39'02'#39'  and' +
        ' XXZLSVN.BWBH='#39'B036'#39
      '')
    Left = 324
    Top = 72
    object CLZLBJCLZMLB: TStringField
      DisplayWidth = 8
      FieldName = 'CLZMLB'
      FixedChar = True
      Size = 1
    end
    object CLZLBJCQDH: TStringField
      DisplayWidth = 9
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object CLZLBJcldh1: TStringField
      DisplayWidth = 10
      FieldName = 'cldh1'
      FixedChar = True
      Size = 10
    end
    object CLZLBJYWPM: TStringField
      DisplayWidth = 200
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object CLZLBJZWPM: TStringField
      DisplayWidth = 200
      FieldName = 'ZWPM'
      FixedChar = True
      Size = 200
    end
    object CLZLBJUSPRICE: TFloatField
      DisplayWidth = 10
      FieldName = 'USPRICE'
    end
    object CLZLBJVNPRICE: TFloatField
      FieldName = 'VNPRICE'
    end
  end
  object DS: TDataSource
    DataSet = CLZLBJ
    Left = 324
    Top = 104
  end
end

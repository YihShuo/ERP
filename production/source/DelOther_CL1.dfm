object DelOther_CL: TDelOther_CL
  Left = 351
  Top = 208
  Width = 800
  Height = 500
  BorderIcons = [biSystemMenu]
  Caption = 'DelOther_CL'
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
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
      Left = 336
      Top = 24
      Width = 48
      Height = 20
      Caption = 'Article:'
    end
    object Label3: TLabel
      Left = 496
      Top = 24
      Width = 67
      Height = 20
      Caption = 'ArtName:'
    end
    object DBEdit2: TDBEdit
      Left = 392
      Top = 16
      Width = 89
      Height = 28
      Color = clInactiveBorder
      DataField = 'Article'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 568
      Top = 16
      Width = 169
      Height = 28
      Color = clInactiveBorder
      DataField = 'XieMing'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 96
      Top = 16
      Width = 121
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      Text = 'Y0705-001'
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 232
      Top = 16
      Width = 97
      Height = 33
      Caption = 'QUERY'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 784
    Height = 396
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
        Width = 87
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
        Width = 288
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
        Width = 55
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
        Width = 46
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
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Person'
        Width = 63
        Visible = True
      end
      item
        Color = 13290239
        Expanded = False
        FieldName = 'KCQty'
        Width = 54
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 344
    Top = 160
  end
  object Query1: TQuery
    CachedUpdates = True
    OnCalcFields = Query1CalcFields
    DatabaseName = 'DB'
    DataSource = DelMaterial.DS1
    RequestLive = True
    SQL.Strings = (
      'declare @p decimal(18,4)'
      'set @p=(select Delperson from BasData where GSBH=:GSBH)'
      ''
      'select OrdCL1.ZLBH,OrdCL1.CLBH,sum(OrdCL1.Usage) as Usage,'
      
        '        round((sum(OrdCL1.CLSL)+0.0499),1) as CLSL,OrdCL1.DFL,Or' +
        'dCL1.YWPM,OrdCL1.DWBH,OrdCL1.LYCC,'
      
        '         isnull(KCLLS.Qty,0) as Qty,OrdCL1.Article,OrdCL1.XieMin' +
        'g,OrdCL1.XieXing,OrdCL1.SheHao,KCZLS.KCQty'
      'from '
      
        '    ( select  ZLBH,CLBH,sum(USAGE) as USAGE,case when CLTX='#39'1'#39' a' +
        'nd LYCC<>'#39'Y'#39'  then sum(CLSL)*@p/100  else sum(CLSL) end as CLSL ' +
        ',DFL,YWPM,'
      '          DWBH,LYCC,Article,XieMing,XieXing,SheHao,CLTX'
      
        '     from (select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as U' +
        'SAGE,'
      
        '             sum(ZLZLS2.CLSL)   CLSL,isnull(XXBWFLS.DFL,'#39'N'#39') as ' +
        'DFL'
      
        '             ,CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.Sh' +
        'eHao,XXZL.Article,XXZL.XieMing,isnull(XXZLS.CLTX,1) as CLTX'
      '             from ZLZLS2'
      '             left join CLZL on ZLZLS2.CLBH=CLZL.CLDH '
      '             left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH'
      '             left join  DDZL on DDZL.DDBH=ZLZL.DDBH'
      
        '             left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZ' +
        'L.SheHao=DDZL.SheHao'
      
        '             left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZ' +
        'L.XieXing=XXBWFL.XieXing'
      '             left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH'
      
        '             left join XXZLS on XXZLS.XieXing=XXZL.XieXing and X' +
        'XZLS.SheHao=XXZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH'
      '            where ZLZLS2.ZLBH=:SCBH '
      '                      and MJBH='#39'ZZZZZZZZZZ'#39
      '                      and XXBWFL.FLBH<>'#39'16'#39
      '            group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,'
      
        '                 CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL' +
        '.SheHao,XXZL.Article,XXZL.XieMing,XXZLS.CLTX ) as OrdCL'
      
        '      group by ZLBH,CLBH,DFL,YWPM,DWBH,LYCC,Article,XieMing,XieX' +
        'ing,SheHao,CLTX) OrdCL1'
      
        'left join (select   KCLLS.SCBH, KCLLS.CLBH, sum(KCLLS.Qty) as Qt' +
        'y,isnull( KCLLS.DFL,'#39'N'#39') as DFL'
      
        '              from  KCLLS where  KCLLS.SCBH=:SCBH group by KCLLS' +
        '.SCBH, KCLLS.CLBH,KCLLS.DFL) KCLLS '
      
        '               on KCLLS.SCBH=OrdCL1.ZLBH and KCLLS.CLBH=OrdCL1.C' +
        'LBH and OrdCL1.DFL=KCLLS.DFL '
      ''
      'left join KCZLS on KCZLS.CLBH=OrdCL1.CLBH and KCZLS.CKBH=:CKBH'
      ''
      
        'group by OrdCL1.ZLBH,OrdCL1.CLBH,OrdCL1.DFL,OrdCL1.YWPM,OrdCL1.D' +
        'WBH,'
      
        '              OrdCL1.LYCC,OrdCL1.Article,OrdCL1.XieMing,OrdCL1.X' +
        'ieXing,OrdCL1.SheHao,KCLLS.Qty,KCZLS.KCQty'
      'order by OrdCL1.ZLBH,OrdCL1.DFL,OrdCL1.CLBH'
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
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'SCBH'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CKBH'
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
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object Query1Person: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Person'
      DisplayFormat = '##,#0.0%'
      Calculated = True
    end
    object Query1KCQty: TFloatField
      FieldName = 'KCQty'
      DisplayFormat = '##,#0.0'
    end
  end
  object UpdateSQL1: TUpdateSQL
    Left = 296
    Top = 192
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    Left = 192
    Top = 120
  end
end

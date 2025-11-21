object BOMVN_Copy: TBOMVN_Copy
  Left = 526
  Top = 50
  Width = 979
  Height = 563
  Caption = 'BOMVN_Copy'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 45
      Height = 20
      Caption = 'ArtNo:'
    end
    object Label3: TLabel
      Left = 177
      Top = 28
      Width = 41
      Height = 20
      Caption = 'Color:'
    end
    object Label2: TLabel
      Left = 325
      Top = 30
      Width = 62
      Height = 20
      Caption = 'Art/SKU:'
    end
    object Button1: TButton
      Left = 536
      Top = 16
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 64
      Top = 24
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 225
      Top = 24
      Width = 81
      Height = 28
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 392
      Top = 24
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 963
    Height = 184
    Align = alTop
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Caption = 'ArtNo|'#38795#22411
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Caption = 'Color|'#33394#34399
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'Article|'#22411#39636
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = 'Color Name|'#38991#33394
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CQDH'
        Footers = <>
        Title.Caption = #24288#21312'|Factory'
        Width = 50
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 257
    Width = 963
    Height = 268
    Align = alClient
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh2DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Title.Caption = 'BWBH|'#37096#20301'No'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'CLBH|'#26448#26009#32232#34399
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'YWPM|'#20013#25991#21517#31281
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Title.Caption = 'DWBH|'#21934#20301
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = 'CLSL|'#29992#37327
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Title.Caption = 'CSBH|'#24288#21830'No'
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Title.Caption = 'ZSYWJC|'#24288#21830
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 320
    Top = 168
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from LIY_DD.dbo.XXZL'
      'order by XieXing,SheHao')
    Left = 320
    Top = 200
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 18
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 200
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
      FixedChar = True
    end
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = DS1
    SQL.Strings = (
      'select  XXZLSVN.*,BWZL.YWSM,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH'
      'from LIY_DD.dbo.XXZLSVN XXZLSVN'
      'left join BWZL on BWZL.BWDH= XXZLSVN.BWBH'
      'left join LIY_DD.dbo.ZSZL ZSZL on ZSZL.ZSDH= XXZLSVN.CSBH'
      'left join LIY_DD.dbo.CLZL CLZL  on XXZLSVN.CLBH=CLZL.CLDH'
      'where  XXZLSVN.XieXing=:XieXing and  XXZLSVN.SheHao=:Shehao'
      'and XXZLSVN.CQDH=:CQDH'
      'order by XXZLSVN.BWBH asc')
    Left = 400
    Top = 168
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 19
      end
      item
        DataType = ftFixedChar
        Name = 'SheHao'
        ParamType = ptUnknown
        Size = 6
      end
      item
        DataType = ftUnknown
        Name = 'CQDH'
        ParamType = ptUnknown
      end>
    object Query2XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query2SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query2BWBH: TStringField
      FieldName = 'BWBH'
      FixedChar = True
      Size = 4
    end
    object Query2CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2CSBH: TStringField
      FieldName = 'CSBH'
      FixedChar = True
      Size = 6
    end
    object Query2CLSL: TCurrencyField
      FieldName = 'CLSL'
      DisplayFormat = '##,#0.0000'
    end
    object Query2USERID: TStringField
      FieldName = 'USERID'
      FixedChar = True
      Size = 15
    end
    object Query2USERDATE: TDateTimeField
      FieldName = 'USERDATE'
    end
    object Query2YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object Query2YWSM: TStringField
      FieldName = 'YWSM'
      FixedChar = True
      Size = 40
    end
    object Query2ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 60
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 400
    Top = 200
  end
end

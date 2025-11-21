object FDStatus_Article: TFDStatus_Article
  Left = 504
  Top = 155
  Width = 1027
  Height = 498
  Caption = 'FDStatus_Article'
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
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 37
    Width = 1011
    Height = 423
    Align = alClient
    DataSource = ds1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgrdh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'devcode'
        Footers = <>
        Title.Caption = 'SR#'
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 182
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 95
      end
      item
        EditButtons = <>
        FieldName = 'KFJD'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'YPCC'
        Footers = <>
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 37
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 10
      Width = 47
      Height = 16
      Caption = 'Season'
    end
    object Label2: TLabel
      Left = 131
      Top = 10
      Width = 19
      Height = 16
      Caption = 'SR'
    end
    object Label3: TLabel
      Left = 528
      Top = 10
      Width = 36
      Height = 16
      Caption = 'Stage'
    end
    object Label4: TLabel
      Left = 323
      Top = 10
      Width = 27
      Height = 16
      Caption = 'SKU'
    end
    object Edit1: TEdit
      Left = 53
      Top = 6
      Width = 52
      Height = 24
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 157
      Top = 7
      Width = 145
      Height = 24
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 568
      Top = 6
      Width = 47
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 620
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 357
      Top = 5
      Width = 145
      Height = 24
      TabOrder = 4
    end
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KFXXZL.devcode,KFXXZL.Article,KFXXZL.JiJie,KFXXZL.FD,ypzl' +
        '.KFJD,ypzl.YPCC from ypzl'
      
        ' left join KFXXZL on KFXXZL.XieXing=ypzl.XieXing and KFXXZL.SheH' +
        'ao=ypzl.SheHao'
      ' where 1=2')
    Left = 144
    Top = 144
    object qry1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object qry1JiJie: TStringField
      DisplayLabel = 'Season'
      FieldName = 'JiJie'
      FixedChar = True
    end
    object qry1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qry1KFJD: TStringField
      DisplayLabel = 'Stage'
      FieldName = 'KFJD'
      FixedChar = True
      Size = 3
    end
    object qry1YPCC: TStringField
      DisplayLabel = 'Size'
      FieldName = 'YPCC'
      FixedChar = True
      Size = 6
    end
    object qry1devcode: TStringField
      FieldName = 'devcode'
      FixedChar = True
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 184
    Top = 144
  end
end

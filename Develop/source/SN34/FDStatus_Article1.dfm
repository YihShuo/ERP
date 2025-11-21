object FDStatus_Article: TFDStatus_Article
  Left = 432
  Top = 162
  Width = 520
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
    Top = 57
    Width = 504
    Height = 402
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
        FieldName = 'KFJD'
        Footers = <>
        Width = 47
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'SR#'
        Footers = <>
        Width = 156
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Width = 51
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
    Width = 504
    Height = 57
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
      Left = 115
      Top = 34
      Width = 57
      Height = 16
      Caption = 'Article(%)'
    end
    object Label3: TLabel
      Left = 15
      Top = 34
      Width = 36
      Height = 16
      Caption = 'Stage'
    end
    object Label4: TLabel
      Left = 130
      Top = 7
      Width = 39
      Height = 16
      Caption = 'SR(%)'
    end
    object Edit1: TEdit
      Left = 53
      Top = 6
      Width = 52
      Height = 24
      TabOrder = 0
    end
    object ArticleEdit: TEdit
      Left = 173
      Top = 31
      Width = 220
      Height = 24
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 54
      Top = 30
      Width = 47
      Height = 24
      TabOrder = 2
    end
    object Button1: TButton
      Left = 420
      Top = 30
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 3
      OnClick = Button1Click
    end
    object SREdit: TEdit
      Left = 173
      Top = 3
      Width = 220
      Height = 24
      TabOrder = 4
    end
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select KFXXZL.Article,KFXXZL.DEVCODE as SR#,KFXXZL.JiJie,KFXXZL.' +
        'FD,ypzl.KFJD,ypzl.YPCC from ypzl  '
      
        'left join KFXXZL on KFXXZL.XieXing=ypzl.XieXing and KFXXZL.SheHa' +
        'o=ypzl.SheHao '
      ' where 1=1 '
      ' and KFXXZL.JiJie='#39'18S'#39
      ' and KFXXZL.DEVCODE like '#39'%G26479-CT002W-18S01%'#39
      ' and ypzl.KFJD='#39'CFM'#39
      ''
      '')
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
    object qry1SR: TStringField
      FieldName = 'SR#'
      FixedChar = True
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 184
    Top = 144
  end
end

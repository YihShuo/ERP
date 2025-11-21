object SKUChoose: TSKUChoose
  Left = 241
  Top = 185
  Width = 983
  Height = 483
  Caption = 'SKUChoose'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 20
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 57
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 456
      Top = 19
      Width = 37
      Height = 20
      Caption = 'SKU:'
    end
    object lbl2: TLabel
      Left = 12
      Top = 19
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object lbl3: TLabel
      Left = 218
      Top = 19
      Width = 84
      Height = 20
      Caption = 'ShoeName:'
    end
    object ArticleEtd: TEdit
      Left = 504
      Top = 16
      Width = 121
      Height = 28
      TabOrder = 0
    end
    object SeasonEtd: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 28
      TabOrder = 1
    end
    object ShoeNameEtd: TEdit
      Left = 312
      Top = 16
      Width = 121
      Height = 28
      TabOrder = 2
    end
    object btn1: TButton
      Left = 640
      Top = 15
      Width = 73
      Height = 28
      Caption = 'Query'
      TabOrder = 3
      OnClick = btn1Click
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 57
    Width = 967
    Height = 387
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
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = dbgrdh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = 'ShoeName'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = 'Season'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DEVCODE'
        Footers = <>
        Title.Caption = 'SR#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'FD'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DevType'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 70
      end>
  end
  object DS1: TDataSource
    DataSet = qry1
    Left = 120
    Top = 112
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select kfxxzl.DEVCODE,ypzl.kfjd,kfxxzl.DevType,ypzl.FD,kfxxzl.Ji' +
        'Jie,kfxxzl.XieMing,kfxxzl.XTMH '
      
        '       ,kfxxzl.DDMH,kfxxzl.DAOMH,ypzl.ypdh,ypzl.ypcc,xxzlkf.prod' +
        'uctiontype,ypzl.subtype,ypzl.YN,kfxxzl.YSSM '
      'from ypzl '
      
        'left join kfxxzl on ypzl.xiexing=kfxxzl.xiexing and ypzl.shehao=' +
        'kfxxzl.shehao'
      
        'left join xxzlkf on xxzlkf.xiexing=kfxxzl.xiexing and xxzlkf.she' +
        'hao=kfxxzl.shehao'
      
        'where 1=1  and  not exists (select ypdh from shoetest where Subs' +
        'tring(ypdh,4,1)='#39'V'#39' and  ypzl.ypdh=shoetest.ypdh group by ypdh)'
      ' and ypzl.kfjd like '#39'%'#39
      ' and ypzl.fd= '#39'Weston'#39' '
      ' and (Substring(ypdh,4,1)='#39'V'#39' or Substring(ypdh,4,1)='#39'K'#39') '
      
        ' group by ypzl.subtype,ypzl.ypdh,kfxxzl.DEVCODE,ypzl.kfjd,kfxxzl' +
        '.XieXing,kfxxzl.DevType,ypzl.FD,kfxxzl.JiJie,ypzl.ypcc '
      
        ' ,kfxxzl.SheHao,kfxxzl.XieMing,kfxxzl.XieXing,kfxxzl.XTMH,kfxxzl' +
        '.DDMH,kfxxzl.DAOMH,ypzl.ypcc,xxzlkf.productiontype,YPZL.YN,kfxxz' +
        'l.YSSM '
      'order by ypzl.ypdh desc')
    Left = 120
    Top = 152
    object qry1DevType: TStringField
      FieldName = 'DevType'
      FixedChar = True
      Size = 10
    end
    object qry1FD: TStringField
      FieldName = 'FD'
      FixedChar = True
    end
    object qry1JiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object qry1XieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object qry1DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object qry1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
    object qry1XieXing: TStringField
      FieldName = 'XieXing'
    end
    object qry1SheHao: TStringField
      FieldName = 'SheHao'
    end
    object qry1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
  end
end

object ArticleChoose: TArticleChoose
  Left = 241
  Top = 185
  Width = 983
  Height = 483
  Caption = 'ArticleChoose'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 105
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 296
      Top = 58
      Width = 27
      Height = 20
      Caption = 'SR:'
    end
    object lbl2: TLabel
      Left = 28
      Top = 19
      Width = 59
      Height = 20
      Caption = 'Season:'
    end
    object lbl3: TLabel
      Left = 234
      Top = 18
      Width = 84
      Height = 20
      Caption = 'ShoeName:'
    end
    object Label1: TLabel
      Left = 495
      Top = 20
      Width = 47
      Height = 20
      Caption = 'Stage:'
    end
    object Label2: TLabel
      Left = 465
      Top = 58
      Width = 76
      Height = 20
      Caption = 'Developer:'
    end
    object Label3: TLabel
      Left = 8
      Top = 57
      Width = 81
      Height = 20
      Caption = 'SampleNO:'
    end
    object ArticleEtd: TEdit
      Left = 328
      Top = 54
      Width = 121
      Height = 28
      TabOrder = 0
    end
    object SeasonEtd: TEdit
      Left = 96
      Top = 16
      Width = 121
      Height = 28
      TabOrder = 1
    end
    object ShoeNameEtd: TEdit
      Left = 328
      Top = 16
      Width = 121
      Height = 28
      TabOrder = 2
    end
    object btn1: TButton
      Left = 688
      Top = 56
      Width = 75
      Height = 26
      Caption = 'Query'
      TabOrder = 3
      OnClick = btn1Click
    end
    object Edit1: TEdit
      Left = 552
      Top = 16
      Width = 121
      Height = 28
      TabOrder = 4
    end
    object Edit2: TEdit
      Left = 551
      Top = 57
      Width = 121
      Height = 28
      Color = clScrollBar
      ParentShowHint = False
      ReadOnly = True
      ShowHint = False
      TabOrder = 5
    end
    object Edit3: TEdit
      Left = 96
      Top = 56
      Width = 121
      Height = 28
      TabOrder = 6
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 967
    Height = 339
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
    OnCellClick = dbgrdh1CellClick
    Columns = <
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
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'kfjd'
        Footers = <>
        Title.Caption = 'Stage'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'ypdh'
        Footers = <>
        Title.Caption = 'SampleNO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
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
        Width = 151
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Width = 84
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
        Width = 135
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
        Width = 62
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
      end
      item
        EditButtons = <>
        FieldName = 'ypcc'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'productiontype'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'subtype'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
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
    object qry1DDMH: TStringField
      FieldName = 'DDMH'
      FixedChar = True
      Size = 30
    end
    object qry1DAOMH: TStringField
      FieldName = 'DAOMH'
      FixedChar = True
      Size = 30
    end
    object qry1XTMH: TStringField
      FieldName = 'XTMH'
      FixedChar = True
      Size = 30
    end
    object qry1kfjd: TStringField
      FieldName = 'kfjd'
      FixedChar = True
      Size = 3
    end
    object qry1DEVCODE: TStringField
      FieldName = 'DEVCODE'
      FixedChar = True
    end
    object qry1ypdh: TStringField
      FieldName = 'ypdh'
      FixedChar = True
      Size = 15
    end
    object qry1ypcc: TStringField
      FieldName = 'ypcc'
      FixedChar = True
      Size = 6
    end
    object qry1productiontype: TStringField
      FieldName = 'productiontype'
      FixedChar = True
      Size = 15
    end
    object qry1subtype: TStringField
      FieldName = 'subtype'
      FixedChar = True
      Size = 15
    end
    object qry1YN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
    object qry1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 50
    end
  end
  object recordengname: TQuery
    DatabaseName = 'dB'
    Left = 120
    Top = 184
  end
end

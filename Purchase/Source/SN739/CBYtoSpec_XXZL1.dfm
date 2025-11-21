object CBYtoSpec_XXZL: TCBYtoSpec_XXZL
  Left = 461
  Top = 390
  Width = 916
  Height = 411
  Caption = 'CBYtoSpec_XXZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 908
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
      Left = 11
      Top = 12
      Width = 54
      Height = 16
      Caption = 'Style No:'
    end
    object Label2: TLabel
      Left = 11
      Top = 45
      Width = 56
      Height = 16
      Caption = 'Color No:'
    end
    object Label3: TLabel
      Left = 226
      Top = 12
      Width = 59
      Height = 16
      Caption = 'Art Name:'
    end
    object Label4: TLabel
      Left = 239
      Top = 43
      Width = 50
      Height = 16
      Caption = 'Season:'
    end
    object Label5: TLabel
      Left = 442
      Top = 12
      Width = 29
      Height = 16
      Caption = 'SR#:'
    end
    object Label6: TLabel
      Left = 432
      Top = 43
      Width = 37
      Height = 16
      Caption = 'Artice:'
    end
    object XieXingEdit: TEdit
      Left = 68
      Top = 8
      Width = 153
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 624
      Top = 33
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object SheHaoEdit: TEdit
      Left = 69
      Top = 40
      Width = 148
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object XieMingEdit: TEdit
      Left = 296
      Top = 8
      Width = 129
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object JiJieEdit: TEdit
      Left = 296
      Top = 39
      Width = 133
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object DevcodeEdit: TEdit
      Left = 472
      Top = 8
      Width = 145
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object ArticleEdit: TEdit
      Left = 472
      Top = 39
      Width = 145
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 6
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 908
    Height = 307
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
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Caption = #38795#22411'|Style No'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Title.Caption = #33394#34399'|Color No'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'XieMing'
        Footers = <>
        Title.Caption = #38795#21517'|Art Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 129
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = #38991#33394#35498#26126'|Color'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 202
      end
      item
        EditButtons = <>
        FieldName = 'JiJie'
        Footers = <>
        Title.Caption = #23395#31680'|Season'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'fd'
        Footers = <>
        Title.Caption = #38283#30332#21729'|Developer'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'DevCode'
        Footers = <>
        Title.Caption = 'SR#|DevCode'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end>
  end
  object DS1: TDataSource
    DataSet = ArticleQry
    Left = 384
    Top = 144
  end
  object ArticleQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select KFXXZL.XieXing,KFXXZL.SheHao,KFXXZL.XieMing,KFXXZL.YSSM,K' +
        'FXXZL.JiJie,XXZL.Article,kfxxzl.FD,KFXXZL.DevCode from KFXXZL '
      
        'Left join XXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHao=KF' +
        'XXZL.SheHao '
      'where KFXXZL.XieXing like '#39'%'#39' '
      'and KFXXZL.SheHao like '#39'%'#39' '
      'and KFXXZL.jijie like '#39'%20F%'#39' '
      'and XXZL.Article like '#39'%168508C%'#39)
    Left = 384
    Top = 176
    object ArticleQryXieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object ArticleQrySheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object ArticleQryXieMing: TStringField
      FieldName = 'XieMing'
      FixedChar = True
      Size = 50
    end
    object ArticleQryYSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 40
    end
    object ArticleQryJiJie: TStringField
      FieldName = 'JiJie'
      FixedChar = True
    end
    object ArticleQryArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object ArticleQryfd: TStringField
      FieldName = 'fd'
      FixedChar = True
    end
    object ArticleQryDevCode: TStringField
      FieldName = 'DevCode'
      FixedChar = True
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'Select KFXXZL.XieXing,KFXXZL.SheHao,KFXXZL.XieMing,KFXXZL.YSSM,K' +
        'FXXZL.JiJie,XXZL.Article,kfxxzl.FD,KFXXZL.DevCode from KFXXZL '
      
        'Left join XXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHao=KF' +
        'XXZL.SheHao '
      'where KFXXZL.XieXing like '#39'%'#39' '
      'and KFXXZL.SheHao like '#39'%'#39' '
      'and KFXXZL.jijie like '#39'%20F%'#39' '
      'and XXZL.Article like '#39'%168508C%'#39)
    Left = 184
    Top = 184
  end
end

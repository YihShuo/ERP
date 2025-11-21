object SampleOrder_Article: TSampleOrder_Article
  Left = 285
  Top = 197
  Width = 1046
  Height = 470
  Caption = 'SampleOrder_Article'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1030
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 52
      Height = 20
      Caption = 'Art No:'
    end
    object Label2: TLabel
      Left = 243
      Top = 13
      Width = 70
      Height = 20
      Caption = 'Color No:'
    end
    object Label3: TLabel
      Left = 408
      Top = 12
      Width = 75
      Height = 20
      Caption = 'Art Name:'
    end
    object Label4: TLabel
      Left = 640
      Top = 12
      Width = 61
      Height = 20
      Caption = 'Season:'
    end
    object XieXingEdit: TEdit
      Left = 64
      Top = 8
      Width = 169
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = XieXingEditKeyDown
    end
    object Button1: TButton
      Left = 856
      Top = 3
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object SheHaoEdit: TEdit
      Left = 312
      Top = 8
      Width = 89
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyDown = SheHaoEditKeyDown
    end
    object XieMingEdit: TEdit
      Left = 488
      Top = 8
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 3
      OnKeyDown = XieMingEditKeyDown
    end
    object Edit1: TEdit
      Left = 704
      Top = 7
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 4
      OnKeyDown = XieMingEditKeyDown
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 1030
    Height = 391
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
        Width = 189
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
        Width = 242
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
        Width = 79
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
        Width = 161
      end
      item
        EditButtons = <>
        FieldName = 'fd'
        Footers = <>
        Title.Caption = 'Developer'
      end>
  end
  object ArticleQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XieXing,SheHao,XieMing,YSSM,JiJie,Article,kfxxzl.fd from ' +
        'KFXXZL')
    Left = 424
    Top = 160
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
  end
  object DS1: TDataSource
    DataSet = ArticleQry
    Left = 424
    Top = 128
  end
end

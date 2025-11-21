object Article_Claim: TArticle_Claim
  Left = 372
  Top = 249
  Width = 413
  Height = 576
  Caption = 'Article_Claim'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 49
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 0
      Top = 24
      Width = 37
      Height = 16
      Caption = 'Article'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 144
      Top = 24
      Width = 56
      Height = 16
      Caption = 'Art Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 312
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object edt1: TEdit
      Left = 40
      Top = 20
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edt2: TEdit
      Left = 208
      Top = 20
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 49
    Width = 397
    Height = 488
    Align = alClient
    TabOrder = 1
    object dbg_AC: TDBGridEh
      Left = 1
      Top = 1
      Width = 395
      Height = 486
      Align = alClient
      DataSource = ds_AC
      Flat = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbg_ACDblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'ARTICLE'
          Footers = <>
          Title.Caption = 'Article'
          Width = 94
        end
        item
          EditButtons = <>
          FieldName = 'XieMing'
          Footers = <>
          Title.Caption = 'Article Name'
          Width = 114
        end
        item
          EditButtons = <>
          FieldName = 'Category'
          Footers = <>
          Width = 109
        end>
    end
  end
  object qry_AC: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select x.ARTICLE, x.XieMing, xkf.Category from xxzl x'
      
        'LEFT JOIN XXZLKF xkf ON xkf.XieXing = x.XieXing and xkf.SheHao =' +
        ' x.SheHao '
      'where 1=2')
    Left = 104
    Top = 113
    object strngfld_ACARTICLE: TStringField
      FieldName = 'ARTICLE'
      Origin = 'DB.xxzl.ARTICLE'
      FixedChar = True
    end
    object strngfld_ACXieMing: TStringField
      FieldName = 'XieMing'
      Origin = 'DB.xxzl.XieMing'
      FixedChar = True
      Size = 50
    end
    object strngfld_ACCategory: TStringField
      FieldName = 'Category'
      Origin = 'DB.XXZLKF.Category'
      FixedChar = True
      Size = 50
    end
  end
  object ds_AC: TDataSource
    DataSet = qry_AC
    Left = 104
    Top = 145
  end
end

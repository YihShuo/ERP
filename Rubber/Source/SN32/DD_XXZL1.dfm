object DD_XXZL: TDD_XXZL
  Left = 448
  Top = 219
  Width = 527
  Height = 379
  Caption = 'DD_XXZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 32
      Width = 48
      Height = 16
      Caption = 'XieXing:'
    end
    object Label2: TLabel
      Left = 9
      Top = 7
      Width = 50
      Height = 16
      Caption = 'Shehao:'
    end
    object Label3: TLabel
      Left = 217
      Top = 7
      Width = 40
      Height = 16
      Caption = 'Article:'
    end
    object edXieXing: TEdit
      Left = 64
      Top = 32
      Width = 137
      Height = 24
      TabOrder = 0
    end
    object edShehao: TEdit
      Left = 63
      Top = 3
      Width = 89
      Height = 24
      TabOrder = 1
    end
    object Query: TButton
      Left = 388
      Top = 25
      Width = 81
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = QueryClick
    end
    object ArticleEdit: TEdit
      Left = 215
      Top = 30
      Width = 154
      Height = 24
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 511
    Height = 276
    Align = alClient
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 509
      Height = 274
      Align = alClient
      DataSource = DS1
      Flat = False
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGridEh1DblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'XieXing'
          Footers = <>
          Width = 99
        end
        item
          EditButtons = <>
          FieldName = 'SheHao'
          Footers = <>
          Width = 55
        end
        item
          EditButtons = <>
          FieldName = 'Article'
          Footers = <>
          Width = 121
        end
        item
          EditButtons = <>
          FieldName = 'CC'
          Footers = <>
          Width = 35
        end
        item
          EditButtons = <>
          FieldName = 'YSSM'
          Footers = <>
          Width = 95
        end
        item
          EditButtons = <>
          FieldName = 'CQDH'
          Footers = <>
          Width = 50
        end>
    end
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'select XXZLS1.XieXing,XXZLS1.SheHao,XXZLS1.CC,XXZL.Article,YSSM,' +
        'XXZLS1.CQDH from LIY_DD.dbo.XXZLS1 XXZLS1'
      
        'Left join LIY_DD.dbo.XXZL XXZL on XXZL.SheHao=XXZLS1.SheHao and ' +
        'XXZL.XieXing=XXZLS1.XieXing and XXZL.CQDH=XXZLS1.CQDH'
      
        'WHERE XXZLS1.XieXing='#39'A11'#39' AND XXZLS1.SheHao='#39'1.5mm'#39' AND XXZLS1.' +
        'CQDH='#39'VR1'#39)
    Left = 184
    Top = 137
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
    object Query1CC: TStringField
      FieldName = 'CC'
      FixedChar = True
      Size = 6
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1YSSM: TStringField
      FieldName = 'YSSM'
      FixedChar = True
      Size = 200
    end
    object Query1CQDH: TStringField
      FieldName = 'CQDH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 169
  end
end

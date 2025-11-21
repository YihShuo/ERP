object PaymentVATNO_ZS: TPaymentVATNO_ZS
  Left = 442
  Top = 243
  Width = 602
  Height = 350
  Align = alCustom
  Caption = 'PaymentVATNO_ZS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel34: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label62: TLabel
      Left = 210
      Top = 9
      Width = 86
      Height = 16
      Caption = 'Choose ZSBH'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label68: TLabel
      Left = 16
      Top = 10
      Width = 37
      Height = 16
      Caption = 'ZSDH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label69: TLabel
      Left = 16
      Top = 34
      Width = 72
      Height = 16
      Caption = 'Supp.Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn_QryPMZS: TButton
      Left = 328
      Top = 5
      Width = 73
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn_QryPMZSClick
    end
    object edt_code1: TEdit
      Left = 96
      Top = 8
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
    object edt_code2: TEdit
      Left = 96
      Top = 32
      Width = 185
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
  object DB_PMZS: TDBGridEh
    Left = 0
    Top = 57
    Width = 586
    Height = 254
    Align = alClient
    DataSource = DS_PMZS
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
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DB_PMZSDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdh'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 52
      end
      item
        EditButtons = <>
        FieldName = 'zsywjc'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 208
      end
      item
        EditButtons = <>
        FieldName = 'zsqm'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 300
      end>
  end
  object DS_PMZS: TDataSource
    DataSet = qry_PMZS
    Left = 57
    Top = 87
  end
  object qry_PMZS: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT zsdh, zsywjc FROM zszl')
    Left = 57
    Top = 119
    object qry_PMZSzsdh: TStringField
      FieldName = 'zsdh'
      Origin = 'DB.zszl.zsdh'
      FixedChar = True
      Size = 15
    end
    object qry_PMZSzsywjc: TStringField
      FieldName = 'zsywjc'
      Origin = 'DB.zszl.zsywjc'
      FixedChar = True
      Size = 200
    end
    object qry_PMZSzsqm: TStringField
      FieldName = 'zsqm'
      Size = 200
    end
  end
end

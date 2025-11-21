object PaymentVATNO_DEP: TPaymentVATNO_DEP
  Left = 550
  Top = 192
  Width = 585
  Height = 355
  Caption = 'PaymentVATNO_DEP'
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
  object Panel22: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label63: TLabel
      Left = 210
      Top = 9
      Width = 91
      Height = 16
      Caption = 'Choose DEPID'
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
      Width = 39
      Height = 16
      Caption = 'DepID'
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
      Width = 66
      Height = 16
      Caption = 'Dep.Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn_QryPMDEP: TButton
      Left = 336
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
      OnClick = btn_QryPMDEPClick
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
      TabOrder = 1
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
      TabOrder = 2
    end
  end
  object DB_PMDEP: TDBGridEh
    Left = 0
    Top = 57
    Width = 569
    Height = 259
    Align = alClient
    DataSource = DS_PMDEP
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
    OnDblClick = DB_PMDEPDblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 87
      end
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 68
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 207
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 186
      end>
  end
  object DS_PMDEP: TDataSource
    DataSet = qry_PMDEP
    Left = 145
    Top = 71
  end
  object qry_PMDEP: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT ID, DepName, DepMemo, GSBH, DepCName, DepVName FROM BDepa' +
        'rtment')
    Left = 145
    Top = 103
    object qry_PMDEPID: TStringField
      FieldName = 'ID'
      FixedChar = True
      Size = 14
    end
    object qry_PMDEPDepName: TStringField
      FieldName = 'DepName'
      FixedChar = True
      Size = 50
    end
    object qry_PMDEPDepMemo: TStringField
      FieldName = 'DepMemo'
      FixedChar = True
      Size = 50
    end
    object qry_PMDEPGSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
  end
end

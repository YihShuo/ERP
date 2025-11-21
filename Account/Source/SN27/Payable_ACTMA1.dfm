object Payable_ACTMA: TPayable_ACTMA
  Left = 333
  Top = 240
  Width = 899
  Height = 408
  Caption = 'Payable_ACTMA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 883
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 37
      Height = 16
      Caption = 'KJBH:'
    end
    object Label2: TLabel
      Left = 208
      Top = 16
      Width = 39
      Height = 16
      Caption = 'KJNM:'
    end
    object Edit1: TEdit
      Left = 56
      Top = 12
      Width = 121
      Height = 24
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 264
      Top = 12
      Width = 121
      Height = 24
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object QryBtn: TButton
      Left = 424
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = QryBtnClick
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 883
    Height = 320
    Align = alClient
    DataSource = DS
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
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MA001'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'KJBH'
        Width = 127
      end
      item
        EditButtons = <>
        FieldName = 'MA003'
        Footers = <>
        Title.Caption = 'KJNM'
        Width = 291
      end
      item
        EditButtons = <>
        FieldName = 'MA004'
        Footers = <>
        Title.Caption = 'KJBM'
        Width = 304
      end>
  end
  object ACTMAQry: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * from ACTMA')
    Left = 408
    Top = 96
    object ACTMAQryMA001: TStringField
      FieldName = 'MA001'
      Origin = 'DB.ACTMA.MA001'
      FixedChar = True
      Size = 10
    end
    object ACTMAQryMA003: TStringField
      FieldName = 'MA003'
      Origin = 'DB.ACTMA.MA003'
      FixedChar = True
      Size = 80
    end
    object ACTMAQryMA004: TStringField
      FieldName = 'MA004'
      Origin = 'DB.ACTMA.MA004'
      FixedChar = True
      Size = 80
    end
  end
  object DS: TDataSource
    DataSet = ACTMAQry
    Left = 408
    Top = 136
  end
end

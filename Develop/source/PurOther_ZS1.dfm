object PurOther_ZS: TPurOther_ZS
  Left = 353
  Top = 213
  Width = 609
  Height = 443
  BorderIcons = [biSystemMenu]
  Caption = 'PurOther_ZS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 593
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 60
      Top = 12
      Width = 49
      Height = 20
      Caption = 'ZSDH:'
    end
    object Label2: TLabel
      Left = 234
      Top = 12
      Width = 70
      Height = 20
      Caption = 'ZSYWJC:'
    end
    object Label3: TLabel
      Left = 12
      Top = 42
      Width = 97
      Height = 20
      Caption = 'Sample After:'
    end
    object Label19: TLabel
      Left = 224
      Top = 42
      Width = 81
      Height = 20
      Caption = 'SampleNO:'
    end
    object Button1: TButton
      Left = 496
      Top = 32
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object EDIT1: TEdit
      Left = 112
      Top = 8
      Width = 97
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = EDIT1KeyPress
    end
    object Edit2: TEdit
      Left = 312
      Top = 8
      Width = 169
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object cda: TDateTimePicker
      Left = 112
      Top = 40
      Width = 105
      Height = 28
      Date = 41031.346352430560000000
      Time = 41031.346352430560000000
      TabOrder = 3
      OnChange = cdaChange
    end
    object ordercb: TComboBox
      Left = 312
      Top = 39
      Width = 169
      Height = 28
      ItemHeight = 20
      TabOrder = 4
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 593
    Height = 323
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
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZSDH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 137
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 337
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 168
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select ZSDH,ZSYWJC,ZSQM from ZSZL')
    Left = 424
    Top = 200
    object Query1ZSDH: TStringField
      FieldName = 'ZSDH'
      FixedChar = True
      Size = 6
    end
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1ZSQM: TStringField
      FieldName = 'ZSQM'
      FixedChar = True
      Size = 50
    end
  end
end

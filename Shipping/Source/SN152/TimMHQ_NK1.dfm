object TimMHQ_NK: TTimMHQ_NK
  Left = 316
  Top = 213
  Width = 691
  Height = 377
  Caption = 'TimMHQ_NK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 675
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 14
      Width = 51
      Height = 20
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 164
      Top = 14
      Width = 62
      Height = 16
      Caption = 'MatName:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 61
      Top = 10
      Width = 95
      Height = 28
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 531
      Top = 6
      Width = 75
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 229
      Top = 10
      Width = 289
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 675
    Height = 289
    Align = alClient
    DataSource = DataSource1
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
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 239
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 265
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select * '
      'from clzl')
    Left = 208
    Top = 120
    object Query1cldh: TStringField
      FieldName = 'cldh'
      Origin = 'DB.clzl.cldh'
      FixedChar = True
      Size = 10
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.clzl.zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.clzl.ywpm'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 120
  end
end

object CLBHLockQty: TCLBHLockQty
  Left = 576
  Top = 229
  Width = 1091
  Height = 567
  Caption = 'CLBHLockQty'
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
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1075
    Height = 56
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 20
      Width = 56
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'CLBH:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 80
      Top = 16
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 232
      Top = 12
      Width = 89
      Height = 33
      Caption = 'QUERY'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 56
    Width = 1075
    Height = 472
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh2DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'cldh'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Width = 321
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Width = 297
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'cllb'
        Footers = <>
        Width = 96
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from zszl'
      'order by zsdh')
    Left = 136
    Top = 112
    object Query1cllb: TStringField
      FieldName = 'cllb'
    end
    object strngfldQuery1zwpm: TStringField
      FieldName = 'zwpm'
      Size = 250
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Size = 250
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
    end
    object Query1cldh: TStringField
      FieldName = 'cldh'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 112
  end
end

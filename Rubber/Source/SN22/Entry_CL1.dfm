object Entry_CL: TEntry_CL
  Left = 584
  Top = 225
  Width = 603
  Height = 480
  Caption = 'Entry Material'
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
    Width = 587
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 43
      Height = 16
      Caption = 'MatNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 207
      Top = 16
      Width = 91
      Height = 16
      Caption = 'Material Name:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 65
      Top = 11
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 303
      Top = 11
      Width = 121
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 450
      Top = 6
      Width = 75
      Height = 33
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 587
    Height = 393
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
        Title.Caption = 'Material ID'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = 'Chinese Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'English Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'dwbh'
        Footers = <>
        Title.Caption = 'DWBH'
        Width = 60
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select cldh,zwpm,ywpm,dwbh'
      'from LIY_DD.DBO.CLZL CLZL'
      'ORDER BY cldh')
    Left = 88
    Top = 128
    object Query1cldh: TStringField
      FieldName = 'cldh'
      FixedChar = True
      Size = 16
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      FixedChar = True
      Size = 60
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      FixedChar = True
      Size = 60
    end
    object Query1dwbh: TStringField
      FieldName = 'dwbh'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 128
  end
end

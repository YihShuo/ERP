object Order: TOrder
  Left = 416
  Top = 259
  Width = 546
  Height = 472
  Caption = 'Select Order'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 73
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 32
      Width = 53
      Height = 16
      Caption = 'SpecNo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 190
      Top = 34
      Width = 40
      Height = 16
      Caption = 'Article:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 64
      Top = 24
      Width = 116
      Height = 24
      AutoSelect = False
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 412
      Top = 20
      Width = 94
      Height = 32
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
    object DBEdit1: TDBEdit
      Left = 239
      Top = 25
      Width = 153
      Height = 24
      Color = 11579647
      DataField = 'Article'
      DataSource = QC_DailyBonding.MasDS
      ReadOnly = True
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 538
    Height = 365
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
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
        FieldName = 'ddbh'
        Footers = <>
        Title.Caption = 'SCBH'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SheHao'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 150
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = QC_DailyBonding.MasDS
    SQL.Strings = (
      'select ddbh,XieXing,SheHao,Article'
      'from ddzl'
      'where article=:article')
    Left = 121
    Top = 151
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'Article'
        ParamType = ptUnknown
        Size = 21
      end>
    object Query1ddbh: TStringField
      FieldName = 'ddbh'
      FixedChar = True
      Size = 15
    end
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 152
  end
end

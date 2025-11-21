object MachineType: TMachineType
  Left = 681
  Top = 317
  Width = 385
  Height = 240
  Caption = 'MachineType'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 369
    Height = 201
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
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
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
        Width = 58
      end
      item
        EditButtons = <>
        FieldName = 'Kieu'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
      end
      item
        EditButtons = <>
        FieldName = 'Type'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = []
        Width = 129
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'SELECT '#39'MC'#39' AS '#39'ID'#39', '#39'May Chat'#39' AS '#39'Kieu'#39', '#39#35009#26039#27231#39' AS '#39'Type'#39
      'UNION ALL'
      'SELECT '#39'Leather'#39', '#39'Leather'#39', '#39#35009#26039#27231'('#30382#26009')'#39
      'UNION ALL'
      'SELECT '#39'AC'#39', '#39'May chat Tu dong'#39', '#39#33258#21205#35009#26039#27231#39' '
      'UNION ALL'
      'SELECT '#39'Lectra'#39', '#39'Lectra'#39', '#39'Lectra'#35009#26039#27231#39)
    Left = 16
    Top = 80
    object Query1Kieu: TStringField
      FieldName = 'Kieu'
    end
    object Query1Type: TStringField
      FieldName = 'Type'
    end
    object Query1ID: TStringField
      FieldName = 'ID'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 48
  end
end

object MachineSelect: TMachineSelect
  Left = 489
  Top = 358
  Width = 572
  Height = 454
  Caption = 'MachineSelect'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 556
    Height = 73
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 15
      Top = 16
      Width = 83
      Height = 16
      Caption = 'MachineType'
    end
    object Label2: TLabel
      Left = 16
      Top = 40
      Width = 81
      Height = 16
      Caption = 'MachineLean'
    end
    object TypeBox: TComboBox
      Left = 104
      Top = 12
      Width = 209
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 0
      Text = 'May Chat ('#35009#26039#27231')'
      OnChange = TypeBoxChange
      Items.Strings = (
        'May Chat ('#35009#26039#27231')'
        'May chat Tu dong ('#33258#21205#35009#26039#27231')'
        'Lectra')
    end
    object MachineBox: TComboBox
      Left = 104
      Top = 36
      Width = 209
      Height = 24
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object Button1: TButton
      Left = 392
      Top = 16
      Width = 145
      Height = 41
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 73
    Width = 556
    Height = 342
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
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
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'MachineName'
        Footers = <>
        Width = 292
      end
      item
        EditButtons = <>
        FieldName = 'MachineType'
        Footers = <>
        Width = 71
      end
      item
        EditButtons = <>
        FieldName = 'DepNo'
        Footers = <>
        Width = 75
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 152
    object Query1ID: TStringField
      FieldName = 'ID'
      Size = 10
    end
    object Query1MachineName: TStringField
      FieldName = 'MachineName'
      Size = 50
    end
    object Query1MachineType: TStringField
      FieldName = 'MachineType'
      Size = 10
    end
    object Query1DepNo: TStringField
      FieldName = 'DepNo'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 120
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 48
    Top = 152
  end
end

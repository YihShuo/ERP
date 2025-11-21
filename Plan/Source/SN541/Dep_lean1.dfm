object Dep_lean: TDep_lean
  Left = 511
  Top = 208
  Width = 622
  Height = 441
  Caption = 'Dep_lean'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 12
      Width = 51
      Height = 20
      Caption = 'DepID:'
    end
    object Label2: TLabel
      Left = 152
      Top = 11
      Width = 76
      Height = 20
      Caption = 'DepName:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 9
      Width = 73
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 348
      Top = 8
      Width = 65
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 232
      Top = 8
      Width = 105
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 419
      Top = 22
      Width = 49
      Height = 17
      Caption = 'All'
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 606
    Height = 353
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 111
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 148
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Width = 167
      end
      item
        EditButtons = <>
        FieldName = 'sumline'
        Footers = <>
        Title.Caption = 'Sumline'
        Width = 82
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BDepartment'
      'order by ID')
    Left = 424
    Top = 160
    object Query1ID: TStringField
      DisplayWidth = 12
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      DisplayWidth = 27
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      DisplayWidth = 57
      FieldName = 'DepMemo'
      Origin = 'DB.BDepartment.DepMemo'
      FixedChar = True
      Size = 50
    end
    object Query1sumline: TStringField
      FieldName = 'sumline'
      Origin = 'DB.BDepartment.sumline'
      FixedChar = True
      Size = 8
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
  end
end

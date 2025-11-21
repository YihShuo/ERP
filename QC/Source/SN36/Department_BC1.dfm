object Department_BC: TDepartment_BC
  Left = 581
  Top = 297
  Width = 491
  Height = 413
  BorderIcons = [biSystemMenu]
  Caption = 'Department_BC'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 475
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 12
      Width = 48
      Height = 16
      Caption = 'Building'
    end
    object Label2: TLabel
      Left = 225
      Top = 12
      Width = 45
      Height = 16
      Caption = 'Section'
    end
    object CB1: TComboBox
      Left = 69
      Top = 9
      Width = 140
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      TabOrder = 0
      OnChange = CB1Change
    end
    object CB2: TComboBox
      Left = 274
      Top = 9
      Width = 87
      Height = 24
      Style = csDropDownList
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 1
      Text = 'Assembly'
      OnChange = CB2Change
      Items.Strings = (
        'Assembly'
        'Stitching'
        'Cutting')
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 475
    Height = 333
    Align = alClient
    DataSource = DS1
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
        FieldName = 'Xuong'
        Footers = <>
        Title.Caption = 'Building'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        Title.Caption = 'Dep ID'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = 'Dep Name'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Title.Caption = 'Dep Memo'
        Width = 150
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select distinct ID, DepName, GXLB from BDepartment Where 1 = 2')
    Left = 13
    Top = 119
    object Query1Xuong: TStringField
      FieldName = 'Xuong'
      Size = 4
    end
    object Query1ID: TStringField
      FieldName = 'ID'
      Origin = 'DB.BDepartment.ID'
      FixedChar = True
      Size = 10
    end
    object Query1DepName: TStringField
      FieldName = 'DepName'
      Origin = 'DB.BDepartment.DepName'
      FixedChar = True
      Size = 50
    end
    object Query1DepMemo: TStringField
      FieldName = 'DepMemo'
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 13
    Top = 88
  end
  object QSearch: TQuery
    DatabaseName = 'DB'
    Left = 13
    Top = 151
  end
end

object ApplyTotalDepName: TApplyTotalDepName
  Left = 582
  Top = 413
  Width = 522
  Height = 384
  Caption = 'ApplyTotal DepName'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 506
    Height = 41
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 11
      Width = 51
      Height = 20
      Caption = 'DepID:'
    end
    object Label2: TLabel
      Left = 147
      Top = 10
      Width = 76
      Height = 20
      Caption = 'DepName:'
    end
    object Edit1: TEdit
      Left = 67
      Top = 8
      Width = 73
      Height = 29
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 363
      Top = 2
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 227
      Top = 6
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 506
    Height = 304
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
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Width = 199
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 352
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from BDepartment'
      'order by ID')
    Left = 352
    Top = 120
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
  end
end

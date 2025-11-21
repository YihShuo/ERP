object KUNreturn_Dep: TKUNreturn_Dep
  Left = 733
  Top = 378
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'KUNreturn_Dep'
  ClientHeight = 316
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 585
    Height = 42
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 9
      Width = 51
      Height = 20
      Caption = 'DepID:'
    end
    object Label2: TLabel
      Left = 152
      Top = 9
      Width = 76
      Height = 20
      Caption = 'DepName:'
    end
    object Edit1: TEdit
      Left = 72
      Top = 5
      Width = 73
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'VNI-Times'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Button1: TButton
      Left = 368
      Top = 3
      Width = 89
      Height = 33
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Edit2: TEdit
      Left = 232
      Top = 5
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      TabOrder = 2
      OnKeyPress = Edit2KeyPress
    end
    object CheckBox1: TCheckBox
      Left = 464
      Top = 12
      Width = 97
      Height = 17
      Caption = 'show only used'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 42
    Width = 585
    Height = 274
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
    OnKeyPress = DBGridEh1KeyPress
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
      end
      item
        EditButtons = <>
        FieldName = 'DepMemo'
        Footers = <>
        Width = 182
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 424
    Top = 128
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
    object Query1YN: TStringField
      DisplayWidth = 3
      FieldName = 'YN'
      Origin = 'DB.BDepartment.YN'
      FixedChar = True
      Size = 1
    end
  end
end

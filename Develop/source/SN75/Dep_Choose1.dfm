object Dep_Choose: TDep_Choose
  Left = 388
  Top = 33
  Width = 499
  Height = 670
  Caption = 'Dep_Choose'
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 483
    Height = 81
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 72
      Top = 16
      Width = 53
      Height = 16
      Caption = 'DEP. ID :'
    end
    object lbl2: TLabel
      Left = 48
      Top = 48
      Width = 77
      Height = 16
      Caption = 'DEP. Name :'
    end
    object edtDEPID_edt: TEdit
      Left = 128
      Top = 8
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object edtDEPName_edt2: TEdit
      Left = 128
      Top = 40
      Width = 185
      Height = 24
      TabOrder = 1
    end
    object btn1: TButton
      Left = 368
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 2
      OnClick = btn1Click
    end
  end
  object dbgrdh1: TDBGridEh
    Left = 0
    Top = 81
    Width = 483
    Height = 551
    Align = alClient
    DataSource = dsDS1
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
    PopupMenu = pm1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgrdh1CellClick
    OnGetCellParams = dbgrdh1GetCellParams
    Columns = <
      item
        Color = clSilver
        EditButtons = <>
        FieldName = 'Codes'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Code'
        Width = 61
      end
      item
        EditButtons = <>
        FieldName = 'Code_Name'
        Footers = <>
        Width = 383
      end>
  end
  object dsDS1: TDataSource
    DataSet = qry1
    Left = 120
    Top = 112
  end
  object qry1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      '')
    UpdateObject = UpSQL1
    Left = 120
    Top = 152
    object qry1Codes: TStringField
      FieldName = 'Codes'
      Origin = 'DB.SetCode.Codes'
      FixedChar = True
      Size = 3
    end
    object qry1Code_Name: TStringField
      FieldName = 'Code_Name'
      Origin = 'DB.SetCode.Code_Name'
      FixedChar = True
    end
    object qry1Program_ID: TStringField
      FieldName = 'Program_ID'
      Origin = 'DB.SetCode.Program_ID'
      FixedChar = True
      Size = 3
    end
    object qry1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.SetCode.YN'
      FixedChar = True
      Size = 1
    end
  end
  object UpSQL1: TUpdateSQL
    ModifySQL.Strings = (
      'update setcode'
      'set'
      '  Codes = :Codes,'
      '  Code_Name = :Code_Name,'
      '  Program_ID = :Program_ID,'
      '  YN = :YN'
      'where'
      '  Codes = :OLD_Codes and'
      '  Code_Name = :OLD_Code_Name and'
      '  Program_ID = :OLD_Program_ID and'
      '  YN = :OLD_YN')
    InsertSQL.Strings = (
      'insert into setcode'
      '  (Codes, Code_Name, Program_ID, YN)'
      'values'
      '  (:Codes, :Code_Name, :Program_ID, :YN)')
    DeleteSQL.Strings = (
      'delete from setcode'
      'where'
      '  Codes = :OLD_Codes and'
      '  Code_Name = :OLD_Code_Name and'
      '  Program_ID = :OLD_Program_ID and'
      '  YN = :OLD_YN')
    Left = 120
    Top = 192
  end
  object pm1: TPopupMenu
    Left = 184
    Top = 160
    object Modify1: TMenuItem
      Caption = 'Modify'
      OnClick = Modify1Click
    end
    object Insert1: TMenuItem
      Caption = 'Insert'
      OnClick = Insert1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      OnClick = Delete1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
  end
  object qry2: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select  *  from setcode'
      'where 1=2'
      '')
    Left = 192
    Top = 232
  end
end

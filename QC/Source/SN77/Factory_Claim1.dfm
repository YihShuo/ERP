object Factory_Claim: TFactory_Claim
  Left = 390
  Top = 288
  Width = 431
  Height = 494
  Caption = 'Factory_Claim'
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
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 415
    Height = 49
    Align = alTop
    TabOrder = 0
    object lbl1: TLabel
      Left = 0
      Top = 24
      Width = 39
      Height = 16
      Caption = 'Fac ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 160
      Top = 24
      Width = 63
      Height = 16
      Caption = 'Fac Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 336
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object edt1: TEdit
      Left = 48
      Top = 20
      Width = 105
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edt2: TEdit
      Left = 232
      Top = 20
      Width = 97
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 49
    Width = 415
    Height = 406
    Align = alClient
    TabOrder = 1
    object dbg_FC: TDBGridEh
      Left = 1
      Top = 1
      Width = 413
      Height = 404
      Align = alClient
      DataSource = ds_FC
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
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = dbg_FCDblClick
      Columns = <
        item
          EditButtons = <>
          FieldName = 'Fac_ID'
          Footers = <>
          Title.Caption = 'ID'
          Width = 89
        end
        item
          EditButtons = <>
          FieldName = 'Factory_Name'
          Footers = <>
          Title.Caption = 'Factory Name'
          Width = 93
        end
        item
          EditButtons = <>
          FieldName = 'Country'
          Footers = <>
          Width = 181
        end>
    end
  end
  object qry_FC: TQuery
    AfterOpen = qry_FCAfterOpen
    BeforeClose = qry_FCBeforeClose
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *, '#39#39'YN from Factory_Record'
      'where 1=2')
    UpdateObject = up_FC
    Left = 112
    Top = 225
    object strngfld_FCFac_ID: TStringField
      FieldName = 'Fac_ID'
      FixedChar = True
      Size = 8
    end
    object strngfld_FCFactory_Name: TStringField
      FieldName = 'Factory_Name'
      FixedChar = True
    end
    object strngfld_FCCountry: TStringField
      FieldName = 'Country'
      FixedChar = True
      Size = 60
    end
    object strngfld_FCYN: TStringField
      FieldName = 'YN'
      FixedChar = True
      Size = 1
    end
  end
  object ds_FC: TDataSource
    DataSet = qry_FC
    Left = 112
    Top = 193
  end
  object up_FC: TUpdateSQL
    ModifySQL.Strings = (
      'update Factory_Record'
      'set'
      '  Fac_ID = :Fac_ID,'
      '  Factory_Name = :Factory_Name,'
      '  Country = :Country'
      'where'
      '  Fac_ID = :OLD_Fac_ID')
    InsertSQL.Strings = (
      'insert into Factory_Record'
      '  (Fac_ID, Factory_Name, Country)'
      'values'
      '  (:Fac_ID, :Factory_Name, :Country)')
    DeleteSQL.Strings = (
      'delete from Factory_Record'
      'where'
      '  Fac_ID = :OLD_Fac_ID')
    Left = 112
    Top = 257
  end
  object pm1: TPopupMenu
    Left = 112
    Top = 289
    object Insert1: TMenuItem
      Caption = 'Insert'
      Enabled = False
      OnClick = Insert1Click
    end
    object Delete1: TMenuItem
      Caption = 'Delete'
      Enabled = False
      OnClick = Delete1Click
    end
    object Modify1: TMenuItem
      Caption = 'Modify'
      Enabled = False
      OnClick = Modify1Click
    end
    object Save1: TMenuItem
      Caption = 'Save'
      Enabled = False
      OnClick = Save1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      Enabled = False
      OnClick = Cancel1Click
    end
  end
end

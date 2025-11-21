object Module: TModule
  Left = 543
  Top = 343
  Width = 234
  Height = 319
  Caption = 'Module'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 218
    Height = 280
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'MKID'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'MKNAME'
        Footers = <>
        Width = 130
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 80
    object Query1MKID: TStringField
      FieldName = 'MKID'
      Size = 10
    end
    object Query1MKNAME: TStringField
      FieldName = 'MKNAME'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 48
  end
end

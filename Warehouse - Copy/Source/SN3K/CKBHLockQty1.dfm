object CKBHLockQty: TCKBHLockQty
  Left = 664
  Top = 190
  Width = 371
  Height = 758
  Caption = 'CKBHLockQty'
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
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 355
    Height = 719
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
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh2DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ckbh'
        Footers = <>
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'Memo'
        Footers = <>
        Width = 235
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from zszl'
      'order by zsdh')
    Left = 136
    Top = 112
    object Query1ckbh: TStringField
      FieldName = 'ckbh'
    end
    object Query1Memo: TStringField
      FieldName = 'Memo'
      Size = 100
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 112
  end
end

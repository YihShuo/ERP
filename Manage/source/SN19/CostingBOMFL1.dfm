object CostingBOMFL: TCostingBOMFL
  Left = 509
  Top = 185
  Width = 525
  Height = 376
  Caption = 'CostingBOMFL'
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
    Width = 509
    Height = 337
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'FLBH'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'XFL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 96
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select *'
      'from XXBWFLS_K'
      'order by FLBH,XFL')
    Left = 168
    Top = 160
    object Query1FLBH: TStringField
      FieldName = 'FLBH'
      Origin = 'DB.XXBWFLS_K.FLBH'
      FixedChar = True
      Size = 2
    end
    object Query1XFL: TStringField
      FieldName = 'XFL'
      Origin = 'DB.XXBWFLS_K.XFL'
      FixedChar = True
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.XXBWFLS_K.USERID'
      FixedChar = True
      Size = 6
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.XXBWFLS_K.USERDATE'
    end
    object Query1YN: TStringField
      FieldName = 'YN'
      Origin = 'DB.XXBWFLS_K.YN'
      FixedChar = True
      Size = 1
    end
  end
end

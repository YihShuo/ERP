object OrderSpec_Size: TOrderSpec_Size
  Left = 482
  Top = 221
  Width = 228
  Height = 364
  Caption = 'OrderSpec_Size'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 220
    Height = 333
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
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Size'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select Size,CLSL '
      'from ZLZLS2'
      'where ZLBH='#39'Y2106-0001'#39
      '      and BWBH='#39'C230'#39)
    Left = 128
    Top = 48
    object Query1Size: TStringField
      FieldName = 'Size'
      FixedChar = True
      Size = 6
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 160
    Top = 48
  end
end

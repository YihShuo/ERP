object OrderSpec_Son: TOrderSpec_Son
  Left = 404
  Top = 252
  Width = 575
  Height = 231
  BorderIcons = [biSystemMenu]
  Caption = 'OrderSpec_Son'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 567
    Height = 200
    Align = alClient
    DataSource = DataSource1
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
        FieldName = 'CLDH1'
        Footers = <>
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 374
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 50
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = OrderSpec.DS2
    SQL.Strings = (
      'select CLZHZL.CLDH1,CLZL.YWPM,CLZL.DWBH'
      'from CLZHZL'
      'left join CLZL on CLZL.CLDH=CLZHZl.CLDH1'
      'where CLZHZL.CLDH=:CLBH')
    Left = 128
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'clbh'
        ParamType = ptUnknown
        Size = 11
      end>
    object Query1CLDH1: TStringField
      FieldName = 'CLDH1'
      FixedChar = True
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query1DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 168
    Top = 72
  end
end

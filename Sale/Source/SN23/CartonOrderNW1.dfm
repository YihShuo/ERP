object CartonOrderNW: TCartonOrderNW
  Left = 395
  Top = 344
  Width = 321
  Height = 324
  BorderIcons = [biSystemMenu]
  Caption = 'CartonOrderNW'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 313
    Height = 293
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'XXCC'
        Footers = <>
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'NWeigh'
        Footers = <>
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'OWeigh'
        Footers = <>
        Width = 98
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 88
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = CartonOrder.DS1
    SQL.Strings = (
      'select *'
      'from YWXXnew'
      'where XieXing=:XieXing and shehao=:shehao'
      'order by XXCC')
    Left = 192
    Top = 96
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'XieXing'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'shehao'
        ParamType = ptUnknown
        Size = 6
      end>
    object Query1XieXing: TStringField
      FieldName = 'XieXing'
      Origin = 'DB.YWXX.XieXing'
      FixedChar = True
      Size = 15
    end
    object Query1SheHao: TStringField
      FieldName = 'SheHao'
      Origin = 'DB.YWXXnew.SheHao'
      FixedChar = True
      Size = 5
    end
    object Query1XXCC: TStringField
      FieldName = 'XXCC'
      Origin = 'DB.YWXX.XXCC'
      FixedChar = True
      Size = 6
    end
    object Query1NWeigh: TCurrencyField
      FieldName = 'NWeigh'
      Origin = 'DB.YWXX.NWeigh'
      DisplayFormat = '##,#0.000'
    end
    object Query1OWeigh: TCurrencyField
      FieldName = 'OWeigh'
      Origin = 'DB.YWXX.OWeigh'
      DisplayFormat = '##,#0.000'
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEh1
    Options = []
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'MS Sans Serif'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'MS Sans Serif'
    PageHeader.Font.Style = []
    Units = MM
    Left = 192
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 72
    Top = 96
    object Print1: TMenuItem
      Caption = 'Print'
      OnClick = Print1Click
    end
  end
end

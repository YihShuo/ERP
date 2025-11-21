object MatPrice_ACC: TMatPrice_ACC
  Left = 457
  Top = 226
  Width = 484
  Height = 395
  BorderIcons = [biSystemMenu]
  Caption = 'MatPrice_ACC'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 468
    Height = 357
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'KCYEAR'
        Footers = <>
        Width = 66
      end
      item
        EditButtons = <>
        FieldName = 'KCMONTH'
        Footers = <>
        Width = 72
      end
      item
        EditButtons = <>
        FieldName = 'CKBH'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 106
      end
      item
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = MatPrice.DS1
    SQL.Strings = (
      'select KCYEAR,KCMONTH,CKBH,CLBH,VNPrice,USPrice'
      'from KCCLMONTH'
      'where VNPrice<>0'
      'and CLBH=:CLBH'
      'order by KCYEAR  DESC,KCMONTH  DESC')
    Left = 96
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1KCYEAR: TStringField
      FieldName = 'KCYEAR'
      Origin = 'DB.KCCLMONTH.KCYEAR'
      FixedChar = True
      Size = 4
    end
    object Query1KCMONTH: TStringField
      FieldName = 'KCMONTH'
      Origin = 'DB.KCCLMONTH.KCMONTH'
      FixedChar = True
      Size = 2
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      Origin = 'DB.KCCLMONTH.CKBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 72
  end
end

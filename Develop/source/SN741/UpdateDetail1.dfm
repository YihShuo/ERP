object UpdateDetail: TUpdateDetail
  Left = 192
  Top = 125
  Width = 632
  Height = 309
  Caption = 'Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 616
    Height = 270
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -15
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TNO'
        Footers = <>
        Title.Caption = 'Invoice No'
        Width = 92
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 233
      end
      item
        EditButtons = <>
        FieldName = 'OldID'
        Footers = <>
        Width = 56
      end
      item
        EditButtons = <>
        FieldName = 'DelID'
        Footers = <>
        Title.Caption = 'UpdateID'
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'DelDate'
        Footers = <>
        Title.Caption = 'UpdateDate'
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 96
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ColorSwatchScan.DS2
    SQL.Strings = (
      'select * from dbo.BDelRec'
      'where tablename = '#39'CGZLInvoiceS_Check'#39
      'and TNO =:CINO')
    Left = 213
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CINO'
        ParamType = ptUnknown
      end>
    object Query1TableName: TStringField
      FieldName = 'TableName'
      FixedChar = True
    end
    object Query1TNO: TStringField
      FieldName = 'TNO'
      FixedChar = True
      Size = 60
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 60
    end
    object Query1OldID: TStringField
      FieldName = 'OldID'
      FixedChar = True
      Size = 15
    end
    object Query1DelID: TStringField
      FieldName = 'DelID'
      FixedChar = True
      Size = 15
    end
    object Query1DelDate: TDateTimeField
      FieldName = 'DelDate'
    end
  end
end

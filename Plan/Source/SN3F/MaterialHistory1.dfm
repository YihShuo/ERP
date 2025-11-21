object MaterialHistory: TMaterialHistory
  Left = 677
  Top = 308
  Width = 448
  Height = 282
  BorderIcons = [biSystemMenu]
  Caption = 'History'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 432
    Height = 243
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ReadOnly = True
    SumList.Active = True
    SumList.VirtualRecords = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    VertScrollBar.Tracking = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Type'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 100
      end
      item
        DisplayFormat = 'yyyy/MM/dd hh:mm:ss'
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Title.Caption = 'Update Time'
      end
      item
        DisplayFormat = '###,###,##0.0'
        EditButtons = <>
        FieldName = 'Usage'
        Footers = <>
        Width = 60
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'ArrivalDate'
        Footers = <>
        Title.Caption = 'Arrival Date'
        Width = 100
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 88
    object Query1Type: TStringField
      FieldName = 'Type'
      Size = 10
    end
    object Query1UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
    object Query1ArrivalDate: TDateTimeField
      FieldName = 'ArrivalDate'
    end
    object Query1Usage: TFloatField
      FieldName = 'Usage'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 56
  end
end

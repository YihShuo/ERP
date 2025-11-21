object LeanInventory: TLeanInventory
  Left = 645
  Top = 322
  Width = 573
  Height = 388
  Caption = 'LeanInventory'
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
    Width = 557
    Height = 349
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
    HorzScrollBar.Tracking = True
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
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = 'Cutting Die'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'RY'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Cycle'
        Footers = <>
        Width = 80
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'Pairs'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Width = 60
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 88
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1RY: TStringField
      FieldName = 'RY'
      Size = 15
    end
    object Query1Cycle: TStringField
      FieldName = 'Cycle'
      Size = 15
    end
    object Query1Pairs: TIntegerField
      FieldName = 'Pairs'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 56
  end
end

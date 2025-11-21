object OutsourcingLeadTime: TOutsourcingLeadTime
  Left = 584
  Top = 251
  Width = 778
  Height = 488
  Caption = 'Outsourcing Status'
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
    Width = 762
    Height = 449
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
    OnGetCellParams = DBGridEh1GetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Building'
        Footers = <>
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'Lean'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = 'Cutting Die'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'RY'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'Cycle'
        Footers = <>
        Width = 60
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'OSPairs'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Outsoursed'
        Width = 80
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'RPairs'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Returned'
        Width = 80
      end
      item
        DisplayFormat = '#0.0%'
        EditButtons = <>
        FieldName = 'Ratio'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Status'
        Width = 60
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    Left = 16
    Top = 88
    object Query1Building: TStringField
      FieldName = 'Building'
      Size = 5
    end
    object Query1Lean: TStringField
      FieldName = 'Lean'
      Size = 10
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Size = 15
    end
    object Query1Cycle: TStringField
      FieldName = 'Cycle'
      Size = 15
    end
    object Query1OSPairs: TIntegerField
      FieldName = 'OSPairs'
    end
    object Query1RPairs: TIntegerField
      FieldName = 'RPairs'
    end
    object Query1Ratio: TFloatField
      FieldName = 'Ratio'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 56
  end
end

object EstWorkload: TEstWorkload
  Left = 443
  Top = 194
  Width = 941
  Height = 535
  BorderIcons = [biSystemMenu]
  Caption = 'EstWorkload'
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
    Width = 925
    Height = 496
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
        FieldName = 'DAOMH'
        Footer.DisplayFormat = '###,###,##0'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = 'Cutting Die'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = 'SKU'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'DDBH'
        Footers = <>
        Title.Caption = 'RY'
        Width = 90
      end
      item
        DisplayFormat = 'yyyy/MM/dd'
        EditButtons = <>
        FieldName = 'schedule_date'
        Footers = <>
        Title.Caption = 'Assembly Date'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'Process'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Supplier'
        Footers = <>
        KeyList.Strings = (
          'JNG'
          'P154'
          'V066'
          'P213'
          'A159'
          'V133'
          'V034'
          'V194'
          'K110'
          'P186')
        PickList.Strings = (
          'TY XUAN'
          'TIEN HUNG'
          'BAO HE'
          'HAI AN'
          'O2 PARTNER LLC'
          'LI MAO'
          'CHEN TAI'
          'WEI SHENG'
          'COLORTECH'
          'JIA HUA')
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Part'
        Footers = <>
        Width = 200
      end
      item
        DisplayFormat = '###,###,##0'
        EditButtons = <>
        FieldName = 'Qty'
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
    object Query1EstDate: TDateTimeField
      FieldName = 'EstDate'
    end
    object Query1DDBH: TStringField
      FieldName = 'DDBH'
      Size = 15
    end
    object Query1Process: TStringField
      FieldName = 'Process'
      Size = 30
    end
    object Query1Supplier: TStringField
      FieldName = 'Supplier'
      Size = 6
    end
    object Query1Part: TStringField
      FieldName = 'Part'
      Size = 30
    end
    object Query1Qty: TIntegerField
      FieldName = 'Qty'
    end
    object Query1DAOMH: TStringField
      FieldName = 'DAOMH'
      Size = 30
    end
    object Query1ARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object Query1schedule_date: TDateTimeField
      FieldName = 'schedule_date'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 56
  end
end

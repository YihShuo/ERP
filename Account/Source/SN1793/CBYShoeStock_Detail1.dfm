object CBYShoeStock_Detail: TCBYShoeStock_Detail
  Left = 467
  Top = 204
  Width = 641
  Height = 225
  Caption = 'CBYShoeStock_Detail'
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
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 633
    Height = 194
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = 16763080
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind]
    ParentFont = False
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'TestNO'
        Footer.FieldName = 'TestNO'
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #23567#35330#21934#34399'|OrderId'
      end
      item
        EditButtons = <>
        FieldName = 'YPDH'
        Footers = <>
        Title.Caption = #22823#35330#21934#34399'|YPDH'
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'CancelDate'
        Footers = <>
        Title.Caption = #21462#28040#26085#26399'|CancelDate'
        Width = 99
      end
      item
        EditButtons = <>
        FieldName = 'Complete'
        Footers = <>
        Title.Caption = #25104#34892#21253#35037#23436#25104#26085'|Complete'
        Width = 105
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #20986#36008#26085'|ShipDate'
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 208
    Top = 56
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = StockShoeMonth.DS3
    SQL.Strings = (
      
        'Select CBY_Orders.workOrderId as TestNO,CBY_Orders.MasterOrder a' +
        's YPDH,CBY_Orders.style as Article,CBY_Orders.StockDate as Compl' +
        'ete,CBY_Orders.ShipDate,CBY_Orders.CancelDate'
      'From CBY_Orders'
      'where CBY_Orders.workOrderId=:TestNo')
    Left = 208
    Top = 88
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'TestNo'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1TestNO: TStringField
      FieldName = 'TestNO'
      Origin = 'DB.CBY_Orders.workOrderId'
      FixedChar = True
      Size = 15
    end
    object Query1YPDH: TStringField
      FieldName = 'YPDH'
      Origin = 'DB.CBY_Orders.MasterOrder'
      FixedChar = True
      Size = 15
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      Origin = 'DB.CBY_Orders.style'
      FixedChar = True
    end
    object Query1CancelDate: TDateTimeField
      FieldName = 'CancelDate'
      Origin = 'DB.CBY_Orders.CancelDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1Complete: TDateTimeField
      FieldName = 'Complete'
      Origin = 'DB.CBY_Orders.StockDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
    object Query1ShipDate: TDateTimeField
      FieldName = 'ShipDate'
      Origin = 'DB.CBY_Orders.ShipDate'
      DisplayFormat = 'YYYY/MM/DD'
    end
  end
end

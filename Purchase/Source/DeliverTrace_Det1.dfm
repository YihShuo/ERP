object DeliverTrace_Det: TDeliverTrace_Det
  Left = 423
  Top = 226
  Width = 570
  Height = 380
  BorderIcons = [biSystemMenu]
  Caption = 'DeliverTrace_Det'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Arial'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 554
    Height = 340
    Align = alClient
    DataSource = DataSource1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = ANSI_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -14
    FooterFont.Name = 'Arial'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 98
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'YQDate'
        Footers = <>
        Width = 107
      end
      item
        EditButtons = <>
        FieldName = 'CFMDate'
        Footers = <>
        Width = 114
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DeliverTrace.DS1
    SQL.Strings = (
      'select *'
      'from CGZLSS'
      'where CGNO=:CGNO'
      'and CLBH=:CLBH')
    Left = 224
    Top = 120
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CGNO'
        ParamType = ptUnknown
        Size = 12
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.CGZLSS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.CGZLSS.Qty'
      DisplayFormat = '#,##0.00'
    end
    object Query1CLSL: TCurrencyField
      FieldName = 'CLSL'
      Origin = 'DB.CGZLSS.CLSL'
      DisplayFormat = '#,##0.00'
    end
    object Query1YQDate: TDateTimeField
      FieldName = 'YQDate'
      Origin = 'DB.CGZLSS.YQDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1CFMDate: TDateTimeField
      FieldName = 'CFMDate'
      Origin = 'DB.CGZLSS.CFMDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 264
    Top = 120
  end
end

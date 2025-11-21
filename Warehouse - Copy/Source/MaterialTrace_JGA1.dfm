object MaterialTrace_JGA: TMaterialTrace_JGA
  Left = 447
  Top = 264
  Width = 384
  Height = 413
  BorderIcons = [biSystemMenu]
  Caption = 'MaterialTrace_JGA'
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
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 376
    Height = 379
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
    FooterFont.Height = -13
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
        FieldName = 'CLBH'
        Footers = <>
        Width = 86
      end
      item
        EditButtons = <>
        FieldName = 'TotalQty'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 61
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select JGZLS.CLBH,JGZLS.Qty as TotalQty,JGZLSS.ZLBH,JGZLSS.Qty '
      'from JGZLS '
      'left join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO '
      'where JGZLS.JGNO='#39'20090600316'#39
      '      and JGZLS.ZMLB='#39'A010001146'#39
      'order by   JGZLS.CLBH,JGZLSS.ZLBH ')
    Left = 88
    Top = 64
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.JGZLS.CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1TotalQty: TCurrencyField
      FieldName = 'TotalQty'
      Origin = 'DB.JGZLS.Qty'
      DisplayFormat = '##,#0.00'
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.JGZLSS.ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1Qty: TCurrencyField
      FieldName = 'Qty'
      Origin = 'DB.JGZLSS.Qty'
      DisplayFormat = '##,#0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 64
  end
end

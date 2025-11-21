object Laststock_Det: TLaststock_Det
  Left = 397
  Top = 185
  Width = 559
  Height = 295
  Caption = 'Laststock_Det'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
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
    Width = 543
    Height = 257
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
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = #26982#38957#32232#34399'|MatNo'
        Width = 76
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = #26982#38957#21517#31281'|MatNM'
        Width = 118
      end
      item
        EditButtons = <>
        FieldName = 'SIZ'
        Footers = <>
        Title.Caption = #23610#30908'|SIZ'
        Width = 43
      end
      item
        Color = clYellow
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = #24235#23384'|Qty'
        Width = 91
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'LastRem'
        Footers = <>
        Title.Caption = #26376#21021'|LastRem'
        Width = 61
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Title.Caption = #20837#24235'|RKQty'
        Width = 55
      end
      item
        Color = clBtnFace
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <>
        Title.Caption = #20511#20986'|LLQty'
        Width = 56
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 248
    Top = 96
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = LastSTOCK.ds1
    SQL.Strings = (
      'select #CLZLKC_Last.*,CLZL.YWPM from #CLZLKC_Last'
      'left join CLZL on CLZL.CLDH=#CLZLKC_Last.CLBH '
      'where #CLZLKC_Last.CLBH=:CLBH'
      ' ')
    Left = 213
    Top = 96
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1CKBH: TStringField
      FieldName = 'CKBH'
      FixedChar = True
      Size = 4
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1SIZ: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 8
    end
    object Query1Qty: TFloatField
      FieldName = 'Qty'
    end
    object Query1LastRem: TFloatField
      FieldName = 'LastRem'
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
    end
    object Query1LLQty: TFloatField
      FieldName = 'LLQty'
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
  end
end

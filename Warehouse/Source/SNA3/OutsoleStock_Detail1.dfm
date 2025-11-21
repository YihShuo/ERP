object OutsoleStock_Detail: TOutsoleStock_Detail
  Left = 192
  Top = 125
  Width = 609
  Height = 398
  Caption = 'OutsoleStock_Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 593
    Height = 359
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
    FooterFont.Height = -11
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
        FieldName = 'RKNO'
        Footers = <>
        Width = 101
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 93
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'InDate'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'SIZ'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Width = 59
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = OutsoleSTOCK.ds2
    SQL.Strings = (
      
        'select OSRKSS.RKNO,OSRKSS.CLBH,OSRK.USERDATE as RKDate,OSRKS.InD' +
        'ate,OSRKSS.SIZ,OSRKSS.Qty as RKQty'
      'from OSRKSS'
      'left join OSRK on OSRK.RKNO = OSRKSS.RKNO'
      
        'left join OSRKS on OSRKS.RKNO=OSRKSS.RKNO and OSRKS.CLBH=OSRKSS.' +
        'CLBH'
      'where OSRKSS.CLBH=:CLBH'
      
        'group by OSRKSS.RKNO,OSRKSS.CLBH,OSRK.USERDATE,OSRKS.InDate,OSRK' +
        'SS.SIZ,OSRKSS.Qty')
    Left = 144
    Top = 112
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 13
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1RKDate: TDateTimeField
      FieldName = 'RKDate'
    end
    object Query1InDate: TDateTimeField
      FieldName = 'InDate'
    end
    object Query1SIZ: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 10
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 112
  end
end

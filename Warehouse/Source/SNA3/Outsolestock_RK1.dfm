object Outsolestock_RK: TOutsolestock_RK
  Left = 590
  Top = 314
  Width = 609
  Height = 398
  Caption = 'Outsolestock_RK'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
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
        Width = 85
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'RKDate'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'SIZ'
        Footers = <>
        Width = 46
      end
      item
        EditButtons = <>
        FieldName = 'RKQty'
        Footers = <>
        Width = 59
      end
      item
        EditButtons = <>
        FieldName = 'LLDate'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'LLQty'
        Footers = <>
        Width = 51
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = OutsoleSTOCK.ds1
    SQL.Strings = (
      
        'select OSRK.RKNO,OSRKSS.CLBH,OSRK.USERDATE as RKDate,OSRKSS.SIZ,' +
        'OSRKSS.Qty as RKQty,OSLL.USERDATE as LLDate,isnull (OSLLSS.Qty,0' +
        ')  as LLQty'
      'from OSRK left join OSRKSS on OSRK.RKNO=OSRKSS.RKNo'
      
        'left join OSLLSS on OSLLSS.CLBH=OSRKSS.CLBH and OSRKSS.SIZ=OSLLS' +
        'S.SIZ'
      'left join OSLL on OSLL.LLNO=OSLLSS.LLNO'
      'where OSRKSS.CLBH=:CLBH'
      
        'group by OSRK.RKNO,OSRK.USERDATE, OSRKSS.CLBH,OSRKSS.SIZ,OSRKSS.' +
        'Qty,OSLL.USERDATE,OSLLSS.Qty'
      '')
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
    object Query1SIZ: TStringField
      FieldName = 'SIZ'
      FixedChar = True
      Size = 10
    end
    object Query1RKQty: TFloatField
      FieldName = 'RKQty'
    end
    object Query1LLDate: TDateTimeField
      FieldName = 'LLDate'
    end
    object Query1LLQty: TFloatField
      FieldName = 'LLQty'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 184
    Top = 112
  end
end

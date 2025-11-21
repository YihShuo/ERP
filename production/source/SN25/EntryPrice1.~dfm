object EntryPrice: TEntryPrice
  Left = 1051
  Top = 455
  Width = 616
  Height = 351
  Caption = 'Entry Price'
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 600
    Height = 312
    Align = alClient
    DataSource = DS1
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'GSBH'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 97
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 81
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 38
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ReplenishCon.DS1
    SQL.Strings = (
      
        'select KCRK.GSBH, KCRKS.RKNO,KCRKS.CLBH,KCRKS.VNPrice,KCRKS.USPr' +
        'ice,KCRK.USERDATE ,KCRKS.RKSB'
      'from KCRKS'
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      'where  KCRKS.CLBH=:CLBH'
      'UNION ALL'
      
        'select KCRK_2014.GSBH, KCRKS_2014.RKNO,KCRKS_2014.CLBH,KCRKS_201' +
        '4.VNPrice,KCRKS_2014.USPrice,KCRK_2014.USERDATE ,KCRKS_2014.RKSB'
      'from KCRKS_2014'
      'left join KCRK_2014 on KCRKS_2014.RKNO=KCRK_2014.RKNO'
      'where  KCRKS_2014.CLBH=:CLBH'
      'ORDER BY 2 desc')
    Left = 96
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
      end>
    object Query1RKNO: TStringField
      FieldName = 'RKNO'
      FixedChar = True
      Size = 11
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query1USPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      DisplayFormat = 'yyyy/MM/dd'
    end
    object Query1RKSB: TStringField
      FieldName = 'RKSB'
      FixedChar = True
      Size = 2
    end
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 72
  end
end

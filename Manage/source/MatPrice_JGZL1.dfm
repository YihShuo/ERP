object MatPrice_JGZL: TMatPrice_JGZL
  Left = 402
  Top = 272
  Width = 604
  Height = 360
  BorderIcons = [biSystemMenu]
  Caption = 'MatPrice_JGZL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 105
    Width = 596
    Height = 221
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
    OnDblClick = DBGridEh1DblClick
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        EditButtons = <>
        FieldName = 'RKNO'
        Footers = <>
        Width = 94
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
      end
      item
        Color = 9240575
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 80
      end
      item
        Color = 9240575
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 39
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 596
    Height = 105
    Align = alTop
    DataSource = DS2
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        EditButtons = <>
        FieldName = 'JGNO'
        Footers = <>
        Width = 73
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 80
      end
      item
        Color = 7012351
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Width = 36
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 308
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 44
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = DS2
    SQL.Strings = (
      
        'select  '#39'KC'#39'+KCYEAR+'#39'/'#39'+KCMONTH as RKNO,CLBH,VNPrice,USPrice,USE' +
        'RDate,'#39'KC'#39' as RKSB'
      'from KCCLMONTH'
      'where CLBH=:ZMLB'
      'Union'
      
        'select top 12  KCRKS.RKNO,KCRKS.CLBH,KCRKS.VNPrice,KCRKS.USPrice' +
        ',KCRK.USERDATE ,KCRKS.RKSB'
      'from KCRKS'
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      'where  KCRKS.CLBH=:ZMLB'
      'order by KCRKS.RKNO DESC')
    Left = 104
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZMLB'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ZMLB'
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
    object Query1VNPrice: TFloatField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
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
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 136
    Top = 168
  end
  object Query2: TQuery
    DatabaseName = 'DB'
    DataSource = MatPrice.DS1
    SQL.Strings = (
      
        'select top 12 JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty,CLZL.YW' +
        'PM,CLZL.DWBH'
      'from JGZLS'
      'left join CLZl on CLZl.CLDH=JGZLS.ZMLB'
      'where JGZLS.CLBH=:CLBH'
      '        and JGZLS.ZMLB<>'#39'ZZZZZZZZZZ'#39
      'order by JGZLS.JGNO')
    Left = 112
    Top = 24
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query2JGNO: TStringField
      FieldName = 'JGNO'
      FixedChar = True
      Size = 11
    end
    object Query2CLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object Query2ZMLB: TStringField
      FieldName = 'ZMLB'
      FixedChar = True
      Size = 15
    end
    object Query2Qty: TCurrencyField
      FieldName = 'Qty'
      DisplayFormat = '##,#0.0000'
    end
    object Query2YWPM: TStringField
      FieldName = 'YWPM'
      FixedChar = True
      Size = 200
    end
    object Query2DWBH: TStringField
      FieldName = 'DWBH'
      FixedChar = True
      Size = 4
    end
  end
  object DS2: TDataSource
    DataSet = Query2
    Left = 152
    Top = 24
  end
end

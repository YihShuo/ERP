object MatPrice_Mon: TMatPrice_Mon
  Left = 414
  Top = 234
  Width = 598
  Height = 362
  BorderIcons = [biSystemMenu]
  Caption = 'MatPrice_Mon'
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
    Width = 582
    Height = 219
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
        FieldName = 'GSBH'
        Footers = <>
        Width = 50
      end
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
        Width = 97
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
        Width = 96
      end
      item
        EditButtons = <>
        FieldName = 'RKSB'
        Footers = <>
        Width = 45
      end>
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 0
    Width = 582
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
        FieldName = 'CLDH'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'CLDH1'
        Footers = <>
        Width = 78
      end
      item
        Color = 7012351
        EditButtons = <>
        FieldName = 'SYL'
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
      
        'select CKBH as GSBH, '#39'KC'#39'+KCYEAR+'#39'/'#39'+KCMONTH as RKNO,CLBH,VNPric' +
        'e,USPrice,USERDate,'#39'KC'#39' as RKSB'
      'from KCCLMONTH'
      'where CLBH=:CLDH1'
      'Union'
      
        'select top 12  KCRK.GSBH,KCRKS.RKNO,KCRKS.CLBH,KCRKS.VNPrice,KCR' +
        'KS.USPrice,KCRK.USERDATE ,KCRKS.RKSB'
      'from KCRKS'
      'left join KCRK on KCRKS.RKNO=KCRK.RKNO'
      'where  KCRKS.CLBH=:CLDH1'
      'order by KCRKS.RKNO DESC')
    Left = 104
    Top = 168
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLDH1'
        ParamType = ptUnknown
        Size = 11
      end
      item
        DataType = ftFixedChar
        Name = 'CLDH1'
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
    object Query1GSBH: TStringField
      FieldName = 'GSBH'
      FixedChar = True
      Size = 4
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
      'select CLZHZL.CLDH,CLZHZL.CLDH1,CLZHZL.SYL,CLZL.YWPM,CLZL.DWBH'
      'from CLZHZL'
      'left join CLZl on CLZl.CLDH=CLZHZL.CLDH1'
      'where CLZHZL.CLDH=:CLBH'
      '         and CLZHZL.YN<>'#39'3'#39
      'order by CLZHZL.CLDH1')
    Left = 112
    Top = 24
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query2CLDH: TStringField
      FieldName = 'CLDH'
      FixedChar = True
      Size = 10
    end
    object Query2CLDH1: TStringField
      FieldName = 'CLDH1'
      FixedChar = True
      Size = 10
    end
    object Query2SYL: TFloatField
      FieldName = 'SYL'
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

object PayMentCon_Price: TPayMentCon_Price
  Left = 395
  Top = 197
  Width = 491
  Height = 258
  BorderIcons = [biSystemMenu]
  Caption = 'PayMentCon_Price'
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
    Top = 0
    Width = 483
    Height = 224
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
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 84
      end
      item
        EditButtons = <>
        FieldName = 'BJNO'
        Footers = <>
        Width = 96
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 76
      end
      item
        Color = 11927551
        EditButtons = <>
        FieldName = 'VNPrice'
        Footers = <>
        Width = 83
      end
      item
        EditButtons = <>
        FieldName = 'USERDate'
        Footers = <>
        Width = 73
      end>
  end
  object CGBJS: TQuery
    DatabaseName = 'DB'
    DataSource = PayMentCon.DS4
    SQL.Strings = (
      
        'select CGBJS.CLBH,CGBJS.BJNO,CGBJS.USPrice,CGBJS.VNPrice,CGBJ.US' +
        'ERDate'
      'from CGBJS'
      'left join CGBJ on CGBJ.BJNO=CGBJS.BJNO'
      'left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH'
      'where CGBJS.CLBH=:CLBH'
      'order by CGBJS.BJNO')
    Left = 152
    Top = 80
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object CGBJSCLBH: TStringField
      FieldName = 'CLBH'
      FixedChar = True
      Size = 15
    end
    object CGBJSBJNO: TStringField
      FieldName = 'BJNO'
      FixedChar = True
      Size = 11
    end
    object CGBJSUSPrice: TCurrencyField
      FieldName = 'USPrice'
      DisplayFormat = '##,#0.0000'
    end
    object CGBJSVNPrice: TCurrencyField
      FieldName = 'VNPrice'
      DisplayFormat = '##,#0'
    end
    object CGBJSUSERDate: TDateTimeField
      FieldName = 'USERDate'
      DisplayFormat = 'yyyy/MM/dd'
    end
  end
  object DS1: TDataSource
    DataSet = CGBJS
    Left = 184
    Top = 80
  end
end

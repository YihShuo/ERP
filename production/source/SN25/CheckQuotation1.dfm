object CheckQuotation: TCheckQuotation
  Left = 858
  Top = 332
  Width = 616
  Height = 351
  Caption = 'Check Quotation'
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
        FieldName = 'BJNO'
        Footers = <>
        Width = 91
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 88
      end
      item
        EditButtons = <>
        FieldName = 'USPrice'
        Footers = <>
        Width = 62
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 120
      end>
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 128
    Top = 72
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = ReplenishCon.DS1
    SQL.Strings = (
      
        'select top 6 CGBJS.BJNO,CGBJS.CLBH,CGBJS.VNPrice,CGBJS.USPrice,Z' +
        'SZL.ZSYWJC'
      'from CGBJS'
      'left join CGBJ on CGBJS.BJNO=CGBJ.BJNO'
      'left join ZSZL on ZSZL.ZSDH=CGBJ.ZSBH'
      'where CGBJS.CLBH=:CLBH'
      'order by CGBJ.BJNO DESC')
    Left = 96
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CLBH'
        ParamType = ptUnknown
        Size = 16
      end>
    object Query1BJNO: TStringField
      FieldName = 'BJNO'
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
    object Query1ZSYWJC: TStringField
      FieldName = 'ZSYWJC'
      FixedChar = True
    end
    object Query1VNPrice: TCurrencyField
      FieldName = 'VNPrice'
    end
  end
end

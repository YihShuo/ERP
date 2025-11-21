object DevQuotaSRList: TDevQuotaSRList
  Left = 462
  Top = 243
  Width = 426
  Height = 291
  Caption = 'DevQuotaSRList'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid3: TDBGridEh
    Left = 0
    Top = 0
    Width = 418
    Height = 260
    Align = alClient
    DataSource = DS1
    Flat = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -16
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FooterRowCount = 1
    ParentFont = False
    SumList.Active = True
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
        FieldName = 'Article'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'SR'
        Footers = <>
      end
      item
        EditButtons = <>
        FieldName = 'KHDH'
        Footers = <>
        Title.Caption = 'Brand'
        Width = 43
      end>
  end
  object MaterialCBDSR: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      'select XXZL.Article,KFXXZL.DEVCODE as SR,XXZL.KHDH '
      'from XXZL'
      
        'left join XXZLS on XXZLS.XieXing=XXZL.XieXing and XXZL.SheHao=XX' +
        'ZLS.SheHao'
      
        'left join KFXXZL on  KFXXZL.XieXing=XXZL.XieXing and KFXXZL.SheH' +
        'ao=XXZL.SheHao'
      'where XXZLS.CLBH='#39'K030000252'#39
      'Group by XXZL.Article,KFXXZL.DEVCODE,XXZL.KHDH  ')
    Left = 140
    Top = 88
    object MaterialCBDSRArticle: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object MaterialCBDSRSR: TStringField
      FieldName = 'SR'
      FixedChar = True
    end
    object MaterialCBDSRKHDH: TStringField
      FieldName = 'KHDH'
      FixedChar = True
      Size = 4
    end
  end
  object DS1: TDataSource
    DataSet = MaterialCBDSR
    Left = 140
    Top = 120
  end
end

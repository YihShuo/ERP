object Detail: TDetail
  Left = 325
  Top = 179
  Width = 881
  Height = 478
  Caption = 'Detail'
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
    Width = 865
    Height = 440
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
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'CLBH|'#26448#26009#32232#34399
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'zwpm'
        Footers = <>
        Title.Caption = 'MatName CN|'#26448#26009#20013#25991#21517#31281
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'ywpm'
        Footers = <>
        Title.Caption = 'MatName EN|'#26448#26009#33521#25991#21517#31281
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'ZLBH|'#35330#21934#32232#34399
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Title.Caption = 'CLSL|'#21046#20196#25976#37327
        Width = 67
      end
      item
        EditButtons = <>
        FieldName = 'USERID'
        Footers = <>
        Title.Caption = 'USERID|'#29992#25142#32232#34399
        Width = 77
      end
      item
        EditButtons = <>
        FieldName = 'USERDATE'
        Footers = <>
        Title.Caption = 'USERDATE|'#35336#31639#26085#26399
        Width = 88
      end>
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    DataSource = INKVN.DataSource1
    SQL.Strings = (
      
        'select zlzls2_YM.CLBH,clzl.zwpm,clzl.ywpm, zlzls2_YM.ZLBH,zlzls2' +
        '_YM.CLSL,zlzls2_YM.USERID,zlzls2_YM.USERDATE'
      'from zlzls2_YM left join CLZL'
      'on zlzls2_YM.CLBH=clzl.cldh'
      'where ZLBH=:ZLBH'
      'order by zlzls2_YM.CLBH')
    Left = 216
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ZLBH'
        ParamType = ptUnknown
      end>
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Origin = 'DB.zlzls2_VN.CLBH'
      FixedChar = True
      Size = 10
    end
    object Query1zwpm: TStringField
      FieldName = 'zwpm'
      Origin = 'DB.CLZL.zwpm'
      FixedChar = True
      Size = 200
    end
    object Query1ywpm: TStringField
      FieldName = 'ywpm'
      Origin = 'DB.CLZL.ywpm'
      FixedChar = True
      Size = 200
    end
    object Query1ZLBH: TStringField
      FieldName = 'ZLBH'
      Origin = 'DB.zlzls2_VN.ZLBH'
      FixedChar = True
      Size = 15
    end
    object Query1CLSL: TFloatField
      FieldName = 'CLSL'
      Origin = 'DB.zlzls2_VN.CLSL'
    end
    object Query1USERID: TStringField
      FieldName = 'USERID'
      Origin = 'DB.zlzls2_VN.USERID'
      FixedChar = True
    end
    object Query1USERDATE: TDateTimeField
      FieldName = 'USERDATE'
      Origin = 'DB.zlzls2_VN.USERDATE'
    end
  end
  object DS1: TDataSource
    DataSet = Query1
    Left = 256
    Top = 80
  end
end

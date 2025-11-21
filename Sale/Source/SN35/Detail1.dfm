object Detail: TDetail
  Left = -150
  Top = 420
  Width = 1336
  Height = 548
  Caption = 'Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 1320
    Height = 509
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
        FieldName = 'ZLBH'
        Footers = <>
        Title.Caption = 'SpecNO'
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'XH'
        Footers = <>
        Width = 30
      end
      item
        EditButtons = <>
        FieldName = 'DestID'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'Destination'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'BWBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'YWSM'
        Footers = <>
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'MJBH'
        Footers = <>
        Width = 90
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'DWBH'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'ZMLB'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'SIZE'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'CLSL'
        Footers = <>
        Width = 45
      end
      item
        EditButtons = <>
        FieldName = 'USAGE'
        Footers = <>
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'CSBH'
        Footers = <>
        Width = 40
      end
      item
        EditButtons = <>
        FieldName = 'ZSYWJC'
        Footers = <>
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'UserID'
        Footers = <>
        Width = 60
      end
      item
        EditButtons = <>
        FieldName = 'UserDate'
        Footers = <>
        Width = 80
      end>
  end
  object DS1: TDataSource
    DataSet = zlzls2
    Left = 328
    Top = 104
  end
  object zlzls2: TQuery
    DatabaseName = 'DB'
    DataSource = OrderCalculateSpecialBOM.DS1
    SQL.Strings = (
      
        'select ZLZLS2.*, BWZL.YWSM, ddzl.Dest as DestID, LBZLS.YWSM as D' +
        'estination, CLZL.YWPM,CLZL.DWBH, ZSZL.ZSYWJC'
      'from zlzls2'
      'left join DDZL on zlzls2.ZLBH=DDZL.DDBH'
      'left join BWZL on BWZL.BWDH= zlzls2.BWBH'
      'left join ZSZL on ZSZL.ZSDH= zlzls2.CSBH'
      'left join CLZL on CLZL.CLDH= zlzls2.CLBH'
      
        'left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL' +
        '.SheHao'
      'left join LBZLS on LBZLS.LBDH=ddzl.Dest and LBZLS.LB='#39'13'#39
      'where DDZL.XieXing=:XieXing'
      '      and DDZL.SheHao=:SheHao'
      '      and DDZL.Dest=:Dest'
      '      and DDZL.GSBH='#39'VA12'#39' '
      '      and zlzls2.ZLBH=:zlbh AND ZLZLS2.XH='#39'VN'#39' '
      
        '      and (left(zlzls2.CLBH,1) = '#39'H'#39' or left(zlzls2.CLBH,1) = '#39'L' +
        #39')'
      'order by zlzls2.bwbh')
    Left = 296
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'XieXing'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SheHao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Dest'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'zlbh'
        ParamType = ptUnknown
      end>
    object zlzls2zlbh: TStringField
      FieldName = 'ZLBH'
    end
    object zlzls2xh: TStringField
      FieldName = 'XH'
    end
    object zlzls2destid: TStringField
      FieldName = 'DestID'
    end
    object zlzls2Destination: TStringField
      FieldName = 'Destination'
    end
    object zlzls2bwbh: TStringField
      FieldName = 'BWBH'
    end
    object zlzls2ywsm: TStringField
      FieldName = 'YWSM'
    end
    object zlzls2csbh: TStringField
      FieldName = 'CSBH'
    end
    object zlzls2zsywjc: TStringField
      FieldName = 'ZSYWJC'
    end
    object zlzls2MJBH: TStringField
      FieldName = 'MJBH'
    end
    object zlzls2clbh: TStringField
      FieldName = 'CLBH'
    end
    object zlzls2ywpm: TStringField
      FieldName = 'YWPM'
    end
    object zlzls2dwbh: TStringField
      FieldName = 'DWBH'
    end
    object zlzls2ZMLB: TStringField
      FieldName = 'ZMLB'
    end
    object zlzls2SIZE: TStringField
      FieldName = 'SIZE'
    end
    object zlzls2clsl: TFloatField
      FieldName = 'CLSL'
    end
    object zlzls2usage: TFloatField
      FieldName = 'USAGE'
    end
    object zlzls2UserID: TStringField
      FieldName = 'UserID'
    end
    object zlzls2UserDate: TDateTimeField
      FieldName = 'UserDate'
    end
  end
end

object ConfirmSwatchReport: TConfirmSwatchReport
  Left = 396
  Top = 296
  Width = 1305
  Height = 675
  Caption = 'ConfirmSwatchReport'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1289
    Height = 49
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 60
      Height = 16
      Caption = 'Vendor ID'
    end
    object Label2: TLabel
      Left = 240
      Top = 17
      Width = 19
      Height = 16
      Caption = 'SR'
    end
    object ED_VENDOR: TEdit
      Left = 83
      Top = 13
      Width = 121
      Height = 24
      TabOrder = 0
    end
    object Button1: TButton
      Left = 485
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Query'
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 203
      Top = 12
      Width = 17
      Height = 24
      Caption = '...'
      TabOrder = 2
      OnClick = Button3Click
    end
    object ED_SR: TEdit
      Left = 266
      Top = 13
      Width = 199
      Height = 24
      TabOrder = 3
    end
    object Button2: TButton
      Left = 559
      Top = 12
      Width = 75
      Height = 25
      Caption = 'Excel'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 49
    Width = 1289
    Height = 587
    Align = alClient
    DataSource = DataSource1
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
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'zsdhflex'
        Footers = <>
        Title.Caption = 'CONFIRM SWATCH DETAIL|Vendor ID'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'ColorFlex'
        Footers = <>
        Title.Caption = 'CONFIRM SWATCH DETAIL|Color ID'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'cldhFlexDes'
        Footers = <>
        Title.Caption = 'CONFIRM SWATCH DETAIL|Material Description'
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'cldhFlex'
        Footers = <>
        Title.Caption = 'CONFIRM SWATCH DETAIL|Material ID'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Season'
        Footers = <>
        Title.Caption = 'CONFIRM SWATCH DETAIL|Season'
        Width = 55
      end
      item
        EditButtons = <>
        FieldName = 'DevCode'
        Footers = <>
        Title.Caption = 'CONFIRM SWATCH DETAIL|SR'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Article'
        Footers = <>
        Title.Caption = 'CONFIRM SWATCH DETAIL|SKU#'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'TrackingA4Comfirm'
        Footers = <>
        Title.Caption = 'CONFIRM SWATCH DETAIL|Tracking A4 Confirm'
        Width = 130
      end
      item
        EditButtons = <>
        FieldName = 'DCName'
        Footers = <>
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|DC Name'
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'Signed'
        Footers = <>
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|Who Signed'
        Width = 120
      end
      item
        DisplayFormat = 'MM-dd-yyyy'
        EditButtons = <>
        FieldName = 'ShippedDate'
        Footers = <>
        Title.Caption = 'DC SHIPPING DETAIL ON CFM SWATCH|When DC Shipped'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'SharedDCs'
        Footers = <>
        Title.Caption = 'DC RECORD FOR CFM SWATCH|Shared DCs'
        Width = 80
      end
      item
        DisplayFormat = 'MM-dd-yyyy'
        EditButtons = <>
        FieldName = 'ExpiredDate'
        Footers = <>
        Title.Caption = 'DC RECORD FOR CFM SWATCH|When To Expire'
        Width = 120
      end
      item
        EditButtons = <>
        FieldName = 'ExcelUpdated'
        Footers = <>
        Title.Caption = 'DC RECORD FOR CFM SWATCH|Who Updated Excel File'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'CLBH'
        Footers = <>
        Title.Caption = 'ERP|Material ID'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'JHDH'
        Footers = <>
        Title.Caption = 'ERP|Official ID'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'YWPM'
        Footers = <>
        Title.Caption = 'ERP|Material Description'
        Width = 150
      end
      item
        EditButtons = <>
        FieldName = 'Readable'
        Footers = <>
        Title.Caption = 'Readable or Non-Readable'
        Width = 100
      end>
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 16
    Top = 128
  end
  object Query1: TQuery
    DatabaseName = 'DB'
    SQL.Strings = (
      
        'SELECT zszl_flex.zsdhflex, clzl_flex.ColorFlex, clzl_flexs.cldhF' +
        'lexDes, clzl_flex.cldhFlex, ShoeTest.Season, kfxxzl.DevCode, YPZ' +
        'L.Article,'
      
        'clzl_flex.DCName, clzl_flex.Signed, clzl_flex.ShippedDate, clzl_' +
        'flex.SharedDCs, clzl_flex.ExpiredDate, clzl_flex.ExcelUpdated FR' +
        'OM YPZL'
      'LEFT JOIN YPZLS ON YPZLS.YPDH = YPZL.YPDH'
      'LEFT JOIN zszl_flex ON zszl_flex.zsdh = YPZLS.CSBH'
      'LEFT JOIN clzl_flex ON clzl_flex.cldh = ypzls.CLBH'
      'LEFT JOIN clzl_flexs ON clzl_flexs.CldhFlex = clzl_flex.CldhFlex'
      'LEFT JOIN ShoeTest ON ShoeTest.YPDH = YPZL.YPDH'
      
        'LEFT JOIN kfxxzl ON kfxxzl.XieXing = YPZL.XieXing AND kfxxzl.She' +
        'Hao = YPZL.SheHao'
      'WHERE YPZL.KFJD = '#39'CFM'#39' AND zszl_flex.zsdhflex = '#39'M.SADE.TH01'#39
      
        'GROUP BY zszl_flex.zsdhflex, clzl_flex.ColorFlex, clzl_flexs.cld' +
        'hFlexDes, clzl_flex.cldhFlex, ShoeTest.Season, kfxxzl.DevCode, Y' +
        'PZL.Article,'
      
        'clzl_flex.DCName, clzl_flex.Signed, clzl_flex.ShippedDate, clzl_' +
        'flex.SharedDCs, clzl_flex.ExpiredDate, clzl_flex.ExcelUpdated'
      'ORDER BY clzl_flex.cldhFlex, YPZL.Article')
    Left = 16
    Top = 160
    object Query1zsdhflex: TStringField
      FieldName = 'zsdhflex'
      FixedChar = True
      Size = 15
    end
    object Query1ColorFlex: TStringField
      FieldName = 'ColorFlex'
      FixedChar = True
      Size = 25
    end
    object Query1cldhFlexDes: TStringField
      FieldName = 'cldhFlexDes'
      FixedChar = True
      Size = 200
    end
    object Query1cldhFlex: TStringField
      FieldName = 'cldhFlex'
      FixedChar = True
      Size = 15
    end
    object Query1Season: TStringField
      FieldName = 'Season'
      FixedChar = True
      Size = 4
    end
    object Query1DevCode: TStringField
      FieldName = 'DevCode'
      FixedChar = True
    end
    object Query1Article: TStringField
      FieldName = 'Article'
      FixedChar = True
    end
    object Query1TrackingA4Comfirm: TStringField
      FieldName = 'TrackingA4Comfirm'
      Size = 50
    end
    object Query1DCName: TStringField
      FieldName = 'DCName'
      FixedChar = True
      Size = 5
    end
    object Query1Signed: TStringField
      FieldName = 'Signed'
      FixedChar = True
    end
    object Query1ShippedDate: TDateTimeField
      FieldName = 'ShippedDate'
    end
    object Query1SharedDCs: TStringField
      FieldName = 'SharedDCs'
      FixedChar = True
      Size = 5
    end
    object Query1ExpiredDate: TDateTimeField
      FieldName = 'ExpiredDate'
    end
    object Query1ExcelUpdated: TStringField
      FieldName = 'ExcelUpdated'
      FixedChar = True
      Size = 10
    end
    object Query1CLBH: TStringField
      FieldName = 'CLBH'
      Size = 15
    end
    object Query1JHDH: TStringField
      FieldName = 'JHDH'
      Size = 10
    end
    object Query1YWPM: TStringField
      FieldName = 'YWPM'
      Size = 200
    end
    object Query1Readable: TStringField
      FieldName = 'Readable'
      Size = 1
    end
  end
end

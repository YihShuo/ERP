object BrandProduction: TBrandProduction
  Left = 308
  Top = 179
  Width = 928
  Height = 480
  Caption = 'BrandProduction'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
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
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 65
    Align = alTop
    TabOrder = 0
    object lbEnglish: TLabel
      Left = 16
      Top = 8
      Width = 450
      Height = 20
      AutoSize = False
      Caption = 'Yearly Brand Production(Refresh Everyday)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbChinese: TLabel
      Left = 16
      Top = 32
      Width = 450
      Height = 20
      AutoSize = False
      Caption = #24180#24230#21697#29260#25509#21934#29983#29986#22577#34920'-'#27599#22825#26356#26032
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbYear: TLabel
      Left = 536
      Top = 8
      Width = 49
      Height = 20
      Caption = 'YEAR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bnQuery: TButton
      Left = 680
      Top = 8
      Width = 105
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = bnQueryClick
    end
    object bnExcel: TButton
      Left = 800
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Excel'
      TabOrder = 1
      OnClick = bnExcelClick
    end
    object cbYear: TComboBox
      Left = 592
      Top = 8
      Width = 73
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      Text = '2014'
      Items.Strings = (
        '2010'
        '2011'
        '2012'
        '2013'
        '2014'
        '2015'
        '2016'
        '2017')
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 65
    Width = 912
    Height = 377
    Align = alClient
    DataSource = dsMain
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        EditButtons = <>
        FieldName = 'kfqm'
        Footers = <>
        Title.Caption = 'Brand|'#21697#29260
      end
      item
        EditButtons = <>
        FieldName = 'Item'
        Footers = <>
        Title.Caption = 'Item|'#38917#30446
      end
      item
        EditButtons = <>
        FieldName = 'January'
        Footers = <>
        Title.Caption = 'January|'#19968#26376
      end
      item
        EditButtons = <>
        FieldName = 'February'
        Footers = <>
        Title.Caption = 'February|'#20108#26376
      end
      item
        EditButtons = <>
        FieldName = 'March'
        Footers = <>
        Title.Caption = 'March|'#19977#26376
      end
      item
        EditButtons = <>
        FieldName = 'April'
        Footers = <>
        Title.Caption = 'April|'#22235#26376
      end
      item
        EditButtons = <>
        FieldName = 'May'
        Footers = <>
        Title.Caption = 'May|'#20116#26376
      end
      item
        EditButtons = <>
        FieldName = 'June'
        Footers = <>
        Title.Caption = 'June|'#20845#26376
      end
      item
        EditButtons = <>
        FieldName = 'July'
        Footers = <>
        Title.Caption = 'July|'#19971#26376
      end
      item
        EditButtons = <>
        FieldName = 'August'
        Footers = <>
        Title.Caption = 'August|'#20843#26376
      end
      item
        EditButtons = <>
        FieldName = 'September'
        Footers = <>
        Title.Caption = 'September|'#20061#26376
      end
      item
        EditButtons = <>
        FieldName = 'October'
        Footers = <>
        Title.Caption = 'October|'#21313#26376
      end
      item
        EditButtons = <>
        FieldName = 'November'
        Footers = <>
        Title.Caption = 'November|'#21313#19968#26376
      end
      item
        EditButtons = <>
        FieldName = 'December'
        Footers = <>
        Title.Caption = 'December|'#21313#20108#26376
      end
      item
        EditButtons = <>
        FieldName = 'Total'
        Footers = <>
        Title.Caption = 'Total|'#23567#35336
      end>
  end
  object qrMain: TQuery
    DatabaseName = 'dB'
    Left = 32
    Top = 112
    object qrMainkfqm: TStringField
      FieldName = 'kfqm'
    end
    object qrMainitem: TStringField
      FieldName = 'Item'
    end
    object qrMainjanuary: TIntegerField
      FieldName = 'January'
    end
    object qrMainFebruary: TIntegerField
      FieldName = 'February'
    end
    object qrMainMarch: TIntegerField
      FieldName = 'March'
    end
    object qrMainApril: TIntegerField
      FieldName = 'April'
    end
    object qrMainMay: TIntegerField
      FieldName = 'May'
    end
    object qrMainJune: TIntegerField
      FieldName = 'June'
    end
    object qrMainJuly: TIntegerField
      FieldName = 'July'
    end
    object qrMainAugust: TIntegerField
      FieldName = 'August'
    end
    object qrMainSeptember: TIntegerField
      FieldName = 'September'
    end
    object qrMainOctober: TIntegerField
      FieldName = 'October'
    end
    object qrMainNovember: TIntegerField
      FieldName = 'November'
    end
    object qrMainDecember: TIntegerField
      FieldName = 'December'
    end
    object qrMainTotal: TIntegerField
      FieldName = 'Total'
    end
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 80
    Top = 112
  end
end

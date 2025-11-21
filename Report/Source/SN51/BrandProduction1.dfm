object BrandProduction: TBrandProduction
  Left = 211
  Top = 178
  Width = 1108
  Height = 480
  Caption = 'BrandProduction'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 106
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 1092
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
      Left = 328
      Top = 28
      Width = 40
      Height = 16
      Caption = 'YEAR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 447
      Top = 28
      Width = 39
      Height = 16
      Caption = 'Brand:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object bnQuery: TButton
      Left = 711
      Top = 34
      Width = 97
      Height = 25
      Caption = 'Query'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bnQueryClick
    end
    object bnExcel: TButton
      Left = 711
      Top = 5
      Width = 97
      Height = 25
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bnExcelClick
    end
    object cbYear: TComboBox
      Left = 370
      Top = 24
      Width = 63
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
      OnChange = cbYearChange
    end
    object CBBrand: TComboBox
      Left = 487
      Top = 23
      Width = 99
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
    end
    object CheckBox1: TCheckBox
      Left = 591
      Top = 26
      Width = 90
      Height = 17
      Caption = 'Company'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 65
    Width = 1092
    Height = 375
    Align = alClient
    DataSource = dsMain
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -12
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnCellClick = gdMainCellClick
    OnGetCellParams = gdMainGetCellParams
    Columns = <
      item
        EditButtons = <>
        FieldName = 'brand'
        Footers = <>
        Title.Caption = 'Brand|'#21697#29260
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = 'export'
        Footers = <>
        Title.Caption = 'Export|'#37559#22320
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'item'
        Footers = <>
        Title.Caption = 'Item|'#38917#30446
        Width = 140
      end
      item
        EditButtons = <>
        FieldName = '01.January'
        Footers = <>
        Title.Caption = '01.January|'#19968#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '02.February'
        Footers = <>
        Title.Caption = '02.February|'#20108#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '03.March'
        Footers = <>
        Title.Caption = '03.March|'#19977#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '04.April'
        Footers = <>
        Title.Caption = '04.April|'#22235#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '05.May'
        Footers = <>
        Title.Caption = '05.May|'#20116#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '06.June'
        Footers = <>
        Title.Caption = '06.June|'#20845#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '07.July'
        Footers = <>
        Title.Caption = '07.July|'#19971#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '08.August'
        Footers = <>
        Title.Caption = '08.August|'#20843#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '09.September'
        Footers = <>
        Title.Caption = '09.September|'#20061#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '10.October'
        Footers = <>
        Title.Caption = '10.October|'#21313#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '11.November'
        Footers = <>
        Title.Caption = '11.November|'#21313#19968#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = '12.December'
        Footers = <>
        Title.Caption = '12.December|'#21313#20108#26376
        Width = 74
      end
      item
        EditButtons = <>
        FieldName = 'total'
        Footers = <>
        Title.Caption = 'Total|'#23567#35336
        Width = 74
      end>
  end
  object qrMain: TQuery
    DatabaseName = 'dB'
    Left = 32
    Top = 136
    object qrMainbrand: TStringField
      FieldName = 'brand'
      FixedChar = True
    end
    object qrMainexport: TStringField
      FieldName = 'export'
      FixedChar = True
      Size = 5
    end
    object qrMainitem: TStringField
      FieldName = 'item'
      FixedChar = True
      Size = 8
    end
    object qrMainBDEDesigner01January: TIntegerField
      FieldName = '01.January'
    end
    object qrMainBDEDesigner02February: TIntegerField
      FieldName = '02.February'
    end
    object qrMainBDEDesigner03March: TIntegerField
      FieldName = '03.March'
    end
    object qrMainBDEDesigner04April: TIntegerField
      FieldName = '04.April'
    end
    object qrMainBDEDesigner05May: TIntegerField
      FieldName = '05.May'
    end
    object qrMainBDEDesigner06June: TIntegerField
      FieldName = '06.June'
    end
    object qrMainBDEDesigner07July: TIntegerField
      FieldName = '07.July'
    end
    object qrMainBDEDesigner08August: TIntegerField
      FieldName = '08.August'
    end
    object qrMainBDEDesigner09September: TIntegerField
      FieldName = '09.September'
    end
    object qrMainBDEDesigner10October: TIntegerField
      FieldName = '10.October'
    end
    object qrMainBDEDesigner11November: TIntegerField
      FieldName = '11.November'
    end
    object qrMainBDEDesigner12December: TIntegerField
      FieldName = '12.December'
    end
    object qrMaintotal: TIntegerField
      FieldName = 'total'
    end
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 80
    Top = 136
  end
  object QTemp: TQuery
    DatabaseName = 'DB'
    Left = 32
    Top = 168
  end
  object OpenDialog: TOpenDialog
    Filter = 'EXCEL|*.xls'
    Left = 112
    Top = 184
  end
end

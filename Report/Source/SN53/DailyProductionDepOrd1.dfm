object DailyProductionDepOrd: TDailyProductionDepOrd
  Left = 287
  Top = 195
  Width = 928
  Height = 480
  Caption = 'Daily Production of Department and Order'
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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 49
    Align = alTop
    TabOrder = 0
    object lbDate: TLabel
      Left = 168
      Top = 8
      Width = 89
      Height = 33
      AutoSize = False
      Caption = 'Produce Date:  ('#29983#29986#26085#26399')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object lbFactory: TLabel
      Left = 8
      Top = 8
      Width = 57
      Height = 33
      AutoSize = False
      Caption = 'Factory:  ('#24288#21029')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object bnQuery: TButton
      Left = 648
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Query'
      TabOrder = 0
      OnClick = bnQueryClick
    end
    object dtpDate: TDateTimePicker
      Left = 256
      Top = 8
      Width = 89
      Height = 25
      Date = 41729.413754467590000000
      Time = 41729.413754467590000000
      TabOrder = 1
    end
    object cbFactory: TComboBox
      Left = 64
      Top = 8
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'ALL'
      Items.Strings = (
        'ALL')
    end
    object bnExcel: TButton
      Left = 768
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Excel'
      TabOrder = 3
      OnClick = bnExcelClick
    end
  end
  object gdMain: TDBGridEh
    Left = 0
    Top = 49
    Width = 912
    Height = 393
    Align = alClient
    ColumnDefValues.Title.TitleButton = True
    DataSource = dsMain
    Flat = False
    FooterColor = clWindow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Style = []
    FrozenCols = 4
    SortLocal = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    UseMultiTitle = True
    OnTitleBtnClick = gdMainTitleBtnClick
    Columns = <
      item
        EditButtons = <>
        FieldName = 'Factory'
        Footers = <>
        Title.Caption = #24288#21029'|Factory'
        Width = 50
      end
      item
        EditButtons = <>
        FieldName = 'DepName'
        Footers = <>
        Title.Caption = #37096#38272'|DepName'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'sumline'
        Footers = <>
        Title.Caption = #32068#21029'|Sumline'
      end
      item
        EditButtons = <>
        FieldName = 'bh'
        Footers = <>
        Title.Caption = #35330#21934#34399#30908'|SCBH'
      end
      item
        EditButtons = <>
        FieldName = 'kfjc'
        Footers = <>
        Title.Caption = #23458#25142#21517#31281'|kfjc'
      end
      item
        EditButtons = <>
        FieldName = 'KHPO'
        Footers = <>
        Title.Caption = #23458#25142#35330#21934'|KHPO'
      end
      item
        EditButtons = <>
        FieldName = 'XieXing'
        Footers = <>
        Title.Caption = #38795#22411'|XieXing'
      end
      item
        EditButtons = <>
        FieldName = 'DAOMH'
        Footers = <>
        Title.Caption = #26028#20992'|DAOMH'
      end
      item
        EditButtons = <>
        FieldName = 'ARTICLE'
        Footers = <>
        Title.Caption = #22411#34399'|ARTICLE'
      end
      item
        EditButtons = <>
        FieldName = 'YSSM'
        Footers = <>
        Title.Caption = #38991#33394'|YSSM'
      end
      item
        EditButtons = <>
        FieldName = 'ywsm'
        Footers = <>
        Title.Caption = #20986#36008#22283#23478'|ywsm'
      end
      item
        EditButtons = <>
        FieldName = 'Pairs'
        Footers = <>
        Title.Caption = #25351#20196#25976'|Pairs'
      end
      item
        EditButtons = <>
        FieldName = 'C_d'
        Footers = <>
        Title.Caption = #35009#26039'Cutting|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'C_m'
        Footers = <>
        Title.Caption = #35009#26039'Cutting|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'C_t'
        Footers = <>
        Title.Caption = #35009#26039'Cutting|Totally'
      end
      item
        EditButtons = <>
        FieldName = 'C_r'
        Footers = <>
        Title.Caption = #35009#26039'Cutting|Lack'
      end
      item
        EditButtons = <>
        FieldName = 'S_d'
        Footers = <>
        Title.Caption = #37341#36554'Sewing|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'S_m'
        Footers = <>
        Title.Caption = #37341#36554'Sewing|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'S_t'
        Footers = <>
        Title.Caption = #37341#36554'Sewing|Totally'
      end
      item
        EditButtons = <>
        FieldName = 'S_r'
        Footers = <>
        Title.Caption = #37341#36554'Sewing|Lack'
      end
      item
        EditButtons = <>
        FieldName = 'W_d'
        Footers = <>
        Title.Caption = #22823#36554'Outsole Cutting|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'W_m'
        Footers = <>
        Title.Caption = #22823#36554'Outsole Cutting|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'W_t'
        Footers = <>
        Title.Caption = #22823#36554'Outsole Cutting|Totally'
      end
      item
        EditButtons = <>
        FieldName = 'W_r'
        Footers = <>
        Title.Caption = #22823#36554'Outsole Cutting|Lack'
      end
      item
        EditButtons = <>
        FieldName = 'O_d'
        Footers = <>
        Title.Caption = #24213#21152#24037'Outsole Process|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'O_m'
        Footers = <>
        Title.Caption = #24213#21152#24037'Outsole Process|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'O_t'
        Footers = <>
        Title.Caption = #24213#21152#24037'Outsole Process|Totally'
      end
      item
        EditButtons = <>
        FieldName = 'O_r'
        Footers = <>
        Title.Caption = #24213#21152#24037'Outsole Process|Lack'
      end
      item
        EditButtons = <>
        FieldName = 'Z_d'
        Footers = <>
        Title.Caption = #38795#22666'Sock Liner|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'Z_m'
        Footers = <>
        Title.Caption = #38795#22666'Sock Liner|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'Z_t'
        Footers = <>
        Title.Caption = #38795#22666'Sock Liner|Totally'
      end
      item
        EditButtons = <>
        FieldName = 'Z_r'
        Footers = <>
        Title.Caption = #38795#22666'Sock Liner|Lack'
      end
      item
        EditButtons = <>
        FieldName = 'A_d'
        Footers = <>
        Title.Caption = #25104#22411'Assembly|Daily'
      end
      item
        EditButtons = <>
        FieldName = 'A_m'
        Footers = <>
        Title.Caption = #25104#22411'Assembly|Monthly'
      end
      item
        EditButtons = <>
        FieldName = 'A_t'
        Footers = <>
        Title.Caption = #25104#22411'Assembly|Totally'
      end
      item
        EditButtons = <>
        FieldName = 'A_r'
        Footers = <>
        Title.Caption = #25104#22411'Assembly|Lack'
      end
      item
        EditButtons = <>
        FieldName = 'ShipDate'
        Footers = <>
        Title.Caption = #20132#26399'|ShipDate'
      end>
  end
  object qrMain: TQuery
    DatabaseName = 'dB'
    Left = 64
    Top = 120
    object qrMainGSBH: TStringField
      FieldName = 'Factory'
    end
    object qrMainDepName2: TStringField
      FieldName = 'DepName'
    end
    object qrMainDepName: TStringField
      FieldName = 'sumline'
    end
    object qrMainSCBH: TStringField
      FieldName = 'bh'
    end
    object qrMainkfjc: TStringField
      FieldName = 'kfjc'
    end
    object qrMainKHPO: TStringField
      FieldName = 'KHPO'
    end
    object qrMainXieXing: TStringField
      FieldName = 'XieXing'
    end
    object qrMainARTICLE: TStringField
      FieldName = 'ARTICLE'
    end
    object qrMainDAOMH: TStringField
      FieldName = 'DAOMH'
    end
    object qrMainYSSM: TStringField
      FieldName = 'YSSM'
    end
    object qrMainywsm: TStringField
      FieldName = 'ywsm'
    end
    object qrMainPairs: TIntegerField
      FieldName = 'Pairs'
    end
    object qrMainC_d: TFloatField
      FieldName = 'C_d'
    end
    object qrMainC_m: TFloatField
      FieldName = 'C_m'
    end
    object qrMainC_t: TFloatField
      FieldName = 'C_t'
    end
    object qrMainC_r: TFloatField
      FieldName = 'C_r'
    end
    object qrMainS_d: TFloatField
      FieldName = 'S_d'
    end
    object qrMainS_m: TFloatField
      FieldName = 'S_m'
    end
    object qrMainS_t: TFloatField
      FieldName = 'S_t'
    end
    object qrMainS_r: TFloatField
      FieldName = 'S_r'
    end
    object qrMainW_d: TFloatField
      FieldName = 'W_d'
    end
    object qrMainW_m: TFloatField
      FieldName = 'W_m'
    end
    object qrMainW_t: TFloatField
      FieldName = 'W_t'
    end
    object qrMainW_r: TFloatField
      FieldName = 'W_r'
    end
    object qrMainO_d: TFloatField
      FieldName = 'O_d'
    end
    object qrMainO_m: TFloatField
      FieldName = 'O_m'
    end
    object qrMainO_t: TFloatField
      FieldName = 'O_t'
    end
    object qrMainO_r: TFloatField
      FieldName = 'O_r'
    end
    object qrMainZ_d: TFloatField
      FieldName = 'Z_d'
    end
    object qrMainZ_m: TFloatField
      FieldName = 'Z_m'
    end
    object qrMainZ_t: TFloatField
      FieldName = 'Z_t'
    end
    object qrMainZ_r: TFloatField
      FieldName = 'Z_r'
    end
    object qrMainA_d: TFloatField
      FieldName = 'A_d'
    end
    object qrMainA_m: TFloatField
      FieldName = 'A_m'
    end
    object qrMainA_t: TFloatField
      FieldName = 'A_t'
    end
    object qrMainA_r: TFloatField
      FieldName = 'A_r'
    end
    object qrMainShipDate: TDateTimeField
      FieldName = 'ShipDate'
    end
  end
  object dsMain: TDataSource
    DataSet = qrMain
    Left = 16
    Top = 120
  end
  object qrGS: TQuery
    DatabaseName = 'dB'
    Left = 112
    Top = 120
  end
end
